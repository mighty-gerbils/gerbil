(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708451992)
  (begin
    (define __syntax::t
      (let ((__tmp74424 (list))
            (__tmp74422
             (let ((__tmp74423
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74423 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp74424
         '(e id)
         __tmp74422
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args74233_ (apply make-instance __syntax::t _$args74233_)))
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
      (let ((__tmp74427 (list __syntax::t))
            (__tmp74425
             (let ((__tmp74426
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74426 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp74427
         '()
         __tmp74425
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args74230_ (apply make-instance __core-form::t _$args74230_)))
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
      (let ((__tmp74430 (list __core-form::t))
            (__tmp74428
             (let ((__tmp74429
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74429 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp74430
         '()
         __tmp74428
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args74227_
        (apply make-instance __core-expression::t _$args74227_)))
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
      (let ((__tmp74433 (list __core-form::t))
            (__tmp74431
             (let ((__tmp74432
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74432 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp74433
         '()
         __tmp74431
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args74224_
        (apply make-instance __core-special-form::t _$args74224_)))
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
      (lambda (_id74222_)
        (let ((__tmp74434 (let () (declare (not safe)) (__AST-e _id74222_))))
          (declare (not safe))
          (hash-get __core __tmp74434))))
    (define __core-bound-id?__%
      (lambda (_id74206_ _is?74207_)
        (let ((_$e74209_
               (let () (declare (not safe)) (__core-resolve _id74206_))))
          (if _$e74209_ (_is?74207_ _$e74209_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id74215_)
        (let ((_is?74217_ true))
          (declare (not safe))
          (__core-bound-id?__% _id74215_ _is?74217_))))
    (define __core-bound-id?
      (lambda _g74436_
        (let ((_g74435_ (let () (declare (not safe)) (##length _g74436_))))
          (cond ((let () (declare (not safe)) (##fx= _g74435_ 1))
                 (apply (lambda (_id74215_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id74215_)))
                        _g74436_))
                ((let () (declare (not safe)) (##fx= _g74435_ 2))
                 (apply (lambda (_id74219_ _is?74220_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id74219_ _is?74220_)))
                        _g74436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g74436_))))))
    (define __core-bind-syntax!__%
      (lambda (_id74189_ _e74190_ _make74191_)
        (let ((__tmp74437
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e74190_
                      'gerbil/runtime/eval#__syntax::t))
                   _e74190_
                   (_make74191_ _e74190_ _id74189_))))
          (declare (not safe))
          (hash-put! __core _id74189_ __tmp74437))))
    (define __core-bind-syntax!__0
      (lambda (_id74196_ _e74197_)
        (let ((_make74199_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id74196_ _e74197_ _make74199_))))
    (define __core-bind-syntax!
      (lambda _g74439_
        (let ((_g74438_ (let () (declare (not safe)) (##length _g74439_))))
          (cond ((let () (declare (not safe)) (##fx= _g74438_ 2))
                 (apply (lambda (_id74196_ _e74197_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id74196_ _e74197_)))
                        _g74439_))
                ((let () (declare (not safe)) (##fx= _g74438_ 3))
                 (apply (lambda (_id74201_ _e74202_ _make74203_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id74201_
                             _e74202_
                             _make74203_)))
                        _g74439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g74439_))))))
    (define __SRC__%
      (lambda (_e74172_ _src-stx74173_)
        (if (or (let () (declare (not safe)) (pair? _e74172_))
                (let () (declare (not safe)) (symbol? _e74172_)))
            (let ((__tmp74440
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx74173_
                          'gerbil#AST::t))
                       (let ((__tmp74441
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx74173_))))
                         (declare (not safe))
                         (__locat __tmp74441))
                       '#f)))
              (declare (not safe))
              (##make-source _e74172_ __tmp74440))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e74172_ 'gerbil#AST::t))
                (let ((__tmp74444
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e74172_ '1 AST::t '#f)))
                      (__tmp74442
                       (let ((__tmp74443
                              (let ()
                                (declare (not safe))
                                (__AST-source _e74172_))))
                         (declare (not safe))
                         (__locat __tmp74443))))
                  (declare (not safe))
                  (##make-source __tmp74444 __tmp74442))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e74172_))))))
    (define __SRC__0
      (lambda (_e74181_)
        (let ((_src-stx74183_ '#f))
          (declare (not safe))
          (__SRC__% _e74181_ _src-stx74183_))))
    (define __SRC
      (lambda _g74446_
        (let ((_g74445_ (let () (declare (not safe)) (##length _g74446_))))
          (cond ((let () (declare (not safe)) (##fx= _g74445_ 1))
                 (apply (lambda (_e74181_)
                          (let () (declare (not safe)) (__SRC__0 _e74181_)))
                        _g74446_))
                ((let () (declare (not safe)) (##fx= _g74445_ 2))
                 (apply (lambda (_e74185_ _src-stx74186_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e74185_ _src-stx74186_)))
                        _g74446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g74446_))))))
    (define __locat
      (lambda (_loc74169_)
        (if (let () (declare (not safe)) (##locat? _loc74169_))
            _loc74169_
            '#f)))
    (define __check-values
      (lambda (_obj74164_ _k74165_)
        (let ((_count74167_
               (if (let () (declare (not safe)) (##values? _obj74164_))
                   (let () (declare (not safe)) (##vector-length _obj74164_))
                   '1)))
          (if (fx= _count74167_ _k74165_)
              '#!void
              (let ((__tmp74448
                     (if (fx< _count74167_ _k74165_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp74447
                     (if (let () (declare (not safe)) (##values? _obj74164_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj74164_))
                         _obj74164_)))
                (declare (not safe))
                (error __tmp74448 __tmp74447 _k74165_))))))
    (define __compile
      (lambda (_stx74134_)
        (let* ((_$e74136_ _stx74134_)
               (_$E7413874144_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74136_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74136_))
              (let* ((_$tgt7413974147_
                      (let () (declare (not safe)) (__AST-e _$e74136_)))
                     (_$hd7414074150_
                      (let () (declare (not safe)) (##car _$tgt7413974147_)))
                     (_$tl7414174153_
                      (let () (declare (not safe)) (##cdr _$tgt7413974147_))))
                (let* ((_form74157_ _$hd7414074150_)
                       (_$e74159_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form74157_))))
                  (if _$e74159_
                      ((lambda (_bind74162_)
                         ((##structure-ref _bind74162_ '1 __syntax::t '#f)
                          _stx74134_))
                       _$e74159_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx74134_
                         _form74157_)))))
              (let () (declare (not safe)) (_$E7413874144_))))))
    (define __compile-error__%
      (lambda (_stx74121_ _detail74122_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx74121_
           _detail74122_))))
    (define __compile-error__0
      (lambda (_stx74127_)
        (let ((_detail74129_ '#f))
          (declare (not safe))
          (__compile-error__% _stx74127_ _detail74129_))))
    (define __compile-error
      (lambda _g74450_
        (let ((_g74449_ (let () (declare (not safe)) (##length _g74450_))))
          (cond ((let () (declare (not safe)) (##fx= _g74449_ 1))
                 (apply (lambda (_stx74127_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx74127_)))
                        _g74450_))
                ((let () (declare (not safe)) (##fx= _g74449_ 2))
                 (apply (lambda (_stx74131_ _detail74132_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx74131_ _detail74132_)))
                        _g74450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g74450_))))))
    (define __compile-ignore%
      (lambda (_stx74118_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx74118_))))
    (define __compile-begin%
      (lambda (_stx74093_)
        (let* ((_$e74095_ _stx74093_)
               (_$E7409774103_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74095_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74095_))
              (let* ((_$tgt7409874106_
                      (let () (declare (not safe)) (__AST-e _$e74095_)))
                     (_$hd7409974109_
                      (let () (declare (not safe)) (##car _$tgt7409874106_)))
                     (_$tl7410074112_
                      (let () (declare (not safe)) (##cdr _$tgt7409874106_))))
                (let* ((_body74116_ _$tl7410074112_)
                       (__tmp74451
                        (let ((__tmp74452 (map __compile _body74116_)))
                          (declare (not safe))
                          (cons 'begin __tmp74452))))
                  (declare (not safe))
                  (__SRC__% __tmp74451 _stx74093_)))
              (let () (declare (not safe)) (_$E7409774103_))))))
    (define __compile-begin-foreign%
      (lambda (_stx74068_)
        (let* ((_$e74070_ _stx74068_)
               (_$E7407274078_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74070_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74070_))
              (let* ((_$tgt7407374081_
                      (let () (declare (not safe)) (__AST-e _$e74070_)))
                     (_$hd7407474084_
                      (let () (declare (not safe)) (##car _$tgt7407374081_)))
                     (_$tl7407574087_
                      (let () (declare (not safe)) (##cdr _$tgt7407374081_))))
                (let* ((_body74091_ _$tl7407574087_)
                       (__tmp74453
                        (let ((__tmp74454
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body74091_))))
                          (declare (not safe))
                          (cons 'begin __tmp74454))))
                  (declare (not safe))
                  (__SRC__% __tmp74453 _stx74068_)))
              (let () (declare (not safe)) (_$E7407274078_))))))
    (define __compile-import%
      (lambda (_stx74043_)
        (let* ((_$e74045_ _stx74043_)
               (_$E7404774053_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74045_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74045_))
              (let* ((_$tgt7404874056_
                      (let () (declare (not safe)) (__AST-e _$e74045_)))
                     (_$hd7404974059_
                      (let () (declare (not safe)) (##car _$tgt7404874056_)))
                     (_$tl7405074062_
                      (let () (declare (not safe)) (##cdr _$tgt7404874056_))))
                (let* ((_body74066_ _$tl7405074062_)
                       (__tmp74455
                        (let ((__tmp74456
                               (let ((__tmp74457
                                      (let ((__tmp74458
                                             (let ()
                                               (declare (not safe))
                                               (cons _body74066_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp74458))))
                                 (declare (not safe))
                                 (cons __tmp74457 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp74456))))
                  (declare (not safe))
                  (__SRC__% __tmp74455 _stx74043_)))
              (let () (declare (not safe)) (_$E7404774053_))))))
    (define __compile-begin-annotation%
      (lambda (_stx73990_)
        (let* ((_$e73992_ _stx73990_)
               (_$E7399474006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e73992_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e73992_))
              (let* ((_$tgt7399574009_
                      (let () (declare (not safe)) (__AST-e _$e73992_)))
                     (_$hd7399674012_
                      (let () (declare (not safe)) (##car _$tgt7399574009_)))
                     (_$tl7399774015_
                      (let () (declare (not safe)) (##cdr _$tgt7399574009_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7399774015_))
                    (let* ((_$tgt7399874019_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7399774015_)))
                           (_$hd7399974022_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7399874019_)))
                           (_$tl7400074025_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7399874019_))))
                      (let ((_ann74029_ _$hd7399974022_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7400074025_))
                            (let* ((_$tgt7400174031_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7400074025_)))
                                   (_$hd7400274034_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7400174031_)))
                                   (_$tl7400374037_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7400174031_))))
                              (let ((_expr74041_ _$hd7400274034_))
                                (if (let ((__tmp74459
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7400374037_))))
                                      (declare (not safe))
                                      (equal? __tmp74459 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr74041_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7399474006_)))))
                            (let () (declare (not safe)) (_$E7399474006_)))))
                    (let () (declare (not safe)) (_$E7399474006_))))
              (let () (declare (not safe)) (_$E7399474006_))))))
    (define __compile-define-values%
      (lambda (_stx73881_)
        (let* ((_$e73883_ _stx73881_)
               (_$E7388573897_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e73883_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e73883_))
              (let* ((_$tgt7388673900_
                      (let () (declare (not safe)) (__AST-e _$e73883_)))
                     (_$hd7388773903_
                      (let () (declare (not safe)) (##car _$tgt7388673900_)))
                     (_$tl7388873906_
                      (let () (declare (not safe)) (##cdr _$tgt7388673900_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7388873906_))
                    (let* ((_$tgt7388973910_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7388873906_)))
                           (_$hd7389073913_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7388973910_)))
                           (_$tl7389173916_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7388973910_))))
                      (let ((_hd73920_ _$hd7389073913_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7389173916_))
                            (let* ((_$tgt7389273922_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7389173916_)))
                                   (_$hd7389373925_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7389273922_)))
                                   (_$tl7389473928_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7389273922_))))
                              (let ((_expr73932_ _$hd7389373925_))
                                (if (let ((__tmp74460
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7389473928_))))
                                      (declare (not safe))
                                      (equal? __tmp74460 '()))
                                    (let* ((_$e73934_ _hd73920_)
                                           (_$E7393673977_
                                            (lambda ()
                                              (let ((_$E7393773962_
                                                     (lambda ()
                                                       (let* ((_$E7393873949_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e73934_))))
                      (_ids73952_ _hd73920_)
                      (_len73954_ (length _ids73952_))
                      (_tmp73956_
                       (let ((__tmp74461 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp74461))))
                 (let ((__tmp74462
                        (let ((__tmp74463
                               (let ((__tmp74480
                                      (let ((__tmp74481
                                             (let ((__tmp74482
                                                    (let ((__tmp74483
                                                           (let ((__tmp74484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr73932_))))
                     (declare (not safe))
                     (cons __tmp74484 '()))))
              (declare (not safe))
              (cons _tmp73956_ __tmp74483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp74482))))
                                        (declare (not safe))
                                        (__SRC__% __tmp74481 _stx73881_)))
                                     (__tmp74464
                                      (let ((__tmp74476
                                             (let ((__tmp74477
                                                    (let ((__tmp74478
                                                           (let ((__tmp74479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len73954_ '()))))
                     (declare (not safe))
                     (cons _tmp73956_ __tmp74479))))
              (declare (not safe))
              (cons '__check-values __tmp74478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp74477
                                                _stx73881_)))
                                            (__tmp74465
                                             (let ((__tmp74466
                                                    (let ((__tmp74468
                                                           (lambda (_id73959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k73960_)
                     (if (let () (declare (not safe)) (__AST-e _id73959_))
                         (let ((__tmp74469
                                (let ((__tmp74470
                                       (let ((__tmp74475
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id73959_)))
                                             (__tmp74471
                                              (let ((__tmp74472
                                                     (let ((__tmp74473
                                                            (let ((__tmp74474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k73960_ '()))))
                      (declare (not safe))
                      (cons _tmp73956_ __tmp74474))))
               (declare (not safe))
               (cons '##vector-ref __tmp74473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74472 '()))))
                                         (declare (not safe))
                                         (cons __tmp74475 __tmp74471))))
                                  (declare (not safe))
                                  (cons 'define __tmp74470))))
                           (declare (not safe))
                           (__SRC__% __tmp74469 _stx73881_))
                         '#f)))
                  (__tmp74467
                   (let () (declare (not safe)) (iota__0 _len73954_))))
              (declare (not safe))
              (filter-map2 __tmp74468 _ids73952_ __tmp74467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp74466))))
                                        (declare (not safe))
                                        (cons __tmp74476 __tmp74465))))
                                 (declare (not safe))
                                 (cons __tmp74480 __tmp74464))))
                          (declare (not safe))
                          (cons 'begin __tmp74463))))
                   (declare (not safe))
                   (__SRC__% __tmp74462 _stx73881_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e73934_))
                                                    (let* ((_$tgt7393973965_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e73934_)))
                                                           (_$hd7394073968_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7393973965_)))
                                                           (_$tl7394173971_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7393973965_))))
                                                      (let ((_id73975_
                                                             _$hd7394073968_))
                                                        (if (let ((__tmp74485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7394173971_))))
                      (declare (not safe))
                      (equal? __tmp74485 '()))
                    (let ((__tmp74486
                           (let ((__tmp74487
                                  (let ((__tmp74490
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id73975_)))
                                        (__tmp74488
                                         (let ((__tmp74489
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr73932_))))
                                           (declare (not safe))
                                           (cons __tmp74489 '()))))
                                    (declare (not safe))
                                    (cons __tmp74490 __tmp74488))))
                             (declare (not safe))
                             (cons 'define __tmp74487))))
                      (declare (not safe))
                      (__SRC__% __tmp74486 _stx73881_))
                    (let () (declare (not safe)) (_$E7393773962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7393773962_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e73934_))
                                          (let* ((_$tgt7394273980_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e73934_)))
                                                 (_$hd7394373983_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7394273980_)))
                                                 (_$tl7394473986_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7394273980_))))
                                            (if (let ((__tmp74491
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7394373983_))))
                                                  (declare (not safe))
                                                  (equal? __tmp74491 '#f))
                                                (if (let ((__tmp74492
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7394473986_))))
                                                      (declare (not safe))
                                                      (equal? __tmp74492 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr73932_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7393673977_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7393673977_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7393673977_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7388573897_)))))
                            (let () (declare (not safe)) (_$E7388573897_)))))
                    (let () (declare (not safe)) (_$E7388573897_))))
              (let () (declare (not safe)) (_$E7388573897_))))))
    (define __compile-head-id
      (lambda (_e73879_)
        (let ((__tmp74493
               (if (let () (declare (not safe)) (__AST-e _e73879_))
                   _e73879_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp74493))))
    (define __compile-lambda-head
      (lambda (_hd73836_)
        (let _recur73838_ ((_rest73840_ _hd73836_))
          (let* ((_$e73842_ _rest73840_)
                 (_$E7384473862_
                  (lambda ()
                    (let ((_$E7384573859_
                           (lambda ()
                             (let* ((_$E7384673854_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e73842_))))
                                    (_tail73857_ _$e73842_))
                               (declare (not safe))
                               (__compile-head-id _tail73857_)))))
                      (if (let ((__tmp74494
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e73842_))))
                            (declare (not safe))
                            (equal? __tmp74494 '()))
                          '()
                          (let () (declare (not safe)) (_$E7384573859_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e73842_))
                (let* ((_$tgt7384773865_
                        (let () (declare (not safe)) (__AST-e _$e73842_)))
                       (_$hd7384873868_
                        (let () (declare (not safe)) (##car _$tgt7384773865_)))
                       (_$tl7384973871_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7384773865_))))
                  (let* ((_hd73875_ _$hd7384873868_)
                         (_rest73877_ _$tl7384973871_))
                    (let ((__tmp74496
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd73875_)))
                          (__tmp74495
                           (let ()
                             (declare (not safe))
                             (_recur73838_ _rest73877_))))
                      (declare (not safe))
                      (cons __tmp74496 __tmp74495))))
                (let () (declare (not safe)) (_$E7384473862_)))))))
    (define __compile-lambda%
      (lambda (_stx73783_)
        (let* ((_$e73785_ _stx73783_)
               (_$E7378773799_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e73785_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e73785_))
              (let* ((_$tgt7378873802_
                      (let () (declare (not safe)) (__AST-e _$e73785_)))
                     (_$hd7378973805_
                      (let () (declare (not safe)) (##car _$tgt7378873802_)))
                     (_$tl7379073808_
                      (let () (declare (not safe)) (##cdr _$tgt7378873802_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7379073808_))
                    (let* ((_$tgt7379173812_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7379073808_)))
                           (_$hd7379273815_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7379173812_)))
                           (_$tl7379373818_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7379173812_))))
                      (let ((_hd73822_ _$hd7379273815_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7379373818_))
                            (let* ((_$tgt7379473824_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7379373818_)))
                                   (_$hd7379573827_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7379473824_)))
                                   (_$tl7379673830_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7379473824_))))
                              (let ((_body73834_ _$hd7379573827_))
                                (if (let ((__tmp74497
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7379673830_))))
                                      (declare (not safe))
                                      (equal? __tmp74497 '()))
                                    (let ((__tmp74498
                                           (let ((__tmp74499
                                                  (let ((__tmp74502
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd73822_)))
                                                        (__tmp74500
                                                         (let ((__tmp74501
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body73834_))))
                   (declare (not safe))
                   (cons __tmp74501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74502
                                                          __tmp74500))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp74499))))
                                      (declare (not safe))
                                      (__SRC__% __tmp74498 _stx73783_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7378773799_)))))
                            (let () (declare (not safe)) (_$E7378773799_)))))
                    (let () (declare (not safe)) (_$E7378773799_))))
              (let () (declare (not safe)) (_$E7378773799_))))))
    (define __compile-case-lambda%
      (lambda (_stx73575_)
        (letrec ((_variadic?73577_
                  (lambda (_hd73748_)
                    (let* ((_$e73750_ _hd73748_)
                           (_$E7375273768_
                            (lambda ()
                              (let ((_$E7375373765_
                                     (lambda ()
                                       (let ((_$E7375473762_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e73750_)))))
                                         '#t))))
                                (if (let ((__tmp74503
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e73750_))))
                                      (declare (not safe))
                                      (equal? __tmp74503 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7375373765_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e73750_))
                          (let* ((_$tgt7375573771_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e73750_)))
                                 (_$hd7375673774_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7375573771_)))
                                 (_$tl7375773777_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7375573771_))))
                            (let ((_rest73781_ _$tl7375773777_))
                              (declare (not safe))
                              (_variadic?73577_ _rest73781_)))
                          (let () (declare (not safe)) (_$E7375273768_))))))
                 (_arity73578_
                  (lambda (_hd73713_)
                    (let _lp73715_ ((_rest73717_ _hd73713_) (_k73718_ '0))
                      (let* ((_$e73720_ _rest73717_)
                             (_$E7372273733_
                              (lambda ()
                                (let ((_$E7372373730_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e73720_)))))
                                  _k73718_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e73720_))
                            (let* ((_$tgt7372473736_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e73720_)))
                                   (_$hd7372573739_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7372473736_)))
                                   (_$tl7372673742_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7372473736_))))
                              (let* ((_rest73746_ _$tl7372673742_)
                                     (__tmp74504
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k73718_ '1))))
                                (declare (not safe))
                                (_lp73715_ _rest73746_ __tmp74504)))
                            (let () (declare (not safe)) (_$E7372273733_)))))))
                 (_generate73579_
                  (lambda (_rest73640_ _args73641_ _len73642_)
                    (let* ((_$e73644_ _rest73640_)
                           (_$E7364673657_
                            (lambda ()
                              (let* ((_$E7364773654_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e73644_))))
                                     (__tmp74505
                                      (let ((__tmp74506
                                             (let ((__tmp74507
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args73641_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp74507))))
                                        (declare (not safe))
                                        (cons 'error __tmp74506))))
                                (declare (not safe))
                                (__SRC__% __tmp74505 _stx73575_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e73644_))
                          (let* ((_$tgt7364873660_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e73644_)))
                                 (_$hd7364973663_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7364873660_)))
                                 (_$tl7365073666_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7364873660_))))
                            (let* ((_clause73670_ _$hd7364973663_)
                                   (_rest73672_ _$tl7365073666_)
                                   (_$e73674_ _clause73670_)
                                   (_$E7367673685_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e73674_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e73674_))
                                  (let* ((_$tgt7367773688_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e73674_)))
                                         (_$hd7367873691_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7367773688_)))
                                         (_$tl7367973694_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7367773688_))))
                                    (let ((_hd73698_ _$hd7367873691_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7367973694_))
                                          (let* ((_$tgt7368073700_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7367973694_)))
                                                 (_$hd7368173703_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7368073700_)))
                                                 (_$tl7368273706_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7368073700_))))
                                            (if (let ((__tmp74508
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7368273706_))))
                                                  (declare (not safe))
                                                  (equal? __tmp74508 '()))
                                                (let ((_clen73710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity73578_
                                                          _hd73698_)))
                                                      (_cmp73711_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?73577_
                                                              _hd73698_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp74509
                                                         (let ((__tmp74510
                                                                (let ((__tmp74520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74521
                                      (let ((__tmp74522
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen73710_ '()))))
                                        (declare (not safe))
                                        (cons _len73642_ __tmp74522))))
                                 (declare (not safe))
                                 (cons _cmp73711_ __tmp74521)))
                              (__tmp74511
                               (let ((__tmp74514
                                      (let ((__tmp74515
                                             (let ((__tmp74516
                                                    (let ((__tmp74518
                                                           (let ((__tmp74519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause73670_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp74519)))
                  (__tmp74517
                   (let () (declare (not safe)) (cons _args73641_ '()))))
              (declare (not safe))
              (cons __tmp74518 __tmp74517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp74516))))
                                        (declare (not safe))
                                        (__SRC__% __tmp74515 _stx73575_)))
                                     (__tmp74512
                                      (let ((__tmp74513
                                             (let ()
                                               (declare (not safe))
                                               (_generate73579_
                                                _rest73672_
                                                _args73641_
                                                _len73642_))))
                                        (declare (not safe))
                                        (cons __tmp74513 '()))))
                                 (declare (not safe))
                                 (cons __tmp74514 __tmp74512))))
                          (declare (not safe))
                          (cons __tmp74520 __tmp74511))))
                   (declare (not safe))
                   (cons 'if __tmp74510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp74509
                                                     _stx73575_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7367673685_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7367673685_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7367673685_)))))
                          (let () (declare (not safe)) (_$E7364673657_)))))))
          (let* ((_$e73581_ _stx73575_)
                 (_$E7358373615_
                  (lambda ()
                    (let ((_$E7358473597_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e73581_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e73581_))
                          (let* ((_$tgt7358573600_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e73581_)))
                                 (_$hd7358673603_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7358573600_)))
                                 (_$tl7358773606_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7358573600_))))
                            (let ((_clauses73610_ _$tl7358773606_))
                              (let ((_args73612_
                                     (let ((__tmp74523 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp74523 _stx73575_)))
                                    (_len73613_
                                     (let ((__tmp74524 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp74524 _stx73575_))))
                                (let ((__tmp74525
                                       (let ((__tmp74526
                                              (let ((__tmp74527
                                                     (let ((__tmp74528
                                                            (let ((__tmp74529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74530
                                  (let ((__tmp74533
                                         (let ((__tmp74534
                                                (let ((__tmp74535
                                                       (let ((__tmp74536
                                                              (let ((__tmp74537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp74538
                                    (let ()
                                      (declare (not safe))
                                      (cons _args73612_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp74538))))
                        (declare (not safe))
                        (__SRC__% __tmp74537 _stx73575_))))
                 (declare (not safe))
                 (cons __tmp74536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len73613_
                                                        __tmp74535))))
                                           (declare (not safe))
                                           (cons __tmp74534 '())))
                                        (__tmp74531
                                         (let ((__tmp74532
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate73579_
                                                   _clauses73610_
                                                   _args73612_
                                                   _len73613_))))
                                           (declare (not safe))
                                           (cons __tmp74532 '()))))
                                    (declare (not safe))
                                    (cons __tmp74533 __tmp74531))))
                             (declare (not safe))
                             (cons 'let __tmp74530))))
                      (declare (not safe))
                      (__SRC__% __tmp74529 _stx73575_))))
               (declare (not safe))
               (cons __tmp74528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args73612_
                                                      __tmp74527))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp74526))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74525 _stx73575_)))))
                          (let () (declare (not safe)) (_$E7358473597_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e73581_))
                (let* ((_$tgt7358873618_
                        (let () (declare (not safe)) (__AST-e _$e73581_)))
                       (_$hd7358973621_
                        (let () (declare (not safe)) (##car _$tgt7358873618_)))
                       (_$tl7359073624_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7358873618_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7359073624_))
                      (let* ((_$tgt7359173628_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7359073624_)))
                             (_$hd7359273631_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7359173628_)))
                             (_$tl7359373634_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7359173628_))))
                        (let ((_clause73638_ _$hd7359273631_))
                          (if (let ((__tmp74539
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7359373634_))))
                                (declare (not safe))
                                (equal? __tmp74539 '()))
                              (let ((__tmp74540
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause73638_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp74540))
                              (let () (declare (not safe)) (_$E7358373615_)))))
                      (let () (declare (not safe)) (_$E7358373615_))))
                (let () (declare (not safe)) (_$E7358373615_)))))))
    (define __compile-let-form
      (lambda (_stx73344_ _compile-simple73345_ _compile-values73346_)
        (letrec ((_simple-bind?73348_
                  (lambda (_hd73533_)
                    (let* ((_hd7353473544_ _hd73533_)
                           (_else7353773552_ (lambda () '#f)))
                      (let ((_K7354073565_ (lambda (_id73563_) '#t))
                            (_K7353973557_ (lambda () '#t)))
                        (let ((_try-match7353673560_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7353473544_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7353973557_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7353773552_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7353473544_))
                              (let ((_tl7354273570_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7353473544_)))
                                    (_hd7354173568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7353473544_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7354273570_))
                                    (let ((_id73573_ _hd7354173568_))
                                      (declare (not safe))
                                      (_K7354073565_ _id73573_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7353673560_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7353673560_))))))))
                 (_car-e73349_
                  (lambda (_hd73531_)
                    (if (let () (declare (not safe)) (pair? _hd73531_))
                        (car _hd73531_)
                        _hd73531_))))
          (let* ((_$e73351_ _stx73344_)
                 (_$E7335373496_
                  (lambda ()
                    (let ((_$E7335473376_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e73351_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e73351_))
                          (let* ((_$tgt7335573379_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e73351_)))
                                 (_$hd7335673382_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7335573379_)))
                                 (_$tl7335773385_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7335573379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7335773385_))
                                (let* ((_$tgt7335873389_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7335773385_)))
                                       (_$hd7335973392_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7335873389_)))
                                       (_$tl7336073395_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7335873389_))))
                                  (let ((_hd73399_ _$hd7335973392_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7336073395_))
                                        (let* ((_$tgt7336173401_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7336073395_)))
                                               (_$hd7336273404_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7336173401_)))
                                               (_$tl7336373407_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7336173401_))))
                                          (let ((_body73411_ _$hd7336273404_))
                                            (if (let ((__tmp74541
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7336373407_))))
                                                  (declare (not safe))
                                                  (equal? __tmp74541 '()))
                                                (let* ((_hd-ids73451_
                                                        (map (lambda (_bind73413_)
                                                               (let* ((_$e73415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind73413_)
                              (_$E7341773426_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e73415_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e73415_))
                             (let* ((_$tgt7341873429_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e73415_)))
                                    (_$hd7341973432_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7341873429_)))
                                    (_$tl7342073435_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7341873429_))))
                               (let ((_ids73439_ _$hd7341973432_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7342073435_))
                                     (let* ((_$tgt7342173441_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7342073435_)))
                                            (_$hd7342273444_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7342173441_)))
                                            (_$tl7342373447_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7342173441_))))
                                       (if (let ((__tmp74542
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7342373447_))))
                                             (declare (not safe))
                                             (equal? __tmp74542 '()))
                                           _ids73439_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7341773426_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7341773426_)))))
                             (let () (declare (not safe)) (_$E7341773426_)))))
                     _hd73399_))
               (_exprs73491_
                (map (lambda (_bind73453_)
                       (let* ((_$e73455_ _bind73453_)
                              (_$E7345773466_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e73455_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e73455_))
                             (let* ((_$tgt7345873469_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e73455_)))
                                    (_$hd7345973472_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7345873469_)))
                                    (_$tl7346073475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7345873469_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7346073475_))
                                   (let* ((_$tgt7346173479_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7346073475_)))
                                          (_$hd7346273482_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7346173479_)))
                                          (_$tl7346373485_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7346173479_))))
                                     (let ((_expr73489_ _$hd7346273482_))
                                       (if (let ((__tmp74543
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7346373485_))))
                                             (declare (not safe))
                                             (equal? __tmp74543 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr73489_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7345773466_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7345773466_))))
                             (let () (declare (not safe)) (_$E7345773466_)))))
                     _hd73399_))
               (_body73493_
                (let () (declare (not safe)) (__compile _body73411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?73348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids73451_))
              (_compile-simple73345_
               (map _car-e73349_ _hd-ids73451_)
               _exprs73491_
               _body73493_)
              (_compile-values73346_ _hd-ids73451_ _exprs73491_ _body73493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7335473376_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7335473376_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7335473376_))))
                          (let () (declare (not safe)) (_$E7335473376_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e73351_))
                (let* ((_$tgt7336473499_
                        (let () (declare (not safe)) (__AST-e _$e73351_)))
                       (_$hd7336573502_
                        (let () (declare (not safe)) (##car _$tgt7336473499_)))
                       (_$tl7336673505_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7336473499_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7336673505_))
                      (let* ((_$tgt7336773509_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7336673505_)))
                             (_$hd7336873512_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7336773509_)))
                             (_$tl7336973515_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7336773509_))))
                        (if (let ((__tmp74544
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7336873512_))))
                              (declare (not safe))
                              (equal? __tmp74544 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7336973515_))
                                (let* ((_$tgt7337073519_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7336973515_)))
                                       (_$hd7337173522_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7337073519_)))
                                       (_$tl7337273525_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7337073519_))))
                                  (let ((_body73529_ _$hd7337173522_))
                                    (if (let ((__tmp74545
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7337273525_))))
                                          (declare (not safe))
                                          (equal? __tmp74545 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body73529_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7335373496_)))))
                                (let () (declare (not safe)) (_$E7335373496_)))
                            (let () (declare (not safe)) (_$E7335373496_))))
                      (let () (declare (not safe)) (_$E7335373496_))))
                (let () (declare (not safe)) (_$E7335373496_)))))))
    (define __compile-let-values%
      (lambda (_stx73159_)
        (letrec ((_compile-simple73161_
                  (lambda (_hd-ids73340_ _exprs73341_ _body73342_)
                    (let ((__tmp74546
                           (let ((__tmp74547
                                  (let ((__tmp74549
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids73340_)
                                              _exprs73341_))
                                        (__tmp74548
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73342_ '()))))
                                    (declare (not safe))
                                    (cons __tmp74549 __tmp74548))))
                             (declare (not safe))
                             (cons 'let __tmp74547))))
                      (declare (not safe))
                      (__SRC__% __tmp74546 _stx73159_))))
                 (_compile-values73162_
                  (lambda (_hd-ids73258_ _exprs73259_ _body73260_)
                    (let _lp73262_ ((_rest73264_ _hd-ids73258_)
                                    (_exprs73265_ _exprs73259_)
                                    (_bind73266_ '())
                                    (_post73267_ '()))
                      (let* ((_rest7326873282_ _rest73264_)
                             (_else7327173290_
                              (lambda ()
                                (let ((__tmp74550
                                       (let ((__tmp74551
                                              (let ((__tmp74554
                                                     (reverse _bind73266_))
                                                    (__tmp74552
                                                     (let ((__tmp74553
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post73163_
                                                               _post73267_
                                                               _body73260_))))
                                                       (declare (not safe))
                                                       (cons __tmp74553 '()))))
                                                (declare (not safe))
                                                (cons __tmp74554 __tmp74552))))
                                         (declare (not safe))
                                         (cons 'let __tmp74551))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74550 _stx73159_)))))
                        (let ((_K7327673323_
                               (lambda (_rest73320_ _id73321_)
                                 (let ((__tmp74560 (cdr _exprs73265_))
                                       (__tmp74555
                                        (let ((__tmp74556
                                               (let ((__tmp74559
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id73321_)))
                                                     (__tmp74557
                                                      (let ((__tmp74558
                                                             (car _exprs73265_)))
                                                        (declare (not safe))
                                                        (cons __tmp74558
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp74559
                                                       __tmp74557))))
                                          (declare (not safe))
                                          (cons __tmp74556 _bind73266_))))
                                   (declare (not safe))
                                   (_lp73262_
                                    _rest73320_
                                    __tmp74560
                                    __tmp74555
                                    _post73267_))))
                              (_K7327373305_
                               (lambda (_rest73294_ _hd73295_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd73295_))
                                     (let ((__tmp74568 (cdr _exprs73265_))
                                           (__tmp74561
                                            (let ((__tmp74562
                                                   (let ((__tmp74567
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd73295_)))
                                                         (__tmp74563
                                                          (let ((__tmp74564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74565
                                (let ((__tmp74566 (car _exprs73265_)))
                                  (declare (not safe))
                                  (cons __tmp74566 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp74565))))
                    (declare (not safe))
                    (cons __tmp74564 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp74567
                                                           __tmp74563))))
                                              (declare (not safe))
                                              (cons __tmp74562 _bind73266_))))
                                       (declare (not safe))
                                       (_lp73262_
                                        _rest73294_
                                        __tmp74568
                                        __tmp74561
                                        _post73267_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd73295_))
                                         (let* ((_len73297_ (length _hd73295_))
                                                (_tmp73299_
                                                 (let ((__tmp74569 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp74569))))
                                           (let ((__tmp74581
                                                  (cdr _exprs73265_))
                                                 (__tmp74577
                                                  (let ((__tmp74578
                                                         (let ((__tmp74579
                                                                (let ((__tmp74580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs73265_)))
                          (declare (not safe))
                          (cons __tmp74580 '()))))
                   (declare (not safe))
                   (cons _tmp73299_ __tmp74579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74578
                                                          _bind73266_)))
                                                 (__tmp74570
                                                  (let ((__tmp74571
                                                         (let ((__tmp74572
                                                                (let ((__tmp74573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74575
                                      (lambda (_id73302_ _k73303_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id73302_))
                                            (let ((__tmp74576
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id73302_))))
                                              (declare (not safe))
                                              (cons __tmp74576 _k73303_))
                                            '#f)))
                                     (__tmp74574
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len73297_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp74575
                                  _hd73295_
                                  __tmp74574))))
                          (declare (not safe))
                          (cons _len73297_ __tmp74573))))
                   (declare (not safe))
                   (cons _tmp73299_ __tmp74572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74571
                                                          _post73267_))))
                                             (declare (not safe))
                                             (_lp73262_
                                              _rest73294_
                                              __tmp74581
                                              __tmp74577
                                              __tmp74570)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx73159_
                                            _hd73295_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7326873282_))
                              (let ((_tl7327873328_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7326873282_)))
                                    (_hd7327773326_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7326873282_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7327773326_))
                                    (let ((_tl7328073333_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7327773326_)))
                                          (_hd7327973331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7327773326_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7328073333_))
                                          (let ((_id73336_ _hd7327973331_)
                                                (_rest73338_ _tl7327873328_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7327673323_
                                               _rest73338_
                                               _id73336_)))
                                          (let ((_hd73313_ _hd7327773326_)
                                                (_rest73315_ _tl7327873328_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7327373305_
                                               _rest73315_
                                               _hd73313_)))))
                                    (let ((_hd73313_ _hd7327773326_)
                                          (_rest73315_ _tl7327873328_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7327373305_
                                         _rest73315_
                                         _hd73313_)))))
                              (let ()
                                (declare (not safe))
                                (_else7327173290_))))))))
                 (_compile-post73163_
                  (lambda (_post73165_ _body73166_)
                    (let _lp73168_ ((_rest73170_ _post73165_)
                                    (_check73171_ '())
                                    (_bind73172_ '()))
                      (let* ((_rest7317373185_ _rest73170_)
                             (_else7317573193_
                              (lambda ()
                                (let ((__tmp74582
                                       (let ((__tmp74583
                                              (let ((__tmp74584
                                                     (let ((__tmp74585
                                                            (let ((__tmp74586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74587
                                  (let ((__tmp74588
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73166_ '()))))
                                    (declare (not safe))
                                    (cons _bind73172_ __tmp74588))))
                             (declare (not safe))
                             (cons 'let __tmp74587))))
                      (declare (not safe))
                      (__SRC__% __tmp74586 _stx73159_))))
               (declare (not safe))
               (cons __tmp74585 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp74584
                                                        _check73171_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp74583))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74582 _stx73159_))))
                             (_K7317773232_
                              (lambda (_rest73196_
                                       _init73197_
                                       _len73198_
                                       _tmp73199_)
                                (let ((__tmp74596
                                       (let ((__tmp74597
                                              (let ((__tmp74598
                                                     (let ((__tmp74599
                                                            (let ((__tmp74600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len73198_ '()))))
                      (declare (not safe))
                      (cons _tmp73199_ __tmp74600))))
               (declare (not safe))
               (cons '__check-values __tmp74599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp74598
                                                 _stx73159_))))
                                         (declare (not safe))
                                         (cons __tmp74597 _check73171_)))
                                      (__tmp74589
                                       (let ((__tmp74590
                                              (lambda (_hd73201_ _r73202_)
                                                (let* ((_hd7320373210_
                                                        _hd73201_)
                                                       (_E7320573214_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7320373210_))))
               (_K7320673220_
                (lambda (_k73217_ _id73218_)
                  (let ((__tmp74591
                         (let ((__tmp74592
                                (let ((__tmp74593
                                       (let ((__tmp74594
                                              (let ((__tmp74595
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k73217_ '()))))
                                                (declare (not safe))
                                                (cons _tmp73199_ __tmp74595))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp74594))))
                                  (declare (not safe))
                                  (cons __tmp74593 '()))))
                           (declare (not safe))
                           (cons _id73218_ __tmp74592))))
                    (declare (not safe))
                    (cons __tmp74591 _r73202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7320373210_))
                                                      (let ((_hd7320773223_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7320373210_)))
                    (_tl7320873225_
                     (let () (declare (not safe)) (##cdr _hd7320373210_))))
                (let* ((_id73228_ _hd7320773223_) (_k73230_ _tl7320873225_))
                  (declare (not safe))
                  (_K7320673220_ _k73230_ _id73228_)))
              (let () (declare (not safe)) (_E7320573214_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp74590
                                                 _bind73172_
                                                 _init73197_))))
                                  (declare (not safe))
                                  (_lp73168_
                                   _rest73196_
                                   __tmp74596
                                   __tmp74589)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7317373185_))
                            (let ((_hd7317873235_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7317373185_)))
                                  (_tl7317973237_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7317373185_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7317873235_))
                                  (let ((_hd7318073240_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7317873235_)))
                                        (_tl7318173242_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7317873235_))))
                                    (let ((_tmp73245_ _hd7318073240_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7318173242_))
                                          (let ((_hd7318273247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7318173242_)))
                                                (_tl7318373249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7318173242_))))
                                            (let* ((_len73252_ _hd7318273247_)
                                                   (_init73254_ _tl7318373249_)
                                                   (_rest73256_
                                                    _tl7317973237_))
                                              (declare (not safe))
                                              (_K7317773232_
                                               _rest73256_
                                               _init73254_
                                               _len73252_
                                               _tmp73245_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7317573193_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7317573193_))))
                            (let ()
                              (declare (not safe))
                              (_else7317573193_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx73159_
             _compile-simple73161_
             _compile-values73162_)))))
    (define __compile-letrec-values%
      (lambda (_stx72959_)
        (letrec ((_compile-simple72961_
                  (lambda (_hd-ids73155_ _exprs73156_ _body73157_)
                    (let ((__tmp74601
                           (let ((__tmp74602
                                  (let ((__tmp74604
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids73155_)
                                              _exprs73156_))
                                        (__tmp74603
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73157_ '()))))
                                    (declare (not safe))
                                    (cons __tmp74604 __tmp74603))))
                             (declare (not safe))
                             (cons 'letrec __tmp74602))))
                      (declare (not safe))
                      (__SRC__% __tmp74601 _stx72959_))))
                 (_compile-values72962_
                  (lambda (_hd-ids73069_ _exprs73070_ _body73071_)
                    (let _lp73073_ ((_rest73075_ _hd-ids73069_)
                                    (_exprs73076_ _exprs73070_)
                                    (_pre73077_ '())
                                    (_bind73078_ '())
                                    (_post73079_ '()))
                      (let* ((_rest7308073094_ _rest73075_)
                             (_else7308373102_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner72963_
                                   _pre73077_
                                   _bind73078_
                                   _post73079_
                                   _body73071_)))))
                        (let ((_K7308873138_
                               (lambda (_rest73135_ _id73136_)
                                 (let ((__tmp74610 (cdr _exprs73076_))
                                       (__tmp74605
                                        (let ((__tmp74606
                                               (let ((__tmp74609
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id73136_)))
                                                     (__tmp74607
                                                      (let ((__tmp74608
                                                             (car _exprs73076_)))
                                                        (declare (not safe))
                                                        (cons __tmp74608
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp74609
                                                       __tmp74607))))
                                          (declare (not safe))
                                          (cons __tmp74606 _bind73078_))))
                                   (declare (not safe))
                                   (_lp73073_
                                    _rest73135_
                                    __tmp74610
                                    _pre73077_
                                    __tmp74605
                                    _post73079_))))
                              (_K7308573120_
                               (lambda (_rest73106_ _hd73107_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd73107_))
                                     (let ((__tmp74618 (cdr _exprs73076_))
                                           (__tmp74611
                                            (let ((__tmp74612
                                                   (let ((__tmp74617
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd73107_)))
                                                         (__tmp74613
                                                          (let ((__tmp74614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74615
                                (let ((__tmp74616 (car _exprs73076_)))
                                  (declare (not safe))
                                  (cons __tmp74616 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp74615))))
                    (declare (not safe))
                    (cons __tmp74614 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp74617
                                                           __tmp74613))))
                                              (declare (not safe))
                                              (cons __tmp74612 _bind73078_))))
                                       (declare (not safe))
                                       (_lp73073_
                                        _rest73106_
                                        __tmp74618
                                        _pre73077_
                                        __tmp74611
                                        _post73079_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd73107_))
                                         (let* ((_len73109_ (length _hd73107_))
                                                (_tmp73111_
                                                 (let ((__tmp74619 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp74619))))
                                           (let ((__tmp74638
                                                  (cdr _exprs73076_))
                                                 (__tmp74631
                                                  (let ((__tmp74632
                                                         (lambda (_id73114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r73115_)
                   (if (let () (declare (not safe)) (__AST-e _id73114_))
                       (let ((__tmp74633
                              (let ((__tmp74637
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id73114_)))
                                    (__tmp74634
                                     (let ((__tmp74635
                                            (let ((__tmp74636
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp74636))))
                                       (declare (not safe))
                                       (cons __tmp74635 '()))))
                                (declare (not safe))
                                (cons __tmp74637 __tmp74634))))
                         (declare (not safe))
                         (cons __tmp74633 _r73115_))
                       _r73115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp74632
                                                            _pre73077_
                                                            _hd73107_)))
                                                 (__tmp74627
                                                  (let ((__tmp74628
                                                         (let ((__tmp74629
                                                                (let ((__tmp74630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs73076_)))
                          (declare (not safe))
                          (cons __tmp74630 '()))))
                   (declare (not safe))
                   (cons _tmp73111_ __tmp74629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74628
                                                          _bind73078_)))
                                                 (__tmp74620
                                                  (let ((__tmp74621
                                                         (let ((__tmp74622
                                                                (let ((__tmp74623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74625
                                      (lambda (_id73117_ _k73118_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id73117_))
                                            (let ((__tmp74626
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id73117_))))
                                              (declare (not safe))
                                              (cons __tmp74626 _k73118_))
                                            '#f)))
                                     (__tmp74624
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len73109_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp74625
                                  _hd73107_
                                  __tmp74624))))
                          (declare (not safe))
                          (cons _len73109_ __tmp74623))))
                   (declare (not safe))
                   (cons _tmp73111_ __tmp74622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74621
                                                          _post73079_))))
                                             (declare (not safe))
                                             (_lp73073_
                                              _rest73106_
                                              __tmp74638
                                              __tmp74631
                                              __tmp74627
                                              __tmp74620)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx72959_
                                            _hd73107_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7308073094_))
                              (let ((_tl7309073143_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7308073094_)))
                                    (_hd7308973141_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7308073094_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7308973141_))
                                    (let ((_tl7309273148_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7308973141_)))
                                          (_hd7309173146_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7308973141_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7309273148_))
                                          (let ((_id73151_ _hd7309173146_)
                                                (_rest73153_ _tl7309073143_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7308873138_
                                               _rest73153_
                                               _id73151_)))
                                          (let ((_hd73128_ _hd7308973141_)
                                                (_rest73130_ _tl7309073143_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7308573120_
                                               _rest73130_
                                               _hd73128_)))))
                                    (let ((_hd73128_ _hd7308973141_)
                                          (_rest73130_ _tl7309073143_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7308573120_
                                         _rest73130_
                                         _hd73128_)))))
                              (let ()
                                (declare (not safe))
                                (_else7308373102_))))))))
                 (_compile-inner72963_
                  (lambda (_pre73064_ _bind73065_ _post73066_ _body73067_)
                    (if (let () (declare (not safe)) (null? _pre73064_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind72964_
                           _bind73065_
                           _post73066_
                           _body73067_))
                        (let ((__tmp74639
                               (let ((__tmp74640
                                      (let ((__tmp74643 (reverse _pre73064_))
                                            (__tmp74641
                                             (let ((__tmp74642
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind72964_
                                                       _bind73065_
                                                       _post73066_
                                                       _body73067_))))
                                               (declare (not safe))
                                               (cons __tmp74642 '()))))
                                        (declare (not safe))
                                        (cons __tmp74643 __tmp74641))))
                                 (declare (not safe))
                                 (cons 'let __tmp74640))))
                          (declare (not safe))
                          (__SRC__% __tmp74639 _stx72959_)))))
                 (_compile-bind72964_
                  (lambda (_bind73060_ _post73061_ _body73062_)
                    (let ((__tmp74644
                           (let ((__tmp74645
                                  (let ((__tmp74648 (reverse _bind73060_))
                                        (__tmp74646
                                         (let ((__tmp74647
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post72965_
                                                   _post73061_
                                                   _body73062_))))
                                           (declare (not safe))
                                           (cons __tmp74647 '()))))
                                    (declare (not safe))
                                    (cons __tmp74648 __tmp74646))))
                             (declare (not safe))
                             (cons 'letrec __tmp74645))))
                      (declare (not safe))
                      (__SRC__% __tmp74644 _stx72959_))))
                 (_compile-post72965_
                  (lambda (_post72967_ _body72968_)
                    (let _lp72970_ ((_rest72972_ _post72967_)
                                    (_check72973_ '())
                                    (_bind72974_ '()))
                      (let* ((_rest7297572987_ _rest72972_)
                             (_else7297772995_
                              (lambda ()
                                (let ((__tmp74649
                                       (let ((__tmp74650
                                              (let ((__tmp74651
                                                     (let ((__tmp74652
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body72968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp74652 _bind72974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp74651
                                                        _check72973_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp74650))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74649 _stx72959_))))
                             (_K7297973034_
                              (lambda (_rest72998_
                                       _init72999_
                                       _len73000_
                                       _tmp73001_)
                                (let ((__tmp74661
                                       (let ((__tmp74662
                                              (let ((__tmp74663
                                                     (let ((__tmp74664
                                                            (let ((__tmp74665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len73000_ '()))))
                      (declare (not safe))
                      (cons _tmp73001_ __tmp74665))))
               (declare (not safe))
               (cons '__check-values __tmp74664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp74663
                                                 _stx72959_))))
                                         (declare (not safe))
                                         (cons __tmp74662 _check72973_)))
                                      (__tmp74653
                                       (let ((__tmp74654
                                              (lambda (_hd73003_ _r73004_)
                                                (let* ((_hd7300573012_
                                                        _hd73003_)
                                                       (_E7300773016_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7300573012_))))
               (_K7300873022_
                (lambda (_k73019_ _id73020_)
                  (let ((__tmp74655
                         (let ((__tmp74656
                                (let ((__tmp74657
                                       (let ((__tmp74658
                                              (let ((__tmp74659
                                                     (let ((__tmp74660
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k73019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp73001_ __tmp74660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp74659))))
                                         (declare (not safe))
                                         (cons __tmp74658 '()))))
                                  (declare (not safe))
                                  (cons _id73020_ __tmp74657))))
                           (declare (not safe))
                           (cons 'set! __tmp74656))))
                    (declare (not safe))
                    (cons __tmp74655 _r73004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7300573012_))
                                                      (let ((_hd7300973025_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7300573012_)))
                    (_tl7301073027_
                     (let () (declare (not safe)) (##cdr _hd7300573012_))))
                (let* ((_id73030_ _hd7300973025_) (_k73032_ _tl7301073027_))
                  (declare (not safe))
                  (_K7300873022_ _k73032_ _id73030_)))
              (let () (declare (not safe)) (_E7300773016_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp74654
                                                 _bind72974_
                                                 _init72999_))))
                                  (declare (not safe))
                                  (_lp72970_
                                   _rest72998_
                                   __tmp74661
                                   __tmp74653)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7297572987_))
                            (let ((_hd7298073037_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7297572987_)))
                                  (_tl7298173039_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7297572987_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7298073037_))
                                  (let ((_hd7298273042_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7298073037_)))
                                        (_tl7298373044_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7298073037_))))
                                    (let ((_tmp73047_ _hd7298273042_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7298373044_))
                                          (let ((_hd7298473049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7298373044_)))
                                                (_tl7298573051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7298373044_))))
                                            (let* ((_len73054_ _hd7298473049_)
                                                   (_init73056_ _tl7298573051_)
                                                   (_rest73058_
                                                    _tl7298173039_))
                                              (declare (not safe))
                                              (_K7297973034_
                                               _rest73058_
                                               _init73056_
                                               _len73054_
                                               _tmp73047_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7297772995_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7297772995_))))
                            (let ()
                              (declare (not safe))
                              (_else7297772995_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx72959_
             _compile-simple72961_
             _compile-values72962_)))))
    (define __compile-letrec*-values%
      (lambda (_stx72714_)
        (letrec ((_compile-simple72716_
                  (lambda (_hd-ids72955_ _exprs72956_ _body72957_)
                    (let ((__tmp74666
                           (let ((__tmp74667
                                  (let ((__tmp74669
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids72955_)
                                              _exprs72956_))
                                        (__tmp74668
                                         (let ()
                                           (declare (not safe))
                                           (cons _body72957_ '()))))
                                    (declare (not safe))
                                    (cons __tmp74669 __tmp74668))))
                             (declare (not safe))
                             (cons 'letrec* __tmp74667))))
                      (declare (not safe))
                      (__SRC__% __tmp74666 _stx72714_))))
                 (_compile-values72717_
                  (lambda (_hd-ids72866_ _exprs72867_ _body72868_)
                    (let _lp72870_ ((_rest72872_ _hd-ids72866_)
                                    (_exprs72873_ _exprs72867_)
                                    (_bind72874_ '())
                                    (_post72875_ '()))
                      (let* ((_rest7287672890_ _rest72872_)
                             (_else7287972898_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind72718_
                                   _bind72874_
                                   _post72875_
                                   _body72868_)))))
                        (let ((_K7288472938_
                               (lambda (_rest72933_ _hd72934_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd72934_))
                                     (let ((_id72936_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd72934_))))
                                       (let ((__tmp74679 (cdr _exprs72873_))
                                             (__tmp74674
                                              (let ((__tmp74675
                                                     (let ((__tmp74676
                                                            (let ((__tmp74677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74678
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp74678))))
                      (declare (not safe))
                      (cons __tmp74677 '()))))
               (declare (not safe))
               (cons _id72936_ __tmp74676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74675 _bind72874_)))
                                             (__tmp74670
                                              (let ((__tmp74671
                                                     (let ((__tmp74672
                                                            (let ((__tmp74673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs72873_)))
                      (declare (not safe))
                      (cons __tmp74673 '()))))
               (declare (not safe))
               (cons _id72936_ __tmp74672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74671
                                                      _post72875_))))
                                         (declare (not safe))
                                         (_lp72870_
                                          _rest72933_
                                          __tmp74679
                                          __tmp74674
                                          __tmp74670)))
                                     (let ((__tmp74684 (cdr _exprs72873_))
                                           (__tmp74680
                                            (let ((__tmp74681
                                                   (let ((__tmp74682
                                                          (let ((__tmp74683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs72873_)))
                    (declare (not safe))
                    (cons __tmp74683 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp74682))))
                                              (declare (not safe))
                                              (cons __tmp74681 _post72875_))))
                                       (declare (not safe))
                                       (_lp72870_
                                        _rest72933_
                                        __tmp74684
                                        _bind72874_
                                        __tmp74680)))))
                              (_K7288172918_
                               (lambda (_rest72902_ _hd72903_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd72903_))
                                     (let ((_id72905_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd72903_))))
                                       (let ((__tmp74696 (cdr _exprs72873_))
                                             (__tmp74691
                                              (let ((__tmp74692
                                                     (let ((__tmp74693
                                                            (let ((__tmp74694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74695
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp74695))))
                      (declare (not safe))
                      (cons __tmp74694 '()))))
               (declare (not safe))
               (cons _id72905_ __tmp74693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74692 _bind72874_)))
                                             (__tmp74685
                                              (let ((__tmp74686
                                                     (let ((__tmp74687
                                                            (let ((__tmp74688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74689
                                  (let ((__tmp74690 (car _exprs72873_)))
                                    (declare (not safe))
                                    (cons __tmp74690 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp74689))))
                      (declare (not safe))
                      (cons __tmp74688 '()))))
               (declare (not safe))
               (cons _id72905_ __tmp74687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74686
                                                      _post72875_))))
                                         (declare (not safe))
                                         (_lp72870_
                                          _rest72902_
                                          __tmp74696
                                          __tmp74691
                                          __tmp74685)))
                                     (if (let ((__tmp74697
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd72903_))))
                                           (declare (not safe))
                                           (not __tmp74697))
                                         (let ((__tmp74702 (cdr _exprs72873_))
                                               (__tmp74698
                                                (let ((__tmp74699
                                                       (let ((__tmp74700
                                                              (let ((__tmp74701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs72873_)))
                        (declare (not safe))
                        (cons __tmp74701 '()))))
                 (declare (not safe))
                 (cons '#f __tmp74700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp74699
                                                        _post72875_))))
                                           (declare (not safe))
                                           (_lp72870_
                                            _rest72902_
                                            __tmp74702
                                            _bind72874_
                                            __tmp74698))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd72903_))
                                             (let* ((_len72907_
                                                     (length _hd72903_))
                                                    (_tmp72909_
                                                     (let ((__tmp74703
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp74703))))
                                               (let ((__tmp74720
                                                      (cdr _exprs72873_))
                                                     (__tmp74713
                                                      (let ((__tmp74714
                                                             (lambda (_id72912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r72913_)
                       (if (let () (declare (not safe)) (__AST-e _id72912_))
                           (let ((__tmp74715
                                  (let ((__tmp74719
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id72912_)))
                                        (__tmp74716
                                         (let ((__tmp74717
                                                (let ((__tmp74718
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp74718))))
                                           (declare (not safe))
                                           (cons __tmp74717 '()))))
                                    (declare (not safe))
                                    (cons __tmp74719 __tmp74716))))
                             (declare (not safe))
                             (cons __tmp74715 _r72913_))
                           _r72913_))))
                (declare (not safe))
                (foldl1 __tmp74714 _bind72874_ _hd72903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp74704
                                                      (let ((__tmp74705
                                                             (let ((__tmp74706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp74712 (car _exprs72873_))
                                  (__tmp74707
                                   (let ((__tmp74708
                                          (let ((__tmp74710
                                                 (lambda (_id72915_ _k72916_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id72915_))
                                                       (let ((__tmp74711
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id72915_))))
                 (declare (not safe))
                 (cons __tmp74711 _k72916_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp74709
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len72907_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp74710
                                             _hd72903_
                                             __tmp74709))))
                                     (declare (not safe))
                                     (cons _len72907_ __tmp74708))))
                              (declare (not safe))
                              (cons __tmp74712 __tmp74707))))
                       (declare (not safe))
                       (cons _tmp72909_ __tmp74706))))
                (declare (not safe))
                (cons __tmp74705 _post72875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp72870_
                                                  _rest72902_
                                                  __tmp74720
                                                  __tmp74713
                                                  __tmp74704)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx72714_
                                                _hd72903_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7287672890_))
                              (let ((_tl7288672943_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7287672890_)))
                                    (_hd7288572941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7287672890_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7288572941_))
                                    (let ((_tl7288872948_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7288572941_)))
                                          (_hd7288772946_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7288572941_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7288872948_))
                                          (let ((_hd72951_ _hd7288772946_)
                                                (_rest72953_ _tl7288672943_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7288472938_
                                               _rest72953_
                                               _hd72951_)))
                                          (let ((_hd72926_ _hd7288572941_)
                                                (_rest72928_ _tl7288672943_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7288172918_
                                               _rest72928_
                                               _hd72926_)))))
                                    (let ((_hd72926_ _hd7288572941_)
                                          (_rest72928_ _tl7288672943_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7288172918_
                                         _rest72928_
                                         _hd72926_)))))
                              (let ()
                                (declare (not safe))
                                (_else7287972898_))))))))
                 (_compile-bind72718_
                  (lambda (_bind72862_ _post72863_ _body72864_)
                    (let ((__tmp74721
                           (let ((__tmp74722
                                  (let ((__tmp74725 (reverse _bind72862_))
                                        (__tmp74723
                                         (let ((__tmp74724
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post72719_
                                                   _post72863_
                                                   _body72864_))))
                                           (declare (not safe))
                                           (cons __tmp74724 '()))))
                                    (declare (not safe))
                                    (cons __tmp74725 __tmp74723))))
                             (declare (not safe))
                             (cons 'let __tmp74722))))
                      (declare (not safe))
                      (__SRC__% __tmp74721 _stx72714_))))
                 (_compile-post72719_
                  (lambda (_post72721_ _body72722_)
                    (let ((__tmp74726
                           (let ((__tmp74727
                                  (let ((__tmp74728
                                         (let ((__tmp74730
                                                (lambda (_hd72724_ _r72725_)
                                                  (let* ((_hd7272672749_
                                                          _hd72724_)
                                                         (_E7273072753_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7272672749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7274372847_
                                                           (lambda (_expr72845_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr72845_ _r72725_))))
                  (_K7273872825_
                   (lambda (_expr72822_ _id72823_)
                     (let ((__tmp74731
                            (let ((__tmp74732
                                   (let ((__tmp74733
                                          (let ((__tmp74734
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr72822_ '()))))
                                            (declare (not safe))
                                            (cons _id72823_ __tmp74734))))
                                     (declare (not safe))
                                     (cons 'set! __tmp74733))))
                              (declare (not safe))
                              (__SRC__% __tmp74732 _stx72714_))))
                       (declare (not safe))
                       (cons __tmp74731 _r72725_))))
                  (_K7273172792_
                   (lambda (_init72757_ _len72758_ _expr72759_ _tmp72760_)
                     (let ((__tmp74735
                            (let ((__tmp74736
                                   (let ((__tmp74737
                                          (let ((__tmp74751
                                                 (let ((__tmp74752
                                                        (let ((__tmp74753
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr72759_ '()))))
                  (declare (not safe))
                  (cons _tmp72760_ __tmp74753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp74752 '())))
                                                (__tmp74738
                                                 (let ((__tmp74747
                                                        (let ((__tmp74748
                                                               (let ((__tmp74749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74750
                                     (let ()
                                       (declare (not safe))
                                       (cons _len72758_ '()))))
                                (declare (not safe))
                                (cons _tmp72760_ __tmp74750))))
                         (declare (not safe))
                         (cons '__check-values __tmp74749))))
                  (declare (not safe))
                  (__SRC__% __tmp74748 _stx72714_)))
               (__tmp74739
                (let ((__tmp74740
                       (map (lambda (_hd72762_)
                              (let* ((_hd7276372770_ _hd72762_)
                                     (_E7276572774_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7276372770_))))
                                     (_K7276672780_
                                      (lambda (_k72777_ _id72778_)
                                        (let ((__tmp74741
                                               (let ((__tmp74742
                                                      (let ((__tmp74743
                                                             (let ((__tmp74744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp74745
                                   (let ((__tmp74746
                                          (let ()
                                            (declare (not safe))
                                            (cons _k72777_ '()))))
                                     (declare (not safe))
                                     (cons _tmp72760_ __tmp74746))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp74745))))
                       (declare (not safe))
                       (cons __tmp74744 '()))))
                (declare (not safe))
                (cons _id72778_ __tmp74743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp74742))))
                                          (declare (not safe))
                                          (__SRC__% __tmp74741 _stx72714_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7276372770_))
                                    (let ((_hd7276772783_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7276372770_)))
                                          (_tl7276872785_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7276372770_))))
                                      (let* ((_id72788_ _hd7276772783_)
                                             (_k72790_ _tl7276872785_))
                                        (declare (not safe))
                                        (_K7276672780_ _k72790_ _id72788_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7276572774_)))))
                            _init72757_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp74740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp74747
                                                         __tmp74739))))
                                            (declare (not safe))
                                            (cons __tmp74751 __tmp74738))))
                                     (declare (not safe))
                                     (cons 'let __tmp74737))))
                              (declare (not safe))
                              (__SRC__% __tmp74736 _stx72714_))))
                       (declare (not safe))
                       (cons __tmp74735 _r72725_)))))
              (if (let () (declare (not safe)) (##pair? _hd7272672749_))
                  (let ((_tl7274572852_
                         (let () (declare (not safe)) (##cdr _hd7272672749_)))
                        (_hd7274472850_
                         (let () (declare (not safe)) (##car _hd7272672749_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7274472850_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7274572852_))
                            (let ((_tl7274772857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7274572852_)))
                                  (_hd7274672855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7274572852_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7274772857_))
                                  (let ((_expr72860_ _hd7274672855_))
                                    (declare (not safe))
                                    (_K7274372847_ _expr72860_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7274772857_))
                                      (let ((_tl7273772811_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7274772857_)))
                                            (_hd7273672809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7274772857_))))
                                        (let ((_tmp72800_ _hd7274472850_)
                                              (_expr72807_ _hd7274672855_)
                                              (_len72814_ _hd7273672809_)
                                              (_init72816_ _tl7273772811_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7273172792_
                                             _init72816_
                                             _len72814_
                                             _expr72807_
                                             _tmp72800_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7273072753_)))))
                            (let () (declare (not safe)) (_E7273072753_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7274572852_))
                            (let ((_tl7274272837_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7274572852_)))
                                  (_hd7274172835_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7274572852_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7274272837_))
                                  (let ((_id72833_ _hd7274472850_)
                                        (_expr72840_ _hd7274172835_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7273872825_ _expr72840_ _id72833_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7274272837_))
                                      (let ((_tl7273772811_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7274272837_)))
                                            (_hd7273672809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7274272837_))))
                                        (let ((_tmp72800_ _hd7274472850_)
                                              (_expr72807_ _hd7274172835_)
                                              (_len72814_ _hd7273672809_)
                                              (_init72816_ _tl7273772811_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7273172792_
                                             _init72816_
                                             _len72814_
                                             _expr72807_
                                             _tmp72800_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7273072753_)))))
                            (let () (declare (not safe)) (_E7273072753_)))))
                  (let () (declare (not safe)) (_E7273072753_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp74729 (list _body72722_)))
                                           (declare (not safe))
                                           (foldl1 __tmp74730
                                                   __tmp74729
                                                   _post72721_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp74728))))
                             (declare (not safe))
                             (cons 'begin __tmp74727))))
                      (declare (not safe))
                      (__SRC__% __tmp74726 _stx72714_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx72714_
             _compile-simple72716_
             _compile-values72717_)))))
    (define __compile-call%
      (lambda (_stx72674_)
        (let* ((_$e72676_ _stx72674_)
               (_$E7267872687_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72676_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72676_))
              (let* ((_$tgt7267972690_
                      (let () (declare (not safe)) (__AST-e _$e72676_)))
                     (_$hd7268072693_
                      (let () (declare (not safe)) (##car _$tgt7267972690_)))
                     (_$tl7268172696_
                      (let () (declare (not safe)) (##cdr _$tgt7267972690_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7268172696_))
                    (let* ((_$tgt7268272700_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7268172696_)))
                           (_$hd7268372703_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7268272700_)))
                           (_$tl7268472706_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7268272700_))))
                      (let* ((_rator72710_ _$hd7268372703_)
                             (_rands72712_ _$tl7268472706_)
                             (__tmp74754
                              (let ((__tmp74756
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator72710_)))
                                    (__tmp74755 (map __compile _rands72712_)))
                                (declare (not safe))
                                (cons __tmp74756 __tmp74755))))
                        (declare (not safe))
                        (__SRC__% __tmp74754 _stx72674_)))
                    (let () (declare (not safe)) (_$E7267872687_))))
              (let () (declare (not safe)) (_$E7267872687_))))))
    (define __compile-ref%
      (lambda (_stx72636_)
        (let* ((_$e72638_ _stx72636_)
               (_$E7264072649_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72638_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72638_))
              (let* ((_$tgt7264172652_
                      (let () (declare (not safe)) (__AST-e _$e72638_)))
                     (_$hd7264272655_
                      (let () (declare (not safe)) (##car _$tgt7264172652_)))
                     (_$tl7264372658_
                      (let () (declare (not safe)) (##cdr _$tgt7264172652_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7264372658_))
                    (let* ((_$tgt7264472662_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7264372658_)))
                           (_$hd7264572665_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7264472662_)))
                           (_$tl7264672668_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7264472662_))))
                      (let ((_id72672_ _$hd7264572665_))
                        (if (let ((__tmp74757
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7264672668_))))
                              (declare (not safe))
                              (equal? __tmp74757 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id72672_ _stx72636_))
                            (let () (declare (not safe)) (_$E7264072649_)))))
                    (let () (declare (not safe)) (_$E7264072649_))))
              (let () (declare (not safe)) (_$E7264072649_))))))
    (define __compile-setq%
      (lambda (_stx72583_)
        (let* ((_$e72585_ _stx72583_)
               (_$E7258772599_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72585_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72585_))
              (let* ((_$tgt7258872602_
                      (let () (declare (not safe)) (__AST-e _$e72585_)))
                     (_$hd7258972605_
                      (let () (declare (not safe)) (##car _$tgt7258872602_)))
                     (_$tl7259072608_
                      (let () (declare (not safe)) (##cdr _$tgt7258872602_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7259072608_))
                    (let* ((_$tgt7259172612_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7259072608_)))
                           (_$hd7259272615_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7259172612_)))
                           (_$tl7259372618_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7259172612_))))
                      (let ((_id72622_ _$hd7259272615_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7259372618_))
                            (let* ((_$tgt7259472624_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7259372618_)))
                                   (_$hd7259572627_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7259472624_)))
                                   (_$tl7259672630_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7259472624_))))
                              (let ((_expr72634_ _$hd7259572627_))
                                (if (let ((__tmp74758
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7259672630_))))
                                      (declare (not safe))
                                      (equal? __tmp74758 '()))
                                    (let ((__tmp74759
                                           (let ((__tmp74760
                                                  (let ((__tmp74763
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id72622_
                                                            _stx72583_)))
                                                        (__tmp74761
                                                         (let ((__tmp74762
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr72634_))))
                   (declare (not safe))
                   (cons __tmp74762 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74763
                                                          __tmp74761))))
                                             (declare (not safe))
                                             (cons 'set! __tmp74760))))
                                      (declare (not safe))
                                      (__SRC__% __tmp74759 _stx72583_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7258772599_)))))
                            (let () (declare (not safe)) (_$E7258772599_)))))
                    (let () (declare (not safe)) (_$E7258772599_))))
              (let () (declare (not safe)) (_$E7258772599_))))))
    (define __compile-if%
      (lambda (_stx72515_)
        (let* ((_$e72517_ _stx72515_)
               (_$E7251972534_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72517_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72517_))
              (let* ((_$tgt7252072537_
                      (let () (declare (not safe)) (__AST-e _$e72517_)))
                     (_$hd7252172540_
                      (let () (declare (not safe)) (##car _$tgt7252072537_)))
                     (_$tl7252272543_
                      (let () (declare (not safe)) (##cdr _$tgt7252072537_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7252272543_))
                    (let* ((_$tgt7252372547_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7252272543_)))
                           (_$hd7252472550_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7252372547_)))
                           (_$tl7252572553_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7252372547_))))
                      (let ((_p72557_ _$hd7252472550_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7252572553_))
                            (let* ((_$tgt7252672559_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7252572553_)))
                                   (_$hd7252772562_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7252672559_)))
                                   (_$tl7252872565_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7252672559_))))
                              (let ((_t72569_ _$hd7252772562_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7252872565_))
                                    (let* ((_$tgt7252972571_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7252872565_)))
                                           (_$hd7253072574_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7252972571_)))
                                           (_$tl7253172577_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7252972571_))))
                                      (let ((_f72581_ _$hd7253072574_))
                                        (if (let ((__tmp74764
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7253172577_))))
                                              (declare (not safe))
                                              (equal? __tmp74764 '()))
                                            (let ((__tmp74765
                                                   (let ((__tmp74766
                                                          (let ((__tmp74771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p72557_)))
                        (__tmp74767
                         (let ((__tmp74770
                                (let ()
                                  (declare (not safe))
                                  (__compile _t72569_)))
                               (__tmp74768
                                (let ((__tmp74769
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f72581_))))
                                  (declare (not safe))
                                  (cons __tmp74769 '()))))
                           (declare (not safe))
                           (cons __tmp74770 __tmp74768))))
                    (declare (not safe))
                    (cons __tmp74771 __tmp74767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp74766))))
                                              (declare (not safe))
                                              (__SRC__% __tmp74765 _stx72515_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7251972534_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7251972534_)))))
                            (let () (declare (not safe)) (_$E7251972534_)))))
                    (let () (declare (not safe)) (_$E7251972534_))))
              (let () (declare (not safe)) (_$E7251972534_))))))
    (define __compile-quote%
      (lambda (_stx72477_)
        (let* ((_$e72479_ _stx72477_)
               (_$E7248172490_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72479_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72479_))
              (let* ((_$tgt7248272493_
                      (let () (declare (not safe)) (__AST-e _$e72479_)))
                     (_$hd7248372496_
                      (let () (declare (not safe)) (##car _$tgt7248272493_)))
                     (_$tl7248472499_
                      (let () (declare (not safe)) (##cdr _$tgt7248272493_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7248472499_))
                    (let* ((_$tgt7248572503_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7248472499_)))
                           (_$hd7248672506_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7248572503_)))
                           (_$tl7248772509_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7248572503_))))
                      (let ((_e72513_ _$hd7248672506_))
                        (if (let ((__tmp74772
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7248772509_))))
                              (declare (not safe))
                              (equal? __tmp74772 '()))
                            (let ((__tmp74773
                                   (let ((__tmp74774
                                          (let ((__tmp74775
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e72513_))))
                                            (declare (not safe))
                                            (cons __tmp74775 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp74774))))
                              (declare (not safe))
                              (__SRC__% __tmp74773 _stx72477_))
                            (let () (declare (not safe)) (_$E7248172490_)))))
                    (let () (declare (not safe)) (_$E7248172490_))))
              (let () (declare (not safe)) (_$E7248172490_))))))
    (define __compile-quote-syntax%
      (lambda (_stx72439_)
        (let* ((_$e72441_ _stx72439_)
               (_$E7244372452_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72441_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72441_))
              (let* ((_$tgt7244472455_
                      (let () (declare (not safe)) (__AST-e _$e72441_)))
                     (_$hd7244572458_
                      (let () (declare (not safe)) (##car _$tgt7244472455_)))
                     (_$tl7244672461_
                      (let () (declare (not safe)) (##cdr _$tgt7244472455_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7244672461_))
                    (let* ((_$tgt7244772465_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7244672461_)))
                           (_$hd7244872468_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7244772465_)))
                           (_$tl7244972471_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7244772465_))))
                      (let ((_e72475_ _$hd7244872468_))
                        (if (let ((__tmp74776
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7244972471_))))
                              (declare (not safe))
                              (equal? __tmp74776 '()))
                            (let ((__tmp74777
                                   (let ((__tmp74778
                                          (let ()
                                            (declare (not safe))
                                            (cons _e72475_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp74778))))
                              (declare (not safe))
                              (__SRC__% __tmp74777 _stx72439_))
                            (let () (declare (not safe)) (_$E7244372452_)))))
                    (let () (declare (not safe)) (_$E7244372452_))))
              (let () (declare (not safe)) (_$E7244372452_))))))
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
