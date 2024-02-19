(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708334574)
  (begin
    (define __syntax::t
      (let ((__tmp127088 (list))
            (__tmp127086
             (let ((__tmp127087
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp127087 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp127088
         '(e id)
         __tmp127086
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args122830_ (apply make-instance __syntax::t _$args122830_)))
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
      (let ((__tmp127091 (list __syntax::t))
            (__tmp127089
             (let ((__tmp127090
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp127090 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp127091
         '()
         __tmp127089
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args122827_
        (apply make-instance __core-form::t _$args122827_)))
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
      (let ((__tmp127094 (list __core-form::t))
            (__tmp127092
             (let ((__tmp127093
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp127093 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp127094
         '()
         __tmp127092
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args122824_
        (apply make-instance __core-expression::t _$args122824_)))
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
      (let ((__tmp127097 (list __core-form::t))
            (__tmp127095
             (let ((__tmp127096
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp127096 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp127097
         '()
         __tmp127095
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args122821_
        (apply make-instance __core-special-form::t _$args122821_)))
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
      (lambda (_id122819_)
        (let ((__tmp127098 (let () (declare (not safe)) (__AST-e _id122819_))))
          (declare (not safe))
          (hash-get __core __tmp127098))))
    (define __core-bound-id?__%
      (lambda (_id122803_ _is?122804_)
        (let ((_$e122806_
               (let () (declare (not safe)) (__core-resolve _id122803_))))
          (if _$e122806_ (_is?122804_ _$e122806_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id122812_)
        (let ((_is?122814_ true))
          (declare (not safe))
          (__core-bound-id?__% _id122812_ _is?122814_))))
    (define __core-bound-id?
      (lambda _g127100_
        (let ((_g127099_ (let () (declare (not safe)) (##length _g127100_))))
          (cond ((let () (declare (not safe)) (##fx= _g127099_ 1))
                 (apply (lambda (_id122812_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id122812_)))
                        _g127100_))
                ((let () (declare (not safe)) (##fx= _g127099_ 2))
                 (apply (lambda (_id122816_ _is?122817_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id122816_ _is?122817_)))
                        _g127100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g127100_))))))
    (define __core-bind-syntax!__%
      (lambda (_id122786_ _e122787_ _make122788_)
        (let ((__tmp127101
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e122787_
                      'gerbil/runtime/eval#__syntax::t))
                   _e122787_
                   (_make122788_ _e122787_ _id122786_))))
          (declare (not safe))
          (hash-put! __core _id122786_ __tmp127101))))
    (define __core-bind-syntax!__0
      (lambda (_id122793_ _e122794_)
        (let ((_make122796_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id122793_ _e122794_ _make122796_))))
    (define __core-bind-syntax!
      (lambda _g127103_
        (let ((_g127102_ (let () (declare (not safe)) (##length _g127103_))))
          (cond ((let () (declare (not safe)) (##fx= _g127102_ 2))
                 (apply (lambda (_id122793_ _e122794_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id122793_ _e122794_)))
                        _g127103_))
                ((let () (declare (not safe)) (##fx= _g127102_ 3))
                 (apply (lambda (_id122798_ _e122799_ _make122800_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id122798_
                             _e122799_
                             _make122800_)))
                        _g127103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g127103_))))))
    (define __SRC__%
      (lambda (_e122769_ _src-stx122770_)
        (if (or (let () (declare (not safe)) (pair? _e122769_))
                (let () (declare (not safe)) (symbol? _e122769_)))
            (let ((__tmp127107
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx122770_
                          'gerbil#AST::t))
                       (let ((__tmp127108
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx122770_))))
                         (declare (not safe))
                         (__locat __tmp127108))
                       '#f)))
              (declare (not safe))
              (##make-source _e122769_ __tmp127107))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e122769_ 'gerbil#AST::t))
                (let ((__tmp127106
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e122769_ '1 AST::t '#f)))
                      (__tmp127104
                       (let ((__tmp127105
                              (let ()
                                (declare (not safe))
                                (__AST-source _e122769_))))
                         (declare (not safe))
                         (__locat __tmp127105))))
                  (declare (not safe))
                  (##make-source __tmp127106 __tmp127104))
                (error '"BUG! Cannot sourcify object" _e122769_)))))
    (define __SRC__0
      (lambda (_e122778_)
        (let ((_src-stx122780_ '#f))
          (declare (not safe))
          (__SRC__% _e122778_ _src-stx122780_))))
    (define __SRC
      (lambda _g127110_
        (let ((_g127109_ (let () (declare (not safe)) (##length _g127110_))))
          (cond ((let () (declare (not safe)) (##fx= _g127109_ 1))
                 (apply (lambda (_e122778_)
                          (let () (declare (not safe)) (__SRC__0 _e122778_)))
                        _g127110_))
                ((let () (declare (not safe)) (##fx= _g127109_ 2))
                 (apply (lambda (_e122782_ _src-stx122783_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e122782_ _src-stx122783_)))
                        _g127110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g127110_))))))
    (define __locat
      (lambda (_loc122766_)
        (if (let () (declare (not safe)) (##locat? _loc122766_))
            _loc122766_
            '#f)))
    (define __check-values
      (lambda (_obj122761_ _k122762_)
        (let ((_count122764_
               (if (let () (declare (not safe)) (##values? _obj122761_))
                   (let () (declare (not safe)) (##vector-length _obj122761_))
                   '1)))
          (if (fx= _count122764_ _k122762_)
              '#!void
              (error (if (fx< _count122764_ _k122762_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj122761_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj122761_))
                         _obj122761_)
                     _k122762_)))))
    (define __compile
      (lambda (_stx122731_)
        (let* ((_$e122733_ _stx122731_)
               (_$E122735122741_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122733_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122733_))
              (let* ((_$tgt122736122744_
                      (let () (declare (not safe)) (__AST-e _$e122733_)))
                     (_$hd122737122747_
                      (let () (declare (not safe)) (##car _$tgt122736122744_)))
                     (_$tl122738122750_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122736122744_))))
                (let* ((_form122754_ _$hd122737122747_)
                       (_$e122756_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form122754_))))
                  (if _$e122756_
                      ((lambda (_bind122759_)
                         ((##structure-ref _bind122759_ '1 __syntax::t '#f)
                          _stx122731_))
                       _$e122756_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx122731_
                         _form122754_)))))
              (let () (declare (not safe)) (_$E122735122741_))))))
    (define __compile-error__%
      (lambda (_stx122718_ _detail122719_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx122718_
           _detail122719_))))
    (define __compile-error__0
      (lambda (_stx122724_)
        (let ((_detail122726_ '#f))
          (declare (not safe))
          (__compile-error__% _stx122724_ _detail122726_))))
    (define __compile-error
      (lambda _g127112_
        (let ((_g127111_ (let () (declare (not safe)) (##length _g127112_))))
          (cond ((let () (declare (not safe)) (##fx= _g127111_ 1))
                 (apply (lambda (_stx122724_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx122724_)))
                        _g127112_))
                ((let () (declare (not safe)) (##fx= _g127111_ 2))
                 (apply (lambda (_stx122728_ _detail122729_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx122728_ _detail122729_)))
                        _g127112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g127112_))))))
    (define __compile-ignore%
      (lambda (_stx122715_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx122715_))))
    (define __compile-begin%
      (lambda (_stx122690_)
        (let* ((_$e122692_ _stx122690_)
               (_$E122694122700_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122692_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122692_))
              (let* ((_$tgt122695122703_
                      (let () (declare (not safe)) (__AST-e _$e122692_)))
                     (_$hd122696122706_
                      (let () (declare (not safe)) (##car _$tgt122695122703_)))
                     (_$tl122697122709_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122695122703_))))
                (let* ((_body122713_ _$tl122697122709_)
                       (__tmp127113
                        (let ((__tmp127114 (map __compile _body122713_)))
                          (declare (not safe))
                          (cons 'begin __tmp127114))))
                  (declare (not safe))
                  (__SRC__% __tmp127113 _stx122690_)))
              (let () (declare (not safe)) (_$E122694122700_))))))
    (define __compile-begin-foreign%
      (lambda (_stx122665_)
        (let* ((_$e122667_ _stx122665_)
               (_$E122669122675_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122667_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122667_))
              (let* ((_$tgt122670122678_
                      (let () (declare (not safe)) (__AST-e _$e122667_)))
                     (_$hd122671122681_
                      (let () (declare (not safe)) (##car _$tgt122670122678_)))
                     (_$tl122672122684_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122670122678_))))
                (let* ((_body122688_ _$tl122672122684_)
                       (__tmp127115
                        (let ((__tmp127116
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body122688_))))
                          (declare (not safe))
                          (cons 'begin __tmp127116))))
                  (declare (not safe))
                  (__SRC__% __tmp127115 _stx122665_)))
              (let () (declare (not safe)) (_$E122669122675_))))))
    (define __compile-import%
      (lambda (_stx122640_)
        (let* ((_$e122642_ _stx122640_)
               (_$E122644122650_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122642_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122642_))
              (let* ((_$tgt122645122653_
                      (let () (declare (not safe)) (__AST-e _$e122642_)))
                     (_$hd122646122656_
                      (let () (declare (not safe)) (##car _$tgt122645122653_)))
                     (_$tl122647122659_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122645122653_))))
                (let* ((_body122663_ _$tl122647122659_)
                       (__tmp127117
                        (let ((__tmp127118
                               (let ((__tmp127119
                                      (let ((__tmp127120
                                             (let ()
                                               (declare (not safe))
                                               (cons _body122663_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp127120))))
                                 (declare (not safe))
                                 (cons __tmp127119 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp127118))))
                  (declare (not safe))
                  (__SRC__% __tmp127117 _stx122640_)))
              (let () (declare (not safe)) (_$E122644122650_))))))
    (define __compile-begin-annotation%
      (lambda (_stx122587_)
        (let* ((_$e122589_ _stx122587_)
               (_$E122591122603_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122589_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122589_))
              (let* ((_$tgt122592122606_
                      (let () (declare (not safe)) (__AST-e _$e122589_)))
                     (_$hd122593122609_
                      (let () (declare (not safe)) (##car _$tgt122592122606_)))
                     (_$tl122594122612_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122592122606_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl122594122612_))
                    (let* ((_$tgt122595122616_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl122594122612_)))
                           (_$hd122596122619_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt122595122616_)))
                           (_$tl122597122622_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt122595122616_))))
                      (let ((_ann122626_ _$hd122596122619_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl122597122622_))
                            (let* ((_$tgt122598122628_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl122597122622_)))
                                   (_$hd122599122631_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122598122628_)))
                                   (_$tl122600122634_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122598122628_))))
                              (let ((_expr122638_ _$hd122599122631_))
                                (if (let ((__tmp127121
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122600122634_))))
                                      (declare (not safe))
                                      (equal? __tmp127121 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr122638_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E122591122603_)))))
                            (let () (declare (not safe)) (_$E122591122603_)))))
                    (let () (declare (not safe)) (_$E122591122603_))))
              (let () (declare (not safe)) (_$E122591122603_))))))
    (define __compile-define-values%
      (lambda (_stx122478_)
        (let* ((_$e122480_ _stx122478_)
               (_$E122482122494_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122480_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122480_))
              (let* ((_$tgt122483122497_
                      (let () (declare (not safe)) (__AST-e _$e122480_)))
                     (_$hd122484122500_
                      (let () (declare (not safe)) (##car _$tgt122483122497_)))
                     (_$tl122485122503_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122483122497_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl122485122503_))
                    (let* ((_$tgt122486122507_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl122485122503_)))
                           (_$hd122487122510_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt122486122507_)))
                           (_$tl122488122513_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt122486122507_))))
                      (let ((_hd122517_ _$hd122487122510_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl122488122513_))
                            (let* ((_$tgt122489122519_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl122488122513_)))
                                   (_$hd122490122522_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122489122519_)))
                                   (_$tl122491122525_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122489122519_))))
                              (let ((_expr122529_ _$hd122490122522_))
                                (if (let ((__tmp127154
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122491122525_))))
                                      (declare (not safe))
                                      (equal? __tmp127154 '()))
                                    (let* ((_$e122531_ _hd122517_)
                                           (_$E122533122574_
                                            (lambda ()
                                              (let ((_$E122534122559_
                                                     (lambda ()
                                                       (let* ((_$E122535122546_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e122531_))))
                      (_ids122549_ _hd122517_)
                      (_len122551_ (length _ids122549_))
                      (_tmp122553_
                       (let ((__tmp127122 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp127122))))
                 (let ((__tmp127123
                        (let ((__tmp127124
                               (let ((__tmp127141
                                      (let ((__tmp127142
                                             (let ((__tmp127143
                                                    (let ((__tmp127144
                                                           (let ((__tmp127145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr122529_))))
                     (declare (not safe))
                     (cons __tmp127145 '()))))
              (declare (not safe))
              (cons _tmp122553_ __tmp127144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp127143))))
                                        (declare (not safe))
                                        (__SRC__% __tmp127142 _stx122478_)))
                                     (__tmp127125
                                      (let ((__tmp127137
                                             (let ((__tmp127138
                                                    (let ((__tmp127139
                                                           (let ((__tmp127140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len122551_ '()))))
                     (declare (not safe))
                     (cons _tmp122553_ __tmp127140))))
              (declare (not safe))
              (cons '__check-values __tmp127139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp127138
                                                _stx122478_)))
                                            (__tmp127126
                                             (let ((__tmp127127
                                                    (let ((__tmp127129
                                                           (lambda (_id122556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k122557_)
                     (if (let () (declare (not safe)) (__AST-e _id122556_))
                         (let ((__tmp127130
                                (let ((__tmp127131
                                       (let ((__tmp127136
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id122556_)))
                                             (__tmp127132
                                              (let ((__tmp127133
                                                     (let ((__tmp127134
                                                            (let ((__tmp127135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k122557_ '()))))
                      (declare (not safe))
                      (cons _tmp122553_ __tmp127135))))
               (declare (not safe))
               (cons '##vector-ref __tmp127134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127133 '()))))
                                         (declare (not safe))
                                         (cons __tmp127136 __tmp127132))))
                                  (declare (not safe))
                                  (cons 'define __tmp127131))))
                           (declare (not safe))
                           (__SRC__% __tmp127130 _stx122478_))
                         '#f)))
                  (__tmp127128
                   (let () (declare (not safe)) (iota _len122551_))))
              (declare (not safe))
              (filter-map2 __tmp127129 _ids122549_ __tmp127128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp127127))))
                                        (declare (not safe))
                                        (cons __tmp127137 __tmp127126))))
                                 (declare (not safe))
                                 (cons __tmp127141 __tmp127125))))
                          (declare (not safe))
                          (cons 'begin __tmp127124))))
                   (declare (not safe))
                   (__SRC__% __tmp127123 _stx122478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e122531_))
                                                    (let* ((_$tgt122536122562_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e122531_)))
                                                           (_$hd122537122565_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt122536122562_)))
                                                           (_$tl122538122568_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt122536122562_))))
                                                      (let ((_id122572_
                                                             _$hd122537122565_))
                                                        (if (let ((__tmp127151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl122538122568_))))
                      (declare (not safe))
                      (equal? __tmp127151 '()))
                    (let ((__tmp127146
                           (let ((__tmp127147
                                  (let ((__tmp127150
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id122572_)))
                                        (__tmp127148
                                         (let ((__tmp127149
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr122529_))))
                                           (declare (not safe))
                                           (cons __tmp127149 '()))))
                                    (declare (not safe))
                                    (cons __tmp127150 __tmp127148))))
                             (declare (not safe))
                             (cons 'define __tmp127147))))
                      (declare (not safe))
                      (__SRC__% __tmp127146 _stx122478_))
                    (let () (declare (not safe)) (_$E122534122559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E122534122559_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e122531_))
                                          (let* ((_$tgt122539122577_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e122531_)))
                                                 (_$hd122540122580_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt122539122577_)))
                                                 (_$tl122541122583_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt122539122577_))))
                                            (if (let ((__tmp127153
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd122540122580_))))
                                                  (declare (not safe))
                                                  (equal? __tmp127153 '#f))
                                                (if (let ((__tmp127152
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl122541122583_))))
                                                      (declare (not safe))
                                                      (equal? __tmp127152 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr122529_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E122533122574_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E122533122574_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E122533122574_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E122482122494_)))))
                            (let () (declare (not safe)) (_$E122482122494_)))))
                    (let () (declare (not safe)) (_$E122482122494_))))
              (let () (declare (not safe)) (_$E122482122494_))))))
    (define __compile-head-id
      (lambda (_e122476_)
        (let ((__tmp127155
               (if (let () (declare (not safe)) (__AST-e _e122476_))
                   _e122476_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp127155))))
    (define __compile-lambda-head
      (lambda (_hd122433_)
        (let _recur122435_ ((_rest122437_ _hd122433_))
          (let* ((_$e122439_ _rest122437_)
                 (_$E122441122459_
                  (lambda ()
                    (let ((_$E122442122456_
                           (lambda ()
                             (let* ((_$E122443122451_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e122439_))))
                                    (_tail122454_ _$e122439_))
                               (declare (not safe))
                               (__compile-head-id _tail122454_)))))
                      (if (let ((__tmp127156
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e122439_))))
                            (declare (not safe))
                            (equal? __tmp127156 '()))
                          '()
                          (let () (declare (not safe)) (_$E122442122456_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e122439_))
                (let* ((_$tgt122444122462_
                        (let () (declare (not safe)) (__AST-e _$e122439_)))
                       (_$hd122445122465_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt122444122462_)))
                       (_$tl122446122468_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt122444122462_))))
                  (let* ((_hd122472_ _$hd122445122465_)
                         (_rest122474_ _$tl122446122468_))
                    (let ((__tmp127158
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd122472_)))
                          (__tmp127157
                           (let ()
                             (declare (not safe))
                             (_recur122435_ _rest122474_))))
                      (declare (not safe))
                      (cons __tmp127158 __tmp127157))))
                (let () (declare (not safe)) (_$E122441122459_)))))))
    (define __compile-lambda%
      (lambda (_stx122380_)
        (let* ((_$e122382_ _stx122380_)
               (_$E122384122396_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122382_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122382_))
              (let* ((_$tgt122385122399_
                      (let () (declare (not safe)) (__AST-e _$e122382_)))
                     (_$hd122386122402_
                      (let () (declare (not safe)) (##car _$tgt122385122399_)))
                     (_$tl122387122405_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122385122399_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl122387122405_))
                    (let* ((_$tgt122388122409_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl122387122405_)))
                           (_$hd122389122412_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt122388122409_)))
                           (_$tl122390122415_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt122388122409_))))
                      (let ((_hd122419_ _$hd122389122412_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl122390122415_))
                            (let* ((_$tgt122391122421_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl122390122415_)))
                                   (_$hd122392122424_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122391122421_)))
                                   (_$tl122393122427_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122391122421_))))
                              (let ((_body122431_ _$hd122392122424_))
                                (if (let ((__tmp127164
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122393122427_))))
                                      (declare (not safe))
                                      (equal? __tmp127164 '()))
                                    (let ((__tmp127159
                                           (let ((__tmp127160
                                                  (let ((__tmp127163
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd122419_)))
                                                        (__tmp127161
                                                         (let ((__tmp127162
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body122431_))))
                   (declare (not safe))
                   (cons __tmp127162 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127163
                                                          __tmp127161))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp127160))))
                                      (declare (not safe))
                                      (__SRC__% __tmp127159 _stx122380_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E122384122396_)))))
                            (let () (declare (not safe)) (_$E122384122396_)))))
                    (let () (declare (not safe)) (_$E122384122396_))))
              (let () (declare (not safe)) (_$E122384122396_))))))
    (define __compile-case-lambda%
      (lambda (_stx122172_)
        (letrec ((_variadic?122174_
                  (lambda (_hd122345_)
                    (let* ((_$e122347_ _hd122345_)
                           (_$E122349122365_
                            (lambda ()
                              (let ((_$E122350122362_
                                     (lambda ()
                                       (let ((_$E122351122359_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e122347_)))))
                                         '#t))))
                                (if (let ((__tmp127165
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e122347_))))
                                      (declare (not safe))
                                      (equal? __tmp127165 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E122350122362_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e122347_))
                          (let* ((_$tgt122352122368_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e122347_)))
                                 (_$hd122353122371_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt122352122368_)))
                                 (_$tl122354122374_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt122352122368_))))
                            (let ((_rest122378_ _$tl122354122374_))
                              (declare (not safe))
                              (_variadic?122174_ _rest122378_)))
                          (let () (declare (not safe)) (_$E122349122365_))))))
                 (_arity122175_
                  (lambda (_hd122310_)
                    (let _lp122312_ ((_rest122314_ _hd122310_) (_k122315_ '0))
                      (let* ((_$e122317_ _rest122314_)
                             (_$E122319122330_
                              (lambda ()
                                (let ((_$E122320122327_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e122317_)))))
                                  _k122315_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e122317_))
                            (let* ((_$tgt122321122333_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e122317_)))
                                   (_$hd122322122336_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122321122333_)))
                                   (_$tl122323122339_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122321122333_))))
                              (let* ((_rest122343_ _$tl122323122339_)
                                     (__tmp127166
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k122315_ '1))))
                                (declare (not safe))
                                (_lp122312_ _rest122343_ __tmp127166)))
                            (let ()
                              (declare (not safe))
                              (_$E122319122330_)))))))
                 (_generate122176_
                  (lambda (_rest122237_ _args122238_ _len122239_)
                    (let* ((_$e122241_ _rest122237_)
                           (_$E122243122254_
                            (lambda ()
                              (let* ((_$E122244122251_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e122241_))))
                                     (__tmp127167
                                      (let ((__tmp127168
                                             (let ((__tmp127169
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args122238_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp127169))))
                                        (declare (not safe))
                                        (cons 'error __tmp127168))))
                                (declare (not safe))
                                (__SRC__% __tmp127167 _stx122172_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e122241_))
                          (let* ((_$tgt122245122257_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e122241_)))
                                 (_$hd122246122260_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt122245122257_)))
                                 (_$tl122247122263_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt122245122257_))))
                            (let* ((_clause122267_ _$hd122246122260_)
                                   (_rest122269_ _$tl122247122263_)
                                   (_$e122271_ _clause122267_)
                                   (_$E122273122282_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e122271_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e122271_))
                                  (let* ((_$tgt122274122285_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e122271_)))
                                         (_$hd122275122288_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt122274122285_)))
                                         (_$tl122276122291_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt122274122285_))))
                                    (let ((_hd122295_ _$hd122275122288_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl122276122291_))
                                          (let* ((_$tgt122277122297_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl122276122291_)))
                                                 (_$hd122278122300_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt122277122297_)))
                                                 (_$tl122279122303_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt122277122297_))))
                                            (if (let ((__tmp127184
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl122279122303_))))
                                                  (declare (not safe))
                                                  (equal? __tmp127184 '()))
                                                (let ((_clen122307_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity122175_
                                                          _hd122295_)))
                                                      (_cmp122308_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?122174_
                                                              _hd122295_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp127170
                                                         (let ((__tmp127171
                                                                (let ((__tmp127181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp127182
                                      (let ((__tmp127183
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen122307_ '()))))
                                        (declare (not safe))
                                        (cons _len122239_ __tmp127183))))
                                 (declare (not safe))
                                 (cons _cmp122308_ __tmp127182)))
                              (__tmp127172
                               (let ((__tmp127175
                                      (let ((__tmp127176
                                             (let ((__tmp127177
                                                    (let ((__tmp127179
                                                           (let ((__tmp127180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause122267_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp127180)))
                  (__tmp127178
                   (let () (declare (not safe)) (cons _args122238_ '()))))
              (declare (not safe))
              (cons __tmp127179 __tmp127178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp127177))))
                                        (declare (not safe))
                                        (__SRC__% __tmp127176 _stx122172_)))
                                     (__tmp127173
                                      (let ((__tmp127174
                                             (let ()
                                               (declare (not safe))
                                               (_generate122176_
                                                _rest122269_
                                                _args122238_
                                                _len122239_))))
                                        (declare (not safe))
                                        (cons __tmp127174 '()))))
                                 (declare (not safe))
                                 (cons __tmp127175 __tmp127173))))
                          (declare (not safe))
                          (cons __tmp127181 __tmp127172))))
                   (declare (not safe))
                   (cons 'if __tmp127171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp127170
                                                     _stx122172_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E122273122282_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E122273122282_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E122273122282_)))))
                          (let () (declare (not safe)) (_$E122243122254_)))))))
          (let* ((_$e122178_ _stx122172_)
                 (_$E122180122212_
                  (lambda ()
                    (let ((_$E122181122194_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e122178_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e122178_))
                          (let* ((_$tgt122182122197_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e122178_)))
                                 (_$hd122183122200_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt122182122197_)))
                                 (_$tl122184122203_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt122182122197_))))
                            (let ((_clauses122207_ _$tl122184122203_))
                              (let ((_args122209_
                                     (let ((__tmp127185 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp127185 _stx122172_)))
                                    (_len122210_
                                     (let ((__tmp127186 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp127186 _stx122172_))))
                                (let ((__tmp127187
                                       (let ((__tmp127188
                                              (let ((__tmp127189
                                                     (let ((__tmp127190
                                                            (let ((__tmp127191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127192
                                  (let ((__tmp127195
                                         (let ((__tmp127196
                                                (let ((__tmp127197
                                                       (let ((__tmp127198
                                                              (let ((__tmp127199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127200
                                    (let ()
                                      (declare (not safe))
                                      (cons _args122209_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp127200))))
                        (declare (not safe))
                        (__SRC__% __tmp127199 _stx122172_))))
                 (declare (not safe))
                 (cons __tmp127198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len122210_
                                                        __tmp127197))))
                                           (declare (not safe))
                                           (cons __tmp127196 '())))
                                        (__tmp127193
                                         (let ((__tmp127194
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate122176_
                                                   _clauses122207_
                                                   _args122209_
                                                   _len122210_))))
                                           (declare (not safe))
                                           (cons __tmp127194 '()))))
                                    (declare (not safe))
                                    (cons __tmp127195 __tmp127193))))
                             (declare (not safe))
                             (cons 'let __tmp127192))))
                      (declare (not safe))
                      (__SRC__% __tmp127191 _stx122172_))))
               (declare (not safe))
               (cons __tmp127190 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args122209_
                                                      __tmp127189))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp127188))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127187 _stx122172_)))))
                          (let () (declare (not safe)) (_$E122181122194_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e122178_))
                (let* ((_$tgt122185122215_
                        (let () (declare (not safe)) (__AST-e _$e122178_)))
                       (_$hd122186122218_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt122185122215_)))
                       (_$tl122187122221_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt122185122215_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl122187122221_))
                      (let* ((_$tgt122188122225_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl122187122221_)))
                             (_$hd122189122228_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt122188122225_)))
                             (_$tl122190122231_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt122188122225_))))
                        (let ((_clause122235_ _$hd122189122228_))
                          (if (let ((__tmp127202
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl122190122231_))))
                                (declare (not safe))
                                (equal? __tmp127202 '()))
                              (let ((__tmp127201
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause122235_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp127201))
                              (let ()
                                (declare (not safe))
                                (_$E122180122212_)))))
                      (let () (declare (not safe)) (_$E122180122212_))))
                (let () (declare (not safe)) (_$E122180122212_)))))))
    (define __compile-let-form
      (lambda (_stx121941_ _compile-simple121942_ _compile-values121943_)
        (letrec ((_simple-bind?121945_
                  (lambda (_hd122130_)
                    (let* ((_hd122131122141_ _hd122130_)
                           (_else122134122149_ (lambda () '#f)))
                      (let ((_K122137122162_ (lambda (_id122160_) '#t))
                            (_K122136122154_ (lambda () '#t)))
                        (let ((_try-match122133122157_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd122131122141_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K122136122154_))
                                     (let ()
                                       (declare (not safe))
                                       (_else122134122149_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd122131122141_))
                              (let ((_tl122139122167_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd122131122141_)))
                                    (_hd122138122165_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd122131122141_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl122139122167_))
                                    (let ((_id122170_ _hd122138122165_))
                                      (declare (not safe))
                                      (_K122137122162_ _id122170_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match122133122157_))))
                              (let ()
                                (declare (not safe))
                                (_try-match122133122157_))))))))
                 (_car-e121946_
                  (lambda (_hd122128_)
                    (if (let () (declare (not safe)) (pair? _hd122128_))
                        (car _hd122128_)
                        _hd122128_))))
          (let* ((_$e121948_ _stx121941_)
                 (_$E121950122093_
                  (lambda ()
                    (let ((_$E121951121973_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e121948_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e121948_))
                          (let* ((_$tgt121952121976_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e121948_)))
                                 (_$hd121953121979_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt121952121976_)))
                                 (_$tl121954121982_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt121952121976_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl121954121982_))
                                (let* ((_$tgt121955121986_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl121954121982_)))
                                       (_$hd121956121989_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt121955121986_)))
                                       (_$tl121957121992_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt121955121986_))))
                                  (let ((_hd121996_ _$hd121956121989_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl121957121992_))
                                        (let* ((_$tgt121958121998_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl121957121992_)))
                                               (_$hd121959122001_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt121958121998_)))
                                               (_$tl121960122004_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt121958121998_))))
                                          (let ((_body122008_
                                                 _$hd121959122001_))
                                            (if (let ((__tmp127205
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl121960122004_))))
                                                  (declare (not safe))
                                                  (equal? __tmp127205 '()))
                                                (let* ((_hd-ids122048_
                                                        (map (lambda (_bind122010_)
                                                               (let* ((_$e122012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind122010_)
                              (_$E122014122023_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e122012_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e122012_))
                             (let* ((_$tgt122015122026_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e122012_)))
                                    (_$hd122016122029_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt122015122026_)))
                                    (_$tl122017122032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt122015122026_))))
                               (let ((_ids122036_ _$hd122016122029_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl122017122032_))
                                     (let* ((_$tgt122018122038_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl122017122032_)))
                                            (_$hd122019122041_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt122018122038_)))
                                            (_$tl122020122044_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt122018122038_))))
                                       (if (let ((__tmp127203
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl122020122044_))))
                                             (declare (not safe))
                                             (equal? __tmp127203 '()))
                                           _ids122036_
                                           (let ()
                                             (declare (not safe))
                                             (_$E122014122023_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E122014122023_)))))
                             (let ()
                               (declare (not safe))
                               (_$E122014122023_)))))
                     _hd121996_))
               (_exprs122088_
                (map (lambda (_bind122050_)
                       (let* ((_$e122052_ _bind122050_)
                              (_$E122054122063_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e122052_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e122052_))
                             (let* ((_$tgt122055122066_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e122052_)))
                                    (_$hd122056122069_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt122055122066_)))
                                    (_$tl122057122072_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt122055122066_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl122057122072_))
                                   (let* ((_$tgt122058122076_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122057122072_)))
                                          (_$hd122059122079_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt122058122076_)))
                                          (_$tl122060122082_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt122058122076_))))
                                     (let ((_expr122086_ _$hd122059122079_))
                                       (if (let ((__tmp127204
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl122060122082_))))
                                             (declare (not safe))
                                             (equal? __tmp127204 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr122086_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E122054122063_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E122054122063_))))
                             (let ()
                               (declare (not safe))
                               (_$E122054122063_)))))
                     _hd121996_))
               (_body122090_
                (let () (declare (not safe)) (__compile _body122008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?121945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids122048_))
              (_compile-simple121942_
               (map _car-e121946_ _hd-ids122048_)
               _exprs122088_
               _body122090_)
              (_compile-values121943_
               _hd-ids122048_
               _exprs122088_
               _body122090_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E121951121973_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E121951121973_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E121951121973_))))
                          (let () (declare (not safe)) (_$E121951121973_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e121948_))
                (let* ((_$tgt121961122096_
                        (let () (declare (not safe)) (__AST-e _$e121948_)))
                       (_$hd121962122099_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt121961122096_)))
                       (_$tl121963122102_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt121961122096_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl121963122102_))
                      (let* ((_$tgt121964122106_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl121963122102_)))
                             (_$hd121965122109_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt121964122106_)))
                             (_$tl121966122112_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt121964122106_))))
                        (if (let ((__tmp127207
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd121965122109_))))
                              (declare (not safe))
                              (equal? __tmp127207 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl121966122112_))
                                (let* ((_$tgt121967122116_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl121966122112_)))
                                       (_$hd121968122119_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt121967122116_)))
                                       (_$tl121969122122_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt121967122116_))))
                                  (let ((_body122126_ _$hd121968122119_))
                                    (if (let ((__tmp127206
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl121969122122_))))
                                          (declare (not safe))
                                          (equal? __tmp127206 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body122126_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E121950122093_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E121950122093_)))
                            (let () (declare (not safe)) (_$E121950122093_))))
                      (let () (declare (not safe)) (_$E121950122093_))))
                (let () (declare (not safe)) (_$E121950122093_)))))))
    (define __compile-let-values%
      (lambda (_stx121756_)
        (letrec ((_compile-simple121758_
                  (lambda (_hd-ids121937_ _exprs121938_ _body121939_)
                    (let ((__tmp127208
                           (let ((__tmp127209
                                  (let ((__tmp127211
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids121937_)
                                              _exprs121938_))
                                        (__tmp127210
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121939_ '()))))
                                    (declare (not safe))
                                    (cons __tmp127211 __tmp127210))))
                             (declare (not safe))
                             (cons 'let __tmp127209))))
                      (declare (not safe))
                      (__SRC__% __tmp127208 _stx121756_))))
                 (_compile-values121759_
                  (lambda (_hd-ids121855_ _exprs121856_ _body121857_)
                    (let _lp121859_ ((_rest121861_ _hd-ids121855_)
                                     (_exprs121862_ _exprs121856_)
                                     (_bind121863_ '())
                                     (_post121864_ '()))
                      (let* ((_rest121865121879_ _rest121861_)
                             (_else121868121887_
                              (lambda ()
                                (let ((__tmp127212
                                       (let ((__tmp127213
                                              (let ((__tmp127216
                                                     (reverse _bind121863_))
                                                    (__tmp127214
                                                     (let ((__tmp127215
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post121760_
                                                               _post121864_
                                                               _body121857_))))
                                                       (declare (not safe))
                                                       (cons __tmp127215
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp127216
                                                      __tmp127214))))
                                         (declare (not safe))
                                         (cons 'let __tmp127213))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127212 _stx121756_)))))
                        (let ((_K121873121920_
                               (lambda (_rest121917_ _id121918_)
                                 (let ((__tmp127222 (cdr _exprs121862_))
                                       (__tmp127217
                                        (let ((__tmp127218
                                               (let ((__tmp127221
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id121918_)))
                                                     (__tmp127219
                                                      (let ((__tmp127220
                                                             (car _exprs121862_)))
                                                        (declare (not safe))
                                                        (cons __tmp127220
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp127221
                                                       __tmp127219))))
                                          (declare (not safe))
                                          (cons __tmp127218 _bind121863_))))
                                   (declare (not safe))
                                   (_lp121859_
                                    _rest121917_
                                    __tmp127222
                                    __tmp127217
                                    _post121864_))))
                              (_K121870121902_
                               (lambda (_rest121891_ _hd121892_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121892_))
                                     (let ((__tmp127243 (cdr _exprs121862_))
                                           (__tmp127236
                                            (let ((__tmp127237
                                                   (let ((__tmp127242
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd121892_)))
                                                         (__tmp127238
                                                          (let ((__tmp127239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127240
                                (let ((__tmp127241 (car _exprs121862_)))
                                  (declare (not safe))
                                  (cons __tmp127241 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp127240))))
                    (declare (not safe))
                    (cons __tmp127239 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127242
                                                           __tmp127238))))
                                              (declare (not safe))
                                              (cons __tmp127237
                                                    _bind121863_))))
                                       (declare (not safe))
                                       (_lp121859_
                                        _rest121891_
                                        __tmp127243
                                        __tmp127236
                                        _post121864_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd121892_))
                                         (let* ((_len121894_
                                                 (length _hd121892_))
                                                (_tmp121896_
                                                 (let ((__tmp127223 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp127223))))
                                           (let ((__tmp127235
                                                  (cdr _exprs121862_))
                                                 (__tmp127231
                                                  (let ((__tmp127232
                                                         (let ((__tmp127233
                                                                (let ((__tmp127234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs121862_)))
                          (declare (not safe))
                          (cons __tmp127234 '()))))
                   (declare (not safe))
                   (cons _tmp121896_ __tmp127233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127232
                                                          _bind121863_)))
                                                 (__tmp127224
                                                  (let ((__tmp127225
                                                         (let ((__tmp127226
                                                                (let ((__tmp127227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp127229
                                      (lambda (_id121899_ _k121900_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id121899_))
                                            (let ((__tmp127230
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id121899_))))
                                              (declare (not safe))
                                              (cons __tmp127230 _k121900_))
                                            '#f)))
                                     (__tmp127228
                                      (let ()
                                        (declare (not safe))
                                        (iota _len121894_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp127229
                                  _hd121892_
                                  __tmp127228))))
                          (declare (not safe))
                          (cons _len121894_ __tmp127227))))
                   (declare (not safe))
                   (cons _tmp121896_ __tmp127226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127225
                                                          _post121864_))))
                                             (declare (not safe))
                                             (_lp121859_
                                              _rest121891_
                                              __tmp127235
                                              __tmp127231
                                              __tmp127224)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx121756_
                                            _hd121892_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121865121879_))
                              (let ((_tl121875121925_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121865121879_)))
                                    (_hd121874121923_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121865121879_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121874121923_))
                                    (let ((_tl121877121930_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121874121923_)))
                                          (_hd121876121928_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121874121923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl121877121930_))
                                          (let ((_id121933_ _hd121876121928_)
                                                (_rest121935_
                                                 _tl121875121925_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121873121920_
                                               _rest121935_
                                               _id121933_)))
                                          (let ((_hd121910_ _hd121874121923_)
                                                (_rest121912_
                                                 _tl121875121925_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121870121902_
                                               _rest121912_
                                               _hd121910_)))))
                                    (let ((_hd121910_ _hd121874121923_)
                                          (_rest121912_ _tl121875121925_))
                                      (let ()
                                        (declare (not safe))
                                        (_K121870121902_
                                         _rest121912_
                                         _hd121910_)))))
                              (let ()
                                (declare (not safe))
                                (_else121868121887_))))))))
                 (_compile-post121760_
                  (lambda (_post121762_ _body121763_)
                    (let _lp121765_ ((_rest121767_ _post121762_)
                                     (_check121768_ '())
                                     (_bind121769_ '()))
                      (let* ((_rest121770121782_ _rest121767_)
                             (_else121772121790_
                              (lambda ()
                                (let ((__tmp127244
                                       (let ((__tmp127245
                                              (let ((__tmp127246
                                                     (let ((__tmp127247
                                                            (let ((__tmp127248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127249
                                  (let ((__tmp127250
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121763_ '()))))
                                    (declare (not safe))
                                    (cons _bind121769_ __tmp127250))))
                             (declare (not safe))
                             (cons 'let __tmp127249))))
                      (declare (not safe))
                      (__SRC__% __tmp127248 _stx121756_))))
               (declare (not safe))
               (cons __tmp127247 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp127246
                                                        _check121768_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp127245))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127244 _stx121756_))))
                             (_K121774121829_
                              (lambda (_rest121793_
                                       _init121794_
                                       _len121795_
                                       _tmp121796_)
                                (let ((__tmp127258
                                       (let ((__tmp127259
                                              (let ((__tmp127260
                                                     (let ((__tmp127261
                                                            (let ((__tmp127262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len121795_ '()))))
                      (declare (not safe))
                      (cons _tmp121796_ __tmp127262))))
               (declare (not safe))
               (cons '__check-values __tmp127261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp127260
                                                 _stx121756_))))
                                         (declare (not safe))
                                         (cons __tmp127259 _check121768_)))
                                      (__tmp127251
                                       (let ((__tmp127252
                                              (lambda (_hd121798_ _r121799_)
                                                (let* ((_hd121800121807_
                                                        _hd121798_)
                                                       (_E121802121811_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd121800121807_)))
               (_K121803121817_
                (lambda (_k121814_ _id121815_)
                  (let ((__tmp127253
                         (let ((__tmp127254
                                (let ((__tmp127255
                                       (let ((__tmp127256
                                              (let ((__tmp127257
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k121814_ '()))))
                                                (declare (not safe))
                                                (cons _tmp121796_
                                                      __tmp127257))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp127256))))
                                  (declare (not safe))
                                  (cons __tmp127255 '()))))
                           (declare (not safe))
                           (cons _id121815_ __tmp127254))))
                    (declare (not safe))
                    (cons __tmp127253 _r121799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd121800121807_))
                                                      (let ((_hd121804121820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd121800121807_)))
                    (_tl121805121822_
                     (let () (declare (not safe)) (##cdr _hd121800121807_))))
                (let* ((_id121825_ _hd121804121820_)
                       (_k121827_ _tl121805121822_))
                  (declare (not safe))
                  (_K121803121817_ _k121827_ _id121825_)))
              (let () (declare (not safe)) (_E121802121811_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp127252
                                                 _bind121769_
                                                 _init121794_))))
                                  (declare (not safe))
                                  (_lp121765_
                                   _rest121793_
                                   __tmp127258
                                   __tmp127251)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest121770121782_))
                            (let ((_hd121775121832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest121770121782_)))
                                  (_tl121776121834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest121770121782_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd121775121832_))
                                  (let ((_hd121777121837_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd121775121832_)))
                                        (_tl121778121839_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd121775121832_))))
                                    (let ((_tmp121842_ _hd121777121837_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl121778121839_))
                                          (let ((_hd121779121844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl121778121839_)))
                                                (_tl121780121846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl121778121839_))))
                                            (let* ((_len121849_
                                                    _hd121779121844_)
                                                   (_init121851_
                                                    _tl121780121846_)
                                                   (_rest121853_
                                                    _tl121776121834_))
                                              (declare (not safe))
                                              (_K121774121829_
                                               _rest121853_
                                               _init121851_
                                               _len121849_
                                               _tmp121842_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else121772121790_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else121772121790_))))
                            (let ()
                              (declare (not safe))
                              (_else121772121790_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx121756_
             _compile-simple121758_
             _compile-values121759_)))))
    (define __compile-letrec-values%
      (lambda (_stx121556_)
        (letrec ((_compile-simple121558_
                  (lambda (_hd-ids121752_ _exprs121753_ _body121754_)
                    (let ((__tmp127263
                           (let ((__tmp127264
                                  (let ((__tmp127266
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids121752_)
                                              _exprs121753_))
                                        (__tmp127265
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121754_ '()))))
                                    (declare (not safe))
                                    (cons __tmp127266 __tmp127265))))
                             (declare (not safe))
                             (cons 'letrec __tmp127264))))
                      (declare (not safe))
                      (__SRC__% __tmp127263 _stx121556_))))
                 (_compile-values121559_
                  (lambda (_hd-ids121666_ _exprs121667_ _body121668_)
                    (let _lp121670_ ((_rest121672_ _hd-ids121666_)
                                     (_exprs121673_ _exprs121667_)
                                     (_pre121674_ '())
                                     (_bind121675_ '())
                                     (_post121676_ '()))
                      (let* ((_rest121677121691_ _rest121672_)
                             (_else121680121699_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner121560_
                                   _pre121674_
                                   _bind121675_
                                   _post121676_
                                   _body121668_)))))
                        (let ((_K121685121735_
                               (lambda (_rest121732_ _id121733_)
                                 (let ((__tmp127272 (cdr _exprs121673_))
                                       (__tmp127267
                                        (let ((__tmp127268
                                               (let ((__tmp127271
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id121733_)))
                                                     (__tmp127269
                                                      (let ((__tmp127270
                                                             (car _exprs121673_)))
                                                        (declare (not safe))
                                                        (cons __tmp127270
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp127271
                                                       __tmp127269))))
                                          (declare (not safe))
                                          (cons __tmp127268 _bind121675_))))
                                   (declare (not safe))
                                   (_lp121670_
                                    _rest121732_
                                    __tmp127272
                                    _pre121674_
                                    __tmp127267
                                    _post121676_))))
                              (_K121682121717_
                               (lambda (_rest121703_ _hd121704_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121704_))
                                     (let ((__tmp127300 (cdr _exprs121673_))
                                           (__tmp127293
                                            (let ((__tmp127294
                                                   (let ((__tmp127299
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd121704_)))
                                                         (__tmp127295
                                                          (let ((__tmp127296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127297
                                (let ((__tmp127298 (car _exprs121673_)))
                                  (declare (not safe))
                                  (cons __tmp127298 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp127297))))
                    (declare (not safe))
                    (cons __tmp127296 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127299
                                                           __tmp127295))))
                                              (declare (not safe))
                                              (cons __tmp127294
                                                    _bind121675_))))
                                       (declare (not safe))
                                       (_lp121670_
                                        _rest121703_
                                        __tmp127300
                                        _pre121674_
                                        __tmp127293
                                        _post121676_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd121704_))
                                         (let* ((_len121706_
                                                 (length _hd121704_))
                                                (_tmp121708_
                                                 (let ((__tmp127273 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp127273))))
                                           (let ((__tmp127292
                                                  (cdr _exprs121673_))
                                                 (__tmp127285
                                                  (let ((__tmp127286
                                                         (lambda (_id121711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r121712_)
                   (if (let () (declare (not safe)) (__AST-e _id121711_))
                       (let ((__tmp127287
                              (let ((__tmp127291
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id121711_)))
                                    (__tmp127288
                                     (let ((__tmp127289
                                            (let ((__tmp127290
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp127290))))
                                       (declare (not safe))
                                       (cons __tmp127289 '()))))
                                (declare (not safe))
                                (cons __tmp127291 __tmp127288))))
                         (declare (not safe))
                         (cons __tmp127287 _r121712_))
                       _r121712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp127286
                                                            _pre121674_
                                                            _hd121704_)))
                                                 (__tmp127281
                                                  (let ((__tmp127282
                                                         (let ((__tmp127283
                                                                (let ((__tmp127284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs121673_)))
                          (declare (not safe))
                          (cons __tmp127284 '()))))
                   (declare (not safe))
                   (cons _tmp121708_ __tmp127283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127282
                                                          _bind121675_)))
                                                 (__tmp127274
                                                  (let ((__tmp127275
                                                         (let ((__tmp127276
                                                                (let ((__tmp127277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp127279
                                      (lambda (_id121714_ _k121715_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id121714_))
                                            (let ((__tmp127280
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id121714_))))
                                              (declare (not safe))
                                              (cons __tmp127280 _k121715_))
                                            '#f)))
                                     (__tmp127278
                                      (let ()
                                        (declare (not safe))
                                        (iota _len121706_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp127279
                                  _hd121704_
                                  __tmp127278))))
                          (declare (not safe))
                          (cons _len121706_ __tmp127277))))
                   (declare (not safe))
                   (cons _tmp121708_ __tmp127276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127275
                                                          _post121676_))))
                                             (declare (not safe))
                                             (_lp121670_
                                              _rest121703_
                                              __tmp127292
                                              __tmp127285
                                              __tmp127281
                                              __tmp127274)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx121556_
                                            _hd121704_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121677121691_))
                              (let ((_tl121687121740_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121677121691_)))
                                    (_hd121686121738_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121677121691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121686121738_))
                                    (let ((_tl121689121745_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121686121738_)))
                                          (_hd121688121743_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121686121738_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl121689121745_))
                                          (let ((_id121748_ _hd121688121743_)
                                                (_rest121750_
                                                 _tl121687121740_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121685121735_
                                               _rest121750_
                                               _id121748_)))
                                          (let ((_hd121725_ _hd121686121738_)
                                                (_rest121727_
                                                 _tl121687121740_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121682121717_
                                               _rest121727_
                                               _hd121725_)))))
                                    (let ((_hd121725_ _hd121686121738_)
                                          (_rest121727_ _tl121687121740_))
                                      (let ()
                                        (declare (not safe))
                                        (_K121682121717_
                                         _rest121727_
                                         _hd121725_)))))
                              (let ()
                                (declare (not safe))
                                (_else121680121699_))))))))
                 (_compile-inner121560_
                  (lambda (_pre121661_ _bind121662_ _post121663_ _body121664_)
                    (if (let () (declare (not safe)) (null? _pre121661_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind121561_
                           _bind121662_
                           _post121663_
                           _body121664_))
                        (let ((__tmp127301
                               (let ((__tmp127302
                                      (let ((__tmp127305 (reverse _pre121661_))
                                            (__tmp127303
                                             (let ((__tmp127304
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind121561_
                                                       _bind121662_
                                                       _post121663_
                                                       _body121664_))))
                                               (declare (not safe))
                                               (cons __tmp127304 '()))))
                                        (declare (not safe))
                                        (cons __tmp127305 __tmp127303))))
                                 (declare (not safe))
                                 (cons 'let __tmp127302))))
                          (declare (not safe))
                          (__SRC__% __tmp127301 _stx121556_)))))
                 (_compile-bind121561_
                  (lambda (_bind121657_ _post121658_ _body121659_)
                    (let ((__tmp127306
                           (let ((__tmp127307
                                  (let ((__tmp127310 (reverse _bind121657_))
                                        (__tmp127308
                                         (let ((__tmp127309
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post121562_
                                                   _post121658_
                                                   _body121659_))))
                                           (declare (not safe))
                                           (cons __tmp127309 '()))))
                                    (declare (not safe))
                                    (cons __tmp127310 __tmp127308))))
                             (declare (not safe))
                             (cons 'letrec __tmp127307))))
                      (declare (not safe))
                      (__SRC__% __tmp127306 _stx121556_))))
                 (_compile-post121562_
                  (lambda (_post121564_ _body121565_)
                    (let _lp121567_ ((_rest121569_ _post121564_)
                                     (_check121570_ '())
                                     (_bind121571_ '()))
                      (let* ((_rest121572121584_ _rest121569_)
                             (_else121574121592_
                              (lambda ()
                                (let ((__tmp127311
                                       (let ((__tmp127312
                                              (let ((__tmp127313
                                                     (let ((__tmp127314
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body121565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp127314 _bind121571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp127313
                                                        _check121570_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp127312))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127311 _stx121556_))))
                             (_K121576121631_
                              (lambda (_rest121595_
                                       _init121596_
                                       _len121597_
                                       _tmp121598_)
                                (let ((__tmp127323
                                       (let ((__tmp127324
                                              (let ((__tmp127325
                                                     (let ((__tmp127326
                                                            (let ((__tmp127327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len121597_ '()))))
                      (declare (not safe))
                      (cons _tmp121598_ __tmp127327))))
               (declare (not safe))
               (cons '__check-values __tmp127326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp127325
                                                 _stx121556_))))
                                         (declare (not safe))
                                         (cons __tmp127324 _check121570_)))
                                      (__tmp127315
                                       (let ((__tmp127316
                                              (lambda (_hd121600_ _r121601_)
                                                (let* ((_hd121602121609_
                                                        _hd121600_)
                                                       (_E121604121613_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd121602121609_)))
               (_K121605121619_
                (lambda (_k121616_ _id121617_)
                  (let ((__tmp127317
                         (let ((__tmp127318
                                (let ((__tmp127319
                                       (let ((__tmp127320
                                              (let ((__tmp127321
                                                     (let ((__tmp127322
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k121616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp121598_ __tmp127322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp127321))))
                                         (declare (not safe))
                                         (cons __tmp127320 '()))))
                                  (declare (not safe))
                                  (cons _id121617_ __tmp127319))))
                           (declare (not safe))
                           (cons 'set! __tmp127318))))
                    (declare (not safe))
                    (cons __tmp127317 _r121601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd121602121609_))
                                                      (let ((_hd121606121622_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd121602121609_)))
                    (_tl121607121624_
                     (let () (declare (not safe)) (##cdr _hd121602121609_))))
                (let* ((_id121627_ _hd121606121622_)
                       (_k121629_ _tl121607121624_))
                  (declare (not safe))
                  (_K121605121619_ _k121629_ _id121627_)))
              (let () (declare (not safe)) (_E121604121613_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp127316
                                                 _bind121571_
                                                 _init121596_))))
                                  (declare (not safe))
                                  (_lp121567_
                                   _rest121595_
                                   __tmp127323
                                   __tmp127315)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest121572121584_))
                            (let ((_hd121577121634_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest121572121584_)))
                                  (_tl121578121636_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest121572121584_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd121577121634_))
                                  (let ((_hd121579121639_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd121577121634_)))
                                        (_tl121580121641_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd121577121634_))))
                                    (let ((_tmp121644_ _hd121579121639_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl121580121641_))
                                          (let ((_hd121581121646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl121580121641_)))
                                                (_tl121582121648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl121580121641_))))
                                            (let* ((_len121651_
                                                    _hd121581121646_)
                                                   (_init121653_
                                                    _tl121582121648_)
                                                   (_rest121655_
                                                    _tl121578121636_))
                                              (declare (not safe))
                                              (_K121576121631_
                                               _rest121655_
                                               _init121653_
                                               _len121651_
                                               _tmp121644_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else121574121592_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else121574121592_))))
                            (let ()
                              (declare (not safe))
                              (_else121574121592_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx121556_
             _compile-simple121558_
             _compile-values121559_)))))
    (define __compile-letrec*-values%
      (lambda (_stx121311_)
        (letrec ((_compile-simple121313_
                  (lambda (_hd-ids121552_ _exprs121553_ _body121554_)
                    (let ((__tmp127328
                           (let ((__tmp127329
                                  (let ((__tmp127331
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids121552_)
                                              _exprs121553_))
                                        (__tmp127330
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121554_ '()))))
                                    (declare (not safe))
                                    (cons __tmp127331 __tmp127330))))
                             (declare (not safe))
                             (cons 'letrec* __tmp127329))))
                      (declare (not safe))
                      (__SRC__% __tmp127328 _stx121311_))))
                 (_compile-values121314_
                  (lambda (_hd-ids121463_ _exprs121464_ _body121465_)
                    (let _lp121467_ ((_rest121469_ _hd-ids121463_)
                                     (_exprs121470_ _exprs121464_)
                                     (_bind121471_ '())
                                     (_post121472_ '()))
                      (let* ((_rest121473121487_ _rest121469_)
                             (_else121476121495_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind121315_
                                   _bind121471_
                                   _post121472_
                                   _body121465_)))))
                        (let ((_K121481121535_
                               (lambda (_rest121530_ _hd121531_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121531_))
                                     (let ((_id121533_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd121531_))))
                                       (let ((__tmp127346 (cdr _exprs121470_))
                                             (__tmp127341
                                              (let ((__tmp127342
                                                     (let ((__tmp127343
                                                            (let ((__tmp127344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127345
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp127345))))
                      (declare (not safe))
                      (cons __tmp127344 '()))))
               (declare (not safe))
               (cons _id121533_ __tmp127343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127342
                                                      _bind121471_)))
                                             (__tmp127337
                                              (let ((__tmp127338
                                                     (let ((__tmp127339
                                                            (let ((__tmp127340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs121470_)))
                      (declare (not safe))
                      (cons __tmp127340 '()))))
               (declare (not safe))
               (cons _id121533_ __tmp127339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127338
                                                      _post121472_))))
                                         (declare (not safe))
                                         (_lp121467_
                                          _rest121530_
                                          __tmp127346
                                          __tmp127341
                                          __tmp127337)))
                                     (let ((__tmp127336 (cdr _exprs121470_))
                                           (__tmp127332
                                            (let ((__tmp127333
                                                   (let ((__tmp127334
                                                          (let ((__tmp127335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs121470_)))
                    (declare (not safe))
                    (cons __tmp127335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp127334))))
                                              (declare (not safe))
                                              (cons __tmp127333
                                                    _post121472_))))
                                       (declare (not safe))
                                       (_lp121467_
                                        _rest121530_
                                        __tmp127336
                                        _bind121471_
                                        __tmp127332)))))
                              (_K121478121515_
                               (lambda (_rest121499_ _hd121500_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121500_))
                                     (let ((_id121502_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd121500_))))
                                       (let ((__tmp127382 (cdr _exprs121470_))
                                             (__tmp127377
                                              (let ((__tmp127378
                                                     (let ((__tmp127379
                                                            (let ((__tmp127380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127381
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp127381))))
                      (declare (not safe))
                      (cons __tmp127380 '()))))
               (declare (not safe))
               (cons _id121502_ __tmp127379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127378
                                                      _bind121471_)))
                                             (__tmp127371
                                              (let ((__tmp127372
                                                     (let ((__tmp127373
                                                            (let ((__tmp127374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127375
                                  (let ((__tmp127376 (car _exprs121470_)))
                                    (declare (not safe))
                                    (cons __tmp127376 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp127375))))
                      (declare (not safe))
                      (cons __tmp127374 '()))))
               (declare (not safe))
               (cons _id121502_ __tmp127373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127372
                                                      _post121472_))))
                                         (declare (not safe))
                                         (_lp121467_
                                          _rest121499_
                                          __tmp127382
                                          __tmp127377
                                          __tmp127371)))
                                     (if (let ((__tmp127370
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd121500_))))
                                           (declare (not safe))
                                           (not __tmp127370))
                                         (let ((__tmp127369
                                                (cdr _exprs121470_))
                                               (__tmp127365
                                                (let ((__tmp127366
                                                       (let ((__tmp127367
                                                              (let ((__tmp127368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs121470_)))
                        (declare (not safe))
                        (cons __tmp127368 '()))))
                 (declare (not safe))
                 (cons '#f __tmp127367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127366
                                                        _post121472_))))
                                           (declare (not safe))
                                           (_lp121467_
                                            _rest121499_
                                            __tmp127369
                                            _bind121471_
                                            __tmp127365))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd121500_))
                                             (let* ((_len121504_
                                                     (length _hd121500_))
                                                    (_tmp121506_
                                                     (let ((__tmp127347
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp127347))))
                                               (let ((__tmp127364
                                                      (cdr _exprs121470_))
                                                     (__tmp127357
                                                      (let ((__tmp127358
                                                             (lambda (_id121509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r121510_)
                       (if (let () (declare (not safe)) (__AST-e _id121509_))
                           (let ((__tmp127359
                                  (let ((__tmp127363
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id121509_)))
                                        (__tmp127360
                                         (let ((__tmp127361
                                                (let ((__tmp127362
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp127362))))
                                           (declare (not safe))
                                           (cons __tmp127361 '()))))
                                    (declare (not safe))
                                    (cons __tmp127363 __tmp127360))))
                             (declare (not safe))
                             (cons __tmp127359 _r121510_))
                           _r121510_))))
                (declare (not safe))
                (foldl1 __tmp127358 _bind121471_ _hd121500_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp127348
                                                      (let ((__tmp127349
                                                             (let ((__tmp127350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127356 (car _exprs121470_))
                                  (__tmp127351
                                   (let ((__tmp127352
                                          (let ((__tmp127354
                                                 (lambda (_id121512_ _k121513_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id121512_))
                                                       (let ((__tmp127355
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id121512_))))
                 (declare (not safe))
                 (cons __tmp127355 _k121513_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp127353
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len121504_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp127354
                                             _hd121500_
                                             __tmp127353))))
                                     (declare (not safe))
                                     (cons _len121504_ __tmp127352))))
                              (declare (not safe))
                              (cons __tmp127356 __tmp127351))))
                       (declare (not safe))
                       (cons _tmp121506_ __tmp127350))))
                (declare (not safe))
                (cons __tmp127349 _post121472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp121467_
                                                  _rest121499_
                                                  __tmp127364
                                                  __tmp127357
                                                  __tmp127348)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx121311_
                                                _hd121500_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121473121487_))
                              (let ((_tl121483121540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121473121487_)))
                                    (_hd121482121538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121473121487_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121482121538_))
                                    (let ((_tl121485121545_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121482121538_)))
                                          (_hd121484121543_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121482121538_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl121485121545_))
                                          (let ((_hd121548_ _hd121484121543_)
                                                (_rest121550_
                                                 _tl121483121540_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121481121535_
                                               _rest121550_
                                               _hd121548_)))
                                          (let ((_hd121523_ _hd121482121538_)
                                                (_rest121525_
                                                 _tl121483121540_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121478121515_
                                               _rest121525_
                                               _hd121523_)))))
                                    (let ((_hd121523_ _hd121482121538_)
                                          (_rest121525_ _tl121483121540_))
                                      (let ()
                                        (declare (not safe))
                                        (_K121478121515_
                                         _rest121525_
                                         _hd121523_)))))
                              (let ()
                                (declare (not safe))
                                (_else121476121495_))))))))
                 (_compile-bind121315_
                  (lambda (_bind121459_ _post121460_ _body121461_)
                    (let ((__tmp127383
                           (let ((__tmp127384
                                  (let ((__tmp127387 (reverse _bind121459_))
                                        (__tmp127385
                                         (let ((__tmp127386
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post121316_
                                                   _post121460_
                                                   _body121461_))))
                                           (declare (not safe))
                                           (cons __tmp127386 '()))))
                                    (declare (not safe))
                                    (cons __tmp127387 __tmp127385))))
                             (declare (not safe))
                             (cons 'let __tmp127384))))
                      (declare (not safe))
                      (__SRC__% __tmp127383 _stx121311_))))
                 (_compile-post121316_
                  (lambda (_post121318_ _body121319_)
                    (let ((__tmp127388
                           (let ((__tmp127389
                                  (let ((__tmp127390
                                         (let ((__tmp127392
                                                (lambda (_hd121321_ _r121322_)
                                                  (let* ((_hd121323121346_
                                                          _hd121321_)
                                                         (_E121327121350_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd121323121346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K121340121444_
                                                           (lambda (_expr121442_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr121442_ _r121322_))))
                  (_K121335121422_
                   (lambda (_expr121419_ _id121420_)
                     (let ((__tmp127393
                            (let ((__tmp127394
                                   (let ((__tmp127395
                                          (let ((__tmp127396
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr121419_ '()))))
                                            (declare (not safe))
                                            (cons _id121420_ __tmp127396))))
                                     (declare (not safe))
                                     (cons 'set! __tmp127395))))
                              (declare (not safe))
                              (__SRC__% __tmp127394 _stx121311_))))
                       (declare (not safe))
                       (cons __tmp127393 _r121322_))))
                  (_K121328121389_
                   (lambda (_init121354_ _len121355_ _expr121356_ _tmp121357_)
                     (let ((__tmp127397
                            (let ((__tmp127398
                                   (let ((__tmp127399
                                          (let ((__tmp127413
                                                 (let ((__tmp127414
                                                        (let ((__tmp127415
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr121356_ '()))))
                  (declare (not safe))
                  (cons _tmp121357_ __tmp127415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127414 '())))
                                                (__tmp127400
                                                 (let ((__tmp127409
                                                        (let ((__tmp127410
                                                               (let ((__tmp127411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127412
                                     (let ()
                                       (declare (not safe))
                                       (cons _len121355_ '()))))
                                (declare (not safe))
                                (cons _tmp121357_ __tmp127412))))
                         (declare (not safe))
                         (cons '__check-values __tmp127411))))
                  (declare (not safe))
                  (__SRC__% __tmp127410 _stx121311_)))
               (__tmp127401
                (let ((__tmp127402
                       (map (lambda (_hd121359_)
                              (let* ((_hd121360121367_ _hd121359_)
                                     (_E121362121371_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd121360121367_)))
                                     (_K121363121377_
                                      (lambda (_k121374_ _id121375_)
                                        (let ((__tmp127403
                                               (let ((__tmp127404
                                                      (let ((__tmp127405
                                                             (let ((__tmp127406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127407
                                   (let ((__tmp127408
                                          (let ()
                                            (declare (not safe))
                                            (cons _k121374_ '()))))
                                     (declare (not safe))
                                     (cons _tmp121357_ __tmp127408))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp127407))))
                       (declare (not safe))
                       (cons __tmp127406 '()))))
                (declare (not safe))
                (cons _id121375_ __tmp127405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp127404))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp127403
                                           _stx121311_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121360121367_))
                                    (let ((_hd121364121380_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121360121367_)))
                                          (_tl121365121382_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121360121367_))))
                                      (let* ((_id121385_ _hd121364121380_)
                                             (_k121387_ _tl121365121382_))
                                        (declare (not safe))
                                        (_K121363121377_
                                         _k121387_
                                         _id121385_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E121362121371_)))))
                            _init121354_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp127402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127409
                                                         __tmp127401))))
                                            (declare (not safe))
                                            (cons __tmp127413 __tmp127400))))
                                     (declare (not safe))
                                     (cons 'let __tmp127399))))
                              (declare (not safe))
                              (__SRC__% __tmp127398 _stx121311_))))
                       (declare (not safe))
                       (cons __tmp127397 _r121322_)))))
              (if (let () (declare (not safe)) (##pair? _hd121323121346_))
                  (let ((_tl121342121449_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd121323121346_)))
                        (_hd121341121447_
                         (let ()
                           (declare (not safe))
                           (##car _hd121323121346_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd121341121447_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl121342121449_))
                            (let ((_tl121344121454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl121342121449_)))
                                  (_hd121343121452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl121342121449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl121344121454_))
                                  (let ((_expr121457_ _hd121343121452_))
                                    (declare (not safe))
                                    (_K121340121444_ _expr121457_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl121344121454_))
                                      (let ((_tl121334121408_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl121344121454_)))
                                            (_hd121333121406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl121344121454_))))
                                        (let ((_tmp121397_ _hd121341121447_)
                                              (_expr121404_ _hd121343121452_)
                                              (_len121411_ _hd121333121406_)
                                              (_init121413_ _tl121334121408_))
                                          (let ()
                                            (declare (not safe))
                                            (_K121328121389_
                                             _init121413_
                                             _len121411_
                                             _expr121404_
                                             _tmp121397_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E121327121350_)))))
                            (let () (declare (not safe)) (_E121327121350_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl121342121449_))
                            (let ((_tl121339121434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl121342121449_)))
                                  (_hd121338121432_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl121342121449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl121339121434_))
                                  (let ((_id121430_ _hd121341121447_)
                                        (_expr121437_ _hd121338121432_))
                                    (let ()
                                      (declare (not safe))
                                      (_K121335121422_
                                       _expr121437_
                                       _id121430_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl121339121434_))
                                      (let ((_tl121334121408_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl121339121434_)))
                                            (_hd121333121406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl121339121434_))))
                                        (let ((_tmp121397_ _hd121341121447_)
                                              (_expr121404_ _hd121338121432_)
                                              (_len121411_ _hd121333121406_)
                                              (_init121413_ _tl121334121408_))
                                          (let ()
                                            (declare (not safe))
                                            (_K121328121389_
                                             _init121413_
                                             _len121411_
                                             _expr121404_
                                             _tmp121397_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E121327121350_)))))
                            (let () (declare (not safe)) (_E121327121350_)))))
                  (let () (declare (not safe)) (_E121327121350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp127391
                                                (list _body121319_)))
                                           (declare (not safe))
                                           (foldl1 __tmp127392
                                                   __tmp127391
                                                   _post121318_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp127390))))
                             (declare (not safe))
                             (cons 'begin __tmp127389))))
                      (declare (not safe))
                      (__SRC__% __tmp127388 _stx121311_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx121311_
             _compile-simple121313_
             _compile-values121314_)))))
    (define __compile-call%
      (lambda (_stx121271_)
        (let* ((_$e121273_ _stx121271_)
               (_$E121275121284_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121273_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121273_))
              (let* ((_$tgt121276121287_
                      (let () (declare (not safe)) (__AST-e _$e121273_)))
                     (_$hd121277121290_
                      (let () (declare (not safe)) (##car _$tgt121276121287_)))
                     (_$tl121278121293_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121276121287_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121278121293_))
                    (let* ((_$tgt121279121297_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121278121293_)))
                           (_$hd121280121300_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121279121297_)))
                           (_$tl121281121303_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121279121297_))))
                      (let* ((_rator121307_ _$hd121280121300_)
                             (_rands121309_ _$tl121281121303_)
                             (__tmp127416
                              (let ((__tmp127418
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator121307_)))
                                    (__tmp127417
                                     (map __compile _rands121309_)))
                                (declare (not safe))
                                (cons __tmp127418 __tmp127417))))
                        (declare (not safe))
                        (__SRC__% __tmp127416 _stx121271_)))
                    (let () (declare (not safe)) (_$E121275121284_))))
              (let () (declare (not safe)) (_$E121275121284_))))))
    (define __compile-ref%
      (lambda (_stx121233_)
        (let* ((_$e121235_ _stx121233_)
               (_$E121237121246_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121235_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121235_))
              (let* ((_$tgt121238121249_
                      (let () (declare (not safe)) (__AST-e _$e121235_)))
                     (_$hd121239121252_
                      (let () (declare (not safe)) (##car _$tgt121238121249_)))
                     (_$tl121240121255_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121238121249_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121240121255_))
                    (let* ((_$tgt121241121259_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121240121255_)))
                           (_$hd121242121262_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121241121259_)))
                           (_$tl121243121265_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121241121259_))))
                      (let ((_id121269_ _$hd121242121262_))
                        (if (let ((__tmp127419
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl121243121265_))))
                              (declare (not safe))
                              (equal? __tmp127419 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id121269_ _stx121233_))
                            (let () (declare (not safe)) (_$E121237121246_)))))
                    (let () (declare (not safe)) (_$E121237121246_))))
              (let () (declare (not safe)) (_$E121237121246_))))))
    (define __compile-setq%
      (lambda (_stx121180_)
        (let* ((_$e121182_ _stx121180_)
               (_$E121184121196_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121182_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121182_))
              (let* ((_$tgt121185121199_
                      (let () (declare (not safe)) (__AST-e _$e121182_)))
                     (_$hd121186121202_
                      (let () (declare (not safe)) (##car _$tgt121185121199_)))
                     (_$tl121187121205_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121185121199_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121187121205_))
                    (let* ((_$tgt121188121209_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121187121205_)))
                           (_$hd121189121212_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121188121209_)))
                           (_$tl121190121215_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121188121209_))))
                      (let ((_id121219_ _$hd121189121212_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl121190121215_))
                            (let* ((_$tgt121191121221_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl121190121215_)))
                                   (_$hd121192121224_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121191121221_)))
                                   (_$tl121193121227_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121191121221_))))
                              (let ((_expr121231_ _$hd121192121224_))
                                (if (let ((__tmp127425
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl121193121227_))))
                                      (declare (not safe))
                                      (equal? __tmp127425 '()))
                                    (let ((__tmp127420
                                           (let ((__tmp127421
                                                  (let ((__tmp127424
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id121219_
                                                            _stx121180_)))
                                                        (__tmp127422
                                                         (let ((__tmp127423
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr121231_))))
                   (declare (not safe))
                   (cons __tmp127423 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127424
                                                          __tmp127422))))
                                             (declare (not safe))
                                             (cons 'set! __tmp127421))))
                                      (declare (not safe))
                                      (__SRC__% __tmp127420 _stx121180_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E121184121196_)))))
                            (let () (declare (not safe)) (_$E121184121196_)))))
                    (let () (declare (not safe)) (_$E121184121196_))))
              (let () (declare (not safe)) (_$E121184121196_))))))
    (define __compile-if%
      (lambda (_stx121112_)
        (let* ((_$e121114_ _stx121112_)
               (_$E121116121131_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121114_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121114_))
              (let* ((_$tgt121117121134_
                      (let () (declare (not safe)) (__AST-e _$e121114_)))
                     (_$hd121118121137_
                      (let () (declare (not safe)) (##car _$tgt121117121134_)))
                     (_$tl121119121140_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121117121134_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121119121140_))
                    (let* ((_$tgt121120121144_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121119121140_)))
                           (_$hd121121121147_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121120121144_)))
                           (_$tl121122121150_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121120121144_))))
                      (let ((_p121154_ _$hd121121121147_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl121122121150_))
                            (let* ((_$tgt121123121156_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl121122121150_)))
                                   (_$hd121124121159_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121123121156_)))
                                   (_$tl121125121162_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121123121156_))))
                              (let ((_t121166_ _$hd121124121159_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl121125121162_))
                                    (let* ((_$tgt121126121168_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl121125121162_)))
                                           (_$hd121127121171_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt121126121168_)))
                                           (_$tl121128121174_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt121126121168_))))
                                      (let ((_f121178_ _$hd121127121171_))
                                        (if (let ((__tmp127433
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl121128121174_))))
                                              (declare (not safe))
                                              (equal? __tmp127433 '()))
                                            (let ((__tmp127426
                                                   (let ((__tmp127427
                                                          (let ((__tmp127432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p121154_)))
                        (__tmp127428
                         (let ((__tmp127431
                                (let ()
                                  (declare (not safe))
                                  (__compile _t121166_)))
                               (__tmp127429
                                (let ((__tmp127430
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f121178_))))
                                  (declare (not safe))
                                  (cons __tmp127430 '()))))
                           (declare (not safe))
                           (cons __tmp127431 __tmp127429))))
                    (declare (not safe))
                    (cons __tmp127432 __tmp127428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp127427))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp127426
                                               _stx121112_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E121116121131_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E121116121131_)))))
                            (let () (declare (not safe)) (_$E121116121131_)))))
                    (let () (declare (not safe)) (_$E121116121131_))))
              (let () (declare (not safe)) (_$E121116121131_))))))
    (define __compile-quote%
      (lambda (_stx121074_)
        (let* ((_$e121076_ _stx121074_)
               (_$E121078121087_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121076_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121076_))
              (let* ((_$tgt121079121090_
                      (let () (declare (not safe)) (__AST-e _$e121076_)))
                     (_$hd121080121093_
                      (let () (declare (not safe)) (##car _$tgt121079121090_)))
                     (_$tl121081121096_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121079121090_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121081121096_))
                    (let* ((_$tgt121082121100_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121081121096_)))
                           (_$hd121083121103_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121082121100_)))
                           (_$tl121084121106_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121082121100_))))
                      (let ((_e121110_ _$hd121083121103_))
                        (if (let ((__tmp127437
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl121084121106_))))
                              (declare (not safe))
                              (equal? __tmp127437 '()))
                            (let ((__tmp127434
                                   (let ((__tmp127435
                                          (let ((__tmp127436
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e121110_))))
                                            (declare (not safe))
                                            (cons __tmp127436 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp127435))))
                              (declare (not safe))
                              (__SRC__% __tmp127434 _stx121074_))
                            (let () (declare (not safe)) (_$E121078121087_)))))
                    (let () (declare (not safe)) (_$E121078121087_))))
              (let () (declare (not safe)) (_$E121078121087_))))))
    (define __compile-quote-syntax%
      (lambda (_stx121036_)
        (let* ((_$e121038_ _stx121036_)
               (_$E121040121049_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121038_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121038_))
              (let* ((_$tgt121041121052_
                      (let () (declare (not safe)) (__AST-e _$e121038_)))
                     (_$hd121042121055_
                      (let () (declare (not safe)) (##car _$tgt121041121052_)))
                     (_$tl121043121058_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121041121052_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121043121058_))
                    (let* ((_$tgt121044121062_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121043121058_)))
                           (_$hd121045121065_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121044121062_)))
                           (_$tl121046121068_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121044121062_))))
                      (let ((_e121072_ _$hd121045121065_))
                        (if (let ((__tmp127440
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl121046121068_))))
                              (declare (not safe))
                              (equal? __tmp127440 '()))
                            (let ((__tmp127438
                                   (let ((__tmp127439
                                          (let ()
                                            (declare (not safe))
                                            (cons _e121072_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp127439))))
                              (declare (not safe))
                              (__SRC__% __tmp127438 _stx121036_))
                            (let () (declare (not safe)) (_$E121040121049_)))))
                    (let () (declare (not safe)) (_$E121040121049_))))
              (let () (declare (not safe)) (_$E121040121049_))))))
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
