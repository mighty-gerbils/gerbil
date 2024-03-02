(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709375797)
  (begin
    (define __syntax::t
      (let ((__tmp77842 (list))
            (__tmp77840
             (let ((__tmp77841
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77841 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77842
         '(e id)
         __tmp77840
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77651_ (apply make-instance __syntax::t _$args77651_)))
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
      (let ((__tmp77845 (list __syntax::t))
            (__tmp77843
             (let ((__tmp77844
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77844 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77845
         '()
         __tmp77843
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77648_ (apply make-instance __core-form::t _$args77648_)))
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
      (let ((__tmp77848 (list __core-form::t))
            (__tmp77846
             (let ((__tmp77847
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77847 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77848
         '()
         __tmp77846
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77645_
        (apply make-instance __core-expression::t _$args77645_)))
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
      (let ((__tmp77851 (list __core-form::t))
            (__tmp77849
             (let ((__tmp77850
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77850 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77851
         '()
         __tmp77849
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77642_
        (apply make-instance __core-special-form::t _$args77642_)))
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
      (lambda (_id77640_)
        (let ((__tmp77852 (let () (declare (not safe)) (__AST-e _id77640_))))
          (declare (not safe))
          (hash-get __core __tmp77852))))
    (define __core-bound-id?__%
      (lambda (_id77624_ _is?77625_)
        (let ((_$e77627_
               (let () (declare (not safe)) (__core-resolve _id77624_))))
          (if _$e77627_ (_is?77625_ _$e77627_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77633_)
        (let ((_is?77635_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77633_ _is?77635_))))
    (define __core-bound-id?
      (lambda _g77854_
        (let ((_g77853_ (let () (declare (not safe)) (##length _g77854_))))
          (cond ((let () (declare (not safe)) (##fx= _g77853_ 1))
                 (apply (lambda (_id77633_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77633_)))
                        _g77854_))
                ((let () (declare (not safe)) (##fx= _g77853_ 2))
                 (apply (lambda (_id77637_ _is?77638_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77637_ _is?77638_)))
                        _g77854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77854_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77607_ _e77608_ _make77609_)
        (let ((__tmp77855
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77608_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77608_
                   (_make77609_ _e77608_ _id77607_))))
          (declare (not safe))
          (hash-put! __core _id77607_ __tmp77855))))
    (define __core-bind-syntax!__0
      (lambda (_id77614_ _e77615_)
        (let ((_make77617_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77614_ _e77615_ _make77617_))))
    (define __core-bind-syntax!
      (lambda _g77857_
        (let ((_g77856_ (let () (declare (not safe)) (##length _g77857_))))
          (cond ((let () (declare (not safe)) (##fx= _g77856_ 2))
                 (apply (lambda (_id77614_ _e77615_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77614_ _e77615_)))
                        _g77857_))
                ((let () (declare (not safe)) (##fx= _g77856_ 3))
                 (apply (lambda (_id77619_ _e77620_ _make77621_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77619_
                             _e77620_
                             _make77621_)))
                        _g77857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77857_))))))
    (define __SRC__%
      (lambda (_e77590_ _src-stx77591_)
        (if (or (let () (declare (not safe)) (pair? _e77590_))
                (let () (declare (not safe)) (symbol? _e77590_)))
            (let ((__tmp77861
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77591_
                          'gerbil#AST::t))
                       (let ((__tmp77862
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77591_))))
                         (declare (not safe))
                         (__locat __tmp77862))
                       '#f)))
              (declare (not safe))
              (##make-source _e77590_ __tmp77861))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77590_ 'gerbil#AST::t))
                (let ((__tmp77860
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77590_ '1 AST::t '#f)))
                      (__tmp77858
                       (let ((__tmp77859
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77590_))))
                         (declare (not safe))
                         (__locat __tmp77859))))
                  (declare (not safe))
                  (##make-source __tmp77860 __tmp77858))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77590_))))))
    (define __SRC__0
      (lambda (_e77599_)
        (let ((_src-stx77601_ '#f))
          (declare (not safe))
          (__SRC__% _e77599_ _src-stx77601_))))
    (define __SRC
      (lambda _g77864_
        (let ((_g77863_ (let () (declare (not safe)) (##length _g77864_))))
          (cond ((let () (declare (not safe)) (##fx= _g77863_ 1))
                 (apply (lambda (_e77599_)
                          (let () (declare (not safe)) (__SRC__0 _e77599_)))
                        _g77864_))
                ((let () (declare (not safe)) (##fx= _g77863_ 2))
                 (apply (lambda (_e77603_ _src-stx77604_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77603_ _src-stx77604_)))
                        _g77864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77864_))))))
    (define __locat
      (lambda (_loc77587_)
        (if (let () (declare (not safe)) (##locat? _loc77587_))
            _loc77587_
            '#f)))
    (define __check-values
      (lambda (_obj77582_ _k77583_)
        (let ((_count77585_
               (if (let () (declare (not safe)) (##values? _obj77582_))
                   (let () (declare (not safe)) (##vector-length _obj77582_))
                   '1)))
          (if (fx= _count77585_ _k77583_)
              '#!void
              (let ((__tmp77866
                     (if (fx< _count77585_ _k77583_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77865
                     (if (let () (declare (not safe)) (##values? _obj77582_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77582_))
                         _obj77582_)))
                (declare (not safe))
                (error __tmp77866 __tmp77865 _k77583_))))))
    (define __compile
      (lambda (_stx77552_)
        (let* ((_$e77554_ _stx77552_)
               (_$E7755677562_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77554_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77554_))
              (let* ((_$tgt7755777565_
                      (let () (declare (not safe)) (__AST-e _$e77554_)))
                     (_$hd7755877568_
                      (let () (declare (not safe)) (##car _$tgt7755777565_)))
                     (_$tl7755977571_
                      (let () (declare (not safe)) (##cdr _$tgt7755777565_))))
                (let* ((_form77575_ _$hd7755877568_)
                       (_$e77577_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77575_))))
                  (if _$e77577_
                      ((lambda (_bind77580_)
                         ((##structure-ref _bind77580_ '1 __syntax::t '#f)
                          _stx77552_))
                       _$e77577_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77552_
                         _form77575_)))))
              (let () (declare (not safe)) (_$E7755677562_))))))
    (define __compile-error__%
      (lambda (_stx77539_ _detail77540_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77539_
           _detail77540_))))
    (define __compile-error__0
      (lambda (_stx77545_)
        (let ((_detail77547_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77545_ _detail77547_))))
    (define __compile-error
      (lambda _g77868_
        (let ((_g77867_ (let () (declare (not safe)) (##length _g77868_))))
          (cond ((let () (declare (not safe)) (##fx= _g77867_ 1))
                 (apply (lambda (_stx77545_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77545_)))
                        _g77868_))
                ((let () (declare (not safe)) (##fx= _g77867_ 2))
                 (apply (lambda (_stx77549_ _detail77550_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77549_ _detail77550_)))
                        _g77868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77868_))))))
    (define __compile-ignore%
      (lambda (_stx77536_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77536_))))
    (define __compile-begin%
      (lambda (_stx77511_)
        (let* ((_$e77513_ _stx77511_)
               (_$E7751577521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77513_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77513_))
              (let* ((_$tgt7751677524_
                      (let () (declare (not safe)) (__AST-e _$e77513_)))
                     (_$hd7751777527_
                      (let () (declare (not safe)) (##car _$tgt7751677524_)))
                     (_$tl7751877530_
                      (let () (declare (not safe)) (##cdr _$tgt7751677524_))))
                (let* ((_body77534_ _$tl7751877530_)
                       (__tmp77869
                        (let ((__tmp77870 (map __compile _body77534_)))
                          (declare (not safe))
                          (cons 'begin __tmp77870))))
                  (declare (not safe))
                  (__SRC__% __tmp77869 _stx77511_)))
              (let () (declare (not safe)) (_$E7751577521_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77486_)
        (let* ((_$e77488_ _stx77486_)
               (_$E7749077496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77488_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77488_))
              (let* ((_$tgt7749177499_
                      (let () (declare (not safe)) (__AST-e _$e77488_)))
                     (_$hd7749277502_
                      (let () (declare (not safe)) (##car _$tgt7749177499_)))
                     (_$tl7749377505_
                      (let () (declare (not safe)) (##cdr _$tgt7749177499_))))
                (let* ((_body77509_ _$tl7749377505_)
                       (__tmp77871
                        (let ((__tmp77872
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77509_))))
                          (declare (not safe))
                          (cons 'begin __tmp77872))))
                  (declare (not safe))
                  (__SRC__% __tmp77871 _stx77486_)))
              (let () (declare (not safe)) (_$E7749077496_))))))
    (define __compile-import%
      (lambda (_stx77461_)
        (let* ((_$e77463_ _stx77461_)
               (_$E7746577471_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77463_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77463_))
              (let* ((_$tgt7746677474_
                      (let () (declare (not safe)) (__AST-e _$e77463_)))
                     (_$hd7746777477_
                      (let () (declare (not safe)) (##car _$tgt7746677474_)))
                     (_$tl7746877480_
                      (let () (declare (not safe)) (##cdr _$tgt7746677474_))))
                (let* ((_body77484_ _$tl7746877480_)
                       (__tmp77873
                        (let ((__tmp77874
                               (let ((__tmp77875
                                      (let ((__tmp77876
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77484_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77876))))
                                 (declare (not safe))
                                 (cons __tmp77875 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77874))))
                  (declare (not safe))
                  (__SRC__% __tmp77873 _stx77461_)))
              (let () (declare (not safe)) (_$E7746577471_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77408_)
        (let* ((_$e77410_ _stx77408_)
               (_$E7741277424_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77410_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77410_))
              (let* ((_$tgt7741377427_
                      (let () (declare (not safe)) (__AST-e _$e77410_)))
                     (_$hd7741477430_
                      (let () (declare (not safe)) (##car _$tgt7741377427_)))
                     (_$tl7741577433_
                      (let () (declare (not safe)) (##cdr _$tgt7741377427_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7741577433_))
                    (let* ((_$tgt7741677437_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7741577433_)))
                           (_$hd7741777440_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7741677437_)))
                           (_$tl7741877443_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7741677437_))))
                      (let ((_ann77447_ _$hd7741777440_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7741877443_))
                            (let* ((_$tgt7741977449_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7741877443_)))
                                   (_$hd7742077452_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7741977449_)))
                                   (_$tl7742177455_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7741977449_))))
                              (let ((_expr77459_ _$hd7742077452_))
                                (if (let ((__tmp77877
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7742177455_))))
                                      (declare (not safe))
                                      (equal? __tmp77877 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77459_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7741277424_)))))
                            (let () (declare (not safe)) (_$E7741277424_)))))
                    (let () (declare (not safe)) (_$E7741277424_))))
              (let () (declare (not safe)) (_$E7741277424_))))))
    (define __compile-define-values%
      (lambda (_stx77299_)
        (let* ((_$e77301_ _stx77299_)
               (_$E7730377315_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77301_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77301_))
              (let* ((_$tgt7730477318_
                      (let () (declare (not safe)) (__AST-e _$e77301_)))
                     (_$hd7730577321_
                      (let () (declare (not safe)) (##car _$tgt7730477318_)))
                     (_$tl7730677324_
                      (let () (declare (not safe)) (##cdr _$tgt7730477318_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7730677324_))
                    (let* ((_$tgt7730777328_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7730677324_)))
                           (_$hd7730877331_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7730777328_)))
                           (_$tl7730977334_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7730777328_))))
                      (let ((_hd77338_ _$hd7730877331_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7730977334_))
                            (let* ((_$tgt7731077340_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7730977334_)))
                                   (_$hd7731177343_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7731077340_)))
                                   (_$tl7731277346_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7731077340_))))
                              (let ((_expr77350_ _$hd7731177343_))
                                (if (let ((__tmp77910
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7731277346_))))
                                      (declare (not safe))
                                      (equal? __tmp77910 '()))
                                    (let* ((_$e77352_ _hd77338_)
                                           (_$E7735477395_
                                            (lambda ()
                                              (let ((_$E7735577380_
                                                     (lambda ()
                                                       (let* ((_$E7735677367_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77352_))))
                      (_ids77370_ _hd77338_)
                      (_len77372_ (length _ids77370_))
                      (_tmp77374_
                       (let ((__tmp77878 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77878))))
                 (let ((__tmp77879
                        (let ((__tmp77880
                               (let ((__tmp77897
                                      (let ((__tmp77898
                                             (let ((__tmp77899
                                                    (let ((__tmp77900
                                                           (let ((__tmp77901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr77350_))))
                     (declare (not safe))
                     (cons __tmp77901 '()))))
              (declare (not safe))
              (cons _tmp77374_ __tmp77900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77899))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77898 _stx77299_)))
                                     (__tmp77881
                                      (let ((__tmp77893
                                             (let ((__tmp77894
                                                    (let ((__tmp77895
                                                           (let ((__tmp77896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len77372_ '()))))
                     (declare (not safe))
                     (cons _tmp77374_ __tmp77896))))
              (declare (not safe))
              (cons '__check-values __tmp77895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77894
                                                _stx77299_)))
                                            (__tmp77882
                                             (let ((__tmp77883
                                                    (let ((__tmp77885
                                                           (lambda (_id77377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k77378_)
                     (if (let () (declare (not safe)) (__AST-e _id77377_))
                         (let ((__tmp77886
                                (let ((__tmp77887
                                       (let ((__tmp77892
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id77377_)))
                                             (__tmp77888
                                              (let ((__tmp77889
                                                     (let ((__tmp77890
                                                            (let ((__tmp77891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k77378_ '()))))
                      (declare (not safe))
                      (cons _tmp77374_ __tmp77891))))
               (declare (not safe))
               (cons '##vector-ref __tmp77890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77889 '()))))
                                         (declare (not safe))
                                         (cons __tmp77892 __tmp77888))))
                                  (declare (not safe))
                                  (cons 'define __tmp77887))))
                           (declare (not safe))
                           (__SRC__% __tmp77886 _stx77299_))
                         '#f)))
                  (__tmp77884
                   (let () (declare (not safe)) (iota__0 _len77372_))))
              (declare (not safe))
              (filter-map2 __tmp77885 _ids77370_ __tmp77884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77883))))
                                        (declare (not safe))
                                        (cons __tmp77893 __tmp77882))))
                                 (declare (not safe))
                                 (cons __tmp77897 __tmp77881))))
                          (declare (not safe))
                          (cons 'begin __tmp77880))))
                   (declare (not safe))
                   (__SRC__% __tmp77879 _stx77299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77352_))
                                                    (let* ((_$tgt7735777383_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77352_)))
                                                           (_$hd7735877386_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7735777383_)))
                                                           (_$tl7735977389_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7735777383_))))
                                                      (let ((_id77393_
                                                             _$hd7735877386_))
                                                        (if (let ((__tmp77907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7735977389_))))
                      (declare (not safe))
                      (equal? __tmp77907 '()))
                    (let ((__tmp77902
                           (let ((__tmp77903
                                  (let ((__tmp77906
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77393_)))
                                        (__tmp77904
                                         (let ((__tmp77905
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr77350_))))
                                           (declare (not safe))
                                           (cons __tmp77905 '()))))
                                    (declare (not safe))
                                    (cons __tmp77906 __tmp77904))))
                             (declare (not safe))
                             (cons 'define __tmp77903))))
                      (declare (not safe))
                      (__SRC__% __tmp77902 _stx77299_))
                    (let () (declare (not safe)) (_$E7735577380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7735577380_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77352_))
                                          (let* ((_$tgt7736077398_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77352_)))
                                                 (_$hd7736177401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7736077398_)))
                                                 (_$tl7736277404_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7736077398_))))
                                            (if (let ((__tmp77909
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7736177401_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77909 '#f))
                                                (if (let ((__tmp77908
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7736277404_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77908 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77350_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7735477395_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7735477395_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7735477395_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7730377315_)))))
                            (let () (declare (not safe)) (_$E7730377315_)))))
                    (let () (declare (not safe)) (_$E7730377315_))))
              (let () (declare (not safe)) (_$E7730377315_))))))
    (define __compile-head-id
      (lambda (_e77297_)
        (let ((__tmp77911
               (if (let () (declare (not safe)) (__AST-e _e77297_))
                   _e77297_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77911))))
    (define __compile-lambda-head
      (lambda (_hd77254_)
        (let _recur77256_ ((_rest77258_ _hd77254_))
          (let* ((_$e77260_ _rest77258_)
                 (_$E7726277280_
                  (lambda ()
                    (let ((_$E7726377277_
                           (lambda ()
                             (let* ((_$E7726477272_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77260_))))
                                    (_tail77275_ _$e77260_))
                               (declare (not safe))
                               (__compile-head-id _tail77275_)))))
                      (if (let ((__tmp77912
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e77260_))))
                            (declare (not safe))
                            (equal? __tmp77912 '()))
                          '()
                          (let () (declare (not safe)) (_$E7726377277_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77260_))
                (let* ((_$tgt7726577283_
                        (let () (declare (not safe)) (__AST-e _$e77260_)))
                       (_$hd7726677286_
                        (let () (declare (not safe)) (##car _$tgt7726577283_)))
                       (_$tl7726777289_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7726577283_))))
                  (let* ((_hd77293_ _$hd7726677286_)
                         (_rest77295_ _$tl7726777289_))
                    (let ((__tmp77914
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd77293_)))
                          (__tmp77913
                           (let ()
                             (declare (not safe))
                             (_recur77256_ _rest77295_))))
                      (declare (not safe))
                      (cons __tmp77914 __tmp77913))))
                (let () (declare (not safe)) (_$E7726277280_)))))))
    (define __compile-lambda%
      (lambda (_stx77201_)
        (let* ((_$e77203_ _stx77201_)
               (_$E7720577217_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77203_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77203_))
              (let* ((_$tgt7720677220_
                      (let () (declare (not safe)) (__AST-e _$e77203_)))
                     (_$hd7720777223_
                      (let () (declare (not safe)) (##car _$tgt7720677220_)))
                     (_$tl7720877226_
                      (let () (declare (not safe)) (##cdr _$tgt7720677220_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7720877226_))
                    (let* ((_$tgt7720977230_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7720877226_)))
                           (_$hd7721077233_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7720977230_)))
                           (_$tl7721177236_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7720977230_))))
                      (let ((_hd77240_ _$hd7721077233_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7721177236_))
                            (let* ((_$tgt7721277242_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7721177236_)))
                                   (_$hd7721377245_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7721277242_)))
                                   (_$tl7721477248_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7721277242_))))
                              (let ((_body77252_ _$hd7721377245_))
                                (if (let ((__tmp77920
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7721477248_))))
                                      (declare (not safe))
                                      (equal? __tmp77920 '()))
                                    (let ((__tmp77915
                                           (let ((__tmp77916
                                                  (let ((__tmp77919
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd77240_)))
                                                        (__tmp77917
                                                         (let ((__tmp77918
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body77252_))))
                   (declare (not safe))
                   (cons __tmp77918 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77919
                                                          __tmp77917))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77916))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77915 _stx77201_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7720577217_)))))
                            (let () (declare (not safe)) (_$E7720577217_)))))
                    (let () (declare (not safe)) (_$E7720577217_))))
              (let () (declare (not safe)) (_$E7720577217_))))))
    (define __compile-case-lambda%
      (lambda (_stx76993_)
        (letrec ((_variadic?76995_
                  (lambda (_hd77166_)
                    (let* ((_$e77168_ _hd77166_)
                           (_$E7717077186_
                            (lambda ()
                              (let ((_$E7717177183_
                                     (lambda ()
                                       (let ((_$E7717277180_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77168_)))))
                                         '#t))))
                                (if (let ((__tmp77921
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e77168_))))
                                      (declare (not safe))
                                      (equal? __tmp77921 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7717177183_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77168_))
                          (let* ((_$tgt7717377189_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77168_)))
                                 (_$hd7717477192_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7717377189_)))
                                 (_$tl7717577195_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7717377189_))))
                            (let ((_rest77199_ _$tl7717577195_))
                              (declare (not safe))
                              (_variadic?76995_ _rest77199_)))
                          (let () (declare (not safe)) (_$E7717077186_))))))
                 (_arity76996_
                  (lambda (_hd77131_)
                    (let _lp77133_ ((_rest77135_ _hd77131_) (_k77136_ '0))
                      (let* ((_$e77138_ _rest77135_)
                             (_$E7714077151_
                              (lambda ()
                                (let ((_$E7714177148_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77138_)))))
                                  _k77136_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77138_))
                            (let* ((_$tgt7714277154_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77138_)))
                                   (_$hd7714377157_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7714277154_)))
                                   (_$tl7714477160_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7714277154_))))
                              (let* ((_rest77164_ _$tl7714477160_)
                                     (__tmp77922
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k77136_ '1))))
                                (declare (not safe))
                                (_lp77133_ _rest77164_ __tmp77922)))
                            (let () (declare (not safe)) (_$E7714077151_)))))))
                 (_generate76997_
                  (lambda (_rest77058_ _args77059_ _len77060_)
                    (let* ((_$e77062_ _rest77058_)
                           (_$E7706477075_
                            (lambda ()
                              (let* ((_$E7706577072_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77062_))))
                                     (__tmp77923
                                      (let ((__tmp77924
                                             (let ((__tmp77925
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args77059_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77925))))
                                        (declare (not safe))
                                        (cons 'error __tmp77924))))
                                (declare (not safe))
                                (__SRC__% __tmp77923 _stx76993_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77062_))
                          (let* ((_$tgt7706677078_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77062_)))
                                 (_$hd7706777081_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7706677078_)))
                                 (_$tl7706877084_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7706677078_))))
                            (let* ((_clause77088_ _$hd7706777081_)
                                   (_rest77090_ _$tl7706877084_)
                                   (_$e77092_ _clause77088_)
                                   (_$E7709477103_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77092_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77092_))
                                  (let* ((_$tgt7709577106_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77092_)))
                                         (_$hd7709677109_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7709577106_)))
                                         (_$tl7709777112_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7709577106_))))
                                    (let ((_hd77116_ _$hd7709677109_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7709777112_))
                                          (let* ((_$tgt7709877118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7709777112_)))
                                                 (_$hd7709977121_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7709877118_)))
                                                 (_$tl7710077124_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7709877118_))))
                                            (if (let ((__tmp77940
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7710077124_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77940 '()))
                                                (let ((_clen77128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76996_
                                                          _hd77116_)))
                                                      (_cmp77129_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76995_
                                                              _hd77116_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77926
                                                         (let ((__tmp77927
                                                                (let ((__tmp77937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77938
                                      (let ((__tmp77939
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen77128_ '()))))
                                        (declare (not safe))
                                        (cons _len77060_ __tmp77939))))
                                 (declare (not safe))
                                 (cons _cmp77129_ __tmp77938)))
                              (__tmp77928
                               (let ((__tmp77931
                                      (let ((__tmp77932
                                             (let ((__tmp77933
                                                    (let ((__tmp77935
                                                           (let ((__tmp77936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause77088_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77936)))
                  (__tmp77934
                   (let () (declare (not safe)) (cons _args77059_ '()))))
              (declare (not safe))
              (cons __tmp77935 __tmp77934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77933))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77932 _stx76993_)))
                                     (__tmp77929
                                      (let ((__tmp77930
                                             (let ()
                                               (declare (not safe))
                                               (_generate76997_
                                                _rest77090_
                                                _args77059_
                                                _len77060_))))
                                        (declare (not safe))
                                        (cons __tmp77930 '()))))
                                 (declare (not safe))
                                 (cons __tmp77931 __tmp77929))))
                          (declare (not safe))
                          (cons __tmp77937 __tmp77928))))
                   (declare (not safe))
                   (cons 'if __tmp77927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77926
                                                     _stx76993_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7709477103_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7709477103_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7709477103_)))))
                          (let () (declare (not safe)) (_$E7706477075_)))))))
          (let* ((_$e76999_ _stx76993_)
                 (_$E7700177033_
                  (lambda ()
                    (let ((_$E7700277015_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76999_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76999_))
                          (let* ((_$tgt7700377018_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76999_)))
                                 (_$hd7700477021_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7700377018_)))
                                 (_$tl7700577024_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7700377018_))))
                            (let ((_clauses77028_ _$tl7700577024_))
                              (let ((_args77030_
                                     (let ((__tmp77941 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77941 _stx76993_)))
                                    (_len77031_
                                     (let ((__tmp77942 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77942 _stx76993_))))
                                (let ((__tmp77943
                                       (let ((__tmp77944
                                              (let ((__tmp77945
                                                     (let ((__tmp77946
                                                            (let ((__tmp77947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77948
                                  (let ((__tmp77951
                                         (let ((__tmp77952
                                                (let ((__tmp77953
                                                       (let ((__tmp77954
                                                              (let ((__tmp77955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77956
                                    (let ()
                                      (declare (not safe))
                                      (cons _args77030_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77956))))
                        (declare (not safe))
                        (__SRC__% __tmp77955 _stx76993_))))
                 (declare (not safe))
                 (cons __tmp77954 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len77031_
                                                        __tmp77953))))
                                           (declare (not safe))
                                           (cons __tmp77952 '())))
                                        (__tmp77949
                                         (let ((__tmp77950
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate76997_
                                                   _clauses77028_
                                                   _args77030_
                                                   _len77031_))))
                                           (declare (not safe))
                                           (cons __tmp77950 '()))))
                                    (declare (not safe))
                                    (cons __tmp77951 __tmp77949))))
                             (declare (not safe))
                             (cons 'let __tmp77948))))
                      (declare (not safe))
                      (__SRC__% __tmp77947 _stx76993_))))
               (declare (not safe))
               (cons __tmp77946 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args77030_
                                                      __tmp77945))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77944))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77943 _stx76993_)))))
                          (let () (declare (not safe)) (_$E7700277015_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76999_))
                (let* ((_$tgt7700677036_
                        (let () (declare (not safe)) (__AST-e _$e76999_)))
                       (_$hd7700777039_
                        (let () (declare (not safe)) (##car _$tgt7700677036_)))
                       (_$tl7700877042_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7700677036_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7700877042_))
                      (let* ((_$tgt7700977046_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7700877042_)))
                             (_$hd7701077049_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7700977046_)))
                             (_$tl7701177052_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7700977046_))))
                        (let ((_clause77056_ _$hd7701077049_))
                          (if (let ((__tmp77958
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7701177052_))))
                                (declare (not safe))
                                (equal? __tmp77958 '()))
                              (let ((__tmp77957
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause77056_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77957))
                              (let () (declare (not safe)) (_$E7700177033_)))))
                      (let () (declare (not safe)) (_$E7700177033_))))
                (let () (declare (not safe)) (_$E7700177033_)))))))
    (define __compile-let-form
      (lambda (_stx76762_ _compile-simple76763_ _compile-values76764_)
        (letrec ((_simple-bind?76766_
                  (lambda (_hd76951_)
                    (let* ((_hd7695276962_ _hd76951_)
                           (_else7695576970_ (lambda () '#f)))
                      (let ((_K7695876983_ (lambda (_id76981_) '#t))
                            (_K7695776975_ (lambda () '#t)))
                        (let ((_try-match7695476978_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7695276962_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7695776975_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7695576970_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7695276962_))
                              (let ((_tl7696076988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7695276962_)))
                                    (_hd7695976986_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7695276962_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7696076988_))
                                    (let ((_id76991_ _hd7695976986_))
                                      (declare (not safe))
                                      (_K7695876983_ _id76991_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7695476978_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7695476978_))))))))
                 (_car-e76767_
                  (lambda (_hd76949_)
                    (if (let () (declare (not safe)) (pair? _hd76949_))
                        (car _hd76949_)
                        _hd76949_))))
          (let* ((_$e76769_ _stx76762_)
                 (_$E7677176914_
                  (lambda ()
                    (let ((_$E7677276794_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76769_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76769_))
                          (let* ((_$tgt7677376797_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76769_)))
                                 (_$hd7677476800_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7677376797_)))
                                 (_$tl7677576803_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7677376797_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7677576803_))
                                (let* ((_$tgt7677676807_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7677576803_)))
                                       (_$hd7677776810_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7677676807_)))
                                       (_$tl7677876813_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7677676807_))))
                                  (let ((_hd76817_ _$hd7677776810_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7677876813_))
                                        (let* ((_$tgt7677976819_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7677876813_)))
                                               (_$hd7678076822_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7677976819_)))
                                               (_$tl7678176825_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7677976819_))))
                                          (let ((_body76829_ _$hd7678076822_))
                                            (if (let ((__tmp77961
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7678176825_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77961 '()))
                                                (let* ((_hd-ids76869_
                                                        (map (lambda (_bind76831_)
                                                               (let* ((_$e76833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76831_)
                              (_$E7683576844_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76833_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76833_))
                             (let* ((_$tgt7683676847_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76833_)))
                                    (_$hd7683776850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7683676847_)))
                                    (_$tl7683876853_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7683676847_))))
                               (let ((_ids76857_ _$hd7683776850_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7683876853_))
                                     (let* ((_$tgt7683976859_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7683876853_)))
                                            (_$hd7684076862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7683976859_)))
                                            (_$tl7684176865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7683976859_))))
                                       (if (let ((__tmp77959
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7684176865_))))
                                             (declare (not safe))
                                             (equal? __tmp77959 '()))
                                           _ids76857_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7683576844_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7683576844_)))))
                             (let () (declare (not safe)) (_$E7683576844_)))))
                     _hd76817_))
               (_exprs76909_
                (map (lambda (_bind76871_)
                       (let* ((_$e76873_ _bind76871_)
                              (_$E7687576884_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76873_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76873_))
                             (let* ((_$tgt7687676887_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76873_)))
                                    (_$hd7687776890_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7687676887_)))
                                    (_$tl7687876893_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7687676887_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7687876893_))
                                   (let* ((_$tgt7687976897_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7687876893_)))
                                          (_$hd7688076900_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7687976897_)))
                                          (_$tl7688176903_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7687976897_))))
                                     (let ((_expr76907_ _$hd7688076900_))
                                       (if (let ((__tmp77960
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7688176903_))))
                                             (declare (not safe))
                                             (equal? __tmp77960 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76907_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7687576884_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7687576884_))))
                             (let () (declare (not safe)) (_$E7687576884_)))))
                     _hd76817_))
               (_body76911_
                (let () (declare (not safe)) (__compile _body76829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76869_))
              (_compile-simple76763_
               (map _car-e76767_ _hd-ids76869_)
               _exprs76909_
               _body76911_)
              (_compile-values76764_ _hd-ids76869_ _exprs76909_ _body76911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7677276794_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7677276794_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7677276794_))))
                          (let () (declare (not safe)) (_$E7677276794_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76769_))
                (let* ((_$tgt7678276917_
                        (let () (declare (not safe)) (__AST-e _$e76769_)))
                       (_$hd7678376920_
                        (let () (declare (not safe)) (##car _$tgt7678276917_)))
                       (_$tl7678476923_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7678276917_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7678476923_))
                      (let* ((_$tgt7678576927_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7678476923_)))
                             (_$hd7678676930_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7678576927_)))
                             (_$tl7678776933_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7678576927_))))
                        (if (let ((__tmp77963
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7678676930_))))
                              (declare (not safe))
                              (equal? __tmp77963 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7678776933_))
                                (let* ((_$tgt7678876937_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7678776933_)))
                                       (_$hd7678976940_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7678876937_)))
                                       (_$tl7679076943_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7678876937_))))
                                  (let ((_body76947_ _$hd7678976940_))
                                    (if (let ((__tmp77962
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7679076943_))))
                                          (declare (not safe))
                                          (equal? __tmp77962 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76947_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7677176914_)))))
                                (let () (declare (not safe)) (_$E7677176914_)))
                            (let () (declare (not safe)) (_$E7677176914_))))
                      (let () (declare (not safe)) (_$E7677176914_))))
                (let () (declare (not safe)) (_$E7677176914_)))))))
    (define __compile-let-values%
      (lambda (_stx76577_)
        (letrec ((_compile-simple76579_
                  (lambda (_hd-ids76758_ _exprs76759_ _body76760_)
                    (let ((__tmp77964
                           (let ((__tmp77965
                                  (let ((__tmp77967
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76758_)
                                              _exprs76759_))
                                        (__tmp77966
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76760_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77967 __tmp77966))))
                             (declare (not safe))
                             (cons 'let __tmp77965))))
                      (declare (not safe))
                      (__SRC__% __tmp77964 _stx76577_))))
                 (_compile-values76580_
                  (lambda (_hd-ids76676_ _exprs76677_ _body76678_)
                    (let _lp76680_ ((_rest76682_ _hd-ids76676_)
                                    (_exprs76683_ _exprs76677_)
                                    (_bind76684_ '())
                                    (_post76685_ '()))
                      (let* ((_rest7668676700_ _rest76682_)
                             (_else7668976708_
                              (lambda ()
                                (let ((__tmp77968
                                       (let ((__tmp77969
                                              (let ((__tmp77972
                                                     (reverse _bind76684_))
                                                    (__tmp77970
                                                     (let ((__tmp77971
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76581_
                                                               _post76685_
                                                               _body76678_))))
                                                       (declare (not safe))
                                                       (cons __tmp77971 '()))))
                                                (declare (not safe))
                                                (cons __tmp77972 __tmp77970))))
                                         (declare (not safe))
                                         (cons 'let __tmp77969))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77968 _stx76577_)))))
                        (let ((_K7669476741_
                               (lambda (_rest76738_ _id76739_)
                                 (let ((__tmp77978 (cdr _exprs76683_))
                                       (__tmp77973
                                        (let ((__tmp77974
                                               (let ((__tmp77977
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76739_)))
                                                     (__tmp77975
                                                      (let ((__tmp77976
                                                             (car _exprs76683_)))
                                                        (declare (not safe))
                                                        (cons __tmp77976
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77977
                                                       __tmp77975))))
                                          (declare (not safe))
                                          (cons __tmp77974 _bind76684_))))
                                   (declare (not safe))
                                   (_lp76680_
                                    _rest76738_
                                    __tmp77978
                                    __tmp77973
                                    _post76685_))))
                              (_K7669176723_
                               (lambda (_rest76712_ _hd76713_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76713_))
                                     (let ((__tmp77999 (cdr _exprs76683_))
                                           (__tmp77992
                                            (let ((__tmp77993
                                                   (let ((__tmp77998
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76713_)))
                                                         (__tmp77994
                                                          (let ((__tmp77995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77996
                                (let ((__tmp77997 (car _exprs76683_)))
                                  (declare (not safe))
                                  (cons __tmp77997 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77996))))
                    (declare (not safe))
                    (cons __tmp77995 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77998
                                                           __tmp77994))))
                                              (declare (not safe))
                                              (cons __tmp77993 _bind76684_))))
                                       (declare (not safe))
                                       (_lp76680_
                                        _rest76712_
                                        __tmp77999
                                        __tmp77992
                                        _post76685_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76713_))
                                         (let* ((_len76715_ (length _hd76713_))
                                                (_tmp76717_
                                                 (let ((__tmp77979 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77979))))
                                           (let ((__tmp77991
                                                  (cdr _exprs76683_))
                                                 (__tmp77987
                                                  (let ((__tmp77988
                                                         (let ((__tmp77989
                                                                (let ((__tmp77990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76683_)))
                          (declare (not safe))
                          (cons __tmp77990 '()))))
                   (declare (not safe))
                   (cons _tmp76717_ __tmp77989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77988
                                                          _bind76684_)))
                                                 (__tmp77980
                                                  (let ((__tmp77981
                                                         (let ((__tmp77982
                                                                (let ((__tmp77983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77985
                                      (lambda (_id76720_ _k76721_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76720_))
                                            (let ((__tmp77986
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76720_))))
                                              (declare (not safe))
                                              (cons __tmp77986 _k76721_))
                                            '#f)))
                                     (__tmp77984
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76715_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77985
                                  _hd76713_
                                  __tmp77984))))
                          (declare (not safe))
                          (cons _len76715_ __tmp77983))))
                   (declare (not safe))
                   (cons _tmp76717_ __tmp77982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77981
                                                          _post76685_))))
                                             (declare (not safe))
                                             (_lp76680_
                                              _rest76712_
                                              __tmp77991
                                              __tmp77987
                                              __tmp77980)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76577_
                                            _hd76713_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7668676700_))
                              (let ((_tl7669676746_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7668676700_)))
                                    (_hd7669576744_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7668676700_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7669576744_))
                                    (let ((_tl7669876751_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7669576744_)))
                                          (_hd7669776749_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7669576744_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7669876751_))
                                          (let ((_id76754_ _hd7669776749_)
                                                (_rest76756_ _tl7669676746_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7669476741_
                                               _rest76756_
                                               _id76754_)))
                                          (let ((_hd76731_ _hd7669576744_)
                                                (_rest76733_ _tl7669676746_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7669176723_
                                               _rest76733_
                                               _hd76731_)))))
                                    (let ((_hd76731_ _hd7669576744_)
                                          (_rest76733_ _tl7669676746_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7669176723_
                                         _rest76733_
                                         _hd76731_)))))
                              (let ()
                                (declare (not safe))
                                (_else7668976708_))))))))
                 (_compile-post76581_
                  (lambda (_post76583_ _body76584_)
                    (let _lp76586_ ((_rest76588_ _post76583_)
                                    (_check76589_ '())
                                    (_bind76590_ '()))
                      (let* ((_rest7659176603_ _rest76588_)
                             (_else7659376611_
                              (lambda ()
                                (let ((__tmp78000
                                       (let ((__tmp78001
                                              (let ((__tmp78002
                                                     (let ((__tmp78003
                                                            (let ((__tmp78004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78005
                                  (let ((__tmp78006
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76584_ '()))))
                                    (declare (not safe))
                                    (cons _bind76590_ __tmp78006))))
                             (declare (not safe))
                             (cons 'let __tmp78005))))
                      (declare (not safe))
                      (__SRC__% __tmp78004 _stx76577_))))
               (declare (not safe))
               (cons __tmp78003 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78002
                                                        _check76589_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78001))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78000 _stx76577_))))
                             (_K7659576650_
                              (lambda (_rest76614_
                                       _init76615_
                                       _len76616_
                                       _tmp76617_)
                                (let ((__tmp78014
                                       (let ((__tmp78015
                                              (let ((__tmp78016
                                                     (let ((__tmp78017
                                                            (let ((__tmp78018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76616_ '()))))
                      (declare (not safe))
                      (cons _tmp76617_ __tmp78018))))
               (declare (not safe))
               (cons '__check-values __tmp78017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78016
                                                 _stx76577_))))
                                         (declare (not safe))
                                         (cons __tmp78015 _check76589_)))
                                      (__tmp78007
                                       (let ((__tmp78008
                                              (lambda (_hd76619_ _r76620_)
                                                (let* ((_hd7662176628_
                                                        _hd76619_)
                                                       (_E7662376632_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7662176628_))))
               (_K7662476638_
                (lambda (_k76635_ _id76636_)
                  (let ((__tmp78009
                         (let ((__tmp78010
                                (let ((__tmp78011
                                       (let ((__tmp78012
                                              (let ((__tmp78013
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76635_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76617_ __tmp78013))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp78012))))
                                  (declare (not safe))
                                  (cons __tmp78011 '()))))
                           (declare (not safe))
                           (cons _id76636_ __tmp78010))))
                    (declare (not safe))
                    (cons __tmp78009 _r76620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7662176628_))
                                                      (let ((_hd7662576641_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7662176628_)))
                    (_tl7662676643_
                     (let () (declare (not safe)) (##cdr _hd7662176628_))))
                (let* ((_id76646_ _hd7662576641_) (_k76648_ _tl7662676643_))
                  (declare (not safe))
                  (_K7662476638_ _k76648_ _id76646_)))
              (let () (declare (not safe)) (_E7662376632_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78008
                                                 _bind76590_
                                                 _init76615_))))
                                  (declare (not safe))
                                  (_lp76586_
                                   _rest76614_
                                   __tmp78014
                                   __tmp78007)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7659176603_))
                            (let ((_hd7659676653_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7659176603_)))
                                  (_tl7659776655_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7659176603_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7659676653_))
                                  (let ((_hd7659876658_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7659676653_)))
                                        (_tl7659976660_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7659676653_))))
                                    (let ((_tmp76663_ _hd7659876658_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7659976660_))
                                          (let ((_hd7660076665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7659976660_)))
                                                (_tl7660176667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7659976660_))))
                                            (let* ((_len76670_ _hd7660076665_)
                                                   (_init76672_ _tl7660176667_)
                                                   (_rest76674_
                                                    _tl7659776655_))
                                              (declare (not safe))
                                              (_K7659576650_
                                               _rest76674_
                                               _init76672_
                                               _len76670_
                                               _tmp76663_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7659376611_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7659376611_))))
                            (let ()
                              (declare (not safe))
                              (_else7659376611_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76577_
             _compile-simple76579_
             _compile-values76580_)))))
    (define __compile-letrec-values%
      (lambda (_stx76377_)
        (letrec ((_compile-simple76379_
                  (lambda (_hd-ids76573_ _exprs76574_ _body76575_)
                    (let ((__tmp78019
                           (let ((__tmp78020
                                  (let ((__tmp78022
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76573_)
                                              _exprs76574_))
                                        (__tmp78021
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76575_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78022 __tmp78021))))
                             (declare (not safe))
                             (cons 'letrec __tmp78020))))
                      (declare (not safe))
                      (__SRC__% __tmp78019 _stx76377_))))
                 (_compile-values76380_
                  (lambda (_hd-ids76487_ _exprs76488_ _body76489_)
                    (let _lp76491_ ((_rest76493_ _hd-ids76487_)
                                    (_exprs76494_ _exprs76488_)
                                    (_pre76495_ '())
                                    (_bind76496_ '())
                                    (_post76497_ '()))
                      (let* ((_rest7649876512_ _rest76493_)
                             (_else7650176520_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76381_
                                   _pre76495_
                                   _bind76496_
                                   _post76497_
                                   _body76489_)))))
                        (let ((_K7650676556_
                               (lambda (_rest76553_ _id76554_)
                                 (let ((__tmp78028 (cdr _exprs76494_))
                                       (__tmp78023
                                        (let ((__tmp78024
                                               (let ((__tmp78027
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76554_)))
                                                     (__tmp78025
                                                      (let ((__tmp78026
                                                             (car _exprs76494_)))
                                                        (declare (not safe))
                                                        (cons __tmp78026
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78027
                                                       __tmp78025))))
                                          (declare (not safe))
                                          (cons __tmp78024 _bind76496_))))
                                   (declare (not safe))
                                   (_lp76491_
                                    _rest76553_
                                    __tmp78028
                                    _pre76495_
                                    __tmp78023
                                    _post76497_))))
                              (_K7650376538_
                               (lambda (_rest76524_ _hd76525_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76525_))
                                     (let ((__tmp78056 (cdr _exprs76494_))
                                           (__tmp78049
                                            (let ((__tmp78050
                                                   (let ((__tmp78055
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76525_)))
                                                         (__tmp78051
                                                          (let ((__tmp78052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78053
                                (let ((__tmp78054 (car _exprs76494_)))
                                  (declare (not safe))
                                  (cons __tmp78054 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78053))))
                    (declare (not safe))
                    (cons __tmp78052 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78055
                                                           __tmp78051))))
                                              (declare (not safe))
                                              (cons __tmp78050 _bind76496_))))
                                       (declare (not safe))
                                       (_lp76491_
                                        _rest76524_
                                        __tmp78056
                                        _pre76495_
                                        __tmp78049
                                        _post76497_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76525_))
                                         (let* ((_len76527_ (length _hd76525_))
                                                (_tmp76529_
                                                 (let ((__tmp78029 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78029))))
                                           (let ((__tmp78048
                                                  (cdr _exprs76494_))
                                                 (__tmp78041
                                                  (let ((__tmp78042
                                                         (lambda (_id76532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76533_)
                   (if (let () (declare (not safe)) (__AST-e _id76532_))
                       (let ((__tmp78043
                              (let ((__tmp78047
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76532_)))
                                    (__tmp78044
                                     (let ((__tmp78045
                                            (let ((__tmp78046
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp78046))))
                                       (declare (not safe))
                                       (cons __tmp78045 '()))))
                                (declare (not safe))
                                (cons __tmp78047 __tmp78044))))
                         (declare (not safe))
                         (cons __tmp78043 _r76533_))
                       _r76533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp78042
                                                            _pre76495_
                                                            _hd76525_)))
                                                 (__tmp78037
                                                  (let ((__tmp78038
                                                         (let ((__tmp78039
                                                                (let ((__tmp78040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76494_)))
                          (declare (not safe))
                          (cons __tmp78040 '()))))
                   (declare (not safe))
                   (cons _tmp76529_ __tmp78039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78038
                                                          _bind76496_)))
                                                 (__tmp78030
                                                  (let ((__tmp78031
                                                         (let ((__tmp78032
                                                                (let ((__tmp78033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78035
                                      (lambda (_id76535_ _k76536_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76535_))
                                            (let ((__tmp78036
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76535_))))
                                              (declare (not safe))
                                              (cons __tmp78036 _k76536_))
                                            '#f)))
                                     (__tmp78034
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76527_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78035
                                  _hd76525_
                                  __tmp78034))))
                          (declare (not safe))
                          (cons _len76527_ __tmp78033))))
                   (declare (not safe))
                   (cons _tmp76529_ __tmp78032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78031
                                                          _post76497_))))
                                             (declare (not safe))
                                             (_lp76491_
                                              _rest76524_
                                              __tmp78048
                                              __tmp78041
                                              __tmp78037
                                              __tmp78030)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76377_
                                            _hd76525_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7649876512_))
                              (let ((_tl7650876561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7649876512_)))
                                    (_hd7650776559_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7649876512_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7650776559_))
                                    (let ((_tl7651076566_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7650776559_)))
                                          (_hd7650976564_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7650776559_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7651076566_))
                                          (let ((_id76569_ _hd7650976564_)
                                                (_rest76571_ _tl7650876561_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7650676556_
                                               _rest76571_
                                               _id76569_)))
                                          (let ((_hd76546_ _hd7650776559_)
                                                (_rest76548_ _tl7650876561_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7650376538_
                                               _rest76548_
                                               _hd76546_)))))
                                    (let ((_hd76546_ _hd7650776559_)
                                          (_rest76548_ _tl7650876561_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7650376538_
                                         _rest76548_
                                         _hd76546_)))))
                              (let ()
                                (declare (not safe))
                                (_else7650176520_))))))))
                 (_compile-inner76381_
                  (lambda (_pre76482_ _bind76483_ _post76484_ _body76485_)
                    (if (let () (declare (not safe)) (null? _pre76482_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76382_
                           _bind76483_
                           _post76484_
                           _body76485_))
                        (let ((__tmp78057
                               (let ((__tmp78058
                                      (let ((__tmp78061 (reverse _pre76482_))
                                            (__tmp78059
                                             (let ((__tmp78060
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind76382_
                                                       _bind76483_
                                                       _post76484_
                                                       _body76485_))))
                                               (declare (not safe))
                                               (cons __tmp78060 '()))))
                                        (declare (not safe))
                                        (cons __tmp78061 __tmp78059))))
                                 (declare (not safe))
                                 (cons 'let __tmp78058))))
                          (declare (not safe))
                          (__SRC__% __tmp78057 _stx76377_)))))
                 (_compile-bind76382_
                  (lambda (_bind76478_ _post76479_ _body76480_)
                    (let ((__tmp78062
                           (let ((__tmp78063
                                  (let ((__tmp78066 (reverse _bind76478_))
                                        (__tmp78064
                                         (let ((__tmp78065
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76383_
                                                   _post76479_
                                                   _body76480_))))
                                           (declare (not safe))
                                           (cons __tmp78065 '()))))
                                    (declare (not safe))
                                    (cons __tmp78066 __tmp78064))))
                             (declare (not safe))
                             (cons 'letrec __tmp78063))))
                      (declare (not safe))
                      (__SRC__% __tmp78062 _stx76377_))))
                 (_compile-post76383_
                  (lambda (_post76385_ _body76386_)
                    (let _lp76388_ ((_rest76390_ _post76385_)
                                    (_check76391_ '())
                                    (_bind76392_ '()))
                      (let* ((_rest7639376405_ _rest76390_)
                             (_else7639576413_
                              (lambda ()
                                (let ((__tmp78067
                                       (let ((__tmp78068
                                              (let ((__tmp78069
                                                     (let ((__tmp78070
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body76386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp78070 _bind76392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78069
                                                        _check76391_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78068))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78067 _stx76377_))))
                             (_K7639776452_
                              (lambda (_rest76416_
                                       _init76417_
                                       _len76418_
                                       _tmp76419_)
                                (let ((__tmp78079
                                       (let ((__tmp78080
                                              (let ((__tmp78081
                                                     (let ((__tmp78082
                                                            (let ((__tmp78083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76418_ '()))))
                      (declare (not safe))
                      (cons _tmp76419_ __tmp78083))))
               (declare (not safe))
               (cons '__check-values __tmp78082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78081
                                                 _stx76377_))))
                                         (declare (not safe))
                                         (cons __tmp78080 _check76391_)))
                                      (__tmp78071
                                       (let ((__tmp78072
                                              (lambda (_hd76421_ _r76422_)
                                                (let* ((_hd7642376430_
                                                        _hd76421_)
                                                       (_E7642576434_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7642376430_))))
               (_K7642676440_
                (lambda (_k76437_ _id76438_)
                  (let ((__tmp78073
                         (let ((__tmp78074
                                (let ((__tmp78075
                                       (let ((__tmp78076
                                              (let ((__tmp78077
                                                     (let ((__tmp78078
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76419_ __tmp78078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp78077))))
                                         (declare (not safe))
                                         (cons __tmp78076 '()))))
                                  (declare (not safe))
                                  (cons _id76438_ __tmp78075))))
                           (declare (not safe))
                           (cons 'set! __tmp78074))))
                    (declare (not safe))
                    (cons __tmp78073 _r76422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7642376430_))
                                                      (let ((_hd7642776443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7642376430_)))
                    (_tl7642876445_
                     (let () (declare (not safe)) (##cdr _hd7642376430_))))
                (let* ((_id76448_ _hd7642776443_) (_k76450_ _tl7642876445_))
                  (declare (not safe))
                  (_K7642676440_ _k76450_ _id76448_)))
              (let () (declare (not safe)) (_E7642576434_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78072
                                                 _bind76392_
                                                 _init76417_))))
                                  (declare (not safe))
                                  (_lp76388_
                                   _rest76416_
                                   __tmp78079
                                   __tmp78071)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7639376405_))
                            (let ((_hd7639876455_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7639376405_)))
                                  (_tl7639976457_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7639376405_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7639876455_))
                                  (let ((_hd7640076460_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7639876455_)))
                                        (_tl7640176462_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7639876455_))))
                                    (let ((_tmp76465_ _hd7640076460_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7640176462_))
                                          (let ((_hd7640276467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7640176462_)))
                                                (_tl7640376469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7640176462_))))
                                            (let* ((_len76472_ _hd7640276467_)
                                                   (_init76474_ _tl7640376469_)
                                                   (_rest76476_
                                                    _tl7639976457_))
                                              (declare (not safe))
                                              (_K7639776452_
                                               _rest76476_
                                               _init76474_
                                               _len76472_
                                               _tmp76465_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7639576413_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7639576413_))))
                            (let ()
                              (declare (not safe))
                              (_else7639576413_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76377_
             _compile-simple76379_
             _compile-values76380_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76132_)
        (letrec ((_compile-simple76134_
                  (lambda (_hd-ids76373_ _exprs76374_ _body76375_)
                    (let ((__tmp78084
                           (let ((__tmp78085
                                  (let ((__tmp78087
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76373_)
                                              _exprs76374_))
                                        (__tmp78086
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76375_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78087 __tmp78086))))
                             (declare (not safe))
                             (cons 'letrec* __tmp78085))))
                      (declare (not safe))
                      (__SRC__% __tmp78084 _stx76132_))))
                 (_compile-values76135_
                  (lambda (_hd-ids76284_ _exprs76285_ _body76286_)
                    (let _lp76288_ ((_rest76290_ _hd-ids76284_)
                                    (_exprs76291_ _exprs76285_)
                                    (_bind76292_ '())
                                    (_post76293_ '()))
                      (let* ((_rest7629476308_ _rest76290_)
                             (_else7629776316_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76136_
                                   _bind76292_
                                   _post76293_
                                   _body76286_)))))
                        (let ((_K7630276356_
                               (lambda (_rest76351_ _hd76352_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76352_))
                                     (let ((_id76354_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76352_))))
                                       (let ((__tmp78102 (cdr _exprs76291_))
                                             (__tmp78097
                                              (let ((__tmp78098
                                                     (let ((__tmp78099
                                                            (let ((__tmp78100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78101
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78101))))
                      (declare (not safe))
                      (cons __tmp78100 '()))))
               (declare (not safe))
               (cons _id76354_ __tmp78099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78098 _bind76292_)))
                                             (__tmp78093
                                              (let ((__tmp78094
                                                     (let ((__tmp78095
                                                            (let ((__tmp78096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs76291_)))
                      (declare (not safe))
                      (cons __tmp78096 '()))))
               (declare (not safe))
               (cons _id76354_ __tmp78095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78094
                                                      _post76293_))))
                                         (declare (not safe))
                                         (_lp76288_
                                          _rest76351_
                                          __tmp78102
                                          __tmp78097
                                          __tmp78093)))
                                     (let ((__tmp78092 (cdr _exprs76291_))
                                           (__tmp78088
                                            (let ((__tmp78089
                                                   (let ((__tmp78090
                                                          (let ((__tmp78091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs76291_)))
                    (declare (not safe))
                    (cons __tmp78091 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp78090))))
                                              (declare (not safe))
                                              (cons __tmp78089 _post76293_))))
                                       (declare (not safe))
                                       (_lp76288_
                                        _rest76351_
                                        __tmp78092
                                        _bind76292_
                                        __tmp78088)))))
                              (_K7629976336_
                               (lambda (_rest76320_ _hd76321_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76321_))
                                     (let ((_id76323_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76321_))))
                                       (let ((__tmp78138 (cdr _exprs76291_))
                                             (__tmp78133
                                              (let ((__tmp78134
                                                     (let ((__tmp78135
                                                            (let ((__tmp78136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78137
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78137))))
                      (declare (not safe))
                      (cons __tmp78136 '()))))
               (declare (not safe))
               (cons _id76323_ __tmp78135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78134 _bind76292_)))
                                             (__tmp78127
                                              (let ((__tmp78128
                                                     (let ((__tmp78129
                                                            (let ((__tmp78130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78131
                                  (let ((__tmp78132 (car _exprs76291_)))
                                    (declare (not safe))
                                    (cons __tmp78132 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp78131))))
                      (declare (not safe))
                      (cons __tmp78130 '()))))
               (declare (not safe))
               (cons _id76323_ __tmp78129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78128
                                                      _post76293_))))
                                         (declare (not safe))
                                         (_lp76288_
                                          _rest76320_
                                          __tmp78138
                                          __tmp78133
                                          __tmp78127)))
                                     (if (let ((__tmp78126
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76321_))))
                                           (declare (not safe))
                                           (not __tmp78126))
                                         (let ((__tmp78125 (cdr _exprs76291_))
                                               (__tmp78121
                                                (let ((__tmp78122
                                                       (let ((__tmp78123
                                                              (let ((__tmp78124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs76291_)))
                        (declare (not safe))
                        (cons __tmp78124 '()))))
                 (declare (not safe))
                 (cons '#f __tmp78123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78122
                                                        _post76293_))))
                                           (declare (not safe))
                                           (_lp76288_
                                            _rest76320_
                                            __tmp78125
                                            _bind76292_
                                            __tmp78121))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76321_))
                                             (let* ((_len76325_
                                                     (length _hd76321_))
                                                    (_tmp76327_
                                                     (let ((__tmp78103
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp78103))))
                                               (let ((__tmp78120
                                                      (cdr _exprs76291_))
                                                     (__tmp78113
                                                      (let ((__tmp78114
                                                             (lambda (_id76330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76331_)
                       (if (let () (declare (not safe)) (__AST-e _id76330_))
                           (let ((__tmp78115
                                  (let ((__tmp78119
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76330_)))
                                        (__tmp78116
                                         (let ((__tmp78117
                                                (let ((__tmp78118
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp78118))))
                                           (declare (not safe))
                                           (cons __tmp78117 '()))))
                                    (declare (not safe))
                                    (cons __tmp78119 __tmp78116))))
                             (declare (not safe))
                             (cons __tmp78115 _r76331_))
                           _r76331_))))
                (declare (not safe))
                (foldl1 __tmp78114 _bind76292_ _hd76321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78104
                                                      (let ((__tmp78105
                                                             (let ((__tmp78106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78112 (car _exprs76291_))
                                  (__tmp78107
                                   (let ((__tmp78108
                                          (let ((__tmp78110
                                                 (lambda (_id76333_ _k76334_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id76333_))
                                                       (let ((__tmp78111
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id76333_))))
                 (declare (not safe))
                 (cons __tmp78111 _k76334_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp78109
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len76325_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp78110
                                             _hd76321_
                                             __tmp78109))))
                                     (declare (not safe))
                                     (cons _len76325_ __tmp78108))))
                              (declare (not safe))
                              (cons __tmp78112 __tmp78107))))
                       (declare (not safe))
                       (cons _tmp76327_ __tmp78106))))
                (declare (not safe))
                (cons __tmp78105 _post76293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76288_
                                                  _rest76320_
                                                  __tmp78120
                                                  __tmp78113
                                                  __tmp78104)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76132_
                                                _hd76321_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7629476308_))
                              (let ((_tl7630476361_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7629476308_)))
                                    (_hd7630376359_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7629476308_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7630376359_))
                                    (let ((_tl7630676366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7630376359_)))
                                          (_hd7630576364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7630376359_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7630676366_))
                                          (let ((_hd76369_ _hd7630576364_)
                                                (_rest76371_ _tl7630476361_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7630276356_
                                               _rest76371_
                                               _hd76369_)))
                                          (let ((_hd76344_ _hd7630376359_)
                                                (_rest76346_ _tl7630476361_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629976336_
                                               _rest76346_
                                               _hd76344_)))))
                                    (let ((_hd76344_ _hd7630376359_)
                                          (_rest76346_ _tl7630476361_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7629976336_
                                         _rest76346_
                                         _hd76344_)))))
                              (let ()
                                (declare (not safe))
                                (_else7629776316_))))))))
                 (_compile-bind76136_
                  (lambda (_bind76280_ _post76281_ _body76282_)
                    (let ((__tmp78139
                           (let ((__tmp78140
                                  (let ((__tmp78143 (reverse _bind76280_))
                                        (__tmp78141
                                         (let ((__tmp78142
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76137_
                                                   _post76281_
                                                   _body76282_))))
                                           (declare (not safe))
                                           (cons __tmp78142 '()))))
                                    (declare (not safe))
                                    (cons __tmp78143 __tmp78141))))
                             (declare (not safe))
                             (cons 'let __tmp78140))))
                      (declare (not safe))
                      (__SRC__% __tmp78139 _stx76132_))))
                 (_compile-post76137_
                  (lambda (_post76139_ _body76140_)
                    (let ((__tmp78144
                           (let ((__tmp78145
                                  (let ((__tmp78146
                                         (let ((__tmp78148
                                                (lambda (_hd76142_ _r76143_)
                                                  (let* ((_hd7614476167_
                                                          _hd76142_)
                                                         (_E7614876171_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7614476167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7616176265_
                                                           (lambda (_expr76263_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr76263_ _r76143_))))
                  (_K7615676243_
                   (lambda (_expr76240_ _id76241_)
                     (let ((__tmp78149
                            (let ((__tmp78150
                                   (let ((__tmp78151
                                          (let ((__tmp78152
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr76240_ '()))))
                                            (declare (not safe))
                                            (cons _id76241_ __tmp78152))))
                                     (declare (not safe))
                                     (cons 'set! __tmp78151))))
                              (declare (not safe))
                              (__SRC__% __tmp78150 _stx76132_))))
                       (declare (not safe))
                       (cons __tmp78149 _r76143_))))
                  (_K7614976210_
                   (lambda (_init76175_ _len76176_ _expr76177_ _tmp76178_)
                     (let ((__tmp78153
                            (let ((__tmp78154
                                   (let ((__tmp78155
                                          (let ((__tmp78169
                                                 (let ((__tmp78170
                                                        (let ((__tmp78171
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr76177_ '()))))
                  (declare (not safe))
                  (cons _tmp76178_ __tmp78171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78170 '())))
                                                (__tmp78156
                                                 (let ((__tmp78165
                                                        (let ((__tmp78166
                                                               (let ((__tmp78167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp78168
                                     (let ()
                                       (declare (not safe))
                                       (cons _len76176_ '()))))
                                (declare (not safe))
                                (cons _tmp76178_ __tmp78168))))
                         (declare (not safe))
                         (cons '__check-values __tmp78167))))
                  (declare (not safe))
                  (__SRC__% __tmp78166 _stx76132_)))
               (__tmp78157
                (let ((__tmp78158
                       (map (lambda (_hd76180_)
                              (let* ((_hd7618176188_ _hd76180_)
                                     (_E7618376192_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7618176188_))))
                                     (_K7618476198_
                                      (lambda (_k76195_ _id76196_)
                                        (let ((__tmp78159
                                               (let ((__tmp78160
                                                      (let ((__tmp78161
                                                             (let ((__tmp78162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78163
                                   (let ((__tmp78164
                                          (let ()
                                            (declare (not safe))
                                            (cons _k76195_ '()))))
                                     (declare (not safe))
                                     (cons _tmp76178_ __tmp78164))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp78163))))
                       (declare (not safe))
                       (cons __tmp78162 '()))))
                (declare (not safe))
                (cons _id76196_ __tmp78161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp78160))))
                                          (declare (not safe))
                                          (__SRC__% __tmp78159 _stx76132_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7618176188_))
                                    (let ((_hd7618576201_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7618176188_)))
                                          (_tl7618676203_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7618176188_))))
                                      (let* ((_id76206_ _hd7618576201_)
                                             (_k76208_ _tl7618676203_))
                                        (declare (not safe))
                                        (_K7618476198_ _k76208_ _id76206_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7618376192_)))))
                            _init76175_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp78158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78165
                                                         __tmp78157))))
                                            (declare (not safe))
                                            (cons __tmp78169 __tmp78156))))
                                     (declare (not safe))
                                     (cons 'let __tmp78155))))
                              (declare (not safe))
                              (__SRC__% __tmp78154 _stx76132_))))
                       (declare (not safe))
                       (cons __tmp78153 _r76143_)))))
              (if (let () (declare (not safe)) (##pair? _hd7614476167_))
                  (let ((_tl7616376270_
                         (let () (declare (not safe)) (##cdr _hd7614476167_)))
                        (_hd7616276268_
                         (let () (declare (not safe)) (##car _hd7614476167_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7616276268_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7616376270_))
                            (let ((_tl7616576275_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7616376270_)))
                                  (_hd7616476273_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7616376270_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7616576275_))
                                  (let ((_expr76278_ _hd7616476273_))
                                    (declare (not safe))
                                    (_K7616176265_ _expr76278_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7616576275_))
                                      (let ((_tl7615576229_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7616576275_)))
                                            (_hd7615476227_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7616576275_))))
                                        (let ((_tmp76218_ _hd7616276268_)
                                              (_expr76225_ _hd7616476273_)
                                              (_len76232_ _hd7615476227_)
                                              (_init76234_ _tl7615576229_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7614976210_
                                             _init76234_
                                             _len76232_
                                             _expr76225_
                                             _tmp76218_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7614876171_)))))
                            (let () (declare (not safe)) (_E7614876171_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7616376270_))
                            (let ((_tl7616076255_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7616376270_)))
                                  (_hd7615976253_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7616376270_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7616076255_))
                                  (let ((_id76251_ _hd7616276268_)
                                        (_expr76258_ _hd7615976253_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7615676243_ _expr76258_ _id76251_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7616076255_))
                                      (let ((_tl7615576229_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7616076255_)))
                                            (_hd7615476227_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7616076255_))))
                                        (let ((_tmp76218_ _hd7616276268_)
                                              (_expr76225_ _hd7615976253_)
                                              (_len76232_ _hd7615476227_)
                                              (_init76234_ _tl7615576229_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7614976210_
                                             _init76234_
                                             _len76232_
                                             _expr76225_
                                             _tmp76218_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7614876171_)))))
                            (let () (declare (not safe)) (_E7614876171_)))))
                  (let () (declare (not safe)) (_E7614876171_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp78147 (list _body76140_)))
                                           (declare (not safe))
                                           (foldl1 __tmp78148
                                                   __tmp78147
                                                   _post76139_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp78146))))
                             (declare (not safe))
                             (cons 'begin __tmp78145))))
                      (declare (not safe))
                      (__SRC__% __tmp78144 _stx76132_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76132_
             _compile-simple76134_
             _compile-values76135_)))))
    (define __compile-call%
      (lambda (_stx76092_)
        (let* ((_$e76094_ _stx76092_)
               (_$E7609676105_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76094_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76094_))
              (let* ((_$tgt7609776108_
                      (let () (declare (not safe)) (__AST-e _$e76094_)))
                     (_$hd7609876111_
                      (let () (declare (not safe)) (##car _$tgt7609776108_)))
                     (_$tl7609976114_
                      (let () (declare (not safe)) (##cdr _$tgt7609776108_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7609976114_))
                    (let* ((_$tgt7610076118_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7609976114_)))
                           (_$hd7610176121_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7610076118_)))
                           (_$tl7610276124_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7610076118_))))
                      (let* ((_rator76128_ _$hd7610176121_)
                             (_rands76130_ _$tl7610276124_)
                             (__tmp78172
                              (let ((__tmp78174
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator76128_)))
                                    (__tmp78173 (map __compile _rands76130_)))
                                (declare (not safe))
                                (cons __tmp78174 __tmp78173))))
                        (declare (not safe))
                        (__SRC__% __tmp78172 _stx76092_)))
                    (let () (declare (not safe)) (_$E7609676105_))))
              (let () (declare (not safe)) (_$E7609676105_))))))
    (define __compile-ref%
      (lambda (_stx76054_)
        (let* ((_$e76056_ _stx76054_)
               (_$E7605876067_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76056_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76056_))
              (let* ((_$tgt7605976070_
                      (let () (declare (not safe)) (__AST-e _$e76056_)))
                     (_$hd7606076073_
                      (let () (declare (not safe)) (##car _$tgt7605976070_)))
                     (_$tl7606176076_
                      (let () (declare (not safe)) (##cdr _$tgt7605976070_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7606176076_))
                    (let* ((_$tgt7606276080_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7606176076_)))
                           (_$hd7606376083_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7606276080_)))
                           (_$tl7606476086_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7606276080_))))
                      (let ((_id76090_ _$hd7606376083_))
                        (if (let ((__tmp78175
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7606476086_))))
                              (declare (not safe))
                              (equal? __tmp78175 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76090_ _stx76054_))
                            (let () (declare (not safe)) (_$E7605876067_)))))
                    (let () (declare (not safe)) (_$E7605876067_))))
              (let () (declare (not safe)) (_$E7605876067_))))))
    (define __compile-setq%
      (lambda (_stx76001_)
        (let* ((_$e76003_ _stx76001_)
               (_$E7600576017_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76003_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76003_))
              (let* ((_$tgt7600676020_
                      (let () (declare (not safe)) (__AST-e _$e76003_)))
                     (_$hd7600776023_
                      (let () (declare (not safe)) (##car _$tgt7600676020_)))
                     (_$tl7600876026_
                      (let () (declare (not safe)) (##cdr _$tgt7600676020_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7600876026_))
                    (let* ((_$tgt7600976030_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7600876026_)))
                           (_$hd7601076033_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7600976030_)))
                           (_$tl7601176036_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7600976030_))))
                      (let ((_id76040_ _$hd7601076033_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7601176036_))
                            (let* ((_$tgt7601276042_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7601176036_)))
                                   (_$hd7601376045_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7601276042_)))
                                   (_$tl7601476048_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7601276042_))))
                              (let ((_expr76052_ _$hd7601376045_))
                                (if (let ((__tmp78181
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7601476048_))))
                                      (declare (not safe))
                                      (equal? __tmp78181 '()))
                                    (let ((__tmp78176
                                           (let ((__tmp78177
                                                  (let ((__tmp78180
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id76040_
                                                            _stx76001_)))
                                                        (__tmp78178
                                                         (let ((__tmp78179
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr76052_))))
                   (declare (not safe))
                   (cons __tmp78179 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78180
                                                          __tmp78178))))
                                             (declare (not safe))
                                             (cons 'set! __tmp78177))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78176 _stx76001_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7600576017_)))))
                            (let () (declare (not safe)) (_$E7600576017_)))))
                    (let () (declare (not safe)) (_$E7600576017_))))
              (let () (declare (not safe)) (_$E7600576017_))))))
    (define __compile-if%
      (lambda (_stx75933_)
        (let* ((_$e75935_ _stx75933_)
               (_$E7593775952_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75935_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75935_))
              (let* ((_$tgt7593875955_
                      (let () (declare (not safe)) (__AST-e _$e75935_)))
                     (_$hd7593975958_
                      (let () (declare (not safe)) (##car _$tgt7593875955_)))
                     (_$tl7594075961_
                      (let () (declare (not safe)) (##cdr _$tgt7593875955_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7594075961_))
                    (let* ((_$tgt7594175965_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7594075961_)))
                           (_$hd7594275968_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7594175965_)))
                           (_$tl7594375971_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7594175965_))))
                      (let ((_p75975_ _$hd7594275968_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7594375971_))
                            (let* ((_$tgt7594475977_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7594375971_)))
                                   (_$hd7594575980_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7594475977_)))
                                   (_$tl7594675983_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7594475977_))))
                              (let ((_t75987_ _$hd7594575980_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7594675983_))
                                    (let* ((_$tgt7594775989_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7594675983_)))
                                           (_$hd7594875992_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7594775989_)))
                                           (_$tl7594975995_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7594775989_))))
                                      (let ((_f75999_ _$hd7594875992_))
                                        (if (let ((__tmp78189
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7594975995_))))
                                              (declare (not safe))
                                              (equal? __tmp78189 '()))
                                            (let ((__tmp78182
                                                   (let ((__tmp78183
                                                          (let ((__tmp78188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75975_)))
                        (__tmp78184
                         (let ((__tmp78187
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75987_)))
                               (__tmp78185
                                (let ((__tmp78186
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f75999_))))
                                  (declare (not safe))
                                  (cons __tmp78186 '()))))
                           (declare (not safe))
                           (cons __tmp78187 __tmp78185))))
                    (declare (not safe))
                    (cons __tmp78188 __tmp78184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp78183))))
                                              (declare (not safe))
                                              (__SRC__% __tmp78182 _stx75933_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7593775952_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7593775952_)))))
                            (let () (declare (not safe)) (_$E7593775952_)))))
                    (let () (declare (not safe)) (_$E7593775952_))))
              (let () (declare (not safe)) (_$E7593775952_))))))
    (define __compile-quote%
      (lambda (_stx75895_)
        (let* ((_$e75897_ _stx75895_)
               (_$E7589975908_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75897_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75897_))
              (let* ((_$tgt7590075911_
                      (let () (declare (not safe)) (__AST-e _$e75897_)))
                     (_$hd7590175914_
                      (let () (declare (not safe)) (##car _$tgt7590075911_)))
                     (_$tl7590275917_
                      (let () (declare (not safe)) (##cdr _$tgt7590075911_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7590275917_))
                    (let* ((_$tgt7590375921_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7590275917_)))
                           (_$hd7590475924_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7590375921_)))
                           (_$tl7590575927_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7590375921_))))
                      (let ((_e75931_ _$hd7590475924_))
                        (if (let ((__tmp78193
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7590575927_))))
                              (declare (not safe))
                              (equal? __tmp78193 '()))
                            (let ((__tmp78190
                                   (let ((__tmp78191
                                          (let ((__tmp78192
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75931_))))
                                            (declare (not safe))
                                            (cons __tmp78192 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78191))))
                              (declare (not safe))
                              (__SRC__% __tmp78190 _stx75895_))
                            (let () (declare (not safe)) (_$E7589975908_)))))
                    (let () (declare (not safe)) (_$E7589975908_))))
              (let () (declare (not safe)) (_$E7589975908_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75857_)
        (let* ((_$e75859_ _stx75857_)
               (_$E7586175870_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75859_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75859_))
              (let* ((_$tgt7586275873_
                      (let () (declare (not safe)) (__AST-e _$e75859_)))
                     (_$hd7586375876_
                      (let () (declare (not safe)) (##car _$tgt7586275873_)))
                     (_$tl7586475879_
                      (let () (declare (not safe)) (##cdr _$tgt7586275873_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7586475879_))
                    (let* ((_$tgt7586575883_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7586475879_)))
                           (_$hd7586675886_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7586575883_)))
                           (_$tl7586775889_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7586575883_))))
                      (let ((_e75893_ _$hd7586675886_))
                        (if (let ((__tmp78196
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7586775889_))))
                              (declare (not safe))
                              (equal? __tmp78196 '()))
                            (let ((__tmp78194
                                   (let ((__tmp78195
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75893_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78195))))
                              (declare (not safe))
                              (__SRC__% __tmp78194 _stx75857_))
                            (let () (declare (not safe)) (_$E7586175870_)))))
                    (let () (declare (not safe)) (_$E7586175870_))))
              (let () (declare (not safe)) (_$E7586175870_))))))
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
