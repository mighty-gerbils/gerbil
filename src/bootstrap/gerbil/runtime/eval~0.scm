(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710774316)
  (begin
    (define __syntax::t
      (let ((__tmp79279 (list))
            (__tmp79277
             (let ((__tmp79278
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79278 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp79279
         '(e id)
         __tmp79277
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args79088_ (apply make-instance __syntax::t _$args79088_)))
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
      (let ((__tmp79282 (list __syntax::t))
            (__tmp79280
             (let ((__tmp79281
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79281 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp79282
         '()
         __tmp79280
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args79085_ (apply make-instance __core-form::t _$args79085_)))
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
      (let ((__tmp79285 (list __core-form::t))
            (__tmp79283
             (let ((__tmp79284
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79284 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp79285
         '()
         __tmp79283
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args79082_
        (apply make-instance __core-expression::t _$args79082_)))
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
      (let ((__tmp79288 (list __core-form::t))
            (__tmp79286
             (let ((__tmp79287
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79287 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp79288
         '()
         __tmp79286
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args79079_
        (apply make-instance __core-special-form::t _$args79079_)))
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
      (lambda (_id79077_)
        (let ((__tmp79289 (let () (declare (not safe)) (__AST-e _id79077_))))
          (declare (not safe))
          (hash-get __core __tmp79289))))
    (define __core-bound-id?__%
      (lambda (_id79061_ _is?79062_)
        (let ((_$e79064_
               (let () (declare (not safe)) (__core-resolve _id79061_))))
          (if _$e79064_ (_is?79062_ _$e79064_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id79070_)
        (let ((_is?79072_ true))
          (declare (not safe))
          (__core-bound-id?__% _id79070_ _is?79072_))))
    (define __core-bound-id?
      (lambda _g79291_
        (let ((_g79290_ (let () (declare (not safe)) (##length _g79291_))))
          (cond ((let () (declare (not safe)) (##fx= _g79290_ 1))
                 (apply (lambda (_id79070_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id79070_)))
                        _g79291_))
                ((let () (declare (not safe)) (##fx= _g79290_ 2))
                 (apply (lambda (_id79074_ _is?79075_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id79074_ _is?79075_)))
                        _g79291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g79291_))))))
    (define __core-bind-syntax!__%
      (lambda (_id79044_ _e79045_ _make79046_)
        (let ((__tmp79292
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e79045_
                      'gerbil/runtime/eval#__syntax::t))
                   _e79045_
                   (_make79046_ _e79045_ _id79044_))))
          (declare (not safe))
          (hash-put! __core _id79044_ __tmp79292))))
    (define __core-bind-syntax!__0
      (lambda (_id79051_ _e79052_)
        (let ((_make79054_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id79051_ _e79052_ _make79054_))))
    (define __core-bind-syntax!
      (lambda _g79294_
        (let ((_g79293_ (let () (declare (not safe)) (##length _g79294_))))
          (cond ((let () (declare (not safe)) (##fx= _g79293_ 2))
                 (apply (lambda (_id79051_ _e79052_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id79051_ _e79052_)))
                        _g79294_))
                ((let () (declare (not safe)) (##fx= _g79293_ 3))
                 (apply (lambda (_id79056_ _e79057_ _make79058_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id79056_
                             _e79057_
                             _make79058_)))
                        _g79294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g79294_))))))
    (define __SRC__%
      (lambda (_e79027_ _src-stx79028_)
        (if (or (let () (declare (not safe)) (pair? _e79027_))
                (let () (declare (not safe)) (symbol? _e79027_)))
            (let ((__tmp79298
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx79028_
                          'gerbil#AST::t))
                       (let ((__tmp79299
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx79028_))))
                         (declare (not safe))
                         (__locat __tmp79299))
                       '#f)))
              (declare (not safe))
              (##make-source _e79027_ __tmp79298))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e79027_ 'gerbil#AST::t))
                (let ((__tmp79297
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e79027_ '1 AST::t '#f)))
                      (__tmp79295
                       (let ((__tmp79296
                              (let ()
                                (declare (not safe))
                                (__AST-source _e79027_))))
                         (declare (not safe))
                         (__locat __tmp79296))))
                  (declare (not safe))
                  (##make-source __tmp79297 __tmp79295))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e79027_))))))
    (define __SRC__0
      (lambda (_e79036_)
        (let ((_src-stx79038_ '#f))
          (declare (not safe))
          (__SRC__% _e79036_ _src-stx79038_))))
    (define __SRC
      (lambda _g79301_
        (let ((_g79300_ (let () (declare (not safe)) (##length _g79301_))))
          (cond ((let () (declare (not safe)) (##fx= _g79300_ 1))
                 (apply (lambda (_e79036_)
                          (let () (declare (not safe)) (__SRC__0 _e79036_)))
                        _g79301_))
                ((let () (declare (not safe)) (##fx= _g79300_ 2))
                 (apply (lambda (_e79040_ _src-stx79041_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e79040_ _src-stx79041_)))
                        _g79301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g79301_))))))
    (define __locat
      (lambda (_loc79024_)
        (if (let () (declare (not safe)) (##locat? _loc79024_))
            _loc79024_
            '#f)))
    (define __check-values
      (lambda (_obj79019_ _k79020_)
        (let ((_count79022_
               (if (let () (declare (not safe)) (##values? _obj79019_))
                   (let () (declare (not safe)) (##vector-length _obj79019_))
                   '1)))
          (if (fx= _count79022_ _k79020_)
              '#!void
              (let ((__tmp79303
                     (if (fx< _count79022_ _k79020_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp79302
                     (if (let () (declare (not safe)) (##values? _obj79019_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj79019_))
                         _obj79019_)))
                (declare (not safe))
                (error __tmp79303 __tmp79302 _k79020_))))))
    (define __compile
      (lambda (_stx78989_)
        (let* ((_$e78991_ _stx78989_)
               (_$E7899378999_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78991_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78991_))
              (let* ((_$tgt7899479002_
                      (let () (declare (not safe)) (__AST-e _$e78991_)))
                     (_$hd7899579005_
                      (let () (declare (not safe)) (##car _$tgt7899479002_)))
                     (_$tl7899679008_
                      (let () (declare (not safe)) (##cdr _$tgt7899479002_))))
                (let* ((_form79012_ _$hd7899579005_)
                       (_$e79014_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form79012_))))
                  (if _$e79014_
                      ((lambda (_bind79017_)
                         ((##structure-ref _bind79017_ '1 __syntax::t '#f)
                          _stx78989_))
                       _$e79014_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx78989_
                         _form79012_)))))
              (let () (declare (not safe)) (_$E7899378999_))))))
    (define __compile-error__%
      (lambda (_stx78976_ _detail78977_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx78976_
           _detail78977_))))
    (define __compile-error__0
      (lambda (_stx78982_)
        (let ((_detail78984_ '#f))
          (declare (not safe))
          (__compile-error__% _stx78982_ _detail78984_))))
    (define __compile-error
      (lambda _g79305_
        (let ((_g79304_ (let () (declare (not safe)) (##length _g79305_))))
          (cond ((let () (declare (not safe)) (##fx= _g79304_ 1))
                 (apply (lambda (_stx78982_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx78982_)))
                        _g79305_))
                ((let () (declare (not safe)) (##fx= _g79304_ 2))
                 (apply (lambda (_stx78986_ _detail78987_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx78986_ _detail78987_)))
                        _g79305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g79305_))))))
    (define __compile-ignore%
      (lambda (_stx78973_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx78973_))))
    (define __compile-begin%
      (lambda (_stx78948_)
        (let* ((_$e78950_ _stx78948_)
               (_$E7895278958_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78950_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78950_))
              (let* ((_$tgt7895378961_
                      (let () (declare (not safe)) (__AST-e _$e78950_)))
                     (_$hd7895478964_
                      (let () (declare (not safe)) (##car _$tgt7895378961_)))
                     (_$tl7895578967_
                      (let () (declare (not safe)) (##cdr _$tgt7895378961_))))
                (let* ((_body78971_ _$tl7895578967_)
                       (__tmp79306
                        (let ((__tmp79307 (map __compile _body78971_)))
                          (declare (not safe))
                          (cons 'begin __tmp79307))))
                  (declare (not safe))
                  (__SRC__% __tmp79306 _stx78948_)))
              (let () (declare (not safe)) (_$E7895278958_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78923_)
        (let* ((_$e78925_ _stx78923_)
               (_$E7892778933_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78925_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78925_))
              (let* ((_$tgt7892878936_
                      (let () (declare (not safe)) (__AST-e _$e78925_)))
                     (_$hd7892978939_
                      (let () (declare (not safe)) (##car _$tgt7892878936_)))
                     (_$tl7893078942_
                      (let () (declare (not safe)) (##cdr _$tgt7892878936_))))
                (let* ((_body78946_ _$tl7893078942_)
                       (__tmp79308
                        (let ((__tmp79309
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78946_))))
                          (declare (not safe))
                          (cons 'begin __tmp79309))))
                  (declare (not safe))
                  (__SRC__% __tmp79308 _stx78923_)))
              (let () (declare (not safe)) (_$E7892778933_))))))
    (define __compile-import%
      (lambda (_stx78898_)
        (let* ((_$e78900_ _stx78898_)
               (_$E7890278908_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78900_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78900_))
              (let* ((_$tgt7890378911_
                      (let () (declare (not safe)) (__AST-e _$e78900_)))
                     (_$hd7890478914_
                      (let () (declare (not safe)) (##car _$tgt7890378911_)))
                     (_$tl7890578917_
                      (let () (declare (not safe)) (##cdr _$tgt7890378911_))))
                (let* ((_body78921_ _$tl7890578917_)
                       (__tmp79310
                        (let ((__tmp79311
                               (let ((__tmp79312
                                      (let ((__tmp79313
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78921_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp79313))))
                                 (declare (not safe))
                                 (cons __tmp79312 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp79311))))
                  (declare (not safe))
                  (__SRC__% __tmp79310 _stx78898_)))
              (let () (declare (not safe)) (_$E7890278908_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78845_)
        (let* ((_$e78847_ _stx78845_)
               (_$E7884978861_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78847_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78847_))
              (let* ((_$tgt7885078864_
                      (let () (declare (not safe)) (__AST-e _$e78847_)))
                     (_$hd7885178867_
                      (let () (declare (not safe)) (##car _$tgt7885078864_)))
                     (_$tl7885278870_
                      (let () (declare (not safe)) (##cdr _$tgt7885078864_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7885278870_))
                    (let* ((_$tgt7885378874_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7885278870_)))
                           (_$hd7885478877_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7885378874_)))
                           (_$tl7885578880_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7885378874_))))
                      (let ((_ann78884_ _$hd7885478877_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7885578880_))
                            (let* ((_$tgt7885678886_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7885578880_)))
                                   (_$hd7885778889_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7885678886_)))
                                   (_$tl7885878892_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7885678886_))))
                              (let ((_expr78896_ _$hd7885778889_))
                                (if (let ((__tmp79314
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7885878892_))))
                                      (declare (not safe))
                                      (equal? __tmp79314 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78896_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7884978861_)))))
                            (let () (declare (not safe)) (_$E7884978861_)))))
                    (let () (declare (not safe)) (_$E7884978861_))))
              (let () (declare (not safe)) (_$E7884978861_))))))
    (define __compile-define-values%
      (lambda (_stx78736_)
        (let* ((_$e78738_ _stx78736_)
               (_$E7874078752_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78738_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78738_))
              (let* ((_$tgt7874178755_
                      (let () (declare (not safe)) (__AST-e _$e78738_)))
                     (_$hd7874278758_
                      (let () (declare (not safe)) (##car _$tgt7874178755_)))
                     (_$tl7874378761_
                      (let () (declare (not safe)) (##cdr _$tgt7874178755_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7874378761_))
                    (let* ((_$tgt7874478765_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7874378761_)))
                           (_$hd7874578768_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7874478765_)))
                           (_$tl7874678771_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7874478765_))))
                      (let ((_hd78775_ _$hd7874578768_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7874678771_))
                            (let* ((_$tgt7874778777_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7874678771_)))
                                   (_$hd7874878780_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7874778777_)))
                                   (_$tl7874978783_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7874778777_))))
                              (let ((_expr78787_ _$hd7874878780_))
                                (if (let ((__tmp79347
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7874978783_))))
                                      (declare (not safe))
                                      (equal? __tmp79347 '()))
                                    (let* ((_$e78789_ _hd78775_)
                                           (_$E7879178832_
                                            (lambda ()
                                              (let ((_$E7879278817_
                                                     (lambda ()
                                                       (let* ((_$E7879378804_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78789_))))
                      (_ids78807_ _hd78775_)
                      (_len78809_ (length _ids78807_))
                      (_tmp78811_
                       (let ((__tmp79315 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp79315))))
                 (let ((__tmp79316
                        (let ((__tmp79317
                               (let ((__tmp79334
                                      (let ((__tmp79335
                                             (let ((__tmp79336
                                                    (let ((__tmp79337
                                                           (let ((__tmp79338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78787_))))
                     (declare (not safe))
                     (cons __tmp79338 '()))))
              (declare (not safe))
              (cons _tmp78811_ __tmp79337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79336))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79335 _stx78736_)))
                                     (__tmp79318
                                      (let ((__tmp79330
                                             (let ((__tmp79331
                                                    (let ((__tmp79332
                                                           (let ((__tmp79333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78809_ '()))))
                     (declare (not safe))
                     (cons _tmp78811_ __tmp79333))))
              (declare (not safe))
              (cons '__check-values __tmp79332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79331
                                                _stx78736_)))
                                            (__tmp79319
                                             (let ((__tmp79320
                                                    (let ((__tmp79322
                                                           (lambda (_id78814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78815_)
                     (if (let () (declare (not safe)) (__AST-e _id78814_))
                         (let ((__tmp79323
                                (let ((__tmp79324
                                       (let ((__tmp79329
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78814_)))
                                             (__tmp79325
                                              (let ((__tmp79326
                                                     (let ((__tmp79327
                                                            (let ((__tmp79328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78815_ '()))))
                      (declare (not safe))
                      (cons _tmp78811_ __tmp79328))))
               (declare (not safe))
               (cons '##vector-ref __tmp79327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79326 '()))))
                                         (declare (not safe))
                                         (cons __tmp79329 __tmp79325))))
                                  (declare (not safe))
                                  (cons 'define __tmp79324))))
                           (declare (not safe))
                           (__SRC__% __tmp79323 _stx78736_))
                         '#f)))
                  (__tmp79321 (iota _len78809_)))
              (declare (not safe))
              (filter-map2 __tmp79322 _ids78807_ __tmp79321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp79320))))
                                        (declare (not safe))
                                        (cons __tmp79330 __tmp79319))))
                                 (declare (not safe))
                                 (cons __tmp79334 __tmp79318))))
                          (declare (not safe))
                          (cons 'begin __tmp79317))))
                   (declare (not safe))
                   (__SRC__% __tmp79316 _stx78736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78789_))
                                                    (let* ((_$tgt7879478820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78789_)))
                                                           (_$hd7879578823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7879478820_)))
                                                           (_$tl7879678826_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7879478820_))))
                                                      (let ((_id78830_
                                                             _$hd7879578823_))
                                                        (if (let ((__tmp79344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7879678826_))))
                      (declare (not safe))
                      (equal? __tmp79344 '()))
                    (let ((__tmp79339
                           (let ((__tmp79340
                                  (let ((__tmp79343
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78830_)))
                                        (__tmp79341
                                         (let ((__tmp79342
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78787_))))
                                           (declare (not safe))
                                           (cons __tmp79342 '()))))
                                    (declare (not safe))
                                    (cons __tmp79343 __tmp79341))))
                             (declare (not safe))
                             (cons 'define __tmp79340))))
                      (declare (not safe))
                      (__SRC__% __tmp79339 _stx78736_))
                    (let () (declare (not safe)) (_$E7879278817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7879278817_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78789_))
                                          (let* ((_$tgt7879778835_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78789_)))
                                                 (_$hd7879878838_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7879778835_)))
                                                 (_$tl7879978841_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7879778835_))))
                                            (if (let ((__tmp79346
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7879878838_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79346 '#f))
                                                (if (let ((__tmp79345
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7879978841_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79345 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78787_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7879178832_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7879178832_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7879178832_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7874078752_)))))
                            (let () (declare (not safe)) (_$E7874078752_)))))
                    (let () (declare (not safe)) (_$E7874078752_))))
              (let () (declare (not safe)) (_$E7874078752_))))))
    (define __compile-head-id
      (lambda (_e78734_)
        (let ((__tmp79348
               (if (let () (declare (not safe)) (__AST-e _e78734_))
                   _e78734_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79348))))
    (define __compile-lambda-head
      (lambda (_hd78691_)
        (let _recur78693_ ((_rest78695_ _hd78691_))
          (let* ((_$e78697_ _rest78695_)
                 (_$E7869978717_
                  (lambda ()
                    (let ((_$E7870078714_
                           (lambda ()
                             (let* ((_$E7870178709_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78697_))))
                                    (_tail78712_ _$e78697_))
                               (declare (not safe))
                               (__compile-head-id _tail78712_)))))
                      (if (let ((__tmp79349
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78697_))))
                            (declare (not safe))
                            (equal? __tmp79349 '()))
                          '()
                          (let () (declare (not safe)) (_$E7870078714_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78697_))
                (let* ((_$tgt7870278720_
                        (let () (declare (not safe)) (__AST-e _$e78697_)))
                       (_$hd7870378723_
                        (let () (declare (not safe)) (##car _$tgt7870278720_)))
                       (_$tl7870478726_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7870278720_))))
                  (let* ((_hd78730_ _$hd7870378723_)
                         (_rest78732_ _$tl7870478726_))
                    (let ((__tmp79351
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78730_)))
                          (__tmp79350
                           (let ()
                             (declare (not safe))
                             (_recur78693_ _rest78732_))))
                      (declare (not safe))
                      (cons __tmp79351 __tmp79350))))
                (let () (declare (not safe)) (_$E7869978717_)))))))
    (define __compile-lambda%
      (lambda (_stx78638_)
        (let* ((_$e78640_ _stx78638_)
               (_$E7864278654_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78640_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78640_))
              (let* ((_$tgt7864378657_
                      (let () (declare (not safe)) (__AST-e _$e78640_)))
                     (_$hd7864478660_
                      (let () (declare (not safe)) (##car _$tgt7864378657_)))
                     (_$tl7864578663_
                      (let () (declare (not safe)) (##cdr _$tgt7864378657_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7864578663_))
                    (let* ((_$tgt7864678667_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7864578663_)))
                           (_$hd7864778670_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7864678667_)))
                           (_$tl7864878673_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7864678667_))))
                      (let ((_hd78677_ _$hd7864778670_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7864878673_))
                            (let* ((_$tgt7864978679_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7864878673_)))
                                   (_$hd7865078682_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7864978679_)))
                                   (_$tl7865178685_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7864978679_))))
                              (let ((_body78689_ _$hd7865078682_))
                                (if (let ((__tmp79357
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7865178685_))))
                                      (declare (not safe))
                                      (equal? __tmp79357 '()))
                                    (let ((__tmp79352
                                           (let ((__tmp79353
                                                  (let ((__tmp79356
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78677_)))
                                                        (__tmp79354
                                                         (let ((__tmp79355
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78689_))))
                   (declare (not safe))
                   (cons __tmp79355 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79356
                                                          __tmp79354))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79353))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79352 _stx78638_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7864278654_)))))
                            (let () (declare (not safe)) (_$E7864278654_)))))
                    (let () (declare (not safe)) (_$E7864278654_))))
              (let () (declare (not safe)) (_$E7864278654_))))))
    (define __compile-case-lambda%
      (lambda (_stx78430_)
        (letrec ((_variadic?78432_
                  (lambda (_hd78603_)
                    (let* ((_$e78605_ _hd78603_)
                           (_$E7860778623_
                            (lambda ()
                              (let ((_$E7860878620_
                                     (lambda ()
                                       (let ((_$E7860978617_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78605_)))))
                                         '#t))))
                                (if (let ((__tmp79358
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78605_))))
                                      (declare (not safe))
                                      (equal? __tmp79358 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7860878620_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78605_))
                          (let* ((_$tgt7861078626_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78605_)))
                                 (_$hd7861178629_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7861078626_)))
                                 (_$tl7861278632_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7861078626_))))
                            (let ((_rest78636_ _$tl7861278632_))
                              (declare (not safe))
                              (_variadic?78432_ _rest78636_)))
                          (let () (declare (not safe)) (_$E7860778623_))))))
                 (_arity78433_
                  (lambda (_hd78568_)
                    (let _lp78570_ ((_rest78572_ _hd78568_) (_k78573_ '0))
                      (let* ((_$e78575_ _rest78572_)
                             (_$E7857778588_
                              (lambda ()
                                (let ((_$E7857878585_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78575_)))))
                                  _k78573_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78575_))
                            (let* ((_$tgt7857978591_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78575_)))
                                   (_$hd7858078594_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7857978591_)))
                                   (_$tl7858178597_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7857978591_))))
                              (let* ((_rest78601_ _$tl7858178597_)
                                     (__tmp79359
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78573_ '1))))
                                (declare (not safe))
                                (_lp78570_ _rest78601_ __tmp79359)))
                            (let () (declare (not safe)) (_$E7857778588_)))))))
                 (_generate78434_
                  (lambda (_rest78495_ _args78496_ _len78497_)
                    (let* ((_$e78499_ _rest78495_)
                           (_$E7850178512_
                            (lambda ()
                              (let* ((_$E7850278509_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78499_))))
                                     (__tmp79360
                                      (let ((__tmp79361
                                             (let ((__tmp79362
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78496_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79362))))
                                        (declare (not safe))
                                        (cons 'error __tmp79361))))
                                (declare (not safe))
                                (__SRC__% __tmp79360 _stx78430_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78499_))
                          (let* ((_$tgt7850378515_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78499_)))
                                 (_$hd7850478518_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7850378515_)))
                                 (_$tl7850578521_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7850378515_))))
                            (let* ((_clause78525_ _$hd7850478518_)
                                   (_rest78527_ _$tl7850578521_)
                                   (_$e78529_ _clause78525_)
                                   (_$E7853178540_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78529_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78529_))
                                  (let* ((_$tgt7853278543_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78529_)))
                                         (_$hd7853378546_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7853278543_)))
                                         (_$tl7853478549_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7853278543_))))
                                    (let ((_hd78553_ _$hd7853378546_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7853478549_))
                                          (let* ((_$tgt7853578555_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7853478549_)))
                                                 (_$hd7853678558_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7853578555_)))
                                                 (_$tl7853778561_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7853578555_))))
                                            (if (let ((__tmp79377
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7853778561_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79377 '()))
                                                (let ((_clen78565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78433_
                                                          _hd78553_)))
                                                      (_cmp78566_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78432_
                                                              _hd78553_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79363
                                                         (let ((__tmp79364
                                                                (let ((__tmp79374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79375
                                      (let ((__tmp79376
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78565_ '()))))
                                        (declare (not safe))
                                        (cons _len78497_ __tmp79376))))
                                 (declare (not safe))
                                 (cons _cmp78566_ __tmp79375)))
                              (__tmp79365
                               (let ((__tmp79368
                                      (let ((__tmp79369
                                             (let ((__tmp79370
                                                    (let ((__tmp79372
                                                           (let ((__tmp79373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78525_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79373)))
                  (__tmp79371
                   (let () (declare (not safe)) (cons _args78496_ '()))))
              (declare (not safe))
              (cons __tmp79372 __tmp79371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79370))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79369 _stx78430_)))
                                     (__tmp79366
                                      (let ((__tmp79367
                                             (let ()
                                               (declare (not safe))
                                               (_generate78434_
                                                _rest78527_
                                                _args78496_
                                                _len78497_))))
                                        (declare (not safe))
                                        (cons __tmp79367 '()))))
                                 (declare (not safe))
                                 (cons __tmp79368 __tmp79366))))
                          (declare (not safe))
                          (cons __tmp79374 __tmp79365))))
                   (declare (not safe))
                   (cons 'if __tmp79364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79363
                                                     _stx78430_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7853178540_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7853178540_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7853178540_)))))
                          (let () (declare (not safe)) (_$E7850178512_)))))))
          (let* ((_$e78436_ _stx78430_)
                 (_$E7843878470_
                  (lambda ()
                    (let ((_$E7843978452_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78436_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78436_))
                          (let* ((_$tgt7844078455_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78436_)))
                                 (_$hd7844178458_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7844078455_)))
                                 (_$tl7844278461_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7844078455_))))
                            (let ((_clauses78465_ _$tl7844278461_))
                              (let ((_args78467_
                                     (let ((__tmp79378 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79378 _stx78430_)))
                                    (_len78468_
                                     (let ((__tmp79379 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79379 _stx78430_))))
                                (let ((__tmp79380
                                       (let ((__tmp79381
                                              (let ((__tmp79382
                                                     (let ((__tmp79383
                                                            (let ((__tmp79384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79385
                                  (let ((__tmp79388
                                         (let ((__tmp79389
                                                (let ((__tmp79390
                                                       (let ((__tmp79391
                                                              (let ((__tmp79392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79393
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78467_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79393))))
                        (declare (not safe))
                        (__SRC__% __tmp79392 _stx78430_))))
                 (declare (not safe))
                 (cons __tmp79391 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78468_
                                                        __tmp79390))))
                                           (declare (not safe))
                                           (cons __tmp79389 '())))
                                        (__tmp79386
                                         (let ((__tmp79387
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78434_
                                                   _clauses78465_
                                                   _args78467_
                                                   _len78468_))))
                                           (declare (not safe))
                                           (cons __tmp79387 '()))))
                                    (declare (not safe))
                                    (cons __tmp79388 __tmp79386))))
                             (declare (not safe))
                             (cons 'let __tmp79385))))
                      (declare (not safe))
                      (__SRC__% __tmp79384 _stx78430_))))
               (declare (not safe))
               (cons __tmp79383 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78467_
                                                      __tmp79382))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79381))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79380 _stx78430_)))))
                          (let () (declare (not safe)) (_$E7843978452_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78436_))
                (let* ((_$tgt7844378473_
                        (let () (declare (not safe)) (__AST-e _$e78436_)))
                       (_$hd7844478476_
                        (let () (declare (not safe)) (##car _$tgt7844378473_)))
                       (_$tl7844578479_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7844378473_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7844578479_))
                      (let* ((_$tgt7844678483_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7844578479_)))
                             (_$hd7844778486_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7844678483_)))
                             (_$tl7844878489_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7844678483_))))
                        (let ((_clause78493_ _$hd7844778486_))
                          (if (let ((__tmp79395
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7844878489_))))
                                (declare (not safe))
                                (equal? __tmp79395 '()))
                              (let ((__tmp79394
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78493_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79394))
                              (let () (declare (not safe)) (_$E7843878470_)))))
                      (let () (declare (not safe)) (_$E7843878470_))))
                (let () (declare (not safe)) (_$E7843878470_)))))))
    (define __compile-let-form
      (lambda (_stx78199_ _compile-simple78200_ _compile-values78201_)
        (letrec ((_simple-bind?78203_
                  (lambda (_hd78388_)
                    (let* ((_hd7838978399_ _hd78388_)
                           (_else7839278407_ (lambda () '#f)))
                      (let ((_K7839578420_ (lambda (_id78418_) '#t))
                            (_K7839478412_ (lambda () '#t)))
                        (let ((_try-match7839178415_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7838978399_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7839478412_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7839278407_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7838978399_))
                              (let ((_tl7839778425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7838978399_)))
                                    (_hd7839678423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7838978399_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7839778425_))
                                    (let ((_id78428_ _hd7839678423_))
                                      (declare (not safe))
                                      (_K7839578420_ _id78428_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7839178415_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7839178415_))))))))
                 (_car-e78204_
                  (lambda (_hd78386_)
                    (if (let () (declare (not safe)) (pair? _hd78386_))
                        (car _hd78386_)
                        _hd78386_))))
          (let* ((_$e78206_ _stx78199_)
                 (_$E7820878351_
                  (lambda ()
                    (let ((_$E7820978231_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78206_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78206_))
                          (let* ((_$tgt7821078234_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78206_)))
                                 (_$hd7821178237_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7821078234_)))
                                 (_$tl7821278240_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7821078234_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7821278240_))
                                (let* ((_$tgt7821378244_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7821278240_)))
                                       (_$hd7821478247_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7821378244_)))
                                       (_$tl7821578250_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7821378244_))))
                                  (let ((_hd78254_ _$hd7821478247_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7821578250_))
                                        (let* ((_$tgt7821678256_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7821578250_)))
                                               (_$hd7821778259_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7821678256_)))
                                               (_$tl7821878262_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7821678256_))))
                                          (let ((_body78266_ _$hd7821778259_))
                                            (if (let ((__tmp79398
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7821878262_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79398 '()))
                                                (let* ((_hd-ids78306_
                                                        (map (lambda (_bind78268_)
                                                               (let* ((_$e78270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind78268_)
                              (_$E7827278281_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78270_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78270_))
                             (let* ((_$tgt7827378284_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78270_)))
                                    (_$hd7827478287_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7827378284_)))
                                    (_$tl7827578290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7827378284_))))
                               (let ((_ids78294_ _$hd7827478287_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7827578290_))
                                     (let* ((_$tgt7827678296_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7827578290_)))
                                            (_$hd7827778299_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7827678296_)))
                                            (_$tl7827878302_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7827678296_))))
                                       (if (let ((__tmp79396
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7827878302_))))
                                             (declare (not safe))
                                             (equal? __tmp79396 '()))
                                           _ids78294_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7827278281_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7827278281_)))))
                             (let () (declare (not safe)) (_$E7827278281_)))))
                     _hd78254_))
               (_exprs78346_
                (map (lambda (_bind78308_)
                       (let* ((_$e78310_ _bind78308_)
                              (_$E7831278321_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78310_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78310_))
                             (let* ((_$tgt7831378324_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78310_)))
                                    (_$hd7831478327_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7831378324_)))
                                    (_$tl7831578330_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7831378324_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7831578330_))
                                   (let* ((_$tgt7831678334_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7831578330_)))
                                          (_$hd7831778337_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7831678334_)))
                                          (_$tl7831878340_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7831678334_))))
                                     (let ((_expr78344_ _$hd7831778337_))
                                       (if (let ((__tmp79397
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7831878340_))))
                                             (declare (not safe))
                                             (equal? __tmp79397 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78344_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7831278321_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7831278321_))))
                             (let () (declare (not safe)) (_$E7831278321_)))))
                     _hd78254_))
               (_body78348_
                (let () (declare (not safe)) (__compile _body78266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?78203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids78306_))
              (_compile-simple78200_
               (map _car-e78204_ _hd-ids78306_)
               _exprs78346_
               _body78348_)
              (_compile-values78201_ _hd-ids78306_ _exprs78346_ _body78348_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7820978231_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7820978231_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7820978231_))))
                          (let () (declare (not safe)) (_$E7820978231_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78206_))
                (let* ((_$tgt7821978354_
                        (let () (declare (not safe)) (__AST-e _$e78206_)))
                       (_$hd7822078357_
                        (let () (declare (not safe)) (##car _$tgt7821978354_)))
                       (_$tl7822178360_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7821978354_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7822178360_))
                      (let* ((_$tgt7822278364_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7822178360_)))
                             (_$hd7822378367_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7822278364_)))
                             (_$tl7822478370_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7822278364_))))
                        (if (let ((__tmp79400
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7822378367_))))
                              (declare (not safe))
                              (equal? __tmp79400 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7822478370_))
                                (let* ((_$tgt7822578374_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7822478370_)))
                                       (_$hd7822678377_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7822578374_)))
                                       (_$tl7822778380_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7822578374_))))
                                  (let ((_body78384_ _$hd7822678377_))
                                    (if (let ((__tmp79399
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7822778380_))))
                                          (declare (not safe))
                                          (equal? __tmp79399 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78384_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7820878351_)))))
                                (let () (declare (not safe)) (_$E7820878351_)))
                            (let () (declare (not safe)) (_$E7820878351_))))
                      (let () (declare (not safe)) (_$E7820878351_))))
                (let () (declare (not safe)) (_$E7820878351_)))))))
    (define __compile-let-values%
      (lambda (_stx78014_)
        (letrec ((_compile-simple78016_
                  (lambda (_hd-ids78195_ _exprs78196_ _body78197_)
                    (let ((__tmp79401
                           (let ((__tmp79402
                                  (let ((__tmp79404
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78195_)
                                              _exprs78196_))
                                        (__tmp79403
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78197_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79404 __tmp79403))))
                             (declare (not safe))
                             (cons 'let __tmp79402))))
                      (declare (not safe))
                      (__SRC__% __tmp79401 _stx78014_))))
                 (_compile-values78017_
                  (lambda (_hd-ids78113_ _exprs78114_ _body78115_)
                    (let _lp78117_ ((_rest78119_ _hd-ids78113_)
                                    (_exprs78120_ _exprs78114_)
                                    (_bind78121_ '())
                                    (_post78122_ '()))
                      (let* ((_rest7812378137_ _rest78119_)
                             (_else7812678145_
                              (lambda ()
                                (let ((__tmp79405
                                       (let ((__tmp79406
                                              (let ((__tmp79409
                                                     (reverse _bind78121_))
                                                    (__tmp79407
                                                     (let ((__tmp79408
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post78018_
                                                               _post78122_
                                                               _body78115_))))
                                                       (declare (not safe))
                                                       (cons __tmp79408 '()))))
                                                (declare (not safe))
                                                (cons __tmp79409 __tmp79407))))
                                         (declare (not safe))
                                         (cons 'let __tmp79406))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79405 _stx78014_)))))
                        (let ((_K7813178178_
                               (lambda (_rest78175_ _id78176_)
                                 (let ((__tmp79415 (cdr _exprs78120_))
                                       (__tmp79410
                                        (let ((__tmp79411
                                               (let ((__tmp79414
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78176_)))
                                                     (__tmp79412
                                                      (let ((__tmp79413
                                                             (car _exprs78120_)))
                                                        (declare (not safe))
                                                        (cons __tmp79413
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79414
                                                       __tmp79412))))
                                          (declare (not safe))
                                          (cons __tmp79411 _bind78121_))))
                                   (declare (not safe))
                                   (_lp78117_
                                    _rest78175_
                                    __tmp79415
                                    __tmp79410
                                    _post78122_))))
                              (_K7812878160_
                               (lambda (_rest78149_ _hd78150_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78150_))
                                     (let ((__tmp79436 (cdr _exprs78120_))
                                           (__tmp79429
                                            (let ((__tmp79430
                                                   (let ((__tmp79435
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78150_)))
                                                         (__tmp79431
                                                          (let ((__tmp79432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79433
                                (let ((__tmp79434 (car _exprs78120_)))
                                  (declare (not safe))
                                  (cons __tmp79434 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79433))))
                    (declare (not safe))
                    (cons __tmp79432 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79435
                                                           __tmp79431))))
                                              (declare (not safe))
                                              (cons __tmp79430 _bind78121_))))
                                       (declare (not safe))
                                       (_lp78117_
                                        _rest78149_
                                        __tmp79436
                                        __tmp79429
                                        _post78122_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78150_))
                                         (let* ((_len78152_ (length _hd78150_))
                                                (_tmp78154_
                                                 (let ((__tmp79416 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79416))))
                                           (let ((__tmp79428
                                                  (cdr _exprs78120_))
                                                 (__tmp79424
                                                  (let ((__tmp79425
                                                         (let ((__tmp79426
                                                                (let ((__tmp79427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs78120_)))
                          (declare (not safe))
                          (cons __tmp79427 '()))))
                   (declare (not safe))
                   (cons _tmp78154_ __tmp79426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79425
                                                          _bind78121_)))
                                                 (__tmp79417
                                                  (let ((__tmp79418
                                                         (let ((__tmp79419
                                                                (let ((__tmp79420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79422
                                      (lambda (_id78157_ _k78158_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78157_))
                                            (let ((__tmp79423
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78157_))))
                                              (declare (not safe))
                                              (cons __tmp79423 _k78158_))
                                            '#f)))
                                     (__tmp79421 (iota _len78152_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79422
                                  _hd78150_
                                  __tmp79421))))
                          (declare (not safe))
                          (cons _len78152_ __tmp79420))))
                   (declare (not safe))
                   (cons _tmp78154_ __tmp79419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79418
                                                          _post78122_))))
                                             (declare (not safe))
                                             (_lp78117_
                                              _rest78149_
                                              __tmp79428
                                              __tmp79424
                                              __tmp79417)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx78014_
                                            _hd78150_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7812378137_))
                              (let ((_tl7813378183_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7812378137_)))
                                    (_hd7813278181_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7812378137_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7813278181_))
                                    (let ((_tl7813578188_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7813278181_)))
                                          (_hd7813478186_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7813278181_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7813578188_))
                                          (let ((_id78191_ _hd7813478186_)
                                                (_rest78193_ _tl7813378183_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7813178178_
                                               _rest78193_
                                               _id78191_)))
                                          (let ((_hd78168_ _hd7813278181_)
                                                (_rest78170_ _tl7813378183_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7812878160_
                                               _rest78170_
                                               _hd78168_)))))
                                    (let ((_hd78168_ _hd7813278181_)
                                          (_rest78170_ _tl7813378183_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7812878160_
                                         _rest78170_
                                         _hd78168_)))))
                              (let ()
                                (declare (not safe))
                                (_else7812678145_))))))))
                 (_compile-post78018_
                  (lambda (_post78020_ _body78021_)
                    (let _lp78023_ ((_rest78025_ _post78020_)
                                    (_check78026_ '())
                                    (_bind78027_ '()))
                      (let* ((_rest7802878040_ _rest78025_)
                             (_else7803078048_
                              (lambda ()
                                (let ((__tmp79437
                                       (let ((__tmp79438
                                              (let ((__tmp79439
                                                     (let ((__tmp79440
                                                            (let ((__tmp79441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79442
                                  (let ((__tmp79443
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78021_ '()))))
                                    (declare (not safe))
                                    (cons _bind78027_ __tmp79443))))
                             (declare (not safe))
                             (cons 'let __tmp79442))))
                      (declare (not safe))
                      (__SRC__% __tmp79441 _stx78014_))))
               (declare (not safe))
               (cons __tmp79440 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79439
                                                        _check78026_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79438))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79437 _stx78014_))))
                             (_K7803278087_
                              (lambda (_rest78051_
                                       _init78052_
                                       _len78053_
                                       _tmp78054_)
                                (let ((__tmp79451
                                       (let ((__tmp79452
                                              (let ((__tmp79453
                                                     (let ((__tmp79454
                                                            (let ((__tmp79455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len78053_ '()))))
                      (declare (not safe))
                      (cons _tmp78054_ __tmp79455))))
               (declare (not safe))
               (cons '__check-values __tmp79454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79453
                                                 _stx78014_))))
                                         (declare (not safe))
                                         (cons __tmp79452 _check78026_)))
                                      (__tmp79444
                                       (let ((__tmp79445
                                              (lambda (_hd78056_ _r78057_)
                                                (let* ((_hd7805878065_
                                                        _hd78056_)
                                                       (_E7806078069_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7805878065_))))
               (_K7806178075_
                (lambda (_k78072_ _id78073_)
                  (let ((__tmp79446
                         (let ((__tmp79447
                                (let ((__tmp79448
                                       (let ((__tmp79449
                                              (let ((__tmp79450
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k78072_ '()))))
                                                (declare (not safe))
                                                (cons _tmp78054_ __tmp79450))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79449))))
                                  (declare (not safe))
                                  (cons __tmp79448 '()))))
                           (declare (not safe))
                           (cons _id78073_ __tmp79447))))
                    (declare (not safe))
                    (cons __tmp79446 _r78057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7805878065_))
                                                      (let ((_hd7806278078_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7805878065_)))
                    (_tl7806378080_
                     (let () (declare (not safe)) (##cdr _hd7805878065_))))
                (let* ((_id78083_ _hd7806278078_) (_k78085_ _tl7806378080_))
                  (declare (not safe))
                  (_K7806178075_ _k78085_ _id78083_)))
              (let () (declare (not safe)) (_E7806078069_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79445
                                                 _bind78027_
                                                 _init78052_))))
                                  (declare (not safe))
                                  (_lp78023_
                                   _rest78051_
                                   __tmp79451
                                   __tmp79444)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7802878040_))
                            (let ((_hd7803378090_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7802878040_)))
                                  (_tl7803478092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7802878040_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7803378090_))
                                  (let ((_hd7803578095_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7803378090_)))
                                        (_tl7803678097_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7803378090_))))
                                    (let ((_tmp78100_ _hd7803578095_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7803678097_))
                                          (let ((_hd7803778102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7803678097_)))
                                                (_tl7803878104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7803678097_))))
                                            (let* ((_len78107_ _hd7803778102_)
                                                   (_init78109_ _tl7803878104_)
                                                   (_rest78111_
                                                    _tl7803478092_))
                                              (declare (not safe))
                                              (_K7803278087_
                                               _rest78111_
                                               _init78109_
                                               _len78107_
                                               _tmp78100_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7803078048_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7803078048_))))
                            (let ()
                              (declare (not safe))
                              (_else7803078048_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx78014_
             _compile-simple78016_
             _compile-values78017_)))))
    (define __compile-letrec-values%
      (lambda (_stx77814_)
        (letrec ((_compile-simple77816_
                  (lambda (_hd-ids78010_ _exprs78011_ _body78012_)
                    (let ((__tmp79456
                           (let ((__tmp79457
                                  (let ((__tmp79459
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78010_)
                                              _exprs78011_))
                                        (__tmp79458
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78012_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79459 __tmp79458))))
                             (declare (not safe))
                             (cons 'letrec __tmp79457))))
                      (declare (not safe))
                      (__SRC__% __tmp79456 _stx77814_))))
                 (_compile-values77817_
                  (lambda (_hd-ids77924_ _exprs77925_ _body77926_)
                    (let _lp77928_ ((_rest77930_ _hd-ids77924_)
                                    (_exprs77931_ _exprs77925_)
                                    (_pre77932_ '())
                                    (_bind77933_ '())
                                    (_post77934_ '()))
                      (let* ((_rest7793577949_ _rest77930_)
                             (_else7793877957_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77818_
                                   _pre77932_
                                   _bind77933_
                                   _post77934_
                                   _body77926_)))))
                        (let ((_K7794377993_
                               (lambda (_rest77990_ _id77991_)
                                 (let ((__tmp79465 (cdr _exprs77931_))
                                       (__tmp79460
                                        (let ((__tmp79461
                                               (let ((__tmp79464
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id77991_)))
                                                     (__tmp79462
                                                      (let ((__tmp79463
                                                             (car _exprs77931_)))
                                                        (declare (not safe))
                                                        (cons __tmp79463
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79464
                                                       __tmp79462))))
                                          (declare (not safe))
                                          (cons __tmp79461 _bind77933_))))
                                   (declare (not safe))
                                   (_lp77928_
                                    _rest77990_
                                    __tmp79465
                                    _pre77932_
                                    __tmp79460
                                    _post77934_))))
                              (_K7794077975_
                               (lambda (_rest77961_ _hd77962_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77962_))
                                     (let ((__tmp79493 (cdr _exprs77931_))
                                           (__tmp79486
                                            (let ((__tmp79487
                                                   (let ((__tmp79492
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd77962_)))
                                                         (__tmp79488
                                                          (let ((__tmp79489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79490
                                (let ((__tmp79491 (car _exprs77931_)))
                                  (declare (not safe))
                                  (cons __tmp79491 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79490))))
                    (declare (not safe))
                    (cons __tmp79489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79492
                                                           __tmp79488))))
                                              (declare (not safe))
                                              (cons __tmp79487 _bind77933_))))
                                       (declare (not safe))
                                       (_lp77928_
                                        _rest77961_
                                        __tmp79493
                                        _pre77932_
                                        __tmp79486
                                        _post77934_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd77962_))
                                         (let* ((_len77964_ (length _hd77962_))
                                                (_tmp77966_
                                                 (let ((__tmp79466 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79466))))
                                           (let ((__tmp79485
                                                  (cdr _exprs77931_))
                                                 (__tmp79478
                                                  (let ((__tmp79479
                                                         (lambda (_id77969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r77970_)
                   (if (let () (declare (not safe)) (__AST-e _id77969_))
                       (let ((__tmp79480
                              (let ((__tmp79484
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id77969_)))
                                    (__tmp79481
                                     (let ((__tmp79482
                                            (let ((__tmp79483
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79483))))
                                       (declare (not safe))
                                       (cons __tmp79482 '()))))
                                (declare (not safe))
                                (cons __tmp79484 __tmp79481))))
                         (declare (not safe))
                         (cons __tmp79480 _r77970_))
                       _r77970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79479
                                                            _pre77932_
                                                            _hd77962_)))
                                                 (__tmp79474
                                                  (let ((__tmp79475
                                                         (let ((__tmp79476
                                                                (let ((__tmp79477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77931_)))
                          (declare (not safe))
                          (cons __tmp79477 '()))))
                   (declare (not safe))
                   (cons _tmp77966_ __tmp79476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79475
                                                          _bind77933_)))
                                                 (__tmp79467
                                                  (let ((__tmp79468
                                                         (let ((__tmp79469
                                                                (let ((__tmp79470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79472
                                      (lambda (_id77972_ _k77973_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id77972_))
                                            (let ((__tmp79473
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id77972_))))
                                              (declare (not safe))
                                              (cons __tmp79473 _k77973_))
                                            '#f)))
                                     (__tmp79471 (iota _len77964_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79472
                                  _hd77962_
                                  __tmp79471))))
                          (declare (not safe))
                          (cons _len77964_ __tmp79470))))
                   (declare (not safe))
                   (cons _tmp77966_ __tmp79469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79468
                                                          _post77934_))))
                                             (declare (not safe))
                                             (_lp77928_
                                              _rest77961_
                                              __tmp79485
                                              __tmp79478
                                              __tmp79474
                                              __tmp79467)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77814_
                                            _hd77962_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7793577949_))
                              (let ((_tl7794577998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7793577949_)))
                                    (_hd7794477996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7793577949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7794477996_))
                                    (let ((_tl7794778003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7794477996_)))
                                          (_hd7794678001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7794477996_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7794778003_))
                                          (let ((_id78006_ _hd7794678001_)
                                                (_rest78008_ _tl7794577998_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7794377993_
                                               _rest78008_
                                               _id78006_)))
                                          (let ((_hd77983_ _hd7794477996_)
                                                (_rest77985_ _tl7794577998_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7794077975_
                                               _rest77985_
                                               _hd77983_)))))
                                    (let ((_hd77983_ _hd7794477996_)
                                          (_rest77985_ _tl7794577998_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7794077975_
                                         _rest77985_
                                         _hd77983_)))))
                              (let ()
                                (declare (not safe))
                                (_else7793877957_))))))))
                 (_compile-inner77818_
                  (lambda (_pre77919_ _bind77920_ _post77921_ _body77922_)
                    (if (let () (declare (not safe)) (null? _pre77919_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77819_
                           _bind77920_
                           _post77921_
                           _body77922_))
                        (let ((__tmp79494
                               (let ((__tmp79495
                                      (let ((__tmp79498 (reverse _pre77919_))
                                            (__tmp79496
                                             (let ((__tmp79497
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77819_
                                                       _bind77920_
                                                       _post77921_
                                                       _body77922_))))
                                               (declare (not safe))
                                               (cons __tmp79497 '()))))
                                        (declare (not safe))
                                        (cons __tmp79498 __tmp79496))))
                                 (declare (not safe))
                                 (cons 'let __tmp79495))))
                          (declare (not safe))
                          (__SRC__% __tmp79494 _stx77814_)))))
                 (_compile-bind77819_
                  (lambda (_bind77915_ _post77916_ _body77917_)
                    (let ((__tmp79499
                           (let ((__tmp79500
                                  (let ((__tmp79503 (reverse _bind77915_))
                                        (__tmp79501
                                         (let ((__tmp79502
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77820_
                                                   _post77916_
                                                   _body77917_))))
                                           (declare (not safe))
                                           (cons __tmp79502 '()))))
                                    (declare (not safe))
                                    (cons __tmp79503 __tmp79501))))
                             (declare (not safe))
                             (cons 'letrec __tmp79500))))
                      (declare (not safe))
                      (__SRC__% __tmp79499 _stx77814_))))
                 (_compile-post77820_
                  (lambda (_post77822_ _body77823_)
                    (let _lp77825_ ((_rest77827_ _post77822_)
                                    (_check77828_ '())
                                    (_bind77829_ '()))
                      (let* ((_rest7783077842_ _rest77827_)
                             (_else7783277850_
                              (lambda ()
                                (let ((__tmp79504
                                       (let ((__tmp79505
                                              (let ((__tmp79506
                                                     (let ((__tmp79507
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79507 _bind77829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79506
                                                        _check77828_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79505))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79504 _stx77814_))))
                             (_K7783477889_
                              (lambda (_rest77853_
                                       _init77854_
                                       _len77855_
                                       _tmp77856_)
                                (let ((__tmp79516
                                       (let ((__tmp79517
                                              (let ((__tmp79518
                                                     (let ((__tmp79519
                                                            (let ((__tmp79520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77855_ '()))))
                      (declare (not safe))
                      (cons _tmp77856_ __tmp79520))))
               (declare (not safe))
               (cons '__check-values __tmp79519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79518
                                                 _stx77814_))))
                                         (declare (not safe))
                                         (cons __tmp79517 _check77828_)))
                                      (__tmp79508
                                       (let ((__tmp79509
                                              (lambda (_hd77858_ _r77859_)
                                                (let* ((_hd7786077867_
                                                        _hd77858_)
                                                       (_E7786277871_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7786077867_))))
               (_K7786377877_
                (lambda (_k77874_ _id77875_)
                  (let ((__tmp79510
                         (let ((__tmp79511
                                (let ((__tmp79512
                                       (let ((__tmp79513
                                              (let ((__tmp79514
                                                     (let ((__tmp79515
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77856_ __tmp79515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79514))))
                                         (declare (not safe))
                                         (cons __tmp79513 '()))))
                                  (declare (not safe))
                                  (cons _id77875_ __tmp79512))))
                           (declare (not safe))
                           (cons 'set! __tmp79511))))
                    (declare (not safe))
                    (cons __tmp79510 _r77859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7786077867_))
                                                      (let ((_hd7786477880_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7786077867_)))
                    (_tl7786577882_
                     (let () (declare (not safe)) (##cdr _hd7786077867_))))
                (let* ((_id77885_ _hd7786477880_) (_k77887_ _tl7786577882_))
                  (declare (not safe))
                  (_K7786377877_ _k77887_ _id77885_)))
              (let () (declare (not safe)) (_E7786277871_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79509
                                                 _bind77829_
                                                 _init77854_))))
                                  (declare (not safe))
                                  (_lp77825_
                                   _rest77853_
                                   __tmp79516
                                   __tmp79508)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7783077842_))
                            (let ((_hd7783577892_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7783077842_)))
                                  (_tl7783677894_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7783077842_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7783577892_))
                                  (let ((_hd7783777897_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7783577892_)))
                                        (_tl7783877899_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7783577892_))))
                                    (let ((_tmp77902_ _hd7783777897_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7783877899_))
                                          (let ((_hd7783977904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7783877899_)))
                                                (_tl7784077906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7783877899_))))
                                            (let* ((_len77909_ _hd7783977904_)
                                                   (_init77911_ _tl7784077906_)
                                                   (_rest77913_
                                                    _tl7783677894_))
                                              (declare (not safe))
                                              (_K7783477889_
                                               _rest77913_
                                               _init77911_
                                               _len77909_
                                               _tmp77902_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7783277850_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7783277850_))))
                            (let ()
                              (declare (not safe))
                              (_else7783277850_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77814_
             _compile-simple77816_
             _compile-values77817_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77569_)
        (letrec ((_compile-simple77571_
                  (lambda (_hd-ids77810_ _exprs77811_ _body77812_)
                    (let ((__tmp79521
                           (let ((__tmp79522
                                  (let ((__tmp79524
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77810_)
                                              _exprs77811_))
                                        (__tmp79523
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77812_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79524 __tmp79523))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79522))))
                      (declare (not safe))
                      (__SRC__% __tmp79521 _stx77569_))))
                 (_compile-values77572_
                  (lambda (_hd-ids77721_ _exprs77722_ _body77723_)
                    (let _lp77725_ ((_rest77727_ _hd-ids77721_)
                                    (_exprs77728_ _exprs77722_)
                                    (_bind77729_ '())
                                    (_post77730_ '()))
                      (let* ((_rest7773177745_ _rest77727_)
                             (_else7773477753_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77573_
                                   _bind77729_
                                   _post77730_
                                   _body77723_)))))
                        (let ((_K7773977793_
                               (lambda (_rest77788_ _hd77789_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77789_))
                                     (let ((_id77791_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77789_))))
                                       (let ((__tmp79539 (cdr _exprs77728_))
                                             (__tmp79534
                                              (let ((__tmp79535
                                                     (let ((__tmp79536
                                                            (let ((__tmp79537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79538
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79538))))
                      (declare (not safe))
                      (cons __tmp79537 '()))))
               (declare (not safe))
               (cons _id77791_ __tmp79536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79535 _bind77729_)))
                                             (__tmp79530
                                              (let ((__tmp79531
                                                     (let ((__tmp79532
                                                            (let ((__tmp79533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77728_)))
                      (declare (not safe))
                      (cons __tmp79533 '()))))
               (declare (not safe))
               (cons _id77791_ __tmp79532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79531
                                                      _post77730_))))
                                         (declare (not safe))
                                         (_lp77725_
                                          _rest77788_
                                          __tmp79539
                                          __tmp79534
                                          __tmp79530)))
                                     (let ((__tmp79529 (cdr _exprs77728_))
                                           (__tmp79525
                                            (let ((__tmp79526
                                                   (let ((__tmp79527
                                                          (let ((__tmp79528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77728_)))
                    (declare (not safe))
                    (cons __tmp79528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79527))))
                                              (declare (not safe))
                                              (cons __tmp79526 _post77730_))))
                                       (declare (not safe))
                                       (_lp77725_
                                        _rest77788_
                                        __tmp79529
                                        _bind77729_
                                        __tmp79525)))))
                              (_K7773677773_
                               (lambda (_rest77757_ _hd77758_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77758_))
                                     (let ((_id77760_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77758_))))
                                       (let ((__tmp79575 (cdr _exprs77728_))
                                             (__tmp79570
                                              (let ((__tmp79571
                                                     (let ((__tmp79572
                                                            (let ((__tmp79573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79574
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79574))))
                      (declare (not safe))
                      (cons __tmp79573 '()))))
               (declare (not safe))
               (cons _id77760_ __tmp79572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79571 _bind77729_)))
                                             (__tmp79564
                                              (let ((__tmp79565
                                                     (let ((__tmp79566
                                                            (let ((__tmp79567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79568
                                  (let ((__tmp79569 (car _exprs77728_)))
                                    (declare (not safe))
                                    (cons __tmp79569 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79568))))
                      (declare (not safe))
                      (cons __tmp79567 '()))))
               (declare (not safe))
               (cons _id77760_ __tmp79566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79565
                                                      _post77730_))))
                                         (declare (not safe))
                                         (_lp77725_
                                          _rest77757_
                                          __tmp79575
                                          __tmp79570
                                          __tmp79564)))
                                     (if (let ((__tmp79563
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77758_))))
                                           (declare (not safe))
                                           (not __tmp79563))
                                         (let ((__tmp79562 (cdr _exprs77728_))
                                               (__tmp79558
                                                (let ((__tmp79559
                                                       (let ((__tmp79560
                                                              (let ((__tmp79561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77728_)))
                        (declare (not safe))
                        (cons __tmp79561 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79559
                                                        _post77730_))))
                                           (declare (not safe))
                                           (_lp77725_
                                            _rest77757_
                                            __tmp79562
                                            _bind77729_
                                            __tmp79558))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77758_))
                                             (let* ((_len77762_
                                                     (length _hd77758_))
                                                    (_tmp77764_
                                                     (let ((__tmp79540
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79540))))
                                               (let ((__tmp79557
                                                      (cdr _exprs77728_))
                                                     (__tmp79550
                                                      (let ((__tmp79551
                                                             (lambda (_id77767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77768_)
                       (if (let () (declare (not safe)) (__AST-e _id77767_))
                           (let ((__tmp79552
                                  (let ((__tmp79556
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77767_)))
                                        (__tmp79553
                                         (let ((__tmp79554
                                                (let ((__tmp79555
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79555))))
                                           (declare (not safe))
                                           (cons __tmp79554 '()))))
                                    (declare (not safe))
                                    (cons __tmp79556 __tmp79553))))
                             (declare (not safe))
                             (cons __tmp79552 _r77768_))
                           _r77768_))))
                (declare (not safe))
                (foldl1 __tmp79551 _bind77729_ _hd77758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79541
                                                      (let ((__tmp79542
                                                             (let ((__tmp79543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79549 (car _exprs77728_))
                                  (__tmp79544
                                   (let ((__tmp79545
                                          (let ((__tmp79547
                                                 (lambda (_id77770_ _k77771_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77770_))
                                                       (let ((__tmp79548
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77770_))))
                 (declare (not safe))
                 (cons __tmp79548 _k77771_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79546 (iota _len77762_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79547
                                             _hd77758_
                                             __tmp79546))))
                                     (declare (not safe))
                                     (cons _len77762_ __tmp79545))))
                              (declare (not safe))
                              (cons __tmp79549 __tmp79544))))
                       (declare (not safe))
                       (cons _tmp77764_ __tmp79543))))
                (declare (not safe))
                (cons __tmp79542 _post77730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77725_
                                                  _rest77757_
                                                  __tmp79557
                                                  __tmp79550
                                                  __tmp79541)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77569_
                                                _hd77758_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7773177745_))
                              (let ((_tl7774177798_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7773177745_)))
                                    (_hd7774077796_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7773177745_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7774077796_))
                                    (let ((_tl7774377803_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7774077796_)))
                                          (_hd7774277801_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7774077796_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7774377803_))
                                          (let ((_hd77806_ _hd7774277801_)
                                                (_rest77808_ _tl7774177798_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7773977793_
                                               _rest77808_
                                               _hd77806_)))
                                          (let ((_hd77781_ _hd7774077796_)
                                                (_rest77783_ _tl7774177798_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7773677773_
                                               _rest77783_
                                               _hd77781_)))))
                                    (let ((_hd77781_ _hd7774077796_)
                                          (_rest77783_ _tl7774177798_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7773677773_
                                         _rest77783_
                                         _hd77781_)))))
                              (let ()
                                (declare (not safe))
                                (_else7773477753_))))))))
                 (_compile-bind77573_
                  (lambda (_bind77717_ _post77718_ _body77719_)
                    (let ((__tmp79576
                           (let ((__tmp79577
                                  (let ((__tmp79580 (reverse _bind77717_))
                                        (__tmp79578
                                         (let ((__tmp79579
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77574_
                                                   _post77718_
                                                   _body77719_))))
                                           (declare (not safe))
                                           (cons __tmp79579 '()))))
                                    (declare (not safe))
                                    (cons __tmp79580 __tmp79578))))
                             (declare (not safe))
                             (cons 'let __tmp79577))))
                      (declare (not safe))
                      (__SRC__% __tmp79576 _stx77569_))))
                 (_compile-post77574_
                  (lambda (_post77576_ _body77577_)
                    (let ((__tmp79581
                           (let ((__tmp79582
                                  (let ((__tmp79583
                                         (let ((__tmp79585
                                                (lambda (_hd77579_ _r77580_)
                                                  (let* ((_hd7758177604_
                                                          _hd77579_)
                                                         (_E7758577608_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7758177604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7759877702_
                                                           (lambda (_expr77700_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77700_ _r77580_))))
                  (_K7759377680_
                   (lambda (_expr77677_ _id77678_)
                     (let ((__tmp79586
                            (let ((__tmp79587
                                   (let ((__tmp79588
                                          (let ((__tmp79589
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77677_ '()))))
                                            (declare (not safe))
                                            (cons _id77678_ __tmp79589))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79588))))
                              (declare (not safe))
                              (__SRC__% __tmp79587 _stx77569_))))
                       (declare (not safe))
                       (cons __tmp79586 _r77580_))))
                  (_K7758677647_
                   (lambda (_init77612_ _len77613_ _expr77614_ _tmp77615_)
                     (let ((__tmp79590
                            (let ((__tmp79591
                                   (let ((__tmp79592
                                          (let ((__tmp79606
                                                 (let ((__tmp79607
                                                        (let ((__tmp79608
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77614_ '()))))
                  (declare (not safe))
                  (cons _tmp77615_ __tmp79608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79607 '())))
                                                (__tmp79593
                                                 (let ((__tmp79602
                                                        (let ((__tmp79603
                                                               (let ((__tmp79604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79605
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77613_ '()))))
                                (declare (not safe))
                                (cons _tmp77615_ __tmp79605))))
                         (declare (not safe))
                         (cons '__check-values __tmp79604))))
                  (declare (not safe))
                  (__SRC__% __tmp79603 _stx77569_)))
               (__tmp79594
                (let ((__tmp79595
                       (map (lambda (_hd77617_)
                              (let* ((_hd7761877625_ _hd77617_)
                                     (_E7762077629_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7761877625_))))
                                     (_K7762177635_
                                      (lambda (_k77632_ _id77633_)
                                        (let ((__tmp79596
                                               (let ((__tmp79597
                                                      (let ((__tmp79598
                                                             (let ((__tmp79599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79600
                                   (let ((__tmp79601
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77632_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77615_ __tmp79601))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79600))))
                       (declare (not safe))
                       (cons __tmp79599 '()))))
                (declare (not safe))
                (cons _id77633_ __tmp79598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79597))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79596 _stx77569_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7761877625_))
                                    (let ((_hd7762277638_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7761877625_)))
                                          (_tl7762377640_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7761877625_))))
                                      (let* ((_id77643_ _hd7762277638_)
                                             (_k77645_ _tl7762377640_))
                                        (declare (not safe))
                                        (_K7762177635_ _k77645_ _id77643_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7762077629_)))))
                            _init77612_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79602
                                                         __tmp79594))))
                                            (declare (not safe))
                                            (cons __tmp79606 __tmp79593))))
                                     (declare (not safe))
                                     (cons 'let __tmp79592))))
                              (declare (not safe))
                              (__SRC__% __tmp79591 _stx77569_))))
                       (declare (not safe))
                       (cons __tmp79590 _r77580_)))))
              (if (let () (declare (not safe)) (##pair? _hd7758177604_))
                  (let ((_tl7760077707_
                         (let () (declare (not safe)) (##cdr _hd7758177604_)))
                        (_hd7759977705_
                         (let () (declare (not safe)) (##car _hd7758177604_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7759977705_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7760077707_))
                            (let ((_tl7760277712_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7760077707_)))
                                  (_hd7760177710_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7760077707_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7760277712_))
                                  (let ((_expr77715_ _hd7760177710_))
                                    (declare (not safe))
                                    (_K7759877702_ _expr77715_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7760277712_))
                                      (let ((_tl7759277666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7760277712_)))
                                            (_hd7759177664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7760277712_))))
                                        (let ((_tmp77655_ _hd7759977705_)
                                              (_expr77662_ _hd7760177710_)
                                              (_len77669_ _hd7759177664_)
                                              (_init77671_ _tl7759277666_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7758677647_
                                             _init77671_
                                             _len77669_
                                             _expr77662_
                                             _tmp77655_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7758577608_)))))
                            (let () (declare (not safe)) (_E7758577608_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7760077707_))
                            (let ((_tl7759777692_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7760077707_)))
                                  (_hd7759677690_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7760077707_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7759777692_))
                                  (let ((_id77688_ _hd7759977705_)
                                        (_expr77695_ _hd7759677690_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7759377680_ _expr77695_ _id77688_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7759777692_))
                                      (let ((_tl7759277666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7759777692_)))
                                            (_hd7759177664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7759777692_))))
                                        (let ((_tmp77655_ _hd7759977705_)
                                              (_expr77662_ _hd7759677690_)
                                              (_len77669_ _hd7759177664_)
                                              (_init77671_ _tl7759277666_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7758677647_
                                             _init77671_
                                             _len77669_
                                             _expr77662_
                                             _tmp77655_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7758577608_)))))
                            (let () (declare (not safe)) (_E7758577608_)))))
                  (let () (declare (not safe)) (_E7758577608_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79584 (list _body77577_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79585
                                                   __tmp79584
                                                   _post77576_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79583))))
                             (declare (not safe))
                             (cons 'begin __tmp79582))))
                      (declare (not safe))
                      (__SRC__% __tmp79581 _stx77569_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77569_
             _compile-simple77571_
             _compile-values77572_)))))
    (define __compile-call%
      (lambda (_stx77529_)
        (let* ((_$e77531_ _stx77529_)
               (_$E7753377542_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77531_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77531_))
              (let* ((_$tgt7753477545_
                      (let () (declare (not safe)) (__AST-e _$e77531_)))
                     (_$hd7753577548_
                      (let () (declare (not safe)) (##car _$tgt7753477545_)))
                     (_$tl7753677551_
                      (let () (declare (not safe)) (##cdr _$tgt7753477545_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7753677551_))
                    (let* ((_$tgt7753777555_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7753677551_)))
                           (_$hd7753877558_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7753777555_)))
                           (_$tl7753977561_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7753777555_))))
                      (let* ((_rator77565_ _$hd7753877558_)
                             (_rands77567_ _$tl7753977561_)
                             (__tmp79609
                              (let ((__tmp79611
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77565_)))
                                    (__tmp79610 (map __compile _rands77567_)))
                                (declare (not safe))
                                (cons __tmp79611 __tmp79610))))
                        (declare (not safe))
                        (__SRC__% __tmp79609 _stx77529_)))
                    (let () (declare (not safe)) (_$E7753377542_))))
              (let () (declare (not safe)) (_$E7753377542_))))))
    (define __compile-ref%
      (lambda (_stx77491_)
        (let* ((_$e77493_ _stx77491_)
               (_$E7749577504_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77493_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77493_))
              (let* ((_$tgt7749677507_
                      (let () (declare (not safe)) (__AST-e _$e77493_)))
                     (_$hd7749777510_
                      (let () (declare (not safe)) (##car _$tgt7749677507_)))
                     (_$tl7749877513_
                      (let () (declare (not safe)) (##cdr _$tgt7749677507_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7749877513_))
                    (let* ((_$tgt7749977517_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7749877513_)))
                           (_$hd7750077520_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7749977517_)))
                           (_$tl7750177523_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7749977517_))))
                      (let ((_id77527_ _$hd7750077520_))
                        (if (let ((__tmp79612
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7750177523_))))
                              (declare (not safe))
                              (equal? __tmp79612 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77527_ _stx77491_))
                            (let () (declare (not safe)) (_$E7749577504_)))))
                    (let () (declare (not safe)) (_$E7749577504_))))
              (let () (declare (not safe)) (_$E7749577504_))))))
    (define __compile-setq%
      (lambda (_stx77438_)
        (let* ((_$e77440_ _stx77438_)
               (_$E7744277454_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77440_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77440_))
              (let* ((_$tgt7744377457_
                      (let () (declare (not safe)) (__AST-e _$e77440_)))
                     (_$hd7744477460_
                      (let () (declare (not safe)) (##car _$tgt7744377457_)))
                     (_$tl7744577463_
                      (let () (declare (not safe)) (##cdr _$tgt7744377457_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7744577463_))
                    (let* ((_$tgt7744677467_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7744577463_)))
                           (_$hd7744777470_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7744677467_)))
                           (_$tl7744877473_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7744677467_))))
                      (let ((_id77477_ _$hd7744777470_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7744877473_))
                            (let* ((_$tgt7744977479_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7744877473_)))
                                   (_$hd7745077482_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7744977479_)))
                                   (_$tl7745177485_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7744977479_))))
                              (let ((_expr77489_ _$hd7745077482_))
                                (if (let ((__tmp79618
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7745177485_))))
                                      (declare (not safe))
                                      (equal? __tmp79618 '()))
                                    (let ((__tmp79613
                                           (let ((__tmp79614
                                                  (let ((__tmp79617
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77477_
                                                            _stx77438_)))
                                                        (__tmp79615
                                                         (let ((__tmp79616
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77489_))))
                   (declare (not safe))
                   (cons __tmp79616 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79617
                                                          __tmp79615))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79614))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79613 _stx77438_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7744277454_)))))
                            (let () (declare (not safe)) (_$E7744277454_)))))
                    (let () (declare (not safe)) (_$E7744277454_))))
              (let () (declare (not safe)) (_$E7744277454_))))))
    (define __compile-if%
      (lambda (_stx77370_)
        (let* ((_$e77372_ _stx77370_)
               (_$E7737477389_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77372_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77372_))
              (let* ((_$tgt7737577392_
                      (let () (declare (not safe)) (__AST-e _$e77372_)))
                     (_$hd7737677395_
                      (let () (declare (not safe)) (##car _$tgt7737577392_)))
                     (_$tl7737777398_
                      (let () (declare (not safe)) (##cdr _$tgt7737577392_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7737777398_))
                    (let* ((_$tgt7737877402_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7737777398_)))
                           (_$hd7737977405_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7737877402_)))
                           (_$tl7738077408_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7737877402_))))
                      (let ((_p77412_ _$hd7737977405_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7738077408_))
                            (let* ((_$tgt7738177414_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7738077408_)))
                                   (_$hd7738277417_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7738177414_)))
                                   (_$tl7738377420_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7738177414_))))
                              (let ((_t77424_ _$hd7738277417_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7738377420_))
                                    (let* ((_$tgt7738477426_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7738377420_)))
                                           (_$hd7738577429_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7738477426_)))
                                           (_$tl7738677432_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7738477426_))))
                                      (let ((_f77436_ _$hd7738577429_))
                                        (if (let ((__tmp79626
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7738677432_))))
                                              (declare (not safe))
                                              (equal? __tmp79626 '()))
                                            (let ((__tmp79619
                                                   (let ((__tmp79620
                                                          (let ((__tmp79625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77412_)))
                        (__tmp79621
                         (let ((__tmp79624
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77424_)))
                               (__tmp79622
                                (let ((__tmp79623
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77436_))))
                                  (declare (not safe))
                                  (cons __tmp79623 '()))))
                           (declare (not safe))
                           (cons __tmp79624 __tmp79622))))
                    (declare (not safe))
                    (cons __tmp79625 __tmp79621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79620))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79619 _stx77370_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7737477389_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7737477389_)))))
                            (let () (declare (not safe)) (_$E7737477389_)))))
                    (let () (declare (not safe)) (_$E7737477389_))))
              (let () (declare (not safe)) (_$E7737477389_))))))
    (define __compile-quote%
      (lambda (_stx77332_)
        (let* ((_$e77334_ _stx77332_)
               (_$E7733677345_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77334_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77334_))
              (let* ((_$tgt7733777348_
                      (let () (declare (not safe)) (__AST-e _$e77334_)))
                     (_$hd7733877351_
                      (let () (declare (not safe)) (##car _$tgt7733777348_)))
                     (_$tl7733977354_
                      (let () (declare (not safe)) (##cdr _$tgt7733777348_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7733977354_))
                    (let* ((_$tgt7734077358_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7733977354_)))
                           (_$hd7734177361_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7734077358_)))
                           (_$tl7734277364_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7734077358_))))
                      (let ((_e77368_ _$hd7734177361_))
                        (if (let ((__tmp79630
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7734277364_))))
                              (declare (not safe))
                              (equal? __tmp79630 '()))
                            (let ((__tmp79627
                                   (let ((__tmp79628
                                          (let ((__tmp79629
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77368_))))
                                            (declare (not safe))
                                            (cons __tmp79629 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79628))))
                              (declare (not safe))
                              (__SRC__% __tmp79627 _stx77332_))
                            (let () (declare (not safe)) (_$E7733677345_)))))
                    (let () (declare (not safe)) (_$E7733677345_))))
              (let () (declare (not safe)) (_$E7733677345_))))))
    (define __compile-quote-syntax%
      (lambda (_stx77294_)
        (let* ((_$e77296_ _stx77294_)
               (_$E7729877307_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77296_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77296_))
              (let* ((_$tgt7729977310_
                      (let () (declare (not safe)) (__AST-e _$e77296_)))
                     (_$hd7730077313_
                      (let () (declare (not safe)) (##car _$tgt7729977310_)))
                     (_$tl7730177316_
                      (let () (declare (not safe)) (##cdr _$tgt7729977310_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7730177316_))
                    (let* ((_$tgt7730277320_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7730177316_)))
                           (_$hd7730377323_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7730277320_)))
                           (_$tl7730477326_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7730277320_))))
                      (let ((_e77330_ _$hd7730377323_))
                        (if (let ((__tmp79633
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7730477326_))))
                              (declare (not safe))
                              (equal? __tmp79633 '()))
                            (let ((__tmp79631
                                   (let ((__tmp79632
                                          (let ()
                                            (declare (not safe))
                                            (cons _e77330_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79632))))
                              (declare (not safe))
                              (__SRC__% __tmp79631 _stx77294_))
                            (let () (declare (not safe)) (_$E7729877307_)))))
                    (let () (declare (not safe)) (_$E7729877307_))))
              (let () (declare (not safe)) (_$E7729877307_))))))
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
