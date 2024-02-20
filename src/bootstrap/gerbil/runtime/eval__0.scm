(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708387688)
  (begin
    (define __syntax::t
      (let ((__tmp76788 (list))
            (__tmp76786
             (let ((__tmp76787
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76787 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp76788
         '(e id)
         __tmp76786
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76597_ (apply make-instance __syntax::t _$args76597_)))
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
      (let ((__tmp76791 (list __syntax::t))
            (__tmp76789
             (let ((__tmp76790
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76790 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp76791
         '()
         __tmp76789
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76594_ (apply make-instance __core-form::t _$args76594_)))
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
      (let ((__tmp76794 (list __core-form::t))
            (__tmp76792
             (let ((__tmp76793
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76793 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp76794
         '()
         __tmp76792
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76591_
        (apply make-instance __core-expression::t _$args76591_)))
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
      (let ((__tmp76797 (list __core-form::t))
            (__tmp76795
             (let ((__tmp76796
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76796 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp76797
         '()
         __tmp76795
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76588_
        (apply make-instance __core-special-form::t _$args76588_)))
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
      (lambda (_id76586_)
        (let ((__tmp76798 (let () (declare (not safe)) (__AST-e _id76586_))))
          (declare (not safe))
          (hash-get __core __tmp76798))))
    (define __core-bound-id?__%
      (lambda (_id76570_ _is?76571_)
        (let ((_$e76573_
               (let () (declare (not safe)) (__core-resolve _id76570_))))
          (if _$e76573_ (_is?76571_ _$e76573_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76579_)
        (let ((_is?76581_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76579_ _is?76581_))))
    (define __core-bound-id?
      (lambda _g76800_
        (let ((_g76799_ (let () (declare (not safe)) (##length _g76800_))))
          (cond ((let () (declare (not safe)) (##fx= _g76799_ 1))
                 (apply (lambda (_id76579_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76579_)))
                        _g76800_))
                ((let () (declare (not safe)) (##fx= _g76799_ 2))
                 (apply (lambda (_id76583_ _is?76584_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76583_ _is?76584_)))
                        _g76800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g76800_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76553_ _e76554_ _make76555_)
        (let ((__tmp76801
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76554_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76554_
                   (_make76555_ _e76554_ _id76553_))))
          (declare (not safe))
          (hash-put! __core _id76553_ __tmp76801))))
    (define __core-bind-syntax!__0
      (lambda (_id76560_ _e76561_)
        (let ((_make76563_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76560_ _e76561_ _make76563_))))
    (define __core-bind-syntax!
      (lambda _g76803_
        (let ((_g76802_ (let () (declare (not safe)) (##length _g76803_))))
          (cond ((let () (declare (not safe)) (##fx= _g76802_ 2))
                 (apply (lambda (_id76560_ _e76561_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76560_ _e76561_)))
                        _g76803_))
                ((let () (declare (not safe)) (##fx= _g76802_ 3))
                 (apply (lambda (_id76565_ _e76566_ _make76567_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76565_
                             _e76566_
                             _make76567_)))
                        _g76803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g76803_))))))
    (define __SRC__%
      (lambda (_e76536_ _src-stx76537_)
        (if (or (let () (declare (not safe)) (pair? _e76536_))
                (let () (declare (not safe)) (symbol? _e76536_)))
            (let ((__tmp76807
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76537_
                          'gerbil#AST::t))
                       (let ((__tmp76808
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76537_))))
                         (declare (not safe))
                         (__locat __tmp76808))
                       '#f)))
              (declare (not safe))
              (##make-source _e76536_ __tmp76807))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76536_ 'gerbil#AST::t))
                (let ((__tmp76806
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76536_ '1 AST::t '#f)))
                      (__tmp76804
                       (let ((__tmp76805
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76536_))))
                         (declare (not safe))
                         (__locat __tmp76805))))
                  (declare (not safe))
                  (##make-source __tmp76806 __tmp76804))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76536_))))))
    (define __SRC__0
      (lambda (_e76545_)
        (let ((_src-stx76547_ '#f))
          (declare (not safe))
          (__SRC__% _e76545_ _src-stx76547_))))
    (define __SRC
      (lambda _g76810_
        (let ((_g76809_ (let () (declare (not safe)) (##length _g76810_))))
          (cond ((let () (declare (not safe)) (##fx= _g76809_ 1))
                 (apply (lambda (_e76545_)
                          (let () (declare (not safe)) (__SRC__0 _e76545_)))
                        _g76810_))
                ((let () (declare (not safe)) (##fx= _g76809_ 2))
                 (apply (lambda (_e76549_ _src-stx76550_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76549_ _src-stx76550_)))
                        _g76810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g76810_))))))
    (define __locat
      (lambda (_loc76533_)
        (if (let () (declare (not safe)) (##locat? _loc76533_))
            _loc76533_
            '#f)))
    (define __check-values
      (lambda (_obj76528_ _k76529_)
        (let ((_count76531_
               (if (let () (declare (not safe)) (##values? _obj76528_))
                   (let () (declare (not safe)) (##vector-length _obj76528_))
                   '1)))
          (if (fx= _count76531_ _k76529_)
              '#!void
              (let ((__tmp76812
                     (if (fx< _count76531_ _k76529_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp76811
                     (if (let () (declare (not safe)) (##values? _obj76528_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj76528_))
                         _obj76528_)))
                (declare (not safe))
                (error __tmp76812 __tmp76811 _k76529_))))))
    (define __compile
      (lambda (_stx76498_)
        (let* ((_$e76500_ _stx76498_)
               (_$E7650276508_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76500_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76500_))
              (let* ((_$tgt7650376511_
                      (let () (declare (not safe)) (__AST-e _$e76500_)))
                     (_$hd7650476514_
                      (let () (declare (not safe)) (##car _$tgt7650376511_)))
                     (_$tl7650576517_
                      (let () (declare (not safe)) (##cdr _$tgt7650376511_))))
                (let* ((_form76521_ _$hd7650476514_)
                       (_$e76523_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form76521_))))
                  (if _$e76523_
                      ((lambda (_bind76526_)
                         ((##structure-ref _bind76526_ '1 __syntax::t '#f)
                          _stx76498_))
                       _$e76523_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx76498_
                         _form76521_)))))
              (let () (declare (not safe)) (_$E7650276508_))))))
    (define __compile-error__%
      (lambda (_stx76485_ _detail76486_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx76485_
           _detail76486_))))
    (define __compile-error__0
      (lambda (_stx76491_)
        (let ((_detail76493_ '#f))
          (declare (not safe))
          (__compile-error__% _stx76491_ _detail76493_))))
    (define __compile-error
      (lambda _g76814_
        (let ((_g76813_ (let () (declare (not safe)) (##length _g76814_))))
          (cond ((let () (declare (not safe)) (##fx= _g76813_ 1))
                 (apply (lambda (_stx76491_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx76491_)))
                        _g76814_))
                ((let () (declare (not safe)) (##fx= _g76813_ 2))
                 (apply (lambda (_stx76495_ _detail76496_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx76495_ _detail76496_)))
                        _g76814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g76814_))))))
    (define __compile-ignore%
      (lambda (_stx76482_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx76482_))))
    (define __compile-begin%
      (lambda (_stx76457_)
        (let* ((_$e76459_ _stx76457_)
               (_$E7646176467_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76459_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76459_))
              (let* ((_$tgt7646276470_
                      (let () (declare (not safe)) (__AST-e _$e76459_)))
                     (_$hd7646376473_
                      (let () (declare (not safe)) (##car _$tgt7646276470_)))
                     (_$tl7646476476_
                      (let () (declare (not safe)) (##cdr _$tgt7646276470_))))
                (let* ((_body76480_ _$tl7646476476_)
                       (__tmp76815
                        (let ((__tmp76816 (map __compile _body76480_)))
                          (declare (not safe))
                          (cons 'begin __tmp76816))))
                  (declare (not safe))
                  (__SRC__% __tmp76815 _stx76457_)))
              (let () (declare (not safe)) (_$E7646176467_))))))
    (define __compile-begin-foreign%
      (lambda (_stx76432_)
        (let* ((_$e76434_ _stx76432_)
               (_$E7643676442_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76434_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76434_))
              (let* ((_$tgt7643776445_
                      (let () (declare (not safe)) (__AST-e _$e76434_)))
                     (_$hd7643876448_
                      (let () (declare (not safe)) (##car _$tgt7643776445_)))
                     (_$tl7643976451_
                      (let () (declare (not safe)) (##cdr _$tgt7643776445_))))
                (let* ((_body76455_ _$tl7643976451_)
                       (__tmp76817
                        (let ((__tmp76818
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body76455_))))
                          (declare (not safe))
                          (cons 'begin __tmp76818))))
                  (declare (not safe))
                  (__SRC__% __tmp76817 _stx76432_)))
              (let () (declare (not safe)) (_$E7643676442_))))))
    (define __compile-import%
      (lambda (_stx76407_)
        (let* ((_$e76409_ _stx76407_)
               (_$E7641176417_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76409_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76409_))
              (let* ((_$tgt7641276420_
                      (let () (declare (not safe)) (__AST-e _$e76409_)))
                     (_$hd7641376423_
                      (let () (declare (not safe)) (##car _$tgt7641276420_)))
                     (_$tl7641476426_
                      (let () (declare (not safe)) (##cdr _$tgt7641276420_))))
                (let* ((_body76430_ _$tl7641476426_)
                       (__tmp76819
                        (let ((__tmp76820
                               (let ((__tmp76821
                                      (let ((__tmp76822
                                             (let ()
                                               (declare (not safe))
                                               (cons _body76430_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp76822))))
                                 (declare (not safe))
                                 (cons __tmp76821 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp76820))))
                  (declare (not safe))
                  (__SRC__% __tmp76819 _stx76407_)))
              (let () (declare (not safe)) (_$E7641176417_))))))
    (define __compile-begin-annotation%
      (lambda (_stx76354_)
        (let* ((_$e76356_ _stx76354_)
               (_$E7635876370_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76356_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76356_))
              (let* ((_$tgt7635976373_
                      (let () (declare (not safe)) (__AST-e _$e76356_)))
                     (_$hd7636076376_
                      (let () (declare (not safe)) (##car _$tgt7635976373_)))
                     (_$tl7636176379_
                      (let () (declare (not safe)) (##cdr _$tgt7635976373_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7636176379_))
                    (let* ((_$tgt7636276383_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7636176379_)))
                           (_$hd7636376386_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7636276383_)))
                           (_$tl7636476389_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7636276383_))))
                      (let ((_ann76393_ _$hd7636376386_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7636476389_))
                            (let* ((_$tgt7636576395_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7636476389_)))
                                   (_$hd7636676398_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7636576395_)))
                                   (_$tl7636776401_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7636576395_))))
                              (let ((_expr76405_ _$hd7636676398_))
                                (if (let ((__tmp76823
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7636776401_))))
                                      (declare (not safe))
                                      (equal? __tmp76823 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr76405_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7635876370_)))))
                            (let () (declare (not safe)) (_$E7635876370_)))))
                    (let () (declare (not safe)) (_$E7635876370_))))
              (let () (declare (not safe)) (_$E7635876370_))))))
    (define __compile-define-values%
      (lambda (_stx76245_)
        (let* ((_$e76247_ _stx76245_)
               (_$E7624976261_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76247_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76247_))
              (let* ((_$tgt7625076264_
                      (let () (declare (not safe)) (__AST-e _$e76247_)))
                     (_$hd7625176267_
                      (let () (declare (not safe)) (##car _$tgt7625076264_)))
                     (_$tl7625276270_
                      (let () (declare (not safe)) (##cdr _$tgt7625076264_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7625276270_))
                    (let* ((_$tgt7625376274_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7625276270_)))
                           (_$hd7625476277_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7625376274_)))
                           (_$tl7625576280_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7625376274_))))
                      (let ((_hd76284_ _$hd7625476277_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7625576280_))
                            (let* ((_$tgt7625676286_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7625576280_)))
                                   (_$hd7625776289_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7625676286_)))
                                   (_$tl7625876292_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7625676286_))))
                              (let ((_expr76296_ _$hd7625776289_))
                                (if (let ((__tmp76856
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7625876292_))))
                                      (declare (not safe))
                                      (equal? __tmp76856 '()))
                                    (let* ((_$e76298_ _hd76284_)
                                           (_$E7630076341_
                                            (lambda ()
                                              (let ((_$E7630176326_
                                                     (lambda ()
                                                       (let* ((_$E7630276313_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76298_))))
                      (_ids76316_ _hd76284_)
                      (_len76318_ (length _ids76316_))
                      (_tmp76320_
                       (let ((__tmp76824 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp76824))))
                 (let ((__tmp76825
                        (let ((__tmp76826
                               (let ((__tmp76843
                                      (let ((__tmp76844
                                             (let ((__tmp76845
                                                    (let ((__tmp76846
                                                           (let ((__tmp76847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76296_))))
                     (declare (not safe))
                     (cons __tmp76847 '()))))
              (declare (not safe))
              (cons _tmp76320_ __tmp76846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp76845))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76844 _stx76245_)))
                                     (__tmp76827
                                      (let ((__tmp76839
                                             (let ((__tmp76840
                                                    (let ((__tmp76841
                                                           (let ((__tmp76842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76318_ '()))))
                     (declare (not safe))
                     (cons _tmp76320_ __tmp76842))))
              (declare (not safe))
              (cons '__check-values __tmp76841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp76840
                                                _stx76245_)))
                                            (__tmp76828
                                             (let ((__tmp76829
                                                    (let ((__tmp76831
                                                           (lambda (_id76323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76324_)
                     (if (let () (declare (not safe)) (__AST-e _id76323_))
                         (let ((__tmp76832
                                (let ((__tmp76833
                                       (let ((__tmp76838
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76323_)))
                                             (__tmp76834
                                              (let ((__tmp76835
                                                     (let ((__tmp76836
                                                            (let ((__tmp76837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76324_ '()))))
                      (declare (not safe))
                      (cons _tmp76320_ __tmp76837))))
               (declare (not safe))
               (cons '##vector-ref __tmp76836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76835 '()))))
                                         (declare (not safe))
                                         (cons __tmp76838 __tmp76834))))
                                  (declare (not safe))
                                  (cons 'define __tmp76833))))
                           (declare (not safe))
                           (__SRC__% __tmp76832 _stx76245_))
                         '#f)))
                  (__tmp76830
                   (let () (declare (not safe)) (iota__0 _len76318_))))
              (declare (not safe))
              (filter-map2 __tmp76831 _ids76316_ __tmp76830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp76829))))
                                        (declare (not safe))
                                        (cons __tmp76839 __tmp76828))))
                                 (declare (not safe))
                                 (cons __tmp76843 __tmp76827))))
                          (declare (not safe))
                          (cons 'begin __tmp76826))))
                   (declare (not safe))
                   (__SRC__% __tmp76825 _stx76245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76298_))
                                                    (let* ((_$tgt7630376329_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76298_)))
                                                           (_$hd7630476332_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7630376329_)))
                                                           (_$tl7630576335_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7630376329_))))
                                                      (let ((_id76339_
                                                             _$hd7630476332_))
                                                        (if (let ((__tmp76853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7630576335_))))
                      (declare (not safe))
                      (equal? __tmp76853 '()))
                    (let ((__tmp76848
                           (let ((__tmp76849
                                  (let ((__tmp76852
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76339_)))
                                        (__tmp76850
                                         (let ((__tmp76851
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76296_))))
                                           (declare (not safe))
                                           (cons __tmp76851 '()))))
                                    (declare (not safe))
                                    (cons __tmp76852 __tmp76850))))
                             (declare (not safe))
                             (cons 'define __tmp76849))))
                      (declare (not safe))
                      (__SRC__% __tmp76848 _stx76245_))
                    (let () (declare (not safe)) (_$E7630176326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7630176326_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76298_))
                                          (let* ((_$tgt7630676344_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76298_)))
                                                 (_$hd7630776347_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7630676344_)))
                                                 (_$tl7630876350_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7630676344_))))
                                            (if (let ((__tmp76855
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7630776347_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76855 '#f))
                                                (if (let ((__tmp76854
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7630876350_))))
                                                      (declare (not safe))
                                                      (equal? __tmp76854 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76296_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7630076341_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7630076341_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7630076341_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7624976261_)))))
                            (let () (declare (not safe)) (_$E7624976261_)))))
                    (let () (declare (not safe)) (_$E7624976261_))))
              (let () (declare (not safe)) (_$E7624976261_))))))
    (define __compile-head-id
      (lambda (_e76243_)
        (let ((__tmp76857
               (if (let () (declare (not safe)) (__AST-e _e76243_))
                   _e76243_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp76857))))
    (define __compile-lambda-head
      (lambda (_hd76200_)
        (let _recur76202_ ((_rest76204_ _hd76200_))
          (let* ((_$e76206_ _rest76204_)
                 (_$E7620876226_
                  (lambda ()
                    (let ((_$E7620976223_
                           (lambda ()
                             (let* ((_$E7621076218_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76206_))))
                                    (_tail76221_ _$e76206_))
                               (declare (not safe))
                               (__compile-head-id _tail76221_)))))
                      (if (let ((__tmp76858
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76206_))))
                            (declare (not safe))
                            (equal? __tmp76858 '()))
                          '()
                          (let () (declare (not safe)) (_$E7620976223_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76206_))
                (let* ((_$tgt7621176229_
                        (let () (declare (not safe)) (__AST-e _$e76206_)))
                       (_$hd7621276232_
                        (let () (declare (not safe)) (##car _$tgt7621176229_)))
                       (_$tl7621376235_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7621176229_))))
                  (let* ((_hd76239_ _$hd7621276232_)
                         (_rest76241_ _$tl7621376235_))
                    (let ((__tmp76860
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76239_)))
                          (__tmp76859
                           (let ()
                             (declare (not safe))
                             (_recur76202_ _rest76241_))))
                      (declare (not safe))
                      (cons __tmp76860 __tmp76859))))
                (let () (declare (not safe)) (_$E7620876226_)))))))
    (define __compile-lambda%
      (lambda (_stx76147_)
        (let* ((_$e76149_ _stx76147_)
               (_$E7615176163_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76149_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76149_))
              (let* ((_$tgt7615276166_
                      (let () (declare (not safe)) (__AST-e _$e76149_)))
                     (_$hd7615376169_
                      (let () (declare (not safe)) (##car _$tgt7615276166_)))
                     (_$tl7615476172_
                      (let () (declare (not safe)) (##cdr _$tgt7615276166_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7615476172_))
                    (let* ((_$tgt7615576176_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7615476172_)))
                           (_$hd7615676179_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7615576176_)))
                           (_$tl7615776182_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7615576176_))))
                      (let ((_hd76186_ _$hd7615676179_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7615776182_))
                            (let* ((_$tgt7615876188_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7615776182_)))
                                   (_$hd7615976191_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7615876188_)))
                                   (_$tl7616076194_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7615876188_))))
                              (let ((_body76198_ _$hd7615976191_))
                                (if (let ((__tmp76866
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7616076194_))))
                                      (declare (not safe))
                                      (equal? __tmp76866 '()))
                                    (let ((__tmp76861
                                           (let ((__tmp76862
                                                  (let ((__tmp76865
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76186_)))
                                                        (__tmp76863
                                                         (let ((__tmp76864
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76198_))))
                   (declare (not safe))
                   (cons __tmp76864 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76865
                                                          __tmp76863))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp76862))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76861 _stx76147_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7615176163_)))))
                            (let () (declare (not safe)) (_$E7615176163_)))))
                    (let () (declare (not safe)) (_$E7615176163_))))
              (let () (declare (not safe)) (_$E7615176163_))))))
    (define __compile-case-lambda%
      (lambda (_stx75939_)
        (letrec ((_variadic?75941_
                  (lambda (_hd76112_)
                    (let* ((_$e76114_ _hd76112_)
                           (_$E7611676132_
                            (lambda ()
                              (let ((_$E7611776129_
                                     (lambda ()
                                       (let ((_$E7611876126_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76114_)))))
                                         '#t))))
                                (if (let ((__tmp76867
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76114_))))
                                      (declare (not safe))
                                      (equal? __tmp76867 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7611776129_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76114_))
                          (let* ((_$tgt7611976135_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76114_)))
                                 (_$hd7612076138_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7611976135_)))
                                 (_$tl7612176141_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7611976135_))))
                            (let ((_rest76145_ _$tl7612176141_))
                              (declare (not safe))
                              (_variadic?75941_ _rest76145_)))
                          (let () (declare (not safe)) (_$E7611676132_))))))
                 (_arity75942_
                  (lambda (_hd76077_)
                    (let _lp76079_ ((_rest76081_ _hd76077_) (_k76082_ '0))
                      (let* ((_$e76084_ _rest76081_)
                             (_$E7608676097_
                              (lambda ()
                                (let ((_$E7608776094_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76084_)))))
                                  _k76082_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76084_))
                            (let* ((_$tgt7608876100_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76084_)))
                                   (_$hd7608976103_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7608876100_)))
                                   (_$tl7609076106_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7608876100_))))
                              (let* ((_rest76110_ _$tl7609076106_)
                                     (__tmp76868
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76082_ '1))))
                                (declare (not safe))
                                (_lp76079_ _rest76110_ __tmp76868)))
                            (let () (declare (not safe)) (_$E7608676097_)))))))
                 (_generate75943_
                  (lambda (_rest76004_ _args76005_ _len76006_)
                    (let* ((_$e76008_ _rest76004_)
                           (_$E7601076021_
                            (lambda ()
                              (let* ((_$E7601176018_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e76008_))))
                                     (__tmp76869
                                      (let ((__tmp76870
                                             (let ((__tmp76871
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args76005_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp76871))))
                                        (declare (not safe))
                                        (cons 'error __tmp76870))))
                                (declare (not safe))
                                (__SRC__% __tmp76869 _stx75939_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76008_))
                          (let* ((_$tgt7601276024_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76008_)))
                                 (_$hd7601376027_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7601276024_)))
                                 (_$tl7601476030_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7601276024_))))
                            (let* ((_clause76034_ _$hd7601376027_)
                                   (_rest76036_ _$tl7601476030_)
                                   (_$e76038_ _clause76034_)
                                   (_$E7604076049_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76038_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76038_))
                                  (let* ((_$tgt7604176052_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76038_)))
                                         (_$hd7604276055_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7604176052_)))
                                         (_$tl7604376058_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7604176052_))))
                                    (let ((_hd76062_ _$hd7604276055_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7604376058_))
                                          (let* ((_$tgt7604476064_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7604376058_)))
                                                 (_$hd7604576067_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7604476064_)))
                                                 (_$tl7604676070_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7604476064_))))
                                            (if (let ((__tmp76886
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7604676070_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76886 '()))
                                                (let ((_clen76074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity75942_
                                                          _hd76062_)))
                                                      (_cmp76075_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?75941_
                                                              _hd76062_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp76872
                                                         (let ((__tmp76873
                                                                (let ((__tmp76883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76884
                                      (let ((__tmp76885
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76074_ '()))))
                                        (declare (not safe))
                                        (cons _len76006_ __tmp76885))))
                                 (declare (not safe))
                                 (cons _cmp76075_ __tmp76884)))
                              (__tmp76874
                               (let ((__tmp76877
                                      (let ((__tmp76878
                                             (let ((__tmp76879
                                                    (let ((__tmp76881
                                                           (let ((__tmp76882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76034_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp76882)))
                  (__tmp76880
                   (let () (declare (not safe)) (cons _args76005_ '()))))
              (declare (not safe))
              (cons __tmp76881 __tmp76880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp76879))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76878 _stx75939_)))
                                     (__tmp76875
                                      (let ((__tmp76876
                                             (let ()
                                               (declare (not safe))
                                               (_generate75943_
                                                _rest76036_
                                                _args76005_
                                                _len76006_))))
                                        (declare (not safe))
                                        (cons __tmp76876 '()))))
                                 (declare (not safe))
                                 (cons __tmp76877 __tmp76875))))
                          (declare (not safe))
                          (cons __tmp76883 __tmp76874))))
                   (declare (not safe))
                   (cons 'if __tmp76873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp76872
                                                     _stx75939_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7604076049_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7604076049_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7604076049_)))))
                          (let () (declare (not safe)) (_$E7601076021_)))))))
          (let* ((_$e75945_ _stx75939_)
                 (_$E7594775979_
                  (lambda ()
                    (let ((_$E7594875961_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75945_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75945_))
                          (let* ((_$tgt7594975964_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75945_)))
                                 (_$hd7595075967_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7594975964_)))
                                 (_$tl7595175970_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7594975964_))))
                            (let ((_clauses75974_ _$tl7595175970_))
                              (let ((_args75976_
                                     (let ((__tmp76887 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76887 _stx75939_)))
                                    (_len75977_
                                     (let ((__tmp76888 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76888 _stx75939_))))
                                (let ((__tmp76889
                                       (let ((__tmp76890
                                              (let ((__tmp76891
                                                     (let ((__tmp76892
                                                            (let ((__tmp76893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76894
                                  (let ((__tmp76897
                                         (let ((__tmp76898
                                                (let ((__tmp76899
                                                       (let ((__tmp76900
                                                              (let ((__tmp76901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76902
                                    (let ()
                                      (declare (not safe))
                                      (cons _args75976_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp76902))))
                        (declare (not safe))
                        (__SRC__% __tmp76901 _stx75939_))))
                 (declare (not safe))
                 (cons __tmp76900 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len75977_
                                                        __tmp76899))))
                                           (declare (not safe))
                                           (cons __tmp76898 '())))
                                        (__tmp76895
                                         (let ((__tmp76896
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate75943_
                                                   _clauses75974_
                                                   _args75976_
                                                   _len75977_))))
                                           (declare (not safe))
                                           (cons __tmp76896 '()))))
                                    (declare (not safe))
                                    (cons __tmp76897 __tmp76895))))
                             (declare (not safe))
                             (cons 'let __tmp76894))))
                      (declare (not safe))
                      (__SRC__% __tmp76893 _stx75939_))))
               (declare (not safe))
               (cons __tmp76892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args75976_
                                                      __tmp76891))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp76890))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76889 _stx75939_)))))
                          (let () (declare (not safe)) (_$E7594875961_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75945_))
                (let* ((_$tgt7595275982_
                        (let () (declare (not safe)) (__AST-e _$e75945_)))
                       (_$hd7595375985_
                        (let () (declare (not safe)) (##car _$tgt7595275982_)))
                       (_$tl7595475988_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7595275982_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7595475988_))
                      (let* ((_$tgt7595575992_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7595475988_)))
                             (_$hd7595675995_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7595575992_)))
                             (_$tl7595775998_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7595575992_))))
                        (let ((_clause76002_ _$hd7595675995_))
                          (if (let ((__tmp76904
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7595775998_))))
                                (declare (not safe))
                                (equal? __tmp76904 '()))
                              (let ((__tmp76903
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause76002_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp76903))
                              (let () (declare (not safe)) (_$E7594775979_)))))
                      (let () (declare (not safe)) (_$E7594775979_))))
                (let () (declare (not safe)) (_$E7594775979_)))))))
    (define __compile-let-form
      (lambda (_stx75708_ _compile-simple75709_ _compile-values75710_)
        (letrec ((_simple-bind?75712_
                  (lambda (_hd75897_)
                    (let* ((_hd7589875908_ _hd75897_)
                           (_else7590175916_ (lambda () '#f)))
                      (let ((_K7590475929_ (lambda (_id75927_) '#t))
                            (_K7590375921_ (lambda () '#t)))
                        (let ((_try-match7590075924_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7589875908_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7590375921_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7590175916_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7589875908_))
                              (let ((_tl7590675934_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7589875908_)))
                                    (_hd7590575932_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7589875908_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7590675934_))
                                    (let ((_id75937_ _hd7590575932_))
                                      (declare (not safe))
                                      (_K7590475929_ _id75937_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7590075924_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7590075924_))))))))
                 (_car-e75713_
                  (lambda (_hd75895_)
                    (if (let () (declare (not safe)) (pair? _hd75895_))
                        (car _hd75895_)
                        _hd75895_))))
          (let* ((_$e75715_ _stx75708_)
                 (_$E7571775860_
                  (lambda ()
                    (let ((_$E7571875740_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75715_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75715_))
                          (let* ((_$tgt7571975743_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75715_)))
                                 (_$hd7572075746_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7571975743_)))
                                 (_$tl7572175749_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7571975743_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7572175749_))
                                (let* ((_$tgt7572275753_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7572175749_)))
                                       (_$hd7572375756_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7572275753_)))
                                       (_$tl7572475759_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7572275753_))))
                                  (let ((_hd75763_ _$hd7572375756_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7572475759_))
                                        (let* ((_$tgt7572575765_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7572475759_)))
                                               (_$hd7572675768_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7572575765_)))
                                               (_$tl7572775771_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7572575765_))))
                                          (let ((_body75775_ _$hd7572675768_))
                                            (if (let ((__tmp76907
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7572775771_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76907 '()))
                                                (let* ((_hd-ids75815_
                                                        (map (lambda (_bind75777_)
                                                               (let* ((_$e75779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind75777_)
                              (_$E7578175790_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75779_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75779_))
                             (let* ((_$tgt7578275793_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75779_)))
                                    (_$hd7578375796_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7578275793_)))
                                    (_$tl7578475799_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7578275793_))))
                               (let ((_ids75803_ _$hd7578375796_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7578475799_))
                                     (let* ((_$tgt7578575805_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7578475799_)))
                                            (_$hd7578675808_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7578575805_)))
                                            (_$tl7578775811_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7578575805_))))
                                       (if (let ((__tmp76905
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7578775811_))))
                                             (declare (not safe))
                                             (equal? __tmp76905 '()))
                                           _ids75803_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7578175790_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7578175790_)))))
                             (let () (declare (not safe)) (_$E7578175790_)))))
                     _hd75763_))
               (_exprs75855_
                (map (lambda (_bind75817_)
                       (let* ((_$e75819_ _bind75817_)
                              (_$E7582175830_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75819_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75819_))
                             (let* ((_$tgt7582275833_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75819_)))
                                    (_$hd7582375836_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7582275833_)))
                                    (_$tl7582475839_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7582275833_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7582475839_))
                                   (let* ((_$tgt7582575843_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7582475839_)))
                                          (_$hd7582675846_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7582575843_)))
                                          (_$tl7582775849_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7582575843_))))
                                     (let ((_expr75853_ _$hd7582675846_))
                                       (if (let ((__tmp76906
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7582775849_))))
                                             (declare (not safe))
                                             (equal? __tmp76906 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr75853_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7582175830_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7582175830_))))
                             (let () (declare (not safe)) (_$E7582175830_)))))
                     _hd75763_))
               (_body75857_
                (let () (declare (not safe)) (__compile _body75775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?75712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids75815_))
              (_compile-simple75709_
               (map _car-e75713_ _hd-ids75815_)
               _exprs75855_
               _body75857_)
              (_compile-values75710_ _hd-ids75815_ _exprs75855_ _body75857_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7571875740_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7571875740_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7571875740_))))
                          (let () (declare (not safe)) (_$E7571875740_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75715_))
                (let* ((_$tgt7572875863_
                        (let () (declare (not safe)) (__AST-e _$e75715_)))
                       (_$hd7572975866_
                        (let () (declare (not safe)) (##car _$tgt7572875863_)))
                       (_$tl7573075869_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7572875863_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7573075869_))
                      (let* ((_$tgt7573175873_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7573075869_)))
                             (_$hd7573275876_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7573175873_)))
                             (_$tl7573375879_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7573175873_))))
                        (if (let ((__tmp76909
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7573275876_))))
                              (declare (not safe))
                              (equal? __tmp76909 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7573375879_))
                                (let* ((_$tgt7573475883_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7573375879_)))
                                       (_$hd7573575886_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7573475883_)))
                                       (_$tl7573675889_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7573475883_))))
                                  (let ((_body75893_ _$hd7573575886_))
                                    (if (let ((__tmp76908
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7573675889_))))
                                          (declare (not safe))
                                          (equal? __tmp76908 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body75893_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7571775860_)))))
                                (let () (declare (not safe)) (_$E7571775860_)))
                            (let () (declare (not safe)) (_$E7571775860_))))
                      (let () (declare (not safe)) (_$E7571775860_))))
                (let () (declare (not safe)) (_$E7571775860_)))))))
    (define __compile-let-values%
      (lambda (_stx75523_)
        (letrec ((_compile-simple75525_
                  (lambda (_hd-ids75704_ _exprs75705_ _body75706_)
                    (let ((__tmp76910
                           (let ((__tmp76911
                                  (let ((__tmp76913
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75704_)
                                              _exprs75705_))
                                        (__tmp76912
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75706_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76913 __tmp76912))))
                             (declare (not safe))
                             (cons 'let __tmp76911))))
                      (declare (not safe))
                      (__SRC__% __tmp76910 _stx75523_))))
                 (_compile-values75526_
                  (lambda (_hd-ids75622_ _exprs75623_ _body75624_)
                    (let _lp75626_ ((_rest75628_ _hd-ids75622_)
                                    (_exprs75629_ _exprs75623_)
                                    (_bind75630_ '())
                                    (_post75631_ '()))
                      (let* ((_rest7563275646_ _rest75628_)
                             (_else7563575654_
                              (lambda ()
                                (let ((__tmp76914
                                       (let ((__tmp76915
                                              (let ((__tmp76918
                                                     (reverse _bind75630_))
                                                    (__tmp76916
                                                     (let ((__tmp76917
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post75527_
                                                               _post75631_
                                                               _body75624_))))
                                                       (declare (not safe))
                                                       (cons __tmp76917 '()))))
                                                (declare (not safe))
                                                (cons __tmp76918 __tmp76916))))
                                         (declare (not safe))
                                         (cons 'let __tmp76915))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76914 _stx75523_)))))
                        (let ((_K7564075687_
                               (lambda (_rest75684_ _id75685_)
                                 (let ((__tmp76924 (cdr _exprs75629_))
                                       (__tmp76919
                                        (let ((__tmp76920
                                               (let ((__tmp76923
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75685_)))
                                                     (__tmp76921
                                                      (let ((__tmp76922
                                                             (car _exprs75629_)))
                                                        (declare (not safe))
                                                        (cons __tmp76922
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76923
                                                       __tmp76921))))
                                          (declare (not safe))
                                          (cons __tmp76920 _bind75630_))))
                                   (declare (not safe))
                                   (_lp75626_
                                    _rest75684_
                                    __tmp76924
                                    __tmp76919
                                    _post75631_))))
                              (_K7563775669_
                               (lambda (_rest75658_ _hd75659_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75659_))
                                     (let ((__tmp76945 (cdr _exprs75629_))
                                           (__tmp76938
                                            (let ((__tmp76939
                                                   (let ((__tmp76944
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75659_)))
                                                         (__tmp76940
                                                          (let ((__tmp76941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76942
                                (let ((__tmp76943 (car _exprs75629_)))
                                  (declare (not safe))
                                  (cons __tmp76943 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76942))))
                    (declare (not safe))
                    (cons __tmp76941 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76944
                                                           __tmp76940))))
                                              (declare (not safe))
                                              (cons __tmp76939 _bind75630_))))
                                       (declare (not safe))
                                       (_lp75626_
                                        _rest75658_
                                        __tmp76945
                                        __tmp76938
                                        _post75631_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75659_))
                                         (let* ((_len75661_ (length _hd75659_))
                                                (_tmp75663_
                                                 (let ((__tmp76925 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76925))))
                                           (let ((__tmp76937
                                                  (cdr _exprs75629_))
                                                 (__tmp76933
                                                  (let ((__tmp76934
                                                         (let ((__tmp76935
                                                                (let ((__tmp76936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75629_)))
                          (declare (not safe))
                          (cons __tmp76936 '()))))
                   (declare (not safe))
                   (cons _tmp75663_ __tmp76935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76934
                                                          _bind75630_)))
                                                 (__tmp76926
                                                  (let ((__tmp76927
                                                         (let ((__tmp76928
                                                                (let ((__tmp76929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76931
                                      (lambda (_id75666_ _k75667_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75666_))
                                            (let ((__tmp76932
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75666_))))
                                              (declare (not safe))
                                              (cons __tmp76932 _k75667_))
                                            '#f)))
                                     (__tmp76930
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75661_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76931
                                  _hd75659_
                                  __tmp76930))))
                          (declare (not safe))
                          (cons _len75661_ __tmp76929))))
                   (declare (not safe))
                   (cons _tmp75663_ __tmp76928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76927
                                                          _post75631_))))
                                             (declare (not safe))
                                             (_lp75626_
                                              _rest75658_
                                              __tmp76937
                                              __tmp76933
                                              __tmp76926)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75523_
                                            _hd75659_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7563275646_))
                              (let ((_tl7564275692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7563275646_)))
                                    (_hd7564175690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7563275646_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7564175690_))
                                    (let ((_tl7564475697_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7564175690_)))
                                          (_hd7564375695_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7564175690_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7564475697_))
                                          (let ((_id75700_ _hd7564375695_)
                                                (_rest75702_ _tl7564275692_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7564075687_
                                               _rest75702_
                                               _id75700_)))
                                          (let ((_hd75677_ _hd7564175690_)
                                                (_rest75679_ _tl7564275692_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7563775669_
                                               _rest75679_
                                               _hd75677_)))))
                                    (let ((_hd75677_ _hd7564175690_)
                                          (_rest75679_ _tl7564275692_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7563775669_
                                         _rest75679_
                                         _hd75677_)))))
                              (let ()
                                (declare (not safe))
                                (_else7563575654_))))))))
                 (_compile-post75527_
                  (lambda (_post75529_ _body75530_)
                    (let _lp75532_ ((_rest75534_ _post75529_)
                                    (_check75535_ '())
                                    (_bind75536_ '()))
                      (let* ((_rest7553775549_ _rest75534_)
                             (_else7553975557_
                              (lambda ()
                                (let ((__tmp76946
                                       (let ((__tmp76947
                                              (let ((__tmp76948
                                                     (let ((__tmp76949
                                                            (let ((__tmp76950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76951
                                  (let ((__tmp76952
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75530_ '()))))
                                    (declare (not safe))
                                    (cons _bind75536_ __tmp76952))))
                             (declare (not safe))
                             (cons 'let __tmp76951))))
                      (declare (not safe))
                      (__SRC__% __tmp76950 _stx75523_))))
               (declare (not safe))
               (cons __tmp76949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76948
                                                        _check75535_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76947))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76946 _stx75523_))))
                             (_K7554175596_
                              (lambda (_rest75560_
                                       _init75561_
                                       _len75562_
                                       _tmp75563_)
                                (let ((__tmp76960
                                       (let ((__tmp76961
                                              (let ((__tmp76962
                                                     (let ((__tmp76963
                                                            (let ((__tmp76964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75562_ '()))))
                      (declare (not safe))
                      (cons _tmp75563_ __tmp76964))))
               (declare (not safe))
               (cons '__check-values __tmp76963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76962
                                                 _stx75523_))))
                                         (declare (not safe))
                                         (cons __tmp76961 _check75535_)))
                                      (__tmp76953
                                       (let ((__tmp76954
                                              (lambda (_hd75565_ _r75566_)
                                                (let* ((_hd7556775574_
                                                        _hd75565_)
                                                       (_E7556975578_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7556775574_))))
               (_K7557075584_
                (lambda (_k75581_ _id75582_)
                  (let ((__tmp76955
                         (let ((__tmp76956
                                (let ((__tmp76957
                                       (let ((__tmp76958
                                              (let ((__tmp76959
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75581_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75563_ __tmp76959))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp76958))))
                                  (declare (not safe))
                                  (cons __tmp76957 '()))))
                           (declare (not safe))
                           (cons _id75582_ __tmp76956))))
                    (declare (not safe))
                    (cons __tmp76955 _r75566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7556775574_))
                                                      (let ((_hd7557175587_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7556775574_)))
                    (_tl7557275589_
                     (let () (declare (not safe)) (##cdr _hd7556775574_))))
                (let* ((_id75592_ _hd7557175587_) (_k75594_ _tl7557275589_))
                  (declare (not safe))
                  (_K7557075584_ _k75594_ _id75592_)))
              (let () (declare (not safe)) (_E7556975578_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76954
                                                 _bind75536_
                                                 _init75561_))))
                                  (declare (not safe))
                                  (_lp75532_
                                   _rest75560_
                                   __tmp76960
                                   __tmp76953)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7553775549_))
                            (let ((_hd7554275599_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7553775549_)))
                                  (_tl7554375601_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7553775549_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7554275599_))
                                  (let ((_hd7554475604_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7554275599_)))
                                        (_tl7554575606_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7554275599_))))
                                    (let ((_tmp75609_ _hd7554475604_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7554575606_))
                                          (let ((_hd7554675611_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7554575606_)))
                                                (_tl7554775613_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7554575606_))))
                                            (let* ((_len75616_ _hd7554675611_)
                                                   (_init75618_ _tl7554775613_)
                                                   (_rest75620_
                                                    _tl7554375601_))
                                              (declare (not safe))
                                              (_K7554175596_
                                               _rest75620_
                                               _init75618_
                                               _len75616_
                                               _tmp75609_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7553975557_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7553975557_))))
                            (let ()
                              (declare (not safe))
                              (_else7553975557_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75523_
             _compile-simple75525_
             _compile-values75526_)))))
    (define __compile-letrec-values%
      (lambda (_stx75323_)
        (letrec ((_compile-simple75325_
                  (lambda (_hd-ids75519_ _exprs75520_ _body75521_)
                    (let ((__tmp76965
                           (let ((__tmp76966
                                  (let ((__tmp76968
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75519_)
                                              _exprs75520_))
                                        (__tmp76967
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75521_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76968 __tmp76967))))
                             (declare (not safe))
                             (cons 'letrec __tmp76966))))
                      (declare (not safe))
                      (__SRC__% __tmp76965 _stx75323_))))
                 (_compile-values75326_
                  (lambda (_hd-ids75433_ _exprs75434_ _body75435_)
                    (let _lp75437_ ((_rest75439_ _hd-ids75433_)
                                    (_exprs75440_ _exprs75434_)
                                    (_pre75441_ '())
                                    (_bind75442_ '())
                                    (_post75443_ '()))
                      (let* ((_rest7544475458_ _rest75439_)
                             (_else7544775466_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75327_
                                   _pre75441_
                                   _bind75442_
                                   _post75443_
                                   _body75435_)))))
                        (let ((_K7545275502_
                               (lambda (_rest75499_ _id75500_)
                                 (let ((__tmp76974 (cdr _exprs75440_))
                                       (__tmp76969
                                        (let ((__tmp76970
                                               (let ((__tmp76973
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75500_)))
                                                     (__tmp76971
                                                      (let ((__tmp76972
                                                             (car _exprs75440_)))
                                                        (declare (not safe))
                                                        (cons __tmp76972
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76973
                                                       __tmp76971))))
                                          (declare (not safe))
                                          (cons __tmp76970 _bind75442_))))
                                   (declare (not safe))
                                   (_lp75437_
                                    _rest75499_
                                    __tmp76974
                                    _pre75441_
                                    __tmp76969
                                    _post75443_))))
                              (_K7544975484_
                               (lambda (_rest75470_ _hd75471_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75471_))
                                     (let ((__tmp77002 (cdr _exprs75440_))
                                           (__tmp76995
                                            (let ((__tmp76996
                                                   (let ((__tmp77001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75471_)))
                                                         (__tmp76997
                                                          (let ((__tmp76998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76999
                                (let ((__tmp77000 (car _exprs75440_)))
                                  (declare (not safe))
                                  (cons __tmp77000 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76999))))
                    (declare (not safe))
                    (cons __tmp76998 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77001
                                                           __tmp76997))))
                                              (declare (not safe))
                                              (cons __tmp76996 _bind75442_))))
                                       (declare (not safe))
                                       (_lp75437_
                                        _rest75470_
                                        __tmp77002
                                        _pre75441_
                                        __tmp76995
                                        _post75443_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75471_))
                                         (let* ((_len75473_ (length _hd75471_))
                                                (_tmp75475_
                                                 (let ((__tmp76975 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76975))))
                                           (let ((__tmp76994
                                                  (cdr _exprs75440_))
                                                 (__tmp76987
                                                  (let ((__tmp76988
                                                         (lambda (_id75478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r75479_)
                   (if (let () (declare (not safe)) (__AST-e _id75478_))
                       (let ((__tmp76989
                              (let ((__tmp76993
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id75478_)))
                                    (__tmp76990
                                     (let ((__tmp76991
                                            (let ((__tmp76992
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp76992))))
                                       (declare (not safe))
                                       (cons __tmp76991 '()))))
                                (declare (not safe))
                                (cons __tmp76993 __tmp76990))))
                         (declare (not safe))
                         (cons __tmp76989 _r75479_))
                       _r75479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp76988
                                                            _pre75441_
                                                            _hd75471_)))
                                                 (__tmp76983
                                                  (let ((__tmp76984
                                                         (let ((__tmp76985
                                                                (let ((__tmp76986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75440_)))
                          (declare (not safe))
                          (cons __tmp76986 '()))))
                   (declare (not safe))
                   (cons _tmp75475_ __tmp76985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76984
                                                          _bind75442_)))
                                                 (__tmp76976
                                                  (let ((__tmp76977
                                                         (let ((__tmp76978
                                                                (let ((__tmp76979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76981
                                      (lambda (_id75481_ _k75482_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75481_))
                                            (let ((__tmp76982
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75481_))))
                                              (declare (not safe))
                                              (cons __tmp76982 _k75482_))
                                            '#f)))
                                     (__tmp76980
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75473_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76981
                                  _hd75471_
                                  __tmp76980))))
                          (declare (not safe))
                          (cons _len75473_ __tmp76979))))
                   (declare (not safe))
                   (cons _tmp75475_ __tmp76978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76977
                                                          _post75443_))))
                                             (declare (not safe))
                                             (_lp75437_
                                              _rest75470_
                                              __tmp76994
                                              __tmp76987
                                              __tmp76983
                                              __tmp76976)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75323_
                                            _hd75471_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7544475458_))
                              (let ((_tl7545475507_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7544475458_)))
                                    (_hd7545375505_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7544475458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7545375505_))
                                    (let ((_tl7545675512_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7545375505_)))
                                          (_hd7545575510_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7545375505_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7545675512_))
                                          (let ((_id75515_ _hd7545575510_)
                                                (_rest75517_ _tl7545475507_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7545275502_
                                               _rest75517_
                                               _id75515_)))
                                          (let ((_hd75492_ _hd7545375505_)
                                                (_rest75494_ _tl7545475507_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7544975484_
                                               _rest75494_
                                               _hd75492_)))))
                                    (let ((_hd75492_ _hd7545375505_)
                                          (_rest75494_ _tl7545475507_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7544975484_
                                         _rest75494_
                                         _hd75492_)))))
                              (let ()
                                (declare (not safe))
                                (_else7544775466_))))))))
                 (_compile-inner75327_
                  (lambda (_pre75428_ _bind75429_ _post75430_ _body75431_)
                    (if (let () (declare (not safe)) (null? _pre75428_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75328_
                           _bind75429_
                           _post75430_
                           _body75431_))
                        (let ((__tmp77003
                               (let ((__tmp77004
                                      (let ((__tmp77007 (reverse _pre75428_))
                                            (__tmp77005
                                             (let ((__tmp77006
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75328_
                                                       _bind75429_
                                                       _post75430_
                                                       _body75431_))))
                                               (declare (not safe))
                                               (cons __tmp77006 '()))))
                                        (declare (not safe))
                                        (cons __tmp77007 __tmp77005))))
                                 (declare (not safe))
                                 (cons 'let __tmp77004))))
                          (declare (not safe))
                          (__SRC__% __tmp77003 _stx75323_)))))
                 (_compile-bind75328_
                  (lambda (_bind75424_ _post75425_ _body75426_)
                    (let ((__tmp77008
                           (let ((__tmp77009
                                  (let ((__tmp77012 (reverse _bind75424_))
                                        (__tmp77010
                                         (let ((__tmp77011
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75329_
                                                   _post75425_
                                                   _body75426_))))
                                           (declare (not safe))
                                           (cons __tmp77011 '()))))
                                    (declare (not safe))
                                    (cons __tmp77012 __tmp77010))))
                             (declare (not safe))
                             (cons 'letrec __tmp77009))))
                      (declare (not safe))
                      (__SRC__% __tmp77008 _stx75323_))))
                 (_compile-post75329_
                  (lambda (_post75331_ _body75332_)
                    (let _lp75334_ ((_rest75336_ _post75331_)
                                    (_check75337_ '())
                                    (_bind75338_ '()))
                      (let* ((_rest7533975351_ _rest75336_)
                             (_else7534175359_
                              (lambda ()
                                (let ((__tmp77013
                                       (let ((__tmp77014
                                              (let ((__tmp77015
                                                     (let ((__tmp77016
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77016 _bind75338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77015
                                                        _check75337_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77014))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77013 _stx75323_))))
                             (_K7534375398_
                              (lambda (_rest75362_
                                       _init75363_
                                       _len75364_
                                       _tmp75365_)
                                (let ((__tmp77025
                                       (let ((__tmp77026
                                              (let ((__tmp77027
                                                     (let ((__tmp77028
                                                            (let ((__tmp77029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75364_ '()))))
                      (declare (not safe))
                      (cons _tmp75365_ __tmp77029))))
               (declare (not safe))
               (cons '__check-values __tmp77028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77027
                                                 _stx75323_))))
                                         (declare (not safe))
                                         (cons __tmp77026 _check75337_)))
                                      (__tmp77017
                                       (let ((__tmp77018
                                              (lambda (_hd75367_ _r75368_)
                                                (let* ((_hd7536975376_
                                                        _hd75367_)
                                                       (_E7537175380_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7536975376_))))
               (_K7537275386_
                (lambda (_k75383_ _id75384_)
                  (let ((__tmp77019
                         (let ((__tmp77020
                                (let ((__tmp77021
                                       (let ((__tmp77022
                                              (let ((__tmp77023
                                                     (let ((__tmp77024
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k75383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp75365_ __tmp77024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77023))))
                                         (declare (not safe))
                                         (cons __tmp77022 '()))))
                                  (declare (not safe))
                                  (cons _id75384_ __tmp77021))))
                           (declare (not safe))
                           (cons 'set! __tmp77020))))
                    (declare (not safe))
                    (cons __tmp77019 _r75368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7536975376_))
                                                      (let ((_hd7537375389_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7536975376_)))
                    (_tl7537475391_
                     (let () (declare (not safe)) (##cdr _hd7536975376_))))
                (let* ((_id75394_ _hd7537375389_) (_k75396_ _tl7537475391_))
                  (declare (not safe))
                  (_K7537275386_ _k75396_ _id75394_)))
              (let () (declare (not safe)) (_E7537175380_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77018
                                                 _bind75338_
                                                 _init75363_))))
                                  (declare (not safe))
                                  (_lp75334_
                                   _rest75362_
                                   __tmp77025
                                   __tmp77017)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7533975351_))
                            (let ((_hd7534475401_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7533975351_)))
                                  (_tl7534575403_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7533975351_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7534475401_))
                                  (let ((_hd7534675406_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7534475401_)))
                                        (_tl7534775408_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7534475401_))))
                                    (let ((_tmp75411_ _hd7534675406_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7534775408_))
                                          (let ((_hd7534875413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7534775408_)))
                                                (_tl7534975415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7534775408_))))
                                            (let* ((_len75418_ _hd7534875413_)
                                                   (_init75420_ _tl7534975415_)
                                                   (_rest75422_
                                                    _tl7534575403_))
                                              (declare (not safe))
                                              (_K7534375398_
                                               _rest75422_
                                               _init75420_
                                               _len75418_
                                               _tmp75411_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7534175359_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7534175359_))))
                            (let ()
                              (declare (not safe))
                              (_else7534175359_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75323_
             _compile-simple75325_
             _compile-values75326_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75078_)
        (letrec ((_compile-simple75080_
                  (lambda (_hd-ids75319_ _exprs75320_ _body75321_)
                    (let ((__tmp77030
                           (let ((__tmp77031
                                  (let ((__tmp77033
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75319_)
                                              _exprs75320_))
                                        (__tmp77032
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75321_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77033 __tmp77032))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77031))))
                      (declare (not safe))
                      (__SRC__% __tmp77030 _stx75078_))))
                 (_compile-values75081_
                  (lambda (_hd-ids75230_ _exprs75231_ _body75232_)
                    (let _lp75234_ ((_rest75236_ _hd-ids75230_)
                                    (_exprs75237_ _exprs75231_)
                                    (_bind75238_ '())
                                    (_post75239_ '()))
                      (let* ((_rest7524075254_ _rest75236_)
                             (_else7524375262_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75082_
                                   _bind75238_
                                   _post75239_
                                   _body75232_)))))
                        (let ((_K7524875302_
                               (lambda (_rest75297_ _hd75298_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75298_))
                                     (let ((_id75300_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75298_))))
                                       (let ((__tmp77048 (cdr _exprs75237_))
                                             (__tmp77043
                                              (let ((__tmp77044
                                                     (let ((__tmp77045
                                                            (let ((__tmp77046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77047
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77047))))
                      (declare (not safe))
                      (cons __tmp77046 '()))))
               (declare (not safe))
               (cons _id75300_ __tmp77045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77044 _bind75238_)))
                                             (__tmp77039
                                              (let ((__tmp77040
                                                     (let ((__tmp77041
                                                            (let ((__tmp77042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75237_)))
                      (declare (not safe))
                      (cons __tmp77042 '()))))
               (declare (not safe))
               (cons _id75300_ __tmp77041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77040
                                                      _post75239_))))
                                         (declare (not safe))
                                         (_lp75234_
                                          _rest75297_
                                          __tmp77048
                                          __tmp77043
                                          __tmp77039)))
                                     (let ((__tmp77038 (cdr _exprs75237_))
                                           (__tmp77034
                                            (let ((__tmp77035
                                                   (let ((__tmp77036
                                                          (let ((__tmp77037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75237_)))
                    (declare (not safe))
                    (cons __tmp77037 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77036))))
                                              (declare (not safe))
                                              (cons __tmp77035 _post75239_))))
                                       (declare (not safe))
                                       (_lp75234_
                                        _rest75297_
                                        __tmp77038
                                        _bind75238_
                                        __tmp77034)))))
                              (_K7524575282_
                               (lambda (_rest75266_ _hd75267_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75267_))
                                     (let ((_id75269_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75267_))))
                                       (let ((__tmp77084 (cdr _exprs75237_))
                                             (__tmp77079
                                              (let ((__tmp77080
                                                     (let ((__tmp77081
                                                            (let ((__tmp77082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77083
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77083))))
                      (declare (not safe))
                      (cons __tmp77082 '()))))
               (declare (not safe))
               (cons _id75269_ __tmp77081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77080 _bind75238_)))
                                             (__tmp77073
                                              (let ((__tmp77074
                                                     (let ((__tmp77075
                                                            (let ((__tmp77076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77077
                                  (let ((__tmp77078 (car _exprs75237_)))
                                    (declare (not safe))
                                    (cons __tmp77078 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77077))))
                      (declare (not safe))
                      (cons __tmp77076 '()))))
               (declare (not safe))
               (cons _id75269_ __tmp77075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77074
                                                      _post75239_))))
                                         (declare (not safe))
                                         (_lp75234_
                                          _rest75266_
                                          __tmp77084
                                          __tmp77079
                                          __tmp77073)))
                                     (if (let ((__tmp77072
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75267_))))
                                           (declare (not safe))
                                           (not __tmp77072))
                                         (let ((__tmp77071 (cdr _exprs75237_))
                                               (__tmp77067
                                                (let ((__tmp77068
                                                       (let ((__tmp77069
                                                              (let ((__tmp77070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75237_)))
                        (declare (not safe))
                        (cons __tmp77070 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77068
                                                        _post75239_))))
                                           (declare (not safe))
                                           (_lp75234_
                                            _rest75266_
                                            __tmp77071
                                            _bind75238_
                                            __tmp77067))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75267_))
                                             (let* ((_len75271_
                                                     (length _hd75267_))
                                                    (_tmp75273_
                                                     (let ((__tmp77049
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77049))))
                                               (let ((__tmp77066
                                                      (cdr _exprs75237_))
                                                     (__tmp77059
                                                      (let ((__tmp77060
                                                             (lambda (_id75276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75277_)
                       (if (let () (declare (not safe)) (__AST-e _id75276_))
                           (let ((__tmp77061
                                  (let ((__tmp77065
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75276_)))
                                        (__tmp77062
                                         (let ((__tmp77063
                                                (let ((__tmp77064
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77064))))
                                           (declare (not safe))
                                           (cons __tmp77063 '()))))
                                    (declare (not safe))
                                    (cons __tmp77065 __tmp77062))))
                             (declare (not safe))
                             (cons __tmp77061 _r75277_))
                           _r75277_))))
                (declare (not safe))
                (foldl1 __tmp77060 _bind75238_ _hd75267_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77050
                                                      (let ((__tmp77051
                                                             (let ((__tmp77052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77058 (car _exprs75237_))
                                  (__tmp77053
                                   (let ((__tmp77054
                                          (let ((__tmp77056
                                                 (lambda (_id75279_ _k75280_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75279_))
                                                       (let ((__tmp77057
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75279_))))
                 (declare (not safe))
                 (cons __tmp77057 _k75280_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77055
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len75271_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77056
                                             _hd75267_
                                             __tmp77055))))
                                     (declare (not safe))
                                     (cons _len75271_ __tmp77054))))
                              (declare (not safe))
                              (cons __tmp77058 __tmp77053))))
                       (declare (not safe))
                       (cons _tmp75273_ __tmp77052))))
                (declare (not safe))
                (cons __tmp77051 _post75239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75234_
                                                  _rest75266_
                                                  __tmp77066
                                                  __tmp77059
                                                  __tmp77050)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75078_
                                                _hd75267_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7524075254_))
                              (let ((_tl7525075307_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7524075254_)))
                                    (_hd7524975305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7524075254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7524975305_))
                                    (let ((_tl7525275312_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7524975305_)))
                                          (_hd7525175310_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7524975305_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7525275312_))
                                          (let ((_hd75315_ _hd7525175310_)
                                                (_rest75317_ _tl7525075307_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7524875302_
                                               _rest75317_
                                               _hd75315_)))
                                          (let ((_hd75290_ _hd7524975305_)
                                                (_rest75292_ _tl7525075307_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7524575282_
                                               _rest75292_
                                               _hd75290_)))))
                                    (let ((_hd75290_ _hd7524975305_)
                                          (_rest75292_ _tl7525075307_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7524575282_
                                         _rest75292_
                                         _hd75290_)))))
                              (let ()
                                (declare (not safe))
                                (_else7524375262_))))))))
                 (_compile-bind75082_
                  (lambda (_bind75226_ _post75227_ _body75228_)
                    (let ((__tmp77085
                           (let ((__tmp77086
                                  (let ((__tmp77089 (reverse _bind75226_))
                                        (__tmp77087
                                         (let ((__tmp77088
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75083_
                                                   _post75227_
                                                   _body75228_))))
                                           (declare (not safe))
                                           (cons __tmp77088 '()))))
                                    (declare (not safe))
                                    (cons __tmp77089 __tmp77087))))
                             (declare (not safe))
                             (cons 'let __tmp77086))))
                      (declare (not safe))
                      (__SRC__% __tmp77085 _stx75078_))))
                 (_compile-post75083_
                  (lambda (_post75085_ _body75086_)
                    (let ((__tmp77090
                           (let ((__tmp77091
                                  (let ((__tmp77092
                                         (let ((__tmp77094
                                                (lambda (_hd75088_ _r75089_)
                                                  (let* ((_hd7509075113_
                                                          _hd75088_)
                                                         (_E7509475117_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7509075113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7510775211_
                                                           (lambda (_expr75209_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75209_ _r75089_))))
                  (_K7510275189_
                   (lambda (_expr75186_ _id75187_)
                     (let ((__tmp77095
                            (let ((__tmp77096
                                   (let ((__tmp77097
                                          (let ((__tmp77098
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75186_ '()))))
                                            (declare (not safe))
                                            (cons _id75187_ __tmp77098))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77097))))
                              (declare (not safe))
                              (__SRC__% __tmp77096 _stx75078_))))
                       (declare (not safe))
                       (cons __tmp77095 _r75089_))))
                  (_K7509575156_
                   (lambda (_init75121_ _len75122_ _expr75123_ _tmp75124_)
                     (let ((__tmp77099
                            (let ((__tmp77100
                                   (let ((__tmp77101
                                          (let ((__tmp77115
                                                 (let ((__tmp77116
                                                        (let ((__tmp77117
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75123_ '()))))
                  (declare (not safe))
                  (cons _tmp75124_ __tmp77117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77116 '())))
                                                (__tmp77102
                                                 (let ((__tmp77111
                                                        (let ((__tmp77112
                                                               (let ((__tmp77113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77114
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75122_ '()))))
                                (declare (not safe))
                                (cons _tmp75124_ __tmp77114))))
                         (declare (not safe))
                         (cons '__check-values __tmp77113))))
                  (declare (not safe))
                  (__SRC__% __tmp77112 _stx75078_)))
               (__tmp77103
                (let ((__tmp77104
                       (map (lambda (_hd75126_)
                              (let* ((_hd7512775134_ _hd75126_)
                                     (_E7512975138_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7512775134_))))
                                     (_K7513075144_
                                      (lambda (_k75141_ _id75142_)
                                        (let ((__tmp77105
                                               (let ((__tmp77106
                                                      (let ((__tmp77107
                                                             (let ((__tmp77108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77109
                                   (let ((__tmp77110
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75141_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75124_ __tmp77110))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77109))))
                       (declare (not safe))
                       (cons __tmp77108 '()))))
                (declare (not safe))
                (cons _id75142_ __tmp77107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77106))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77105 _stx75078_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7512775134_))
                                    (let ((_hd7513175147_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7512775134_)))
                                          (_tl7513275149_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7512775134_))))
                                      (let* ((_id75152_ _hd7513175147_)
                                             (_k75154_ _tl7513275149_))
                                        (declare (not safe))
                                        (_K7513075144_ _k75154_ _id75152_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7512975138_)))))
                            _init75121_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77111
                                                         __tmp77103))))
                                            (declare (not safe))
                                            (cons __tmp77115 __tmp77102))))
                                     (declare (not safe))
                                     (cons 'let __tmp77101))))
                              (declare (not safe))
                              (__SRC__% __tmp77100 _stx75078_))))
                       (declare (not safe))
                       (cons __tmp77099 _r75089_)))))
              (if (let () (declare (not safe)) (##pair? _hd7509075113_))
                  (let ((_tl7510975216_
                         (let () (declare (not safe)) (##cdr _hd7509075113_)))
                        (_hd7510875214_
                         (let () (declare (not safe)) (##car _hd7509075113_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7510875214_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7510975216_))
                            (let ((_tl7511175221_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7510975216_)))
                                  (_hd7511075219_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7510975216_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7511175221_))
                                  (let ((_expr75224_ _hd7511075219_))
                                    (declare (not safe))
                                    (_K7510775211_ _expr75224_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7511175221_))
                                      (let ((_tl7510175175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7511175221_)))
                                            (_hd7510075173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7511175221_))))
                                        (let ((_tmp75164_ _hd7510875214_)
                                              (_expr75171_ _hd7511075219_)
                                              (_len75178_ _hd7510075173_)
                                              (_init75180_ _tl7510175175_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7509575156_
                                             _init75180_
                                             _len75178_
                                             _expr75171_
                                             _tmp75164_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7509475117_)))))
                            (let () (declare (not safe)) (_E7509475117_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7510975216_))
                            (let ((_tl7510675201_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7510975216_)))
                                  (_hd7510575199_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7510975216_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7510675201_))
                                  (let ((_id75197_ _hd7510875214_)
                                        (_expr75204_ _hd7510575199_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7510275189_ _expr75204_ _id75197_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7510675201_))
                                      (let ((_tl7510175175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7510675201_)))
                                            (_hd7510075173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7510675201_))))
                                        (let ((_tmp75164_ _hd7510875214_)
                                              (_expr75171_ _hd7510575199_)
                                              (_len75178_ _hd7510075173_)
                                              (_init75180_ _tl7510175175_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7509575156_
                                             _init75180_
                                             _len75178_
                                             _expr75171_
                                             _tmp75164_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7509475117_)))))
                            (let () (declare (not safe)) (_E7509475117_)))))
                  (let () (declare (not safe)) (_E7509475117_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77093 (list _body75086_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77094
                                                   __tmp77093
                                                   _post75085_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77092))))
                             (declare (not safe))
                             (cons 'begin __tmp77091))))
                      (declare (not safe))
                      (__SRC__% __tmp77090 _stx75078_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75078_
             _compile-simple75080_
             _compile-values75081_)))))
    (define __compile-call%
      (lambda (_stx75038_)
        (let* ((_$e75040_ _stx75038_)
               (_$E7504275051_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75040_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75040_))
              (let* ((_$tgt7504375054_
                      (let () (declare (not safe)) (__AST-e _$e75040_)))
                     (_$hd7504475057_
                      (let () (declare (not safe)) (##car _$tgt7504375054_)))
                     (_$tl7504575060_
                      (let () (declare (not safe)) (##cdr _$tgt7504375054_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7504575060_))
                    (let* ((_$tgt7504675064_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7504575060_)))
                           (_$hd7504775067_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7504675064_)))
                           (_$tl7504875070_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7504675064_))))
                      (let* ((_rator75074_ _$hd7504775067_)
                             (_rands75076_ _$tl7504875070_)
                             (__tmp77118
                              (let ((__tmp77120
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75074_)))
                                    (__tmp77119 (map __compile _rands75076_)))
                                (declare (not safe))
                                (cons __tmp77120 __tmp77119))))
                        (declare (not safe))
                        (__SRC__% __tmp77118 _stx75038_)))
                    (let () (declare (not safe)) (_$E7504275051_))))
              (let () (declare (not safe)) (_$E7504275051_))))))
    (define __compile-ref%
      (lambda (_stx75000_)
        (let* ((_$e75002_ _stx75000_)
               (_$E7500475013_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75002_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75002_))
              (let* ((_$tgt7500575016_
                      (let () (declare (not safe)) (__AST-e _$e75002_)))
                     (_$hd7500675019_
                      (let () (declare (not safe)) (##car _$tgt7500575016_)))
                     (_$tl7500775022_
                      (let () (declare (not safe)) (##cdr _$tgt7500575016_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7500775022_))
                    (let* ((_$tgt7500875026_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7500775022_)))
                           (_$hd7500975029_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7500875026_)))
                           (_$tl7501075032_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7500875026_))))
                      (let ((_id75036_ _$hd7500975029_))
                        (if (let ((__tmp77121
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7501075032_))))
                              (declare (not safe))
                              (equal? __tmp77121 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75036_ _stx75000_))
                            (let () (declare (not safe)) (_$E7500475013_)))))
                    (let () (declare (not safe)) (_$E7500475013_))))
              (let () (declare (not safe)) (_$E7500475013_))))))
    (define __compile-setq%
      (lambda (_stx74947_)
        (let* ((_$e74949_ _stx74947_)
               (_$E7495174963_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74949_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74949_))
              (let* ((_$tgt7495274966_
                      (let () (declare (not safe)) (__AST-e _$e74949_)))
                     (_$hd7495374969_
                      (let () (declare (not safe)) (##car _$tgt7495274966_)))
                     (_$tl7495474972_
                      (let () (declare (not safe)) (##cdr _$tgt7495274966_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7495474972_))
                    (let* ((_$tgt7495574976_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7495474972_)))
                           (_$hd7495674979_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7495574976_)))
                           (_$tl7495774982_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7495574976_))))
                      (let ((_id74986_ _$hd7495674979_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7495774982_))
                            (let* ((_$tgt7495874988_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7495774982_)))
                                   (_$hd7495974991_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7495874988_)))
                                   (_$tl7496074994_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7495874988_))))
                              (let ((_expr74998_ _$hd7495974991_))
                                (if (let ((__tmp77127
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7496074994_))))
                                      (declare (not safe))
                                      (equal? __tmp77127 '()))
                                    (let ((__tmp77122
                                           (let ((__tmp77123
                                                  (let ((__tmp77126
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id74986_
                                                            _stx74947_)))
                                                        (__tmp77124
                                                         (let ((__tmp77125
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr74998_))))
                   (declare (not safe))
                   (cons __tmp77125 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77126
                                                          __tmp77124))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77123))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77122 _stx74947_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7495174963_)))))
                            (let () (declare (not safe)) (_$E7495174963_)))))
                    (let () (declare (not safe)) (_$E7495174963_))))
              (let () (declare (not safe)) (_$E7495174963_))))))
    (define __compile-if%
      (lambda (_stx74879_)
        (let* ((_$e74881_ _stx74879_)
               (_$E7488374898_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74881_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74881_))
              (let* ((_$tgt7488474901_
                      (let () (declare (not safe)) (__AST-e _$e74881_)))
                     (_$hd7488574904_
                      (let () (declare (not safe)) (##car _$tgt7488474901_)))
                     (_$tl7488674907_
                      (let () (declare (not safe)) (##cdr _$tgt7488474901_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7488674907_))
                    (let* ((_$tgt7488774911_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7488674907_)))
                           (_$hd7488874914_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7488774911_)))
                           (_$tl7488974917_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7488774911_))))
                      (let ((_p74921_ _$hd7488874914_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7488974917_))
                            (let* ((_$tgt7489074923_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7488974917_)))
                                   (_$hd7489174926_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7489074923_)))
                                   (_$tl7489274929_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7489074923_))))
                              (let ((_t74933_ _$hd7489174926_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7489274929_))
                                    (let* ((_$tgt7489374935_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7489274929_)))
                                           (_$hd7489474938_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7489374935_)))
                                           (_$tl7489574941_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7489374935_))))
                                      (let ((_f74945_ _$hd7489474938_))
                                        (if (let ((__tmp77135
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7489574941_))))
                                              (declare (not safe))
                                              (equal? __tmp77135 '()))
                                            (let ((__tmp77128
                                                   (let ((__tmp77129
                                                          (let ((__tmp77134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p74921_)))
                        (__tmp77130
                         (let ((__tmp77133
                                (let ()
                                  (declare (not safe))
                                  (__compile _t74933_)))
                               (__tmp77131
                                (let ((__tmp77132
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f74945_))))
                                  (declare (not safe))
                                  (cons __tmp77132 '()))))
                           (declare (not safe))
                           (cons __tmp77133 __tmp77131))))
                    (declare (not safe))
                    (cons __tmp77134 __tmp77130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77129))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77128 _stx74879_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7488374898_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7488374898_)))))
                            (let () (declare (not safe)) (_$E7488374898_)))))
                    (let () (declare (not safe)) (_$E7488374898_))))
              (let () (declare (not safe)) (_$E7488374898_))))))
    (define __compile-quote%
      (lambda (_stx74841_)
        (let* ((_$e74843_ _stx74841_)
               (_$E7484574854_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74843_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74843_))
              (let* ((_$tgt7484674857_
                      (let () (declare (not safe)) (__AST-e _$e74843_)))
                     (_$hd7484774860_
                      (let () (declare (not safe)) (##car _$tgt7484674857_)))
                     (_$tl7484874863_
                      (let () (declare (not safe)) (##cdr _$tgt7484674857_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7484874863_))
                    (let* ((_$tgt7484974867_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7484874863_)))
                           (_$hd7485074870_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7484974867_)))
                           (_$tl7485174873_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7484974867_))))
                      (let ((_e74877_ _$hd7485074870_))
                        (if (let ((__tmp77139
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7485174873_))))
                              (declare (not safe))
                              (equal? __tmp77139 '()))
                            (let ((__tmp77136
                                   (let ((__tmp77137
                                          (let ((__tmp77138
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e74877_))))
                                            (declare (not safe))
                                            (cons __tmp77138 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77137))))
                              (declare (not safe))
                              (__SRC__% __tmp77136 _stx74841_))
                            (let () (declare (not safe)) (_$E7484574854_)))))
                    (let () (declare (not safe)) (_$E7484574854_))))
              (let () (declare (not safe)) (_$E7484574854_))))))
    (define __compile-quote-syntax%
      (lambda (_stx74803_)
        (let* ((_$e74805_ _stx74803_)
               (_$E7480774816_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74805_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74805_))
              (let* ((_$tgt7480874819_
                      (let () (declare (not safe)) (__AST-e _$e74805_)))
                     (_$hd7480974822_
                      (let () (declare (not safe)) (##car _$tgt7480874819_)))
                     (_$tl7481074825_
                      (let () (declare (not safe)) (##cdr _$tgt7480874819_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7481074825_))
                    (let* ((_$tgt7481174829_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7481074825_)))
                           (_$hd7481274832_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7481174829_)))
                           (_$tl7481374835_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7481174829_))))
                      (let ((_e74839_ _$hd7481274832_))
                        (if (let ((__tmp77142
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7481374835_))))
                              (declare (not safe))
                              (equal? __tmp77142 '()))
                            (let ((__tmp77140
                                   (let ((__tmp77141
                                          (let ()
                                            (declare (not safe))
                                            (cons _e74839_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77141))))
                              (declare (not safe))
                              (__SRC__% __tmp77140 _stx74803_))
                            (let () (declare (not safe)) (_$E7480774816_)))))
                    (let () (declare (not safe)) (_$E7480774816_))))
              (let () (declare (not safe)) (_$E7480774816_))))))
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
