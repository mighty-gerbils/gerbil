(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#identifier-wrap::t
    (make-struct-type
     'gx#identifier-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f
     '(marks)))
  (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
  (define gx#make-identifier-wrap
    (lambda _$args4471_
      (apply make-struct-instance gx#identifier-wrap::t _$args4471_)))
  (define gx#identifier-wrap-marks
    (make-struct-field-accessor gx#identifier-wrap::t '0))
  (define gx#identifier-wrap-marks-set!
    (make-struct-field-mutator gx#identifier-wrap::t '0))
  (define gx#syntax-wrap::t
    (make-struct-type
     'gx#syntax-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f
     '(mark)))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args4468_
      (apply make-struct-instance gx#syntax-wrap::t _$args4468_)))
  (define gx#syntax-wrap-mark
    (make-struct-field-accessor gx#syntax-wrap::t '0))
  (define gx#syntax-wrap-mark-set!
    (make-struct-field-mutator gx#syntax-wrap::t '0))
  (define gx#syntax-quote::t
    (make-struct-type
     'gx#syntax-quote::t
     AST::t
     '2
     'syntax
     '((final: . #t))
     '#f
     '(context marks)))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args4465_
      (apply make-struct-instance gx#syntax-quote::t _$args4465_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4463_) (symbol? (gx#stx-e _stx4463_))))
  (define gx#identifier-quote?
    (lambda (_stx4461_)
      (if (##structure-direct-instance-of? _stx4461_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4461_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4456_)
      (let ((_$e4458_
             (##structure-direct-instance-of? _stx4456_ 'gx#syntax-quote::t)))
        (if _$e4458_
            _$e4458_
            (if (##structure-instance-of? _stx4456_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4456_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4452_)
      (let ((_stx4454_ (gx#stx-unwrap__0 _stx4452_)))
        (if (##structure-instance-of? _stx4454_ 'gerbil#AST::t)
            (##structure-ref _stx4454_ '1 AST::t '#f)
            _stx4454_))))
  (define gx#syntax->datum
    (lambda (_stx4450_)
      (if (##structure-instance-of? _stx4450_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4450_ '1 AST::t '#f))
          (if (pair? _stx4450_)
              (cons (gx#syntax->datum (car _stx4450_))
                    (gx#syntax->datum (cdr _stx4450_)))
              (if (vector? _stx4450_)
                  (vector-map gx#syntax->datum _stx4450_)
                  (if (box? _stx4450_)
                      (box (gx#syntax->datum (unbox _stx4450_)))
                      _stx4450_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx4393_ _datum4394_ _src4395_ _quote?4396_)
        (letrec ((_wrap-datum4398_
                  (lambda (_e4422_ _marks4423_)
                    (_wrap-inner4400_
                     _e4422_
                     (lambda (_g44244426_)
                       (##structure
                        gx#identifier-wrap::t
                        _g44244426_
                        _src4395_
                        _marks4423_)))))
                 (_wrap-quote4399_
                  (lambda (_e4414_ _ctx4415_ _marks4416_)
                    (_wrap-inner4400_
                     _e4414_
                     (lambda (_g44174419_)
                       (##structure
                        gx#syntax-quote::t
                        _g44174419_
                        _src4395_
                        _ctx4415_
                        _marks4416_)))))
                 (_wrap-inner4400_
                  (lambda (_e4407_ _wrap-e4408_)
                    (let _recur4410_ ((_e4412_ _e4407_))
                      (if (symbol? _e4412_)
                          (_wrap-e4408_ _e4412_)
                          (if (pair? _e4412_)
                              (cons (_recur4410_ (car _e4412_))
                                    (_recur4410_ (cdr _e4412_)))
                              (if (vector? _e4412_)
                                  (vector-map _recur4410_ _e4412_)
                                  (if (box? _e4412_)
                                      (box (_recur4410_ (unbox _e4412_)))
                                      _e4412_)))))))
                 (_wrap-outer4401_
                  (lambda (_e4405_)
                    (if (##structure-instance-of? _e4405_ 'gerbil#AST::t)
                        _e4405_
                        (##structure AST::t _e4405_ _src4395_)))))
          (if (##structure-instance-of? _datum4394_ 'gerbil#AST::t)
              _datum4394_
              (if (not _stx4393_)
                  (##structure AST::t _datum4394_ _src4395_)
                  (if (gx#identifier? _stx4393_)
                      (let ((_stx4403_ (gx#stx-unwrap__0 _stx4393_)))
                        (_wrap-outer4401_
                         (if (##structure-direct-instance-of?
                              _stx4403_
                              'gx#syntax-quote::t)
                             (if _quote?4396_
                                 (_wrap-quote4399_
                                  _datum4394_
                                  (##direct-structure-ref
                                   _stx4403_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4403_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4398_
                                  _datum4394_
                                  (##direct-structure-ref
                                   _stx4403_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4398_
                              _datum4394_
                              (##direct-structure-ref
                               _stx4403_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4393_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4432_ _datum4433_)
          (let* ((_src4435_ '#f) (_quote?4437_ '#t))
            (gx#datum->syntax__%
             _stx4432_
             _datum4433_
             _src4435_
             _quote?4437_))))
      (define gx#datum->syntax__1
        (lambda (_stx4439_ _datum4440_ _src4441_)
          (let ((_quote?4443_ '#t))
            (gx#datum->syntax__%
             _stx4439_
             _datum4440_
             _src4441_
             _quote?4443_))))
      (define gx#datum->syntax
        (lambda _g4474_
          (let ((_g4473_ (length _g4474_)))
            (cond ((fx= _g4473_ 2) (apply gx#datum->syntax__0 _g4474_))
                  ((fx= _g4473_ 3) (apply gx#datum->syntax__1 _g4474_))
                  ((fx= _g4473_ 4) (apply gx#datum->syntax__% _g4474_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4474_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx4369_ _marks4370_)
        (let _lp4372_ ((_e4374_ _stx4369_)
                       (_marks4375_ _marks4370_)
                       (_src4376_ (gx#stx-source _stx4369_)))
          (if (##structure-direct-instance-of? _e4374_ 'gx#syntax-wrap::t)
              (_lp4372_
               (##structure-ref _e4374_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4374_ '3 gx#syntax-wrap::t '#f)
                _marks4375_)
               (##structure-ref _e4374_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4374_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4375_)
                      _e4374_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4374_ '1 AST::t '#f)
                       (##structure-ref _e4374_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4374_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4375_)))
                  (if (##structure-direct-instance-of?
                       _e4374_
                       'gx#syntax-quote::t)
                      _e4374_
                      (if (##structure-instance-of? _e4374_ 'gerbil#AST::t)
                          (_lp4372_
                           (##structure-ref _e4374_ '1 AST::t '#f)
                           _marks4375_
                           (##structure-ref _e4374_ '2 AST::t '#f))
                          (if (symbol? _e4374_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4374_
                               _src4376_
                               (reverse _marks4375_))
                              (if (null? _marks4375_)
                                  _e4374_
                                  (if (pair? _e4374_)
                                      (cons (gx#stx-wrap
                                             (car _e4374_)
                                             _marks4375_)
                                            (gx#stx-wrap
                                             (cdr _e4374_)
                                             _marks4375_))
                                      (if (vector? _e4374_)
                                          (vector-map
                                           (lambda (_g43774379_)
                                             (gx#stx-wrap
                                              _g43774379_
                                              _marks4375_))
                                           _e4374_)
                                          (if (box? _e4374_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4374_)
                                                    _marks4375_))
                                              _e4374_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4385_)
          (let ((_marks4387_ '())) (gx#stx-unwrap__% _stx4385_ _marks4387_))))
      (define gx#stx-unwrap
        (lambda _g4476_
          (let ((_g4475_ (length _g4476_)))
            (cond ((fx= _g4475_ 1) (apply gx#stx-unwrap__0 _g4476_))
                  ((fx= _g4475_ 2) (apply gx#stx-unwrap__% _g4476_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4476_))))))))
  (define gx#stx-wrap
    (lambda (_stx4362_ _marks4363_)
      (foldl1 (lambda (_mark4365_ _stx4366_)
                (gx#stx-apply-mark _stx4366_ _mark4365_))
              _stx4362_
              _marks4363_)))
  (define gx#stx-rewrap
    (lambda (_stx4356_ _marks4357_)
      (foldr1 (lambda (_mark4359_ _stx4360_)
                (gx#stx-apply-mark _stx4360_ _mark4359_))
              _stx4356_
              _marks4357_)))
  (define gx#stx-apply-mark
    (lambda (_stx4353_ _mark4354_)
      (if (##structure-direct-instance-of? _stx4353_ 'gx#syntax-quote::t)
          _stx4353_
          (if (if (##structure-direct-instance-of?
                   _stx4353_
                   'gx#syntax-wrap::t)
                  (eq? _mark4354_
                       (##direct-structure-ref
                        _stx4353_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4353_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4353_
               (gx#stx-source _stx4353_)
               _mark4354_)))))
  (define gx#apply-mark
    (lambda (_mark4317_ _marks4318_)
      (let* ((_marks43194327_ _marks4318_)
             (_E43224331_
              (lambda () (error '"No clause matching" _marks43194327_)))
             (_else43214335_ (lambda () (cons _mark4317_ _marks4318_)))
             (_K43234341_
              (lambda (_rest4338_ _hd4339_)
                (if (eq? _mark4317_ _hd4339_)
                    _rest4338_
                    (cons _mark4317_ _marks4318_)))))
        (if (##pair? _marks43194327_)
            (let ((_hd43244344_ (##car _marks43194327_))
                  (_tl43254346_ (##cdr _marks43194327_)))
              (let* ((_hd4349_ _hd43244344_) (_rest4351_ _tl43254346_))
                (_K43234341_ _rest4351_ _hd4349_)))
            (_else43214335_)))))
  (define gx#stx-e
    (lambda (_stx4315_)
      (if (##structure-instance-of? _stx4315_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4315_ '1 AST::t '#f))
          _stx4315_)))
  (define gx#stx-source
    (lambda (_stx4313_)
      (if (##structure-instance-of? _stx4313_ 'gerbil#AST::t)
          (##structure-ref _stx4313_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4307_ _src4308_)
      (if (let ((_$e4310_ (##structure-instance-of? _stx4307_ 'gerbil#AST::t)))
            (if _$e4310_ _$e4310_ (not _src4308_)))
          _stx4307_
          (##structure AST::t _stx4307_ _src4308_))))
  (define gx#stx-datum?
    (lambda (_stx4305_) (gx#self-quoting? (gx#stx-e _stx4305_))))
  (define gx#self-quoting?
    (lambda (_x4288_)
      (let ((_$e4290_ (immediate? _x4288_)))
        (if _$e4290_
            _$e4290_
            (let ((_$e4293_ (number? _x4288_)))
              (if _$e4293_
                  _$e4293_
                  (let ((_$e4296_ (keyword? _x4288_)))
                    (if _$e4296_
                        _$e4296_
                        (let ((_$e4299_ (string? _x4288_)))
                          (if _$e4299_
                              _$e4299_
                              (let ((_$e4302_ (vector? _x4288_)))
                                (if _$e4302_
                                    _$e4302_
                                    (u8vector? _x4288_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4286_) (boolean? (gx#stx-e _e4286_))))
  (define gx#stx-keyword? (lambda (_e4284_) (keyword? (gx#stx-e _e4284_))))
  (define gx#stx-char? (lambda (_e4282_) (char? (gx#stx-e _e4282_))))
  (define gx#stx-number? (lambda (_e4280_) (number? (gx#stx-e _e4280_))))
  (define gx#stx-fixnum? (lambda (_e4278_) (fixnum? (gx#stx-e _e4278_))))
  (define gx#stx-string? (lambda (_e4276_) (string? (gx#stx-e _e4276_))))
  (define gx#stx-null? (lambda (_e4274_) (null? (gx#stx-e _e4274_))))
  (define gx#stx-pair? (lambda (_e4272_) (pair? (gx#stx-e _e4272_))))
  (define gx#stx-list?
    (lambda (_e4232_)
      (let* ((_g42334242_ (gx#stx-e _e4232_))
             (_E42364246_
              (lambda () (error '"No clause matching" _g42334242_)))
             (_try-match42354257_
              (lambda ()
                (let* ((_K42374252_ (lambda (_tail4250_) (null? _tail4250_)))
                       (_tail4255_ _g42334242_))
                  (null? _tail4255_))))
             (_K42384262_ (lambda (_rest4260_) (gx#stx-list? _rest4260_))))
        (if (##pair? _g42334242_)
            (let ((_hd42394265_ (##car _g42334242_))
                  (_tl42404267_ (##cdr _g42334242_)))
              (let ((_rest4270_ _tl42404267_)) (gx#stx-list? _rest4270_)))
            (_try-match42354257_)))))
  (define gx#stx-pair/null?
    (lambda (_e4225_)
      (let* ((_e4227_ (gx#stx-e _e4225_)) (_$e4229_ (pair? _e4227_)))
        (if _$e4229_ _$e4229_ (null? _e4227_)))))
  (define gx#stx-vector? (lambda (_e4223_) (vector? (gx#stx-e _e4223_))))
  (define gx#stx-box? (lambda (_e4221_) (box? (gx#stx-e _e4221_))))
  (define gx#stx-eq?
    (lambda (_x4218_ _y4219_) (eq? (gx#stx-e _x4218_) (gx#stx-e _y4219_))))
  (define gx#stx-eqv?
    (lambda (_x4215_ _y4216_) (eqv? (gx#stx-e _x4215_) (gx#stx-e _y4216_))))
  (define gx#stx-equal?
    (lambda (_x4212_ _y4213_) (equal? (gx#stx-e _x4212_) (gx#stx-e _y4213_))))
  (define gx#stx-false? (lambda (_x4210_) (not (gx#stx-e _x4210_))))
  (define gx#stx-identifier
    (lambda (_template4207_ . _args4208_)
      (gx#datum->syntax__1
       _template4207_
       (apply make-symbol (map gx#stx-e _args4208_))
       (gx#stx-source _template4207_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4203_)
      (let ((_stx4205_ (gx#stx-unwrap__0 _stx4203_)))
        (if (##structure-direct-instance-of? _stx4205_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4205_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4205_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4199_)
      (let ((_stx4201_ (gx#stx-unwrap__0 _stx4199_)))
        (if (gx#identifier-quote? _stx4201_)
            (##direct-structure-ref _stx4201_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4154_)
      (let* ((_g41554165_ (gx#stx-e _stx4154_))
             (_E41594169_
              (lambda () (error '"No clause matching" _g41554165_)))
             (_else41584173_ (lambda () '#f))
             (_try-match41574181_
              (lambda ()
                (let ((_K41604178_ (lambda () '#t)))
                  (if (##null? _g41554165_) (_K41604178_) (_else41584173_)))))
             (_K41614187_
              (lambda (_rest4184_ _hd4185_)
                (if (gx#identifier? _hd4185_)
                    (gx#identifier-list? _rest4184_)
                    '#f))))
        (if (##pair? _g41554165_)
            (let ((_hd41624190_ (##car _g41554165_))
                  (_tl41634192_ (##cdr _g41554165_)))
              (let* ((_hd4195_ _hd41624190_) (_rest4197_ _tl41634192_))
                (_K41614187_ _rest4197_ _hd4195_)))
            (_try-match41574181_)))))
  (begin
    (define gx#genident__%
      (lambda (_e4131_ _src4132_)
        (gx#stx-wrap-source
         (gensym (let ((_e4134_ (gx#stx-e _e4131_)))
                   (if (interned-symbol? _e4134_) _e4134_ 'g)))
         (let ((_$e4136_ (gx#stx-source _e4131_)))
           (if _$e4136_ _$e4136_ _src4132_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4143_ 'g) (_src4145_ '#f))
            (gx#genident__% _e4143_ _src4145_))))
      (define gx#genident__1
        (lambda (_e4147_)
          (let ((_src4149_ '#f)) (gx#genident__% _e4147_ _src4149_))))
      (define gx#genident
        (lambda _g4478_
          (let ((_g4477_ (length _g4478_)))
            (cond ((fx= _g4477_ 0) (apply gx#genident__0 _g4478_))
                  ((fx= _g4477_ 1) (apply gx#genident__1 _g4478_))
                  ((fx= _g4477_ 2) (apply gx#genident__% _g4478_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4478_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4128_) (gx#stx-map1 gx#genident _stx-lst4128_)))
  (define gx#syntax->list (lambda (_stx4126_) (gx#stx-map1 values _stx4126_)))
  (define gx#stx-car (lambda (_stx4124_) (car (gx#syntax-e _stx4124_))))
  (define gx#stx-cdr (lambda (_stx4122_) (cdr (gx#syntax-e _stx4122_))))
  (define gx#stx-length
    (lambda (_stx4085_)
      (let _lp4087_ ((_rest4089_ _stx4085_) (_n4090_ '0))
        (let* ((_g40914099_ (gx#stx-e _rest4089_))
               (_E40944103_
                (lambda () (error '"No clause matching" _g40914099_)))
               (_else40934107_ (lambda () _n4090_))
               (_K40954112_
                (lambda (_rest4110_) (_lp4087_ _rest4110_ (fx+ _n4090_ '1)))))
          (if (##pair? _g40914099_)
              (let ((_hd40964115_ (##car _g40914099_))
                    (_tl40974117_ (##cdr _g40914099_)))
                (let ((_rest4120_ _tl40974117_)) (_K40954112_ _rest4120_)))
              (_else40934107_))))))
  (define gx#stx-for-each
    (lambda _g4480_
      (let ((_g4479_ (length _g4480_)))
        (cond ((fx= _g4479_ 2) (apply gx#stx-for-each1 _g4480_))
              ((fx= _g4479_ 3) (apply gx#stx-for-each2 _g4480_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4480_))))))
  (define gx#stx-for-each1
    (lambda (_f4028_ _stx4029_)
      (let _lp4031_ ((_rest4033_ _stx4029_))
        (let* ((_g40344044_ (gx#syntax-e _rest4033_))
               (_E40384048_
                (lambda () (error '"No clause matching" _g40344044_)))
               (_else40374052_ (lambda () (_f4028_ _rest4033_)))
               (_try-match40364060_
                (lambda ()
                  (let ((_K40394057_ (lambda () '#!void)))
                    (if (##null? _g40344044_)
                        (_K40394057_)
                        (_else40374052_)))))
               (_K40404066_
                (lambda (_rest4063_ _hd4064_)
                  (begin (_f4028_ _hd4064_) (_lp4031_ _rest4063_)))))
          (if (##pair? _g40344044_)
              (let ((_hd40414069_ (##car _g40344044_))
                    (_tl40424071_ (##cdr _g40344044_)))
                (let* ((_hd4074_ _hd40414069_) (_rest4076_ _tl40424071_))
                  (_K40404066_ _rest4076_ _hd4074_)))
              (_try-match40364060_))))))
  (define gx#stx-for-each2
    (lambda (_f3933_ _xstx3934_ _ystx3935_)
      (let _lp3937_ ((_xrest3939_ _xstx3934_) (_yrest3940_ _ystx3935_))
        (let* ((_g39413951_ (gx#syntax-e _xrest3939_))
               (_E39453955_
                (lambda () (error '"No clause matching" _g39413951_)))
               (_else39443959_ (lambda () '#!void))
               (_try-match39433982_
                (lambda ()
                  (let ((_K39463979_
                         (lambda ()
                           (let* ((_yrest39633968_ _yrest3940_)
                                  (_E39653972_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest39633968_)))
                                  (_K39663976_
                                   (lambda ()
                                     (_f3933_ _xrest3939_ _yrest3940_))))
                             (if (not (gx#stx-null? _yrest39633968_))
                                 (_K39663976_)
                                 (_E39653972_))))))
                    (if (not (null? _g39413951_))
                        (_K39463979_)
                        (_else39443959_)))))
               (_K39474016_
                (lambda (_xrest3985_ _xhd3986_)
                  (let* ((_g39873994_ (gx#syntax-e _yrest3940_))
                         (_E39893998_
                          (lambda ()
                            (error '"No clause matching" _g39873994_)))
                         (_K39904004_
                          (lambda (_yrest4001_ _yhd4002_)
                            (begin
                              (_f3933_ _xhd3986_ _yhd4002_)
                              (_lp3937_ _xrest3985_ _yrest4001_)))))
                    (if (##pair? _g39873994_)
                        (let ((_hd39914007_ (##car _g39873994_))
                              (_tl39924009_ (##cdr _g39873994_)))
                          (let* ((_yhd4012_ _hd39914007_)
                                 (_yrest4014_ _tl39924009_))
                            (_K39904004_ _yrest4014_ _yhd4012_)))
                        (_E39893998_))))))
          (if (##pair? _g39413951_)
              (let ((_hd39484019_ (##car _g39413951_))
                    (_tl39494021_ (##cdr _g39413951_)))
                (let* ((_xhd4024_ _hd39484019_) (_xrest4026_ _tl39494021_))
                  (_K39474016_ _xrest4026_ _xhd4024_)))
              (_try-match39433982_))))))
  (define gx#stx-map
    (lambda _g4482_
      (let ((_g4481_ (length _g4482_)))
        (cond ((fx= _g4481_ 2) (apply gx#stx-map1 _g4482_))
              ((fx= _g4481_ 3) (apply gx#stx-map2 _g4482_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4482_))))))
  (define gx#stx-map1
    (lambda (_f3876_ _stx3877_)
      (let _recur3879_ ((_rest3881_ _stx3877_))
        (let* ((_g38823892_ (gx#syntax-e _rest3881_))
               (_E38863896_
                (lambda () (error '"No clause matching" _g38823892_)))
               (_else38853900_ (lambda () (_f3876_ _rest3881_)))
               (_try-match38843908_
                (lambda ()
                  (let ((_K38873905_ (lambda () '())))
                    (if (##null? _g38823892_)
                        (_K38873905_)
                        (_else38853900_)))))
               (_K38883914_
                (lambda (_rest3911_ _hd3912_)
                  (cons (_f3876_ _hd3912_) (_recur3879_ _rest3911_)))))
          (if (##pair? _g38823892_)
              (let ((_hd38893917_ (##car _g38823892_))
                    (_tl38903919_ (##cdr _g38823892_)))
                (let* ((_hd3922_ _hd38893917_) (_rest3924_ _tl38903919_))
                  (_K38883914_ _rest3924_ _hd3922_)))
              (_try-match38843908_))))))
  (define gx#stx-map2
    (lambda (_f3781_ _xstx3782_ _ystx3783_)
      (let _recur3785_ ((_xrest3787_ _xstx3782_) (_yrest3788_ _ystx3783_))
        (let* ((_g37893799_ (gx#syntax-e _xrest3787_))
               (_E37933803_
                (lambda () (error '"No clause matching" _g37893799_)))
               (_else37923807_ (lambda () '()))
               (_try-match37913830_
                (lambda ()
                  (let ((_K37943827_
                         (lambda ()
                           (let* ((_yrest38113816_ _yrest3788_)
                                  (_E38133820_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest38113816_)))
                                  (_K38143824_
                                   (lambda ()
                                     (_f3781_ _xrest3787_ _yrest3788_))))
                             (if (not (gx#stx-null? _yrest38113816_))
                                 (_K38143824_)
                                 (_E38133820_))))))
                    (if (not (null? _g37893799_))
                        (_K37943827_)
                        (_else37923807_)))))
               (_K37953864_
                (lambda (_xrest3833_ _xhd3834_)
                  (let* ((_g38353842_ (gx#syntax-e _yrest3788_))
                         (_E38373846_
                          (lambda ()
                            (error '"No clause matching" _g38353842_)))
                         (_K38383852_
                          (lambda (_yrest3849_ _yhd3850_)
                            (cons (_f3781_ _xhd3834_ _yhd3850_)
                                  (_recur3785_ _xrest3833_ _yrest3849_)))))
                    (if (##pair? _g38353842_)
                        (let ((_hd38393855_ (##car _g38353842_))
                              (_tl38403857_ (##cdr _g38353842_)))
                          (let* ((_yhd3860_ _hd38393855_)
                                 (_yrest3862_ _tl38403857_))
                            (_K38383852_ _yrest3862_ _yhd3860_)))
                        (_E38373846_))))))
          (if (##pair? _g37893799_)
              (let ((_hd37963867_ (##car _g37893799_))
                    (_tl37973869_ (##cdr _g37893799_)))
                (let* ((_xhd3872_ _hd37963867_) (_xrest3874_ _tl37973869_))
                  (_K37953864_ _xrest3874_ _xhd3872_)))
              (_try-match37913830_))))))
  (define gx#stx-andmap
    (lambda (_f3731_ _stx3732_)
      (let _lp3734_ ((_rest3736_ _stx3732_))
        (let* ((_g37373747_ (gx#syntax-e _rest3736_))
               (_E37413751_
                (lambda () (error '"No clause matching" _g37373747_)))
               (_else37403755_ (lambda () (_f3731_ _rest3736_)))
               (_try-match37393763_
                (lambda ()
                  (let ((_K37423760_ (lambda () '#t)))
                    (if (##null? _g37373747_)
                        (_K37423760_)
                        (_else37403755_)))))
               (_K37433769_
                (lambda (_rest3766_ _hd3767_)
                  (if (_f3731_ _hd3767_) (_lp3734_ _rest3766_) '#f))))
          (if (##pair? _g37373747_)
              (let ((_hd37443772_ (##car _g37373747_))
                    (_tl37453774_ (##cdr _g37373747_)))
                (let* ((_hd3777_ _hd37443772_) (_rest3779_ _tl37453774_))
                  (_K37433769_ _rest3779_ _hd3777_)))
              (_try-match37393763_))))))
  (define gx#stx-ormap
    (lambda (_f3678_ _stx3679_)
      (let _lp3681_ ((_rest3683_ _stx3679_))
        (let* ((_g36843694_ (gx#syntax-e _rest3683_))
               (_E36883698_
                (lambda () (error '"No clause matching" _g36843694_)))
               (_else36873702_ (lambda () (_f3678_ _rest3683_)))
               (_try-match36863710_
                (lambda ()
                  (let ((_K36893707_ (lambda () '#f)))
                    (if (##null? _g36843694_)
                        (_K36893707_)
                        (_else36873702_)))))
               (_K36903719_
                (lambda (_rest3713_ _hd3714_)
                  (let ((_$e3716_ (_f3678_ _hd3714_)))
                    (if _$e3716_ _$e3716_ (_lp3681_ _rest3713_))))))
          (if (##pair? _g36843694_)
              (let ((_hd36913722_ (##car _g36843694_))
                    (_tl36923724_ (##cdr _g36843694_)))
                (let* ((_hd3727_ _hd36913722_) (_rest3729_ _tl36923724_))
                  (_K36903719_ _rest3729_ _hd3727_)))
              (_try-match36863710_))))))
  (define gx#stx-foldl
    (lambda (_f3626_ _iv3627_ _stx3628_)
      (let _lp3630_ ((_r3632_ _iv3627_) (_rest3633_ _stx3628_))
        (let* ((_g36343644_ (gx#syntax-e _rest3633_))
               (_E36383648_
                (lambda () (error '"No clause matching" _g36343644_)))
               (_else36373652_ (lambda () (_f3626_ _rest3633_ _r3632_)))
               (_try-match36363660_
                (lambda ()
                  (let ((_K36393657_ (lambda () _r3632_)))
                    (if (##null? _g36343644_)
                        (_K36393657_)
                        (_else36373652_)))))
               (_K36403666_
                (lambda (_rest3663_ _hd3664_)
                  (_lp3630_ (_f3626_ _hd3664_ _r3632_) _rest3663_))))
          (if (##pair? _g36343644_)
              (let ((_hd36413669_ (##car _g36343644_))
                    (_tl36423671_ (##cdr _g36343644_)))
                (let* ((_hd3674_ _hd36413669_) (_rest3676_ _tl36423671_))
                  (_K36403666_ _rest3676_ _hd3674_)))
              (_try-match36363660_))))))
  (define gx#stx-foldr
    (lambda (_f3575_ _iv3576_ _stx3577_)
      (let _recur3579_ ((_rest3581_ _stx3577_))
        (let* ((_g35823592_ (gx#syntax-e _rest3581_))
               (_E35863596_
                (lambda () (error '"No clause matching" _g35823592_)))
               (_else35853600_ (lambda () (_f3575_ _rest3581_ _iv3576_)))
               (_try-match35843608_
                (lambda ()
                  (let ((_K35873605_ (lambda () _iv3576_)))
                    (if (##null? _g35823592_)
                        (_K35873605_)
                        (_else35853600_)))))
               (_K35883614_
                (lambda (_rest3611_ _hd3612_)
                  (_f3575_ _hd3612_ (_recur3579_ _rest3611_)))))
          (if (##pair? _g35823592_)
              (let ((_hd35893617_ (##car _g35823592_))
                    (_tl35903619_ (##cdr _g35823592_)))
                (let* ((_hd3622_ _hd35893617_) (_rest3624_ _tl35903619_))
                  (_K35883614_ _rest3624_ _hd3622_)))
              (_try-match35843608_))))))
  (define gx#stx-reverse
    (lambda (_stx3573_) (gx#stx-foldl cons '() _stx3573_)))
  (define gx#stx-last
    (lambda (_stx3534_)
      (let _lp3536_ ((_rest3538_ _stx3534_))
        (let* ((_g35393547_ (gx#syntax-e _rest3538_))
               (_E35423551_
                (lambda () (error '"No clause matching" _g35393547_)))
               (_else35413555_ (lambda () _rest3538_))
               (_K35433561_
                (lambda (_rest3558_ _hd3559_)
                  (if (gx#stx-null? _rest3558_)
                      _hd3559_
                      (_lp3536_ _rest3558_)))))
          (if (##pair? _g35393547_)
              (let ((_hd35443564_ (##car _g35393547_))
                    (_tl35453566_ (##cdr _g35393547_)))
                (let* ((_hd3569_ _hd35443564_) (_rest3571_ _tl35453566_))
                  (_K35433561_ _rest3571_ _hd3569_)))
              (_else35413555_))))))
  (define gx#stx-last-pair
    (lambda (_stx3503_)
      (let _lp3505_ ((_hd3507_ _stx3503_))
        (let* ((_g35083515_ (gx#syntax-e _hd3507_))
               (_E35103519_
                (lambda () (error '"No clause matching" _g35083515_)))
               (_K35113524_
                (lambda (_rest3522_)
                  (if (gx#stx-pair? _rest3522_)
                      (_lp3505_ _rest3522_)
                      _hd3507_))))
          (if (##pair? _g35083515_)
              (let ((_hd35123527_ (##car _g35083515_))
                    (_tl35133529_ (##cdr _g35083515_)))
                (let ((_rest3532_ _tl35133529_)) (_K35113524_ _rest3532_)))
              (_E35103519_))))))
  (define gx#stx-list-tail
    (lambda (_stx3470_ _k3471_)
      (let _lp3473_ ((_rest3475_ _stx3470_) (_k3476_ _k3471_))
        (if (fxpositive? _k3476_)
            (let* ((_g34773484_ (gx#syntax-e _rest3475_))
                   (_E34793488_
                    (lambda () (error '"No clause matching" _g34773484_)))
                   (_K34803493_
                    (lambda (_rest3491_)
                      (_lp3473_ _rest3491_ (fx- _k3476_ '1)))))
              (if (##pair? _g34773484_)
                  (let ((_hd34813496_ (##car _g34773484_))
                        (_tl34823498_ (##cdr _g34773484_)))
                    (let ((_rest3501_ _tl34823498_)) (_K34803493_ _rest3501_)))
                  (_E34793488_)))
            _rest3475_))))
  (define gx#stx-list-ref
    (lambda (_stx3467_ _k3468_)
      (gx#stx-car (gx#stx-list-tail _stx3467_ _k3468_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx3377_ _key?3378_)
        (let _lp3380_ ((_rest3382_ _stx3377_))
          (let* ((_g33833393_ (gx#stx-e _rest3382_))
                 (_E33873397_
                  (lambda () (error '"No clause matching" _g33833393_)))
                 (_else33863401_ (lambda () '#f))
                 (_try-match33853409_
                  (lambda ()
                    (let ((_K33883406_ (lambda () '#t)))
                      (if (##null? _g33833393_)
                          (_K33883406_)
                          (_else33863401_)))))
                 (_K33893445_
                  (lambda (_rest3412_ _hd3413_)
                    (if (_key?3378_ _hd3413_)
                        (let* ((_g34143422_ (gx#stx-e _rest3412_))
                               (_E34173426_
                                (lambda ()
                                  (error '"No clause matching" _g34143422_)))
                               (_else34163430_ (lambda () '#f))
                               (_K34183435_
                                (lambda (_rest3433_) (_lp3380_ _rest3433_))))
                          (if (##pair? _g34143422_)
                              (let ((_hd34193438_ (##car _g34143422_))
                                    (_tl34203440_ (##cdr _g34143422_)))
                                (let ((_rest3443_ _tl34203440_))
                                  (_K34183435_ _rest3443_)))
                              (_else34163430_)))
                        '#f))))
            (if (##pair? _g33833393_)
                (let ((_hd33903448_ (##car _g33833393_))
                      (_tl33913450_ (##cdr _g33833393_)))
                  (let* ((_hd3453_ _hd33903448_) (_rest3455_ _tl33913450_))
                    (_K33893445_ _rest3455_ _hd3453_)))
                (_try-match33853409_))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3460_)
          (let ((_key?3462_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx3460_ _key?3462_))))
      (define gx#stx-plist?
        (lambda _g4484_
          (let ((_g4483_ (length _g4484_)))
            (cond ((fx= _g4483_ 1) (apply gx#stx-plist?__0 _g4484_))
                  ((fx= _g4483_ 2) (apply gx#stx-plist?__% _g4484_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4484_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key3295_ _stx3296_ _key=?3297_)
        (let _lp3299_ ((_rest3301_ _stx3296_))
          (let* ((_g33023310_ (gx#syntax-e _rest3301_))
                 (_E33053314_
                  (lambda () (error '"No clause matching" _g33023310_)))
                 (_else33043318_ (lambda () '#f))
                 (_K33063352_
                  (lambda (_rest3321_ _hd3322_)
                    (let* ((_g33233330_ (gx#syntax-e _rest3321_))
                           (_E33253334_
                            (lambda ()
                              (error '"No clause matching" _g33233330_)))
                           (_K33263340_
                            (lambda (_rest3337_ _val3338_)
                              (if (_key=?3297_ _hd3322_ _key3295_)
                                  _val3338_
                                  (_lp3299_ _rest3337_)))))
                      (if (##pair? _g33233330_)
                          (let ((_hd33273343_ (##car _g33233330_))
                                (_tl33283345_ (##cdr _g33233330_)))
                            (let* ((_val3348_ _hd33273343_)
                                   (_rest3350_ _tl33283345_))
                              (_K33263340_ _rest3350_ _val3348_)))
                          (_E33253334_))))))
            (if (##pair? _g33023310_)
                (let ((_hd33073355_ (##car _g33023310_))
                      (_tl33083357_ (##cdr _g33023310_)))
                  (let* ((_hd3360_ _hd33073355_) (_rest3362_ _tl33083357_))
                    (_K33063352_ _rest3362_ _hd3360_)))
                (_else33043318_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key3367_ _stx3368_)
          (let ((_key=?3370_ gx#stx-eq?))
            (gx#stx-getq__% _key3367_ _stx3368_ _key=?3370_))))
      (define gx#stx-getq
        (lambda _g4486_
          (let ((_g4485_ (length _g4486_)))
            (cond ((fx= _g4485_ 2) (apply gx#stx-getq__0 _g4486_))
                  ((fx= _g4485_ 3) (apply gx#stx-getq__% _g4486_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4486_)))))))))
