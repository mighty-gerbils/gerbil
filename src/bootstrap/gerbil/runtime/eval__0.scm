(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708418154)
  (begin
    (define __syntax::t
      (let ((__tmp76857 (list))
            (__tmp76855
             (let ((__tmp76856
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76856 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp76857
         '(e id)
         __tmp76855
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76666_ (apply make-instance __syntax::t _$args76666_)))
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
      (let ((__tmp76860 (list __syntax::t))
            (__tmp76858
             (let ((__tmp76859
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76859 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp76860
         '()
         __tmp76858
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76663_ (apply make-instance __core-form::t _$args76663_)))
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
      (let ((__tmp76863 (list __core-form::t))
            (__tmp76861
             (let ((__tmp76862
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76862 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp76863
         '()
         __tmp76861
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76660_
        (apply make-instance __core-expression::t _$args76660_)))
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
      (let ((__tmp76866 (list __core-form::t))
            (__tmp76864
             (let ((__tmp76865
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76865 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp76866
         '()
         __tmp76864
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76657_
        (apply make-instance __core-special-form::t _$args76657_)))
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
      (lambda (_id76655_)
        (let ((__tmp76867 (let () (declare (not safe)) (__AST-e _id76655_))))
          (declare (not safe))
          (hash-get __core __tmp76867))))
    (define __core-bound-id?__%
      (lambda (_id76639_ _is?76640_)
        (let ((_$e76642_
               (let () (declare (not safe)) (__core-resolve _id76639_))))
          (if _$e76642_ (_is?76640_ _$e76642_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76648_)
        (let ((_is?76650_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76648_ _is?76650_))))
    (define __core-bound-id?
      (lambda _g76869_
        (let ((_g76868_ (let () (declare (not safe)) (##length _g76869_))))
          (cond ((let () (declare (not safe)) (##fx= _g76868_ 1))
                 (apply (lambda (_id76648_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76648_)))
                        _g76869_))
                ((let () (declare (not safe)) (##fx= _g76868_ 2))
                 (apply (lambda (_id76652_ _is?76653_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76652_ _is?76653_)))
                        _g76869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g76869_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76622_ _e76623_ _make76624_)
        (let ((__tmp76870
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76623_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76623_
                   (_make76624_ _e76623_ _id76622_))))
          (declare (not safe))
          (hash-put! __core _id76622_ __tmp76870))))
    (define __core-bind-syntax!__0
      (lambda (_id76629_ _e76630_)
        (let ((_make76632_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76629_ _e76630_ _make76632_))))
    (define __core-bind-syntax!
      (lambda _g76872_
        (let ((_g76871_ (let () (declare (not safe)) (##length _g76872_))))
          (cond ((let () (declare (not safe)) (##fx= _g76871_ 2))
                 (apply (lambda (_id76629_ _e76630_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76629_ _e76630_)))
                        _g76872_))
                ((let () (declare (not safe)) (##fx= _g76871_ 3))
                 (apply (lambda (_id76634_ _e76635_ _make76636_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76634_
                             _e76635_
                             _make76636_)))
                        _g76872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g76872_))))))
    (define __SRC__%
      (lambda (_e76605_ _src-stx76606_)
        (if (or (let () (declare (not safe)) (pair? _e76605_))
                (let () (declare (not safe)) (symbol? _e76605_)))
            (let ((__tmp76876
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76606_
                          'gerbil#AST::t))
                       (let ((__tmp76877
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76606_))))
                         (declare (not safe))
                         (__locat __tmp76877))
                       '#f)))
              (declare (not safe))
              (##make-source _e76605_ __tmp76876))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76605_ 'gerbil#AST::t))
                (let ((__tmp76875
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76605_ '1 AST::t '#f)))
                      (__tmp76873
                       (let ((__tmp76874
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76605_))))
                         (declare (not safe))
                         (__locat __tmp76874))))
                  (declare (not safe))
                  (##make-source __tmp76875 __tmp76873))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76605_))))))
    (define __SRC__0
      (lambda (_e76614_)
        (let ((_src-stx76616_ '#f))
          (declare (not safe))
          (__SRC__% _e76614_ _src-stx76616_))))
    (define __SRC
      (lambda _g76879_
        (let ((_g76878_ (let () (declare (not safe)) (##length _g76879_))))
          (cond ((let () (declare (not safe)) (##fx= _g76878_ 1))
                 (apply (lambda (_e76614_)
                          (let () (declare (not safe)) (__SRC__0 _e76614_)))
                        _g76879_))
                ((let () (declare (not safe)) (##fx= _g76878_ 2))
                 (apply (lambda (_e76618_ _src-stx76619_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76618_ _src-stx76619_)))
                        _g76879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g76879_))))))
    (define __locat
      (lambda (_loc76602_)
        (if (let () (declare (not safe)) (##locat? _loc76602_))
            _loc76602_
            '#f)))
    (define __check-values
      (lambda (_obj76597_ _k76598_)
        (let ((_count76600_
               (if (let () (declare (not safe)) (##values? _obj76597_))
                   (let () (declare (not safe)) (##vector-length _obj76597_))
                   '1)))
          (if (fx= _count76600_ _k76598_)
              '#!void
              (let ((__tmp76881
                     (if (fx< _count76600_ _k76598_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp76880
                     (if (let () (declare (not safe)) (##values? _obj76597_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj76597_))
                         _obj76597_)))
                (declare (not safe))
                (error __tmp76881 __tmp76880 _k76598_))))))
    (define __compile
      (lambda (_stx76567_)
        (let* ((_$e76569_ _stx76567_)
               (_$E7657176577_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76569_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76569_))
              (let* ((_$tgt7657276580_
                      (let () (declare (not safe)) (__AST-e _$e76569_)))
                     (_$hd7657376583_
                      (let () (declare (not safe)) (##car _$tgt7657276580_)))
                     (_$tl7657476586_
                      (let () (declare (not safe)) (##cdr _$tgt7657276580_))))
                (let* ((_form76590_ _$hd7657376583_)
                       (_$e76592_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form76590_))))
                  (if _$e76592_
                      ((lambda (_bind76595_)
                         ((##structure-ref _bind76595_ '1 __syntax::t '#f)
                          _stx76567_))
                       _$e76592_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx76567_
                         _form76590_)))))
              (let () (declare (not safe)) (_$E7657176577_))))))
    (define __compile-error__%
      (lambda (_stx76554_ _detail76555_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx76554_
           _detail76555_))))
    (define __compile-error__0
      (lambda (_stx76560_)
        (let ((_detail76562_ '#f))
          (declare (not safe))
          (__compile-error__% _stx76560_ _detail76562_))))
    (define __compile-error
      (lambda _g76883_
        (let ((_g76882_ (let () (declare (not safe)) (##length _g76883_))))
          (cond ((let () (declare (not safe)) (##fx= _g76882_ 1))
                 (apply (lambda (_stx76560_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx76560_)))
                        _g76883_))
                ((let () (declare (not safe)) (##fx= _g76882_ 2))
                 (apply (lambda (_stx76564_ _detail76565_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx76564_ _detail76565_)))
                        _g76883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g76883_))))))
    (define __compile-ignore%
      (lambda (_stx76551_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx76551_))))
    (define __compile-begin%
      (lambda (_stx76526_)
        (let* ((_$e76528_ _stx76526_)
               (_$E7653076536_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76528_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76528_))
              (let* ((_$tgt7653176539_
                      (let () (declare (not safe)) (__AST-e _$e76528_)))
                     (_$hd7653276542_
                      (let () (declare (not safe)) (##car _$tgt7653176539_)))
                     (_$tl7653376545_
                      (let () (declare (not safe)) (##cdr _$tgt7653176539_))))
                (let* ((_body76549_ _$tl7653376545_)
                       (__tmp76884
                        (let ((__tmp76885 (map __compile _body76549_)))
                          (declare (not safe))
                          (cons 'begin __tmp76885))))
                  (declare (not safe))
                  (__SRC__% __tmp76884 _stx76526_)))
              (let () (declare (not safe)) (_$E7653076536_))))))
    (define __compile-begin-foreign%
      (lambda (_stx76501_)
        (let* ((_$e76503_ _stx76501_)
               (_$E7650576511_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76503_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76503_))
              (let* ((_$tgt7650676514_
                      (let () (declare (not safe)) (__AST-e _$e76503_)))
                     (_$hd7650776517_
                      (let () (declare (not safe)) (##car _$tgt7650676514_)))
                     (_$tl7650876520_
                      (let () (declare (not safe)) (##cdr _$tgt7650676514_))))
                (let* ((_body76524_ _$tl7650876520_)
                       (__tmp76886
                        (let ((__tmp76887
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body76524_))))
                          (declare (not safe))
                          (cons 'begin __tmp76887))))
                  (declare (not safe))
                  (__SRC__% __tmp76886 _stx76501_)))
              (let () (declare (not safe)) (_$E7650576511_))))))
    (define __compile-import%
      (lambda (_stx76476_)
        (let* ((_$e76478_ _stx76476_)
               (_$E7648076486_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76478_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76478_))
              (let* ((_$tgt7648176489_
                      (let () (declare (not safe)) (__AST-e _$e76478_)))
                     (_$hd7648276492_
                      (let () (declare (not safe)) (##car _$tgt7648176489_)))
                     (_$tl7648376495_
                      (let () (declare (not safe)) (##cdr _$tgt7648176489_))))
                (let* ((_body76499_ _$tl7648376495_)
                       (__tmp76888
                        (let ((__tmp76889
                               (let ((__tmp76890
                                      (let ((__tmp76891
                                             (let ()
                                               (declare (not safe))
                                               (cons _body76499_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp76891))))
                                 (declare (not safe))
                                 (cons __tmp76890 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp76889))))
                  (declare (not safe))
                  (__SRC__% __tmp76888 _stx76476_)))
              (let () (declare (not safe)) (_$E7648076486_))))))
    (define __compile-begin-annotation%
      (lambda (_stx76423_)
        (let* ((_$e76425_ _stx76423_)
               (_$E7642776439_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76425_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76425_))
              (let* ((_$tgt7642876442_
                      (let () (declare (not safe)) (__AST-e _$e76425_)))
                     (_$hd7642976445_
                      (let () (declare (not safe)) (##car _$tgt7642876442_)))
                     (_$tl7643076448_
                      (let () (declare (not safe)) (##cdr _$tgt7642876442_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7643076448_))
                    (let* ((_$tgt7643176452_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7643076448_)))
                           (_$hd7643276455_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7643176452_)))
                           (_$tl7643376458_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7643176452_))))
                      (let ((_ann76462_ _$hd7643276455_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7643376458_))
                            (let* ((_$tgt7643476464_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7643376458_)))
                                   (_$hd7643576467_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7643476464_)))
                                   (_$tl7643676470_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7643476464_))))
                              (let ((_expr76474_ _$hd7643576467_))
                                (if (let ((__tmp76892
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7643676470_))))
                                      (declare (not safe))
                                      (equal? __tmp76892 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr76474_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7642776439_)))))
                            (let () (declare (not safe)) (_$E7642776439_)))))
                    (let () (declare (not safe)) (_$E7642776439_))))
              (let () (declare (not safe)) (_$E7642776439_))))))
    (define __compile-define-values%
      (lambda (_stx76314_)
        (let* ((_$e76316_ _stx76314_)
               (_$E7631876330_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76316_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76316_))
              (let* ((_$tgt7631976333_
                      (let () (declare (not safe)) (__AST-e _$e76316_)))
                     (_$hd7632076336_
                      (let () (declare (not safe)) (##car _$tgt7631976333_)))
                     (_$tl7632176339_
                      (let () (declare (not safe)) (##cdr _$tgt7631976333_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7632176339_))
                    (let* ((_$tgt7632276343_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7632176339_)))
                           (_$hd7632376346_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7632276343_)))
                           (_$tl7632476349_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7632276343_))))
                      (let ((_hd76353_ _$hd7632376346_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7632476349_))
                            (let* ((_$tgt7632576355_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7632476349_)))
                                   (_$hd7632676358_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7632576355_)))
                                   (_$tl7632776361_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7632576355_))))
                              (let ((_expr76365_ _$hd7632676358_))
                                (if (let ((__tmp76925
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7632776361_))))
                                      (declare (not safe))
                                      (equal? __tmp76925 '()))
                                    (let* ((_$e76367_ _hd76353_)
                                           (_$E7636976410_
                                            (lambda ()
                                              (let ((_$E7637076395_
                                                     (lambda ()
                                                       (let* ((_$E7637176382_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76367_))))
                      (_ids76385_ _hd76353_)
                      (_len76387_ (length _ids76385_))
                      (_tmp76389_
                       (let ((__tmp76893 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp76893))))
                 (let ((__tmp76894
                        (let ((__tmp76895
                               (let ((__tmp76912
                                      (let ((__tmp76913
                                             (let ((__tmp76914
                                                    (let ((__tmp76915
                                                           (let ((__tmp76916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76365_))))
                     (declare (not safe))
                     (cons __tmp76916 '()))))
              (declare (not safe))
              (cons _tmp76389_ __tmp76915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp76914))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76913 _stx76314_)))
                                     (__tmp76896
                                      (let ((__tmp76908
                                             (let ((__tmp76909
                                                    (let ((__tmp76910
                                                           (let ((__tmp76911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76387_ '()))))
                     (declare (not safe))
                     (cons _tmp76389_ __tmp76911))))
              (declare (not safe))
              (cons '__check-values __tmp76910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp76909
                                                _stx76314_)))
                                            (__tmp76897
                                             (let ((__tmp76898
                                                    (let ((__tmp76900
                                                           (lambda (_id76392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76393_)
                     (if (let () (declare (not safe)) (__AST-e _id76392_))
                         (let ((__tmp76901
                                (let ((__tmp76902
                                       (let ((__tmp76907
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76392_)))
                                             (__tmp76903
                                              (let ((__tmp76904
                                                     (let ((__tmp76905
                                                            (let ((__tmp76906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76393_ '()))))
                      (declare (not safe))
                      (cons _tmp76389_ __tmp76906))))
               (declare (not safe))
               (cons '##vector-ref __tmp76905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76904 '()))))
                                         (declare (not safe))
                                         (cons __tmp76907 __tmp76903))))
                                  (declare (not safe))
                                  (cons 'define __tmp76902))))
                           (declare (not safe))
                           (__SRC__% __tmp76901 _stx76314_))
                         '#f)))
                  (__tmp76899
                   (let () (declare (not safe)) (iota__0 _len76387_))))
              (declare (not safe))
              (filter-map2 __tmp76900 _ids76385_ __tmp76899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp76898))))
                                        (declare (not safe))
                                        (cons __tmp76908 __tmp76897))))
                                 (declare (not safe))
                                 (cons __tmp76912 __tmp76896))))
                          (declare (not safe))
                          (cons 'begin __tmp76895))))
                   (declare (not safe))
                   (__SRC__% __tmp76894 _stx76314_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76367_))
                                                    (let* ((_$tgt7637276398_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76367_)))
                                                           (_$hd7637376401_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7637276398_)))
                                                           (_$tl7637476404_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7637276398_))))
                                                      (let ((_id76408_
                                                             _$hd7637376401_))
                                                        (if (let ((__tmp76922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7637476404_))))
                      (declare (not safe))
                      (equal? __tmp76922 '()))
                    (let ((__tmp76917
                           (let ((__tmp76918
                                  (let ((__tmp76921
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76408_)))
                                        (__tmp76919
                                         (let ((__tmp76920
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76365_))))
                                           (declare (not safe))
                                           (cons __tmp76920 '()))))
                                    (declare (not safe))
                                    (cons __tmp76921 __tmp76919))))
                             (declare (not safe))
                             (cons 'define __tmp76918))))
                      (declare (not safe))
                      (__SRC__% __tmp76917 _stx76314_))
                    (let () (declare (not safe)) (_$E7637076395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7637076395_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76367_))
                                          (let* ((_$tgt7637576413_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76367_)))
                                                 (_$hd7637676416_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7637576413_)))
                                                 (_$tl7637776419_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7637576413_))))
                                            (if (let ((__tmp76924
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7637676416_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76924 '#f))
                                                (if (let ((__tmp76923
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7637776419_))))
                                                      (declare (not safe))
                                                      (equal? __tmp76923 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76365_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7636976410_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7636976410_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7636976410_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7631876330_)))))
                            (let () (declare (not safe)) (_$E7631876330_)))))
                    (let () (declare (not safe)) (_$E7631876330_))))
              (let () (declare (not safe)) (_$E7631876330_))))))
    (define __compile-head-id
      (lambda (_e76312_)
        (let ((__tmp76926
               (if (let () (declare (not safe)) (__AST-e _e76312_))
                   _e76312_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp76926))))
    (define __compile-lambda-head
      (lambda (_hd76269_)
        (let _recur76271_ ((_rest76273_ _hd76269_))
          (let* ((_$e76275_ _rest76273_)
                 (_$E7627776295_
                  (lambda ()
                    (let ((_$E7627876292_
                           (lambda ()
                             (let* ((_$E7627976287_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76275_))))
                                    (_tail76290_ _$e76275_))
                               (declare (not safe))
                               (__compile-head-id _tail76290_)))))
                      (if (let ((__tmp76927
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76275_))))
                            (declare (not safe))
                            (equal? __tmp76927 '()))
                          '()
                          (let () (declare (not safe)) (_$E7627876292_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76275_))
                (let* ((_$tgt7628076298_
                        (let () (declare (not safe)) (__AST-e _$e76275_)))
                       (_$hd7628176301_
                        (let () (declare (not safe)) (##car _$tgt7628076298_)))
                       (_$tl7628276304_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7628076298_))))
                  (let* ((_hd76308_ _$hd7628176301_)
                         (_rest76310_ _$tl7628276304_))
                    (let ((__tmp76929
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76308_)))
                          (__tmp76928
                           (let ()
                             (declare (not safe))
                             (_recur76271_ _rest76310_))))
                      (declare (not safe))
                      (cons __tmp76929 __tmp76928))))
                (let () (declare (not safe)) (_$E7627776295_)))))))
    (define __compile-lambda%
      (lambda (_stx76216_)
        (let* ((_$e76218_ _stx76216_)
               (_$E7622076232_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76218_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76218_))
              (let* ((_$tgt7622176235_
                      (let () (declare (not safe)) (__AST-e _$e76218_)))
                     (_$hd7622276238_
                      (let () (declare (not safe)) (##car _$tgt7622176235_)))
                     (_$tl7622376241_
                      (let () (declare (not safe)) (##cdr _$tgt7622176235_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7622376241_))
                    (let* ((_$tgt7622476245_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7622376241_)))
                           (_$hd7622576248_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7622476245_)))
                           (_$tl7622676251_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7622476245_))))
                      (let ((_hd76255_ _$hd7622576248_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7622676251_))
                            (let* ((_$tgt7622776257_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7622676251_)))
                                   (_$hd7622876260_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7622776257_)))
                                   (_$tl7622976263_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7622776257_))))
                              (let ((_body76267_ _$hd7622876260_))
                                (if (let ((__tmp76935
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7622976263_))))
                                      (declare (not safe))
                                      (equal? __tmp76935 '()))
                                    (let ((__tmp76930
                                           (let ((__tmp76931
                                                  (let ((__tmp76934
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76255_)))
                                                        (__tmp76932
                                                         (let ((__tmp76933
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76267_))))
                   (declare (not safe))
                   (cons __tmp76933 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76934
                                                          __tmp76932))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp76931))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76930 _stx76216_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7622076232_)))))
                            (let () (declare (not safe)) (_$E7622076232_)))))
                    (let () (declare (not safe)) (_$E7622076232_))))
              (let () (declare (not safe)) (_$E7622076232_))))))
    (define __compile-case-lambda%
      (lambda (_stx76008_)
        (letrec ((_variadic?76010_
                  (lambda (_hd76181_)
                    (let* ((_$e76183_ _hd76181_)
                           (_$E7618576201_
                            (lambda ()
                              (let ((_$E7618676198_
                                     (lambda ()
                                       (let ((_$E7618776195_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76183_)))))
                                         '#t))))
                                (if (let ((__tmp76936
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76183_))))
                                      (declare (not safe))
                                      (equal? __tmp76936 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7618676198_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76183_))
                          (let* ((_$tgt7618876204_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76183_)))
                                 (_$hd7618976207_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7618876204_)))
                                 (_$tl7619076210_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7618876204_))))
                            (let ((_rest76214_ _$tl7619076210_))
                              (declare (not safe))
                              (_variadic?76010_ _rest76214_)))
                          (let () (declare (not safe)) (_$E7618576201_))))))
                 (_arity76011_
                  (lambda (_hd76146_)
                    (let _lp76148_ ((_rest76150_ _hd76146_) (_k76151_ '0))
                      (let* ((_$e76153_ _rest76150_)
                             (_$E7615576166_
                              (lambda ()
                                (let ((_$E7615676163_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76153_)))))
                                  _k76151_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76153_))
                            (let* ((_$tgt7615776169_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76153_)))
                                   (_$hd7615876172_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7615776169_)))
                                   (_$tl7615976175_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7615776169_))))
                              (let* ((_rest76179_ _$tl7615976175_)
                                     (__tmp76937
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76151_ '1))))
                                (declare (not safe))
                                (_lp76148_ _rest76179_ __tmp76937)))
                            (let () (declare (not safe)) (_$E7615576166_)))))))
                 (_generate76012_
                  (lambda (_rest76073_ _args76074_ _len76075_)
                    (let* ((_$e76077_ _rest76073_)
                           (_$E7607976090_
                            (lambda ()
                              (let* ((_$E7608076087_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e76077_))))
                                     (__tmp76938
                                      (let ((__tmp76939
                                             (let ((__tmp76940
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args76074_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp76940))))
                                        (declare (not safe))
                                        (cons 'error __tmp76939))))
                                (declare (not safe))
                                (__SRC__% __tmp76938 _stx76008_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76077_))
                          (let* ((_$tgt7608176093_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76077_)))
                                 (_$hd7608276096_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7608176093_)))
                                 (_$tl7608376099_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7608176093_))))
                            (let* ((_clause76103_ _$hd7608276096_)
                                   (_rest76105_ _$tl7608376099_)
                                   (_$e76107_ _clause76103_)
                                   (_$E7610976118_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76107_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76107_))
                                  (let* ((_$tgt7611076121_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76107_)))
                                         (_$hd7611176124_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7611076121_)))
                                         (_$tl7611276127_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7611076121_))))
                                    (let ((_hd76131_ _$hd7611176124_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7611276127_))
                                          (let* ((_$tgt7611376133_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7611276127_)))
                                                 (_$hd7611476136_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7611376133_)))
                                                 (_$tl7611576139_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7611376133_))))
                                            (if (let ((__tmp76955
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7611576139_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76955 '()))
                                                (let ((_clen76143_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76011_
                                                          _hd76131_)))
                                                      (_cmp76144_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76010_
                                                              _hd76131_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp76941
                                                         (let ((__tmp76942
                                                                (let ((__tmp76952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76953
                                      (let ((__tmp76954
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76143_ '()))))
                                        (declare (not safe))
                                        (cons _len76075_ __tmp76954))))
                                 (declare (not safe))
                                 (cons _cmp76144_ __tmp76953)))
                              (__tmp76943
                               (let ((__tmp76946
                                      (let ((__tmp76947
                                             (let ((__tmp76948
                                                    (let ((__tmp76950
                                                           (let ((__tmp76951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76103_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp76951)))
                  (__tmp76949
                   (let () (declare (not safe)) (cons _args76074_ '()))))
              (declare (not safe))
              (cons __tmp76950 __tmp76949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp76948))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76947 _stx76008_)))
                                     (__tmp76944
                                      (let ((__tmp76945
                                             (let ()
                                               (declare (not safe))
                                               (_generate76012_
                                                _rest76105_
                                                _args76074_
                                                _len76075_))))
                                        (declare (not safe))
                                        (cons __tmp76945 '()))))
                                 (declare (not safe))
                                 (cons __tmp76946 __tmp76944))))
                          (declare (not safe))
                          (cons __tmp76952 __tmp76943))))
                   (declare (not safe))
                   (cons 'if __tmp76942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp76941
                                                     _stx76008_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7610976118_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7610976118_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7610976118_)))))
                          (let () (declare (not safe)) (_$E7607976090_)))))))
          (let* ((_$e76014_ _stx76008_)
                 (_$E7601676048_
                  (lambda ()
                    (let ((_$E7601776030_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76014_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76014_))
                          (let* ((_$tgt7601876033_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76014_)))
                                 (_$hd7601976036_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7601876033_)))
                                 (_$tl7602076039_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7601876033_))))
                            (let ((_clauses76043_ _$tl7602076039_))
                              (let ((_args76045_
                                     (let ((__tmp76956 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76956 _stx76008_)))
                                    (_len76046_
                                     (let ((__tmp76957 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76957 _stx76008_))))
                                (let ((__tmp76958
                                       (let ((__tmp76959
                                              (let ((__tmp76960
                                                     (let ((__tmp76961
                                                            (let ((__tmp76962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76963
                                  (let ((__tmp76966
                                         (let ((__tmp76967
                                                (let ((__tmp76968
                                                       (let ((__tmp76969
                                                              (let ((__tmp76970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76971
                                    (let ()
                                      (declare (not safe))
                                      (cons _args76045_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp76971))))
                        (declare (not safe))
                        (__SRC__% __tmp76970 _stx76008_))))
                 (declare (not safe))
                 (cons __tmp76969 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len76046_
                                                        __tmp76968))))
                                           (declare (not safe))
                                           (cons __tmp76967 '())))
                                        (__tmp76964
                                         (let ((__tmp76965
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate76012_
                                                   _clauses76043_
                                                   _args76045_
                                                   _len76046_))))
                                           (declare (not safe))
                                           (cons __tmp76965 '()))))
                                    (declare (not safe))
                                    (cons __tmp76966 __tmp76964))))
                             (declare (not safe))
                             (cons 'let __tmp76963))))
                      (declare (not safe))
                      (__SRC__% __tmp76962 _stx76008_))))
               (declare (not safe))
               (cons __tmp76961 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args76045_
                                                      __tmp76960))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp76959))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76958 _stx76008_)))))
                          (let () (declare (not safe)) (_$E7601776030_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76014_))
                (let* ((_$tgt7602176051_
                        (let () (declare (not safe)) (__AST-e _$e76014_)))
                       (_$hd7602276054_
                        (let () (declare (not safe)) (##car _$tgt7602176051_)))
                       (_$tl7602376057_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7602176051_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7602376057_))
                      (let* ((_$tgt7602476061_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7602376057_)))
                             (_$hd7602576064_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7602476061_)))
                             (_$tl7602676067_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7602476061_))))
                        (let ((_clause76071_ _$hd7602576064_))
                          (if (let ((__tmp76973
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7602676067_))))
                                (declare (not safe))
                                (equal? __tmp76973 '()))
                              (let ((__tmp76972
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause76071_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp76972))
                              (let () (declare (not safe)) (_$E7601676048_)))))
                      (let () (declare (not safe)) (_$E7601676048_))))
                (let () (declare (not safe)) (_$E7601676048_)))))))
    (define __compile-let-form
      (lambda (_stx75777_ _compile-simple75778_ _compile-values75779_)
        (letrec ((_simple-bind?75781_
                  (lambda (_hd75966_)
                    (let* ((_hd7596775977_ _hd75966_)
                           (_else7597075985_ (lambda () '#f)))
                      (let ((_K7597375998_ (lambda (_id75996_) '#t))
                            (_K7597275990_ (lambda () '#t)))
                        (let ((_try-match7596975993_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7596775977_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7597275990_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7597075985_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7596775977_))
                              (let ((_tl7597576003_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7596775977_)))
                                    (_hd7597476001_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7596775977_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7597576003_))
                                    (let ((_id76006_ _hd7597476001_))
                                      (declare (not safe))
                                      (_K7597375998_ _id76006_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7596975993_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7596975993_))))))))
                 (_car-e75782_
                  (lambda (_hd75964_)
                    (if (let () (declare (not safe)) (pair? _hd75964_))
                        (car _hd75964_)
                        _hd75964_))))
          (let* ((_$e75784_ _stx75777_)
                 (_$E7578675929_
                  (lambda ()
                    (let ((_$E7578775809_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75784_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75784_))
                          (let* ((_$tgt7578875812_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75784_)))
                                 (_$hd7578975815_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7578875812_)))
                                 (_$tl7579075818_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7578875812_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7579075818_))
                                (let* ((_$tgt7579175822_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7579075818_)))
                                       (_$hd7579275825_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7579175822_)))
                                       (_$tl7579375828_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7579175822_))))
                                  (let ((_hd75832_ _$hd7579275825_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7579375828_))
                                        (let* ((_$tgt7579475834_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7579375828_)))
                                               (_$hd7579575837_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7579475834_)))
                                               (_$tl7579675840_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7579475834_))))
                                          (let ((_body75844_ _$hd7579575837_))
                                            (if (let ((__tmp76976
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7579675840_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76976 '()))
                                                (let* ((_hd-ids75884_
                                                        (map (lambda (_bind75846_)
                                                               (let* ((_$e75848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind75846_)
                              (_$E7585075859_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75848_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75848_))
                             (let* ((_$tgt7585175862_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75848_)))
                                    (_$hd7585275865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7585175862_)))
                                    (_$tl7585375868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7585175862_))))
                               (let ((_ids75872_ _$hd7585275865_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7585375868_))
                                     (let* ((_$tgt7585475874_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7585375868_)))
                                            (_$hd7585575877_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7585475874_)))
                                            (_$tl7585675880_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7585475874_))))
                                       (if (let ((__tmp76974
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7585675880_))))
                                             (declare (not safe))
                                             (equal? __tmp76974 '()))
                                           _ids75872_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7585075859_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7585075859_)))))
                             (let () (declare (not safe)) (_$E7585075859_)))))
                     _hd75832_))
               (_exprs75924_
                (map (lambda (_bind75886_)
                       (let* ((_$e75888_ _bind75886_)
                              (_$E7589075899_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75888_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75888_))
                             (let* ((_$tgt7589175902_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75888_)))
                                    (_$hd7589275905_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7589175902_)))
                                    (_$tl7589375908_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7589175902_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7589375908_))
                                   (let* ((_$tgt7589475912_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7589375908_)))
                                          (_$hd7589575915_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7589475912_)))
                                          (_$tl7589675918_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7589475912_))))
                                     (let ((_expr75922_ _$hd7589575915_))
                                       (if (let ((__tmp76975
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7589675918_))))
                                             (declare (not safe))
                                             (equal? __tmp76975 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr75922_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7589075899_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7589075899_))))
                             (let () (declare (not safe)) (_$E7589075899_)))))
                     _hd75832_))
               (_body75926_
                (let () (declare (not safe)) (__compile _body75844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?75781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids75884_))
              (_compile-simple75778_
               (map _car-e75782_ _hd-ids75884_)
               _exprs75924_
               _body75926_)
              (_compile-values75779_ _hd-ids75884_ _exprs75924_ _body75926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7578775809_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7578775809_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7578775809_))))
                          (let () (declare (not safe)) (_$E7578775809_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75784_))
                (let* ((_$tgt7579775932_
                        (let () (declare (not safe)) (__AST-e _$e75784_)))
                       (_$hd7579875935_
                        (let () (declare (not safe)) (##car _$tgt7579775932_)))
                       (_$tl7579975938_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7579775932_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7579975938_))
                      (let* ((_$tgt7580075942_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7579975938_)))
                             (_$hd7580175945_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7580075942_)))
                             (_$tl7580275948_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7580075942_))))
                        (if (let ((__tmp76978
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7580175945_))))
                              (declare (not safe))
                              (equal? __tmp76978 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7580275948_))
                                (let* ((_$tgt7580375952_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7580275948_)))
                                       (_$hd7580475955_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7580375952_)))
                                       (_$tl7580575958_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7580375952_))))
                                  (let ((_body75962_ _$hd7580475955_))
                                    (if (let ((__tmp76977
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7580575958_))))
                                          (declare (not safe))
                                          (equal? __tmp76977 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body75962_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7578675929_)))))
                                (let () (declare (not safe)) (_$E7578675929_)))
                            (let () (declare (not safe)) (_$E7578675929_))))
                      (let () (declare (not safe)) (_$E7578675929_))))
                (let () (declare (not safe)) (_$E7578675929_)))))))
    (define __compile-let-values%
      (lambda (_stx75592_)
        (letrec ((_compile-simple75594_
                  (lambda (_hd-ids75773_ _exprs75774_ _body75775_)
                    (let ((__tmp76979
                           (let ((__tmp76980
                                  (let ((__tmp76982
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75773_)
                                              _exprs75774_))
                                        (__tmp76981
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75775_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76982 __tmp76981))))
                             (declare (not safe))
                             (cons 'let __tmp76980))))
                      (declare (not safe))
                      (__SRC__% __tmp76979 _stx75592_))))
                 (_compile-values75595_
                  (lambda (_hd-ids75691_ _exprs75692_ _body75693_)
                    (let _lp75695_ ((_rest75697_ _hd-ids75691_)
                                    (_exprs75698_ _exprs75692_)
                                    (_bind75699_ '())
                                    (_post75700_ '()))
                      (let* ((_rest7570175715_ _rest75697_)
                             (_else7570475723_
                              (lambda ()
                                (let ((__tmp76983
                                       (let ((__tmp76984
                                              (let ((__tmp76987
                                                     (reverse _bind75699_))
                                                    (__tmp76985
                                                     (let ((__tmp76986
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post75596_
                                                               _post75700_
                                                               _body75693_))))
                                                       (declare (not safe))
                                                       (cons __tmp76986 '()))))
                                                (declare (not safe))
                                                (cons __tmp76987 __tmp76985))))
                                         (declare (not safe))
                                         (cons 'let __tmp76984))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76983 _stx75592_)))))
                        (let ((_K7570975756_
                               (lambda (_rest75753_ _id75754_)
                                 (let ((__tmp76993 (cdr _exprs75698_))
                                       (__tmp76988
                                        (let ((__tmp76989
                                               (let ((__tmp76992
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75754_)))
                                                     (__tmp76990
                                                      (let ((__tmp76991
                                                             (car _exprs75698_)))
                                                        (declare (not safe))
                                                        (cons __tmp76991
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76992
                                                       __tmp76990))))
                                          (declare (not safe))
                                          (cons __tmp76989 _bind75699_))))
                                   (declare (not safe))
                                   (_lp75695_
                                    _rest75753_
                                    __tmp76993
                                    __tmp76988
                                    _post75700_))))
                              (_K7570675738_
                               (lambda (_rest75727_ _hd75728_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75728_))
                                     (let ((__tmp77014 (cdr _exprs75698_))
                                           (__tmp77007
                                            (let ((__tmp77008
                                                   (let ((__tmp77013
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75728_)))
                                                         (__tmp77009
                                                          (let ((__tmp77010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77011
                                (let ((__tmp77012 (car _exprs75698_)))
                                  (declare (not safe))
                                  (cons __tmp77012 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77011))))
                    (declare (not safe))
                    (cons __tmp77010 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77013
                                                           __tmp77009))))
                                              (declare (not safe))
                                              (cons __tmp77008 _bind75699_))))
                                       (declare (not safe))
                                       (_lp75695_
                                        _rest75727_
                                        __tmp77014
                                        __tmp77007
                                        _post75700_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75728_))
                                         (let* ((_len75730_ (length _hd75728_))
                                                (_tmp75732_
                                                 (let ((__tmp76994 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76994))))
                                           (let ((__tmp77006
                                                  (cdr _exprs75698_))
                                                 (__tmp77002
                                                  (let ((__tmp77003
                                                         (let ((__tmp77004
                                                                (let ((__tmp77005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75698_)))
                          (declare (not safe))
                          (cons __tmp77005 '()))))
                   (declare (not safe))
                   (cons _tmp75732_ __tmp77004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77003
                                                          _bind75699_)))
                                                 (__tmp76995
                                                  (let ((__tmp76996
                                                         (let ((__tmp76997
                                                                (let ((__tmp76998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77000
                                      (lambda (_id75735_ _k75736_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75735_))
                                            (let ((__tmp77001
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75735_))))
                                              (declare (not safe))
                                              (cons __tmp77001 _k75736_))
                                            '#f)))
                                     (__tmp76999
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75730_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77000
                                  _hd75728_
                                  __tmp76999))))
                          (declare (not safe))
                          (cons _len75730_ __tmp76998))))
                   (declare (not safe))
                   (cons _tmp75732_ __tmp76997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76996
                                                          _post75700_))))
                                             (declare (not safe))
                                             (_lp75695_
                                              _rest75727_
                                              __tmp77006
                                              __tmp77002
                                              __tmp76995)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75592_
                                            _hd75728_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7570175715_))
                              (let ((_tl7571175761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7570175715_)))
                                    (_hd7571075759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7570175715_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7571075759_))
                                    (let ((_tl7571375766_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7571075759_)))
                                          (_hd7571275764_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7571075759_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7571375766_))
                                          (let ((_id75769_ _hd7571275764_)
                                                (_rest75771_ _tl7571175761_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7570975756_
                                               _rest75771_
                                               _id75769_)))
                                          (let ((_hd75746_ _hd7571075759_)
                                                (_rest75748_ _tl7571175761_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7570675738_
                                               _rest75748_
                                               _hd75746_)))))
                                    (let ((_hd75746_ _hd7571075759_)
                                          (_rest75748_ _tl7571175761_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7570675738_
                                         _rest75748_
                                         _hd75746_)))))
                              (let ()
                                (declare (not safe))
                                (_else7570475723_))))))))
                 (_compile-post75596_
                  (lambda (_post75598_ _body75599_)
                    (let _lp75601_ ((_rest75603_ _post75598_)
                                    (_check75604_ '())
                                    (_bind75605_ '()))
                      (let* ((_rest7560675618_ _rest75603_)
                             (_else7560875626_
                              (lambda ()
                                (let ((__tmp77015
                                       (let ((__tmp77016
                                              (let ((__tmp77017
                                                     (let ((__tmp77018
                                                            (let ((__tmp77019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77020
                                  (let ((__tmp77021
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75599_ '()))))
                                    (declare (not safe))
                                    (cons _bind75605_ __tmp77021))))
                             (declare (not safe))
                             (cons 'let __tmp77020))))
                      (declare (not safe))
                      (__SRC__% __tmp77019 _stx75592_))))
               (declare (not safe))
               (cons __tmp77018 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77017
                                                        _check75604_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77016))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77015 _stx75592_))))
                             (_K7561075665_
                              (lambda (_rest75629_
                                       _init75630_
                                       _len75631_
                                       _tmp75632_)
                                (let ((__tmp77029
                                       (let ((__tmp77030
                                              (let ((__tmp77031
                                                     (let ((__tmp77032
                                                            (let ((__tmp77033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75631_ '()))))
                      (declare (not safe))
                      (cons _tmp75632_ __tmp77033))))
               (declare (not safe))
               (cons '__check-values __tmp77032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77031
                                                 _stx75592_))))
                                         (declare (not safe))
                                         (cons __tmp77030 _check75604_)))
                                      (__tmp77022
                                       (let ((__tmp77023
                                              (lambda (_hd75634_ _r75635_)
                                                (let* ((_hd7563675643_
                                                        _hd75634_)
                                                       (_E7563875647_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7563675643_))))
               (_K7563975653_
                (lambda (_k75650_ _id75651_)
                  (let ((__tmp77024
                         (let ((__tmp77025
                                (let ((__tmp77026
                                       (let ((__tmp77027
                                              (let ((__tmp77028
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75650_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75632_ __tmp77028))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp77027))))
                                  (declare (not safe))
                                  (cons __tmp77026 '()))))
                           (declare (not safe))
                           (cons _id75651_ __tmp77025))))
                    (declare (not safe))
                    (cons __tmp77024 _r75635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7563675643_))
                                                      (let ((_hd7564075656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7563675643_)))
                    (_tl7564175658_
                     (let () (declare (not safe)) (##cdr _hd7563675643_))))
                (let* ((_id75661_ _hd7564075656_) (_k75663_ _tl7564175658_))
                  (declare (not safe))
                  (_K7563975653_ _k75663_ _id75661_)))
              (let () (declare (not safe)) (_E7563875647_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77023
                                                 _bind75605_
                                                 _init75630_))))
                                  (declare (not safe))
                                  (_lp75601_
                                   _rest75629_
                                   __tmp77029
                                   __tmp77022)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7560675618_))
                            (let ((_hd7561175668_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7560675618_)))
                                  (_tl7561275670_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7560675618_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7561175668_))
                                  (let ((_hd7561375673_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7561175668_)))
                                        (_tl7561475675_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7561175668_))))
                                    (let ((_tmp75678_ _hd7561375673_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7561475675_))
                                          (let ((_hd7561575680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7561475675_)))
                                                (_tl7561675682_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7561475675_))))
                                            (let* ((_len75685_ _hd7561575680_)
                                                   (_init75687_ _tl7561675682_)
                                                   (_rest75689_
                                                    _tl7561275670_))
                                              (declare (not safe))
                                              (_K7561075665_
                                               _rest75689_
                                               _init75687_
                                               _len75685_
                                               _tmp75678_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7560875626_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7560875626_))))
                            (let ()
                              (declare (not safe))
                              (_else7560875626_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75592_
             _compile-simple75594_
             _compile-values75595_)))))
    (define __compile-letrec-values%
      (lambda (_stx75392_)
        (letrec ((_compile-simple75394_
                  (lambda (_hd-ids75588_ _exprs75589_ _body75590_)
                    (let ((__tmp77034
                           (let ((__tmp77035
                                  (let ((__tmp77037
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75588_)
                                              _exprs75589_))
                                        (__tmp77036
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75590_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77037 __tmp77036))))
                             (declare (not safe))
                             (cons 'letrec __tmp77035))))
                      (declare (not safe))
                      (__SRC__% __tmp77034 _stx75392_))))
                 (_compile-values75395_
                  (lambda (_hd-ids75502_ _exprs75503_ _body75504_)
                    (let _lp75506_ ((_rest75508_ _hd-ids75502_)
                                    (_exprs75509_ _exprs75503_)
                                    (_pre75510_ '())
                                    (_bind75511_ '())
                                    (_post75512_ '()))
                      (let* ((_rest7551375527_ _rest75508_)
                             (_else7551675535_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75396_
                                   _pre75510_
                                   _bind75511_
                                   _post75512_
                                   _body75504_)))))
                        (let ((_K7552175571_
                               (lambda (_rest75568_ _id75569_)
                                 (let ((__tmp77043 (cdr _exprs75509_))
                                       (__tmp77038
                                        (let ((__tmp77039
                                               (let ((__tmp77042
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75569_)))
                                                     (__tmp77040
                                                      (let ((__tmp77041
                                                             (car _exprs75509_)))
                                                        (declare (not safe))
                                                        (cons __tmp77041
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77042
                                                       __tmp77040))))
                                          (declare (not safe))
                                          (cons __tmp77039 _bind75511_))))
                                   (declare (not safe))
                                   (_lp75506_
                                    _rest75568_
                                    __tmp77043
                                    _pre75510_
                                    __tmp77038
                                    _post75512_))))
                              (_K7551875553_
                               (lambda (_rest75539_ _hd75540_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75540_))
                                     (let ((__tmp77071 (cdr _exprs75509_))
                                           (__tmp77064
                                            (let ((__tmp77065
                                                   (let ((__tmp77070
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75540_)))
                                                         (__tmp77066
                                                          (let ((__tmp77067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77068
                                (let ((__tmp77069 (car _exprs75509_)))
                                  (declare (not safe))
                                  (cons __tmp77069 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77068))))
                    (declare (not safe))
                    (cons __tmp77067 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77070
                                                           __tmp77066))))
                                              (declare (not safe))
                                              (cons __tmp77065 _bind75511_))))
                                       (declare (not safe))
                                       (_lp75506_
                                        _rest75539_
                                        __tmp77071
                                        _pre75510_
                                        __tmp77064
                                        _post75512_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75540_))
                                         (let* ((_len75542_ (length _hd75540_))
                                                (_tmp75544_
                                                 (let ((__tmp77044 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77044))))
                                           (let ((__tmp77063
                                                  (cdr _exprs75509_))
                                                 (__tmp77056
                                                  (let ((__tmp77057
                                                         (lambda (_id75547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r75548_)
                   (if (let () (declare (not safe)) (__AST-e _id75547_))
                       (let ((__tmp77058
                              (let ((__tmp77062
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id75547_)))
                                    (__tmp77059
                                     (let ((__tmp77060
                                            (let ((__tmp77061
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp77061))))
                                       (declare (not safe))
                                       (cons __tmp77060 '()))))
                                (declare (not safe))
                                (cons __tmp77062 __tmp77059))))
                         (declare (not safe))
                         (cons __tmp77058 _r75548_))
                       _r75548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp77057
                                                            _pre75510_
                                                            _hd75540_)))
                                                 (__tmp77052
                                                  (let ((__tmp77053
                                                         (let ((__tmp77054
                                                                (let ((__tmp77055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75509_)))
                          (declare (not safe))
                          (cons __tmp77055 '()))))
                   (declare (not safe))
                   (cons _tmp75544_ __tmp77054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77053
                                                          _bind75511_)))
                                                 (__tmp77045
                                                  (let ((__tmp77046
                                                         (let ((__tmp77047
                                                                (let ((__tmp77048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77050
                                      (lambda (_id75550_ _k75551_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75550_))
                                            (let ((__tmp77051
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75550_))))
                                              (declare (not safe))
                                              (cons __tmp77051 _k75551_))
                                            '#f)))
                                     (__tmp77049
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75542_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77050
                                  _hd75540_
                                  __tmp77049))))
                          (declare (not safe))
                          (cons _len75542_ __tmp77048))))
                   (declare (not safe))
                   (cons _tmp75544_ __tmp77047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77046
                                                          _post75512_))))
                                             (declare (not safe))
                                             (_lp75506_
                                              _rest75539_
                                              __tmp77063
                                              __tmp77056
                                              __tmp77052
                                              __tmp77045)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75392_
                                            _hd75540_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7551375527_))
                              (let ((_tl7552375576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7551375527_)))
                                    (_hd7552275574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7551375527_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7552275574_))
                                    (let ((_tl7552575581_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7552275574_)))
                                          (_hd7552475579_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7552275574_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7552575581_))
                                          (let ((_id75584_ _hd7552475579_)
                                                (_rest75586_ _tl7552375576_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7552175571_
                                               _rest75586_
                                               _id75584_)))
                                          (let ((_hd75561_ _hd7552275574_)
                                                (_rest75563_ _tl7552375576_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7551875553_
                                               _rest75563_
                                               _hd75561_)))))
                                    (let ((_hd75561_ _hd7552275574_)
                                          (_rest75563_ _tl7552375576_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7551875553_
                                         _rest75563_
                                         _hd75561_)))))
                              (let ()
                                (declare (not safe))
                                (_else7551675535_))))))))
                 (_compile-inner75396_
                  (lambda (_pre75497_ _bind75498_ _post75499_ _body75500_)
                    (if (let () (declare (not safe)) (null? _pre75497_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75397_
                           _bind75498_
                           _post75499_
                           _body75500_))
                        (let ((__tmp77072
                               (let ((__tmp77073
                                      (let ((__tmp77076 (reverse _pre75497_))
                                            (__tmp77074
                                             (let ((__tmp77075
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75397_
                                                       _bind75498_
                                                       _post75499_
                                                       _body75500_))))
                                               (declare (not safe))
                                               (cons __tmp77075 '()))))
                                        (declare (not safe))
                                        (cons __tmp77076 __tmp77074))))
                                 (declare (not safe))
                                 (cons 'let __tmp77073))))
                          (declare (not safe))
                          (__SRC__% __tmp77072 _stx75392_)))))
                 (_compile-bind75397_
                  (lambda (_bind75493_ _post75494_ _body75495_)
                    (let ((__tmp77077
                           (let ((__tmp77078
                                  (let ((__tmp77081 (reverse _bind75493_))
                                        (__tmp77079
                                         (let ((__tmp77080
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75398_
                                                   _post75494_
                                                   _body75495_))))
                                           (declare (not safe))
                                           (cons __tmp77080 '()))))
                                    (declare (not safe))
                                    (cons __tmp77081 __tmp77079))))
                             (declare (not safe))
                             (cons 'letrec __tmp77078))))
                      (declare (not safe))
                      (__SRC__% __tmp77077 _stx75392_))))
                 (_compile-post75398_
                  (lambda (_post75400_ _body75401_)
                    (let _lp75403_ ((_rest75405_ _post75400_)
                                    (_check75406_ '())
                                    (_bind75407_ '()))
                      (let* ((_rest7540875420_ _rest75405_)
                             (_else7541075428_
                              (lambda ()
                                (let ((__tmp77082
                                       (let ((__tmp77083
                                              (let ((__tmp77084
                                                     (let ((__tmp77085
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77085 _bind75407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77084
                                                        _check75406_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77083))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77082 _stx75392_))))
                             (_K7541275467_
                              (lambda (_rest75431_
                                       _init75432_
                                       _len75433_
                                       _tmp75434_)
                                (let ((__tmp77094
                                       (let ((__tmp77095
                                              (let ((__tmp77096
                                                     (let ((__tmp77097
                                                            (let ((__tmp77098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75433_ '()))))
                      (declare (not safe))
                      (cons _tmp75434_ __tmp77098))))
               (declare (not safe))
               (cons '__check-values __tmp77097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77096
                                                 _stx75392_))))
                                         (declare (not safe))
                                         (cons __tmp77095 _check75406_)))
                                      (__tmp77086
                                       (let ((__tmp77087
                                              (lambda (_hd75436_ _r75437_)
                                                (let* ((_hd7543875445_
                                                        _hd75436_)
                                                       (_E7544075449_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7543875445_))))
               (_K7544175455_
                (lambda (_k75452_ _id75453_)
                  (let ((__tmp77088
                         (let ((__tmp77089
                                (let ((__tmp77090
                                       (let ((__tmp77091
                                              (let ((__tmp77092
                                                     (let ((__tmp77093
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k75452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp75434_ __tmp77093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77092))))
                                         (declare (not safe))
                                         (cons __tmp77091 '()))))
                                  (declare (not safe))
                                  (cons _id75453_ __tmp77090))))
                           (declare (not safe))
                           (cons 'set! __tmp77089))))
                    (declare (not safe))
                    (cons __tmp77088 _r75437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7543875445_))
                                                      (let ((_hd7544275458_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7543875445_)))
                    (_tl7544375460_
                     (let () (declare (not safe)) (##cdr _hd7543875445_))))
                (let* ((_id75463_ _hd7544275458_) (_k75465_ _tl7544375460_))
                  (declare (not safe))
                  (_K7544175455_ _k75465_ _id75463_)))
              (let () (declare (not safe)) (_E7544075449_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77087
                                                 _bind75407_
                                                 _init75432_))))
                                  (declare (not safe))
                                  (_lp75403_
                                   _rest75431_
                                   __tmp77094
                                   __tmp77086)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7540875420_))
                            (let ((_hd7541375470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7540875420_)))
                                  (_tl7541475472_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7540875420_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7541375470_))
                                  (let ((_hd7541575475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7541375470_)))
                                        (_tl7541675477_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7541375470_))))
                                    (let ((_tmp75480_ _hd7541575475_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7541675477_))
                                          (let ((_hd7541775482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7541675477_)))
                                                (_tl7541875484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7541675477_))))
                                            (let* ((_len75487_ _hd7541775482_)
                                                   (_init75489_ _tl7541875484_)
                                                   (_rest75491_
                                                    _tl7541475472_))
                                              (declare (not safe))
                                              (_K7541275467_
                                               _rest75491_
                                               _init75489_
                                               _len75487_
                                               _tmp75480_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7541075428_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7541075428_))))
                            (let ()
                              (declare (not safe))
                              (_else7541075428_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75392_
             _compile-simple75394_
             _compile-values75395_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75147_)
        (letrec ((_compile-simple75149_
                  (lambda (_hd-ids75388_ _exprs75389_ _body75390_)
                    (let ((__tmp77099
                           (let ((__tmp77100
                                  (let ((__tmp77102
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75388_)
                                              _exprs75389_))
                                        (__tmp77101
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75390_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77102 __tmp77101))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77100))))
                      (declare (not safe))
                      (__SRC__% __tmp77099 _stx75147_))))
                 (_compile-values75150_
                  (lambda (_hd-ids75299_ _exprs75300_ _body75301_)
                    (let _lp75303_ ((_rest75305_ _hd-ids75299_)
                                    (_exprs75306_ _exprs75300_)
                                    (_bind75307_ '())
                                    (_post75308_ '()))
                      (let* ((_rest7530975323_ _rest75305_)
                             (_else7531275331_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75151_
                                   _bind75307_
                                   _post75308_
                                   _body75301_)))))
                        (let ((_K7531775371_
                               (lambda (_rest75366_ _hd75367_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75367_))
                                     (let ((_id75369_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75367_))))
                                       (let ((__tmp77117 (cdr _exprs75306_))
                                             (__tmp77112
                                              (let ((__tmp77113
                                                     (let ((__tmp77114
                                                            (let ((__tmp77115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77116
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77116))))
                      (declare (not safe))
                      (cons __tmp77115 '()))))
               (declare (not safe))
               (cons _id75369_ __tmp77114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77113 _bind75307_)))
                                             (__tmp77108
                                              (let ((__tmp77109
                                                     (let ((__tmp77110
                                                            (let ((__tmp77111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75306_)))
                      (declare (not safe))
                      (cons __tmp77111 '()))))
               (declare (not safe))
               (cons _id75369_ __tmp77110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77109
                                                      _post75308_))))
                                         (declare (not safe))
                                         (_lp75303_
                                          _rest75366_
                                          __tmp77117
                                          __tmp77112
                                          __tmp77108)))
                                     (let ((__tmp77107 (cdr _exprs75306_))
                                           (__tmp77103
                                            (let ((__tmp77104
                                                   (let ((__tmp77105
                                                          (let ((__tmp77106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75306_)))
                    (declare (not safe))
                    (cons __tmp77106 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77105))))
                                              (declare (not safe))
                                              (cons __tmp77104 _post75308_))))
                                       (declare (not safe))
                                       (_lp75303_
                                        _rest75366_
                                        __tmp77107
                                        _bind75307_
                                        __tmp77103)))))
                              (_K7531475351_
                               (lambda (_rest75335_ _hd75336_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75336_))
                                     (let ((_id75338_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75336_))))
                                       (let ((__tmp77153 (cdr _exprs75306_))
                                             (__tmp77148
                                              (let ((__tmp77149
                                                     (let ((__tmp77150
                                                            (let ((__tmp77151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77152
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77152))))
                      (declare (not safe))
                      (cons __tmp77151 '()))))
               (declare (not safe))
               (cons _id75338_ __tmp77150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77149 _bind75307_)))
                                             (__tmp77142
                                              (let ((__tmp77143
                                                     (let ((__tmp77144
                                                            (let ((__tmp77145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77146
                                  (let ((__tmp77147 (car _exprs75306_)))
                                    (declare (not safe))
                                    (cons __tmp77147 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77146))))
                      (declare (not safe))
                      (cons __tmp77145 '()))))
               (declare (not safe))
               (cons _id75338_ __tmp77144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77143
                                                      _post75308_))))
                                         (declare (not safe))
                                         (_lp75303_
                                          _rest75335_
                                          __tmp77153
                                          __tmp77148
                                          __tmp77142)))
                                     (if (let ((__tmp77141
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75336_))))
                                           (declare (not safe))
                                           (not __tmp77141))
                                         (let ((__tmp77140 (cdr _exprs75306_))
                                               (__tmp77136
                                                (let ((__tmp77137
                                                       (let ((__tmp77138
                                                              (let ((__tmp77139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75306_)))
                        (declare (not safe))
                        (cons __tmp77139 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77137
                                                        _post75308_))))
                                           (declare (not safe))
                                           (_lp75303_
                                            _rest75335_
                                            __tmp77140
                                            _bind75307_
                                            __tmp77136))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75336_))
                                             (let* ((_len75340_
                                                     (length _hd75336_))
                                                    (_tmp75342_
                                                     (let ((__tmp77118
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77118))))
                                               (let ((__tmp77135
                                                      (cdr _exprs75306_))
                                                     (__tmp77128
                                                      (let ((__tmp77129
                                                             (lambda (_id75345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75346_)
                       (if (let () (declare (not safe)) (__AST-e _id75345_))
                           (let ((__tmp77130
                                  (let ((__tmp77134
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75345_)))
                                        (__tmp77131
                                         (let ((__tmp77132
                                                (let ((__tmp77133
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77133))))
                                           (declare (not safe))
                                           (cons __tmp77132 '()))))
                                    (declare (not safe))
                                    (cons __tmp77134 __tmp77131))))
                             (declare (not safe))
                             (cons __tmp77130 _r75346_))
                           _r75346_))))
                (declare (not safe))
                (foldl1 __tmp77129 _bind75307_ _hd75336_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77119
                                                      (let ((__tmp77120
                                                             (let ((__tmp77121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77127 (car _exprs75306_))
                                  (__tmp77122
                                   (let ((__tmp77123
                                          (let ((__tmp77125
                                                 (lambda (_id75348_ _k75349_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75348_))
                                                       (let ((__tmp77126
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75348_))))
                 (declare (not safe))
                 (cons __tmp77126 _k75349_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77124
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len75340_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77125
                                             _hd75336_
                                             __tmp77124))))
                                     (declare (not safe))
                                     (cons _len75340_ __tmp77123))))
                              (declare (not safe))
                              (cons __tmp77127 __tmp77122))))
                       (declare (not safe))
                       (cons _tmp75342_ __tmp77121))))
                (declare (not safe))
                (cons __tmp77120 _post75308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75303_
                                                  _rest75335_
                                                  __tmp77135
                                                  __tmp77128
                                                  __tmp77119)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75147_
                                                _hd75336_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7530975323_))
                              (let ((_tl7531975376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7530975323_)))
                                    (_hd7531875374_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7530975323_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7531875374_))
                                    (let ((_tl7532175381_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7531875374_)))
                                          (_hd7532075379_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7531875374_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7532175381_))
                                          (let ((_hd75384_ _hd7532075379_)
                                                (_rest75386_ _tl7531975376_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7531775371_
                                               _rest75386_
                                               _hd75384_)))
                                          (let ((_hd75359_ _hd7531875374_)
                                                (_rest75361_ _tl7531975376_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7531475351_
                                               _rest75361_
                                               _hd75359_)))))
                                    (let ((_hd75359_ _hd7531875374_)
                                          (_rest75361_ _tl7531975376_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7531475351_
                                         _rest75361_
                                         _hd75359_)))))
                              (let ()
                                (declare (not safe))
                                (_else7531275331_))))))))
                 (_compile-bind75151_
                  (lambda (_bind75295_ _post75296_ _body75297_)
                    (let ((__tmp77154
                           (let ((__tmp77155
                                  (let ((__tmp77158 (reverse _bind75295_))
                                        (__tmp77156
                                         (let ((__tmp77157
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75152_
                                                   _post75296_
                                                   _body75297_))))
                                           (declare (not safe))
                                           (cons __tmp77157 '()))))
                                    (declare (not safe))
                                    (cons __tmp77158 __tmp77156))))
                             (declare (not safe))
                             (cons 'let __tmp77155))))
                      (declare (not safe))
                      (__SRC__% __tmp77154 _stx75147_))))
                 (_compile-post75152_
                  (lambda (_post75154_ _body75155_)
                    (let ((__tmp77159
                           (let ((__tmp77160
                                  (let ((__tmp77161
                                         (let ((__tmp77163
                                                (lambda (_hd75157_ _r75158_)
                                                  (let* ((_hd7515975182_
                                                          _hd75157_)
                                                         (_E7516375186_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7515975182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7517675280_
                                                           (lambda (_expr75278_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75278_ _r75158_))))
                  (_K7517175258_
                   (lambda (_expr75255_ _id75256_)
                     (let ((__tmp77164
                            (let ((__tmp77165
                                   (let ((__tmp77166
                                          (let ((__tmp77167
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75255_ '()))))
                                            (declare (not safe))
                                            (cons _id75256_ __tmp77167))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77166))))
                              (declare (not safe))
                              (__SRC__% __tmp77165 _stx75147_))))
                       (declare (not safe))
                       (cons __tmp77164 _r75158_))))
                  (_K7516475225_
                   (lambda (_init75190_ _len75191_ _expr75192_ _tmp75193_)
                     (let ((__tmp77168
                            (let ((__tmp77169
                                   (let ((__tmp77170
                                          (let ((__tmp77184
                                                 (let ((__tmp77185
                                                        (let ((__tmp77186
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75192_ '()))))
                  (declare (not safe))
                  (cons _tmp75193_ __tmp77186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77185 '())))
                                                (__tmp77171
                                                 (let ((__tmp77180
                                                        (let ((__tmp77181
                                                               (let ((__tmp77182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77183
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75191_ '()))))
                                (declare (not safe))
                                (cons _tmp75193_ __tmp77183))))
                         (declare (not safe))
                         (cons '__check-values __tmp77182))))
                  (declare (not safe))
                  (__SRC__% __tmp77181 _stx75147_)))
               (__tmp77172
                (let ((__tmp77173
                       (map (lambda (_hd75195_)
                              (let* ((_hd7519675203_ _hd75195_)
                                     (_E7519875207_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7519675203_))))
                                     (_K7519975213_
                                      (lambda (_k75210_ _id75211_)
                                        (let ((__tmp77174
                                               (let ((__tmp77175
                                                      (let ((__tmp77176
                                                             (let ((__tmp77177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77178
                                   (let ((__tmp77179
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75210_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75193_ __tmp77179))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77178))))
                       (declare (not safe))
                       (cons __tmp77177 '()))))
                (declare (not safe))
                (cons _id75211_ __tmp77176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77175))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77174 _stx75147_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7519675203_))
                                    (let ((_hd7520075216_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7519675203_)))
                                          (_tl7520175218_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7519675203_))))
                                      (let* ((_id75221_ _hd7520075216_)
                                             (_k75223_ _tl7520175218_))
                                        (declare (not safe))
                                        (_K7519975213_ _k75223_ _id75221_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7519875207_)))))
                            _init75190_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77180
                                                         __tmp77172))))
                                            (declare (not safe))
                                            (cons __tmp77184 __tmp77171))))
                                     (declare (not safe))
                                     (cons 'let __tmp77170))))
                              (declare (not safe))
                              (__SRC__% __tmp77169 _stx75147_))))
                       (declare (not safe))
                       (cons __tmp77168 _r75158_)))))
              (if (let () (declare (not safe)) (##pair? _hd7515975182_))
                  (let ((_tl7517875285_
                         (let () (declare (not safe)) (##cdr _hd7515975182_)))
                        (_hd7517775283_
                         (let () (declare (not safe)) (##car _hd7515975182_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7517775283_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7517875285_))
                            (let ((_tl7518075290_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7517875285_)))
                                  (_hd7517975288_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7517875285_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7518075290_))
                                  (let ((_expr75293_ _hd7517975288_))
                                    (declare (not safe))
                                    (_K7517675280_ _expr75293_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7518075290_))
                                      (let ((_tl7517075244_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7518075290_)))
                                            (_hd7516975242_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7518075290_))))
                                        (let ((_tmp75233_ _hd7517775283_)
                                              (_expr75240_ _hd7517975288_)
                                              (_len75247_ _hd7516975242_)
                                              (_init75249_ _tl7517075244_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7516475225_
                                             _init75249_
                                             _len75247_
                                             _expr75240_
                                             _tmp75233_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7516375186_)))))
                            (let () (declare (not safe)) (_E7516375186_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7517875285_))
                            (let ((_tl7517575270_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7517875285_)))
                                  (_hd7517475268_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7517875285_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7517575270_))
                                  (let ((_id75266_ _hd7517775283_)
                                        (_expr75273_ _hd7517475268_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7517175258_ _expr75273_ _id75266_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7517575270_))
                                      (let ((_tl7517075244_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7517575270_)))
                                            (_hd7516975242_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7517575270_))))
                                        (let ((_tmp75233_ _hd7517775283_)
                                              (_expr75240_ _hd7517475268_)
                                              (_len75247_ _hd7516975242_)
                                              (_init75249_ _tl7517075244_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7516475225_
                                             _init75249_
                                             _len75247_
                                             _expr75240_
                                             _tmp75233_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7516375186_)))))
                            (let () (declare (not safe)) (_E7516375186_)))))
                  (let () (declare (not safe)) (_E7516375186_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77162 (list _body75155_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77163
                                                   __tmp77162
                                                   _post75154_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77161))))
                             (declare (not safe))
                             (cons 'begin __tmp77160))))
                      (declare (not safe))
                      (__SRC__% __tmp77159 _stx75147_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75147_
             _compile-simple75149_
             _compile-values75150_)))))
    (define __compile-call%
      (lambda (_stx75107_)
        (let* ((_$e75109_ _stx75107_)
               (_$E7511175120_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75109_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75109_))
              (let* ((_$tgt7511275123_
                      (let () (declare (not safe)) (__AST-e _$e75109_)))
                     (_$hd7511375126_
                      (let () (declare (not safe)) (##car _$tgt7511275123_)))
                     (_$tl7511475129_
                      (let () (declare (not safe)) (##cdr _$tgt7511275123_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7511475129_))
                    (let* ((_$tgt7511575133_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7511475129_)))
                           (_$hd7511675136_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7511575133_)))
                           (_$tl7511775139_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7511575133_))))
                      (let* ((_rator75143_ _$hd7511675136_)
                             (_rands75145_ _$tl7511775139_)
                             (__tmp77187
                              (let ((__tmp77189
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75143_)))
                                    (__tmp77188 (map __compile _rands75145_)))
                                (declare (not safe))
                                (cons __tmp77189 __tmp77188))))
                        (declare (not safe))
                        (__SRC__% __tmp77187 _stx75107_)))
                    (let () (declare (not safe)) (_$E7511175120_))))
              (let () (declare (not safe)) (_$E7511175120_))))))
    (define __compile-ref%
      (lambda (_stx75069_)
        (let* ((_$e75071_ _stx75069_)
               (_$E7507375082_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75071_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75071_))
              (let* ((_$tgt7507475085_
                      (let () (declare (not safe)) (__AST-e _$e75071_)))
                     (_$hd7507575088_
                      (let () (declare (not safe)) (##car _$tgt7507475085_)))
                     (_$tl7507675091_
                      (let () (declare (not safe)) (##cdr _$tgt7507475085_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7507675091_))
                    (let* ((_$tgt7507775095_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7507675091_)))
                           (_$hd7507875098_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7507775095_)))
                           (_$tl7507975101_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7507775095_))))
                      (let ((_id75105_ _$hd7507875098_))
                        (if (let ((__tmp77190
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7507975101_))))
                              (declare (not safe))
                              (equal? __tmp77190 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75105_ _stx75069_))
                            (let () (declare (not safe)) (_$E7507375082_)))))
                    (let () (declare (not safe)) (_$E7507375082_))))
              (let () (declare (not safe)) (_$E7507375082_))))))
    (define __compile-setq%
      (lambda (_stx75016_)
        (let* ((_$e75018_ _stx75016_)
               (_$E7502075032_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75018_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75018_))
              (let* ((_$tgt7502175035_
                      (let () (declare (not safe)) (__AST-e _$e75018_)))
                     (_$hd7502275038_
                      (let () (declare (not safe)) (##car _$tgt7502175035_)))
                     (_$tl7502375041_
                      (let () (declare (not safe)) (##cdr _$tgt7502175035_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7502375041_))
                    (let* ((_$tgt7502475045_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7502375041_)))
                           (_$hd7502575048_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7502475045_)))
                           (_$tl7502675051_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7502475045_))))
                      (let ((_id75055_ _$hd7502575048_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7502675051_))
                            (let* ((_$tgt7502775057_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7502675051_)))
                                   (_$hd7502875060_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7502775057_)))
                                   (_$tl7502975063_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7502775057_))))
                              (let ((_expr75067_ _$hd7502875060_))
                                (if (let ((__tmp77196
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7502975063_))))
                                      (declare (not safe))
                                      (equal? __tmp77196 '()))
                                    (let ((__tmp77191
                                           (let ((__tmp77192
                                                  (let ((__tmp77195
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id75055_
                                                            _stx75016_)))
                                                        (__tmp77193
                                                         (let ((__tmp77194
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr75067_))))
                   (declare (not safe))
                   (cons __tmp77194 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77195
                                                          __tmp77193))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77192))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77191 _stx75016_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7502075032_)))))
                            (let () (declare (not safe)) (_$E7502075032_)))))
                    (let () (declare (not safe)) (_$E7502075032_))))
              (let () (declare (not safe)) (_$E7502075032_))))))
    (define __compile-if%
      (lambda (_stx74948_)
        (let* ((_$e74950_ _stx74948_)
               (_$E7495274967_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74950_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74950_))
              (let* ((_$tgt7495374970_
                      (let () (declare (not safe)) (__AST-e _$e74950_)))
                     (_$hd7495474973_
                      (let () (declare (not safe)) (##car _$tgt7495374970_)))
                     (_$tl7495574976_
                      (let () (declare (not safe)) (##cdr _$tgt7495374970_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7495574976_))
                    (let* ((_$tgt7495674980_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7495574976_)))
                           (_$hd7495774983_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7495674980_)))
                           (_$tl7495874986_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7495674980_))))
                      (let ((_p74990_ _$hd7495774983_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7495874986_))
                            (let* ((_$tgt7495974992_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7495874986_)))
                                   (_$hd7496074995_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7495974992_)))
                                   (_$tl7496174998_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7495974992_))))
                              (let ((_t75002_ _$hd7496074995_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7496174998_))
                                    (let* ((_$tgt7496275004_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7496174998_)))
                                           (_$hd7496375007_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7496275004_)))
                                           (_$tl7496475010_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7496275004_))))
                                      (let ((_f75014_ _$hd7496375007_))
                                        (if (let ((__tmp77204
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7496475010_))))
                                              (declare (not safe))
                                              (equal? __tmp77204 '()))
                                            (let ((__tmp77197
                                                   (let ((__tmp77198
                                                          (let ((__tmp77203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p74990_)))
                        (__tmp77199
                         (let ((__tmp77202
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75002_)))
                               (__tmp77200
                                (let ((__tmp77201
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f75014_))))
                                  (declare (not safe))
                                  (cons __tmp77201 '()))))
                           (declare (not safe))
                           (cons __tmp77202 __tmp77200))))
                    (declare (not safe))
                    (cons __tmp77203 __tmp77199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77198))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77197 _stx74948_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7495274967_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7495274967_)))))
                            (let () (declare (not safe)) (_$E7495274967_)))))
                    (let () (declare (not safe)) (_$E7495274967_))))
              (let () (declare (not safe)) (_$E7495274967_))))))
    (define __compile-quote%
      (lambda (_stx74910_)
        (let* ((_$e74912_ _stx74910_)
               (_$E7491474923_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74912_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74912_))
              (let* ((_$tgt7491574926_
                      (let () (declare (not safe)) (__AST-e _$e74912_)))
                     (_$hd7491674929_
                      (let () (declare (not safe)) (##car _$tgt7491574926_)))
                     (_$tl7491774932_
                      (let () (declare (not safe)) (##cdr _$tgt7491574926_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7491774932_))
                    (let* ((_$tgt7491874936_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7491774932_)))
                           (_$hd7491974939_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7491874936_)))
                           (_$tl7492074942_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7491874936_))))
                      (let ((_e74946_ _$hd7491974939_))
                        (if (let ((__tmp77208
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7492074942_))))
                              (declare (not safe))
                              (equal? __tmp77208 '()))
                            (let ((__tmp77205
                                   (let ((__tmp77206
                                          (let ((__tmp77207
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e74946_))))
                                            (declare (not safe))
                                            (cons __tmp77207 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77206))))
                              (declare (not safe))
                              (__SRC__% __tmp77205 _stx74910_))
                            (let () (declare (not safe)) (_$E7491474923_)))))
                    (let () (declare (not safe)) (_$E7491474923_))))
              (let () (declare (not safe)) (_$E7491474923_))))))
    (define __compile-quote-syntax%
      (lambda (_stx74872_)
        (let* ((_$e74874_ _stx74872_)
               (_$E7487674885_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74874_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74874_))
              (let* ((_$tgt7487774888_
                      (let () (declare (not safe)) (__AST-e _$e74874_)))
                     (_$hd7487874891_
                      (let () (declare (not safe)) (##car _$tgt7487774888_)))
                     (_$tl7487974894_
                      (let () (declare (not safe)) (##cdr _$tgt7487774888_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7487974894_))
                    (let* ((_$tgt7488074898_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7487974894_)))
                           (_$hd7488174901_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7488074898_)))
                           (_$tl7488274904_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7488074898_))))
                      (let ((_e74908_ _$hd7488174901_))
                        (if (let ((__tmp77211
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7488274904_))))
                              (declare (not safe))
                              (equal? __tmp77211 '()))
                            (let ((__tmp77209
                                   (let ((__tmp77210
                                          (let ()
                                            (declare (not safe))
                                            (cons _e74908_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77210))))
                              (declare (not safe))
                              (__SRC__% __tmp77209 _stx74872_))
                            (let () (declare (not safe)) (_$E7487674885_)))))
                    (let () (declare (not safe)) (_$E7487674885_))))
              (let () (declare (not safe)) (_$E7487674885_))))))
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
