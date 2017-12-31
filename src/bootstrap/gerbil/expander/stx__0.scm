(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#identifier-wrap::t
    (make-struct-type
     'gx#identifier-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
  (define gx#make-identifier-wrap
    (lambda _$args4446_
      (apply make-struct-instance gx#identifier-wrap::t _$args4446_)))
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
     '#f))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args4443_
      (apply make-struct-instance gx#syntax-wrap::t _$args4443_)))
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
     '#f))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args4440_
      (apply make-struct-instance gx#syntax-quote::t _$args4440_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4438_) (symbol? (gx#stx-e _stx4438_))))
  (define gx#identifier-quote?
    (lambda (_stx4436_)
      (if (##structure-direct-instance-of? _stx4436_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4436_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4431_)
      (let ((_$e4433_
             (##structure-direct-instance-of? _stx4431_ 'gx#syntax-quote::t)))
        (if _$e4433_
            _$e4433_
            (if (##structure-instance-of? _stx4431_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4431_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4427_)
      (let ((_stx4429_ (gx#stx-unwrap__0 _stx4427_)))
        (if (##structure-instance-of? _stx4429_ 'gerbil#AST::t)
            (##structure-ref _stx4429_ '1 AST::t '#f)
            _stx4429_))))
  (define gx#syntax->datum
    (lambda (_stx4425_)
      (if (##structure-instance-of? _stx4425_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4425_ '1 AST::t '#f))
          (if (pair? _stx4425_)
              (cons (gx#syntax->datum (car _stx4425_))
                    (gx#syntax->datum (cdr _stx4425_)))
              (if (vector? _stx4425_)
                  (vector-map gx#syntax->datum _stx4425_)
                  (if (box? _stx4425_)
                      (box (gx#syntax->datum (unbox _stx4425_)))
                      _stx4425_))))))
  (begin
    (define gx#datum->syntax__opt-lambda4366
      (lambda (_stx4368_ _datum4369_ _src4370_ _quote?4371_)
        (letrec ((_wrap-datum4373_
                  (lambda (_e4397_ _marks4398_)
                    (_wrap-inner4375_
                     _e4397_
                     (lambda (_g43994401_)
                       (##structure
                        gx#identifier-wrap::t
                        _g43994401_
                        _src4370_
                        _marks4398_)))))
                 (_wrap-quote4374_
                  (lambda (_e4389_ _ctx4390_ _marks4391_)
                    (_wrap-inner4375_
                     _e4389_
                     (lambda (_g43924394_)
                       (##structure
                        gx#syntax-quote::t
                        _g43924394_
                        _src4370_
                        _ctx4390_
                        _marks4391_)))))
                 (_wrap-inner4375_
                  (lambda (_e4382_ _wrap-e4383_)
                    (let _recur4385_ ((_e4387_ _e4382_))
                      (if (symbol? _e4387_)
                          (_wrap-e4383_ _e4387_)
                          (if (pair? _e4387_)
                              (cons (_recur4385_ (car _e4387_))
                                    (_recur4385_ (cdr _e4387_)))
                              (if (vector? _e4387_)
                                  (vector-map _recur4385_ _e4387_)
                                  (if (box? _e4387_)
                                      (box (_recur4385_ (unbox _e4387_)))
                                      _e4387_)))))))
                 (_wrap-outer4376_
                  (lambda (_e4380_)
                    (if (##structure-instance-of? _e4380_ 'gerbil#AST::t)
                        _e4380_
                        (##structure AST::t _e4380_ _src4370_)))))
          (if (##structure-instance-of? _datum4369_ 'gerbil#AST::t)
              _datum4369_
              (if (not _stx4368_)
                  (##structure AST::t _datum4369_ _src4370_)
                  (if (gx#identifier? _stx4368_)
                      (let ((_stx4378_ (gx#stx-unwrap__0 _stx4368_)))
                        (_wrap-outer4376_
                         (if (##structure-direct-instance-of?
                              _stx4378_
                              'gx#syntax-quote::t)
                             (if _quote?4371_
                                 (_wrap-quote4374_
                                  _datum4369_
                                  (##direct-structure-ref
                                   _stx4378_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4378_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4373_
                                  _datum4369_
                                  (##direct-structure-ref
                                   _stx4378_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4373_
                              _datum4369_
                              (##direct-structure-ref
                               _stx4378_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4368_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4407_ _datum4408_)
          (let* ((_src4410_ '#f) (_quote?4412_ '#t))
            (gx#datum->syntax__opt-lambda4366
             _stx4407_
             _datum4408_
             _src4410_
             _quote?4412_))))
      (define gx#datum->syntax__1
        (lambda (_stx4414_ _datum4415_ _src4416_)
          (let ((_quote?4418_ '#t))
            (gx#datum->syntax__opt-lambda4366
             _stx4414_
             _datum4415_
             _src4416_
             _quote?4418_))))
      (define gx#datum->syntax
        (lambda _g4449_
          (let ((_g4448_ (length _g4449_)))
            (cond ((fx= _g4448_ 2) (apply gx#datum->syntax__0 _g4449_))
                  ((fx= _g4448_ 3) (apply gx#datum->syntax__1 _g4449_))
                  ((fx= _g4448_ 4)
                   (apply gx#datum->syntax__opt-lambda4366 _g4449_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4449_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda4342
      (lambda (_stx4344_ _marks4345_)
        (let _lp4347_ ((_e4349_ _stx4344_)
                       (_marks4350_ _marks4345_)
                       (_src4351_ (gx#stx-source _stx4344_)))
          (if (##structure-direct-instance-of? _e4349_ 'gx#syntax-wrap::t)
              (_lp4347_
               (##structure-ref _e4349_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4349_ '3 gx#syntax-wrap::t '#f)
                _marks4350_)
               (##structure-ref _e4349_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4349_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4350_)
                      _e4349_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4349_ '1 AST::t '#f)
                       (##structure-ref _e4349_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4349_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4350_)))
                  (if (##structure-direct-instance-of?
                       _e4349_
                       'gx#syntax-quote::t)
                      _e4349_
                      (if (##structure-instance-of? _e4349_ 'gerbil#AST::t)
                          (_lp4347_
                           (##structure-ref _e4349_ '1 AST::t '#f)
                           _marks4350_
                           (##structure-ref _e4349_ '2 AST::t '#f))
                          (if (symbol? _e4349_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4349_
                               _src4351_
                               (reverse _marks4350_))
                              (if (null? _marks4350_)
                                  _e4349_
                                  (if (pair? _e4349_)
                                      (cons (gx#stx-wrap
                                             (car _e4349_)
                                             _marks4350_)
                                            (gx#stx-wrap
                                             (cdr _e4349_)
                                             _marks4350_))
                                      (if (vector? _e4349_)
                                          (vector-map
                                           (lambda (_g43524354_)
                                             (gx#stx-wrap
                                              _g43524354_
                                              _marks4350_))
                                           _e4349_)
                                          (if (box? _e4349_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4349_)
                                                    _marks4350_))
                                              _e4349_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4360_)
          (let ((_marks4362_ '()))
            (gx#stx-unwrap__opt-lambda4342 _stx4360_ _marks4362_))))
      (define gx#stx-unwrap
        (lambda _g4451_
          (let ((_g4450_ (length _g4451_)))
            (cond ((fx= _g4450_ 1) (apply gx#stx-unwrap__0 _g4451_))
                  ((fx= _g4450_ 2)
                   (apply gx#stx-unwrap__opt-lambda4342 _g4451_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4451_))))))))
  (define gx#stx-wrap
    (lambda (_stx4337_ _marks4338_)
      (foldl1 (lambda (_mark4340_ _stx4341_)
                (gx#stx-apply-mark _stx4341_ _mark4340_))
              _stx4337_
              _marks4338_)))
  (define gx#stx-rewrap
    (lambda (_stx4331_ _marks4332_)
      (foldr1 (lambda (_mark4334_ _stx4335_)
                (gx#stx-apply-mark _stx4335_ _mark4334_))
              _stx4331_
              _marks4332_)))
  (define gx#stx-apply-mark
    (lambda (_stx4328_ _mark4329_)
      (if (##structure-direct-instance-of? _stx4328_ 'gx#syntax-quote::t)
          _stx4328_
          (if (if (##structure-direct-instance-of?
                   _stx4328_
                   'gx#syntax-wrap::t)
                  (eq? _mark4329_
                       (##direct-structure-ref
                        _stx4328_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4328_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4328_
               (gx#stx-source _stx4328_)
               _mark4329_)))))
  (define gx#apply-mark
    (lambda (_mark4292_ _marks4293_)
      (let* ((_marks42944302_ _marks4293_)
             (_E42974306_
              (lambda () (error '"No clause matching" _marks42944302_)))
             (_else42964310_ (lambda () (cons _mark4292_ _marks4293_)))
             (_K42984316_
              (lambda (_rest4313_ _hd4314_)
                (if (eq? _mark4292_ _hd4314_)
                    _rest4313_
                    (cons _mark4292_ _marks4293_)))))
        (if (##pair? _marks42944302_)
            (let ((_hd42994319_ (##car _marks42944302_))
                  (_tl43004321_ (##cdr _marks42944302_)))
              (let* ((_hd4324_ _hd42994319_) (_rest4326_ _tl43004321_))
                (_K42984316_ _rest4326_ _hd4324_)))
            (_else42964310_)))))
  (define gx#stx-e
    (lambda (_stx4290_)
      (if (##structure-instance-of? _stx4290_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4290_ '1 AST::t '#f))
          _stx4290_)))
  (define gx#stx-source
    (lambda (_stx4288_)
      (if (##structure-instance-of? _stx4288_ 'gerbil#AST::t)
          (##structure-ref _stx4288_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4282_ _src4283_)
      (if (let ((_$e4285_ (##structure-instance-of? _stx4282_ 'gerbil#AST::t)))
            (if _$e4285_ _$e4285_ (not _src4283_)))
          _stx4282_
          (##structure AST::t _stx4282_ _src4283_))))
  (define gx#stx-datum?
    (lambda (_stx4280_) (gx#self-quoting? (gx#stx-e _stx4280_))))
  (define gx#self-quoting?
    (lambda (_x4263_)
      (let ((_$e4265_ (immediate? _x4263_)))
        (if _$e4265_
            _$e4265_
            (let ((_$e4268_ (number? _x4263_)))
              (if _$e4268_
                  _$e4268_
                  (let ((_$e4271_ (keyword? _x4263_)))
                    (if _$e4271_
                        _$e4271_
                        (let ((_$e4274_ (string? _x4263_)))
                          (if _$e4274_
                              _$e4274_
                              (let ((_$e4277_ (vector? _x4263_)))
                                (if _$e4277_
                                    _$e4277_
                                    (u8vector? _x4263_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4261_) (boolean? (gx#stx-e _e4261_))))
  (define gx#stx-keyword? (lambda (_e4259_) (keyword? (gx#stx-e _e4259_))))
  (define gx#stx-char? (lambda (_e4257_) (char? (gx#stx-e _e4257_))))
  (define gx#stx-number? (lambda (_e4255_) (number? (gx#stx-e _e4255_))))
  (define gx#stx-fixnum? (lambda (_e4253_) (fixnum? (gx#stx-e _e4253_))))
  (define gx#stx-string? (lambda (_e4251_) (string? (gx#stx-e _e4251_))))
  (define gx#stx-null? (lambda (_e4249_) (null? (gx#stx-e _e4249_))))
  (define gx#stx-pair? (lambda (_e4247_) (pair? (gx#stx-e _e4247_))))
  (define gx#stx-list?
    (lambda (_e4207_)
      (let* ((_g42084217_ (gx#stx-e _e4207_))
             (_E42114221_
              (lambda () (error '"No clause matching" _g42084217_)))
             (_try-match42104232_
              (lambda ()
                (let* ((_K42124227_ (lambda (_tail4225_) (null? _tail4225_)))
                       (_tail4230_ _g42084217_))
                  (null? _tail4230_))))
             (_K42134237_ (lambda (_rest4235_) (gx#stx-list? _rest4235_))))
        (if (##pair? _g42084217_)
            (let ((_hd42144240_ (##car _g42084217_))
                  (_tl42154242_ (##cdr _g42084217_)))
              (let ((_rest4245_ _tl42154242_)) (gx#stx-list? _rest4245_)))
            (_try-match42104232_)))))
  (define gx#stx-pair/null?
    (lambda (_e4200_)
      (let* ((_e4202_ (gx#stx-e _e4200_)) (_$e4204_ (pair? _e4202_)))
        (if _$e4204_ _$e4204_ (null? _e4202_)))))
  (define gx#stx-vector? (lambda (_e4198_) (vector? (gx#stx-e _e4198_))))
  (define gx#stx-box? (lambda (_e4196_) (box? (gx#stx-e _e4196_))))
  (define gx#stx-eq?
    (lambda (_x4193_ _y4194_) (eq? (gx#stx-e _x4193_) (gx#stx-e _y4194_))))
  (define gx#stx-eqv?
    (lambda (_x4190_ _y4191_) (eqv? (gx#stx-e _x4190_) (gx#stx-e _y4191_))))
  (define gx#stx-equal?
    (lambda (_x4187_ _y4188_) (equal? (gx#stx-e _x4187_) (gx#stx-e _y4188_))))
  (define gx#stx-false? (lambda (_x4185_) (not (gx#stx-e _x4185_))))
  (define gx#stx-identifier
    (lambda (_template4182_ . _args4183_)
      (gx#datum->syntax__1
       _template4182_
       (apply make-symbol (map gx#stx-e _args4183_))
       (gx#stx-source _template4182_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4178_)
      (let ((_stx4180_ (gx#stx-unwrap__0 _stx4178_)))
        (if (##structure-direct-instance-of? _stx4180_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4180_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4180_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4174_)
      (let ((_stx4176_ (gx#stx-unwrap__0 _stx4174_)))
        (if (gx#identifier-quote? _stx4176_)
            (##direct-structure-ref _stx4176_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4129_)
      (let* ((_g41304140_ (gx#stx-e _stx4129_))
             (_E41344144_
              (lambda () (error '"No clause matching" _g41304140_)))
             (_else41334148_ (lambda () '#f))
             (_try-match41324156_
              (lambda ()
                (let ((_K41354153_ (lambda () '#t)))
                  (if (##null? _g41304140_) (_K41354153_) (_else41334148_)))))
             (_K41364162_
              (lambda (_rest4159_ _hd4160_)
                (if (gx#identifier? _hd4160_)
                    (gx#identifier-list? _rest4159_)
                    '#f))))
        (if (##pair? _g41304140_)
            (let ((_hd41374165_ (##car _g41304140_))
                  (_tl41384167_ (##cdr _g41304140_)))
              (let* ((_hd4170_ _hd41374165_) (_rest4172_ _tl41384167_))
                (_K41364162_ _rest4172_ _hd4170_)))
            (_try-match41324156_)))))
  (begin
    (define gx#genident__opt-lambda4104
      (lambda (_e4106_ _src4107_)
        (gx#stx-wrap-source
         (gensym (let ((_e4109_ (gx#stx-e _e4106_)))
                   (if (interned-symbol? _e4109_) _e4109_ 'g)))
         (let ((_$e4111_ (gx#stx-source _e4106_)))
           (if _$e4111_ _$e4111_ _src4107_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4118_ 'g) (_src4120_ '#f))
            (gx#genident__opt-lambda4104 _e4118_ _src4120_))))
      (define gx#genident__1
        (lambda (_e4122_)
          (let ((_src4124_ '#f))
            (gx#genident__opt-lambda4104 _e4122_ _src4124_))))
      (define gx#genident
        (lambda _g4453_
          (let ((_g4452_ (length _g4453_)))
            (cond ((fx= _g4452_ 0) (apply gx#genident__0 _g4453_))
                  ((fx= _g4452_ 1) (apply gx#genident__1 _g4453_))
                  ((fx= _g4452_ 2) (apply gx#genident__opt-lambda4104 _g4453_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4453_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4103_) (gx#stx-map1 gx#genident _stx-lst4103_)))
  (define gx#syntax->list (lambda (_stx4101_) (gx#stx-map1 values _stx4101_)))
  (define gx#stx-car (lambda (_stx4099_) (car (gx#syntax-e _stx4099_))))
  (define gx#stx-cdr (lambda (_stx4097_) (cdr (gx#syntax-e _stx4097_))))
  (define gx#stx-length
    (lambda (_stx4060_)
      (let _lp4062_ ((_rest4064_ _stx4060_) (_n4065_ '0))
        (let* ((_g40664074_ (gx#stx-e _rest4064_))
               (_E40694078_
                (lambda () (error '"No clause matching" _g40664074_)))
               (_else40684082_ (lambda () _n4065_))
               (_K40704087_
                (lambda (_rest4085_) (_lp4062_ _rest4085_ (fx+ _n4065_ '1)))))
          (if (##pair? _g40664074_)
              (let ((_hd40714090_ (##car _g40664074_))
                    (_tl40724092_ (##cdr _g40664074_)))
                (let ((_rest4095_ _tl40724092_)) (_K40704087_ _rest4095_)))
              (_else40684082_))))))
  (define gx#stx-for-each
    (lambda _g4455_
      (let ((_g4454_ (length _g4455_)))
        (cond ((fx= _g4454_ 2) (apply gx#stx-for-each1 _g4455_))
              ((fx= _g4454_ 3) (apply gx#stx-for-each2 _g4455_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4455_))))))
  (define gx#stx-for-each1
    (lambda (_f4003_ _stx4004_)
      (let _lp4006_ ((_rest4008_ _stx4004_))
        (let* ((_g40094019_ (gx#syntax-e _rest4008_))
               (_E40134023_
                (lambda () (error '"No clause matching" _g40094019_)))
               (_else40124027_ (lambda () (_f4003_ _rest4008_)))
               (_try-match40114035_
                (lambda ()
                  (let ((_K40144032_ (lambda () '#!void)))
                    (if (##null? _g40094019_)
                        (_K40144032_)
                        (_else40124027_)))))
               (_K40154041_
                (lambda (_rest4038_ _hd4039_)
                  (begin (_f4003_ _hd4039_) (_lp4006_ _rest4038_)))))
          (if (##pair? _g40094019_)
              (let ((_hd40164044_ (##car _g40094019_))
                    (_tl40174046_ (##cdr _g40094019_)))
                (let* ((_hd4049_ _hd40164044_) (_rest4051_ _tl40174046_))
                  (_K40154041_ _rest4051_ _hd4049_)))
              (_try-match40114035_))))))
  (define gx#stx-for-each2
    (lambda (_f3908_ _xstx3909_ _ystx3910_)
      (let _lp3912_ ((_xrest3914_ _xstx3909_) (_yrest3915_ _ystx3910_))
        (let* ((_g39163926_ (gx#syntax-e _xrest3914_))
               (_E39203930_
                (lambda () (error '"No clause matching" _g39163926_)))
               (_else39193934_ (lambda () '#!void))
               (_try-match39183957_
                (lambda ()
                  (let ((_K39213954_
                         (lambda ()
                           (let* ((_yrest39383943_ _yrest3915_)
                                  (_E39403947_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest39383943_)))
                                  (_K39413951_
                                   (lambda ()
                                     (_f3908_ _xrest3914_ _yrest3915_))))
                             (if (not (gx#stx-null? _yrest39383943_))
                                 (_K39413951_)
                                 (_E39403947_))))))
                    (if (not (null? _g39163926_))
                        (_K39213954_)
                        (_else39193934_)))))
               (_K39223991_
                (lambda (_xrest3960_ _xhd3961_)
                  (let* ((_g39623969_ (gx#syntax-e _yrest3915_))
                         (_E39643973_
                          (lambda ()
                            (error '"No clause matching" _g39623969_)))
                         (_K39653979_
                          (lambda (_yrest3976_ _yhd3977_)
                            (begin
                              (_f3908_ _xhd3961_ _yhd3977_)
                              (_lp3912_ _xrest3960_ _yrest3976_)))))
                    (if (##pair? _g39623969_)
                        (let ((_hd39663982_ (##car _g39623969_))
                              (_tl39673984_ (##cdr _g39623969_)))
                          (let* ((_yhd3987_ _hd39663982_)
                                 (_yrest3989_ _tl39673984_))
                            (_K39653979_ _yrest3989_ _yhd3987_)))
                        (_E39643973_))))))
          (if (##pair? _g39163926_)
              (let ((_hd39233994_ (##car _g39163926_))
                    (_tl39243996_ (##cdr _g39163926_)))
                (let* ((_xhd3999_ _hd39233994_) (_xrest4001_ _tl39243996_))
                  (_K39223991_ _xrest4001_ _xhd3999_)))
              (_try-match39183957_))))))
  (define gx#stx-map
    (lambda _g4457_
      (let ((_g4456_ (length _g4457_)))
        (cond ((fx= _g4456_ 2) (apply gx#stx-map1 _g4457_))
              ((fx= _g4456_ 3) (apply gx#stx-map2 _g4457_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4457_))))))
  (define gx#stx-map1
    (lambda (_f3851_ _stx3852_)
      (let _recur3854_ ((_rest3856_ _stx3852_))
        (let* ((_g38573867_ (gx#syntax-e _rest3856_))
               (_E38613871_
                (lambda () (error '"No clause matching" _g38573867_)))
               (_else38603875_ (lambda () (_f3851_ _rest3856_)))
               (_try-match38593883_
                (lambda ()
                  (let ((_K38623880_ (lambda () '())))
                    (if (##null? _g38573867_)
                        (_K38623880_)
                        (_else38603875_)))))
               (_K38633889_
                (lambda (_rest3886_ _hd3887_)
                  (cons (_f3851_ _hd3887_) (_recur3854_ _rest3886_)))))
          (if (##pair? _g38573867_)
              (let ((_hd38643892_ (##car _g38573867_))
                    (_tl38653894_ (##cdr _g38573867_)))
                (let* ((_hd3897_ _hd38643892_) (_rest3899_ _tl38653894_))
                  (_K38633889_ _rest3899_ _hd3897_)))
              (_try-match38593883_))))))
  (define gx#stx-map2
    (lambda (_f3756_ _xstx3757_ _ystx3758_)
      (let _recur3760_ ((_xrest3762_ _xstx3757_) (_yrest3763_ _ystx3758_))
        (let* ((_g37643774_ (gx#syntax-e _xrest3762_))
               (_E37683778_
                (lambda () (error '"No clause matching" _g37643774_)))
               (_else37673782_ (lambda () '()))
               (_try-match37663805_
                (lambda ()
                  (let ((_K37693802_
                         (lambda ()
                           (let* ((_yrest37863791_ _yrest3763_)
                                  (_E37883795_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest37863791_)))
                                  (_K37893799_
                                   (lambda ()
                                     (_f3756_ _xrest3762_ _yrest3763_))))
                             (if (not (gx#stx-null? _yrest37863791_))
                                 (_K37893799_)
                                 (_E37883795_))))))
                    (if (not (null? _g37643774_))
                        (_K37693802_)
                        (_else37673782_)))))
               (_K37703839_
                (lambda (_xrest3808_ _xhd3809_)
                  (let* ((_g38103817_ (gx#syntax-e _yrest3763_))
                         (_E38123821_
                          (lambda ()
                            (error '"No clause matching" _g38103817_)))
                         (_K38133827_
                          (lambda (_yrest3824_ _yhd3825_)
                            (cons (_f3756_ _xhd3809_ _yhd3825_)
                                  (_recur3760_ _xrest3808_ _yrest3824_)))))
                    (if (##pair? _g38103817_)
                        (let ((_hd38143830_ (##car _g38103817_))
                              (_tl38153832_ (##cdr _g38103817_)))
                          (let* ((_yhd3835_ _hd38143830_)
                                 (_yrest3837_ _tl38153832_))
                            (_K38133827_ _yrest3837_ _yhd3835_)))
                        (_E38123821_))))))
          (if (##pair? _g37643774_)
              (let ((_hd37713842_ (##car _g37643774_))
                    (_tl37723844_ (##cdr _g37643774_)))
                (let* ((_xhd3847_ _hd37713842_) (_xrest3849_ _tl37723844_))
                  (_K37703839_ _xrest3849_ _xhd3847_)))
              (_try-match37663805_))))))
  (define gx#stx-andmap
    (lambda (_f3706_ _stx3707_)
      (let _lp3709_ ((_rest3711_ _stx3707_))
        (let* ((_g37123722_ (gx#syntax-e _rest3711_))
               (_E37163726_
                (lambda () (error '"No clause matching" _g37123722_)))
               (_else37153730_ (lambda () (_f3706_ _rest3711_)))
               (_try-match37143738_
                (lambda ()
                  (let ((_K37173735_ (lambda () '#t)))
                    (if (##null? _g37123722_)
                        (_K37173735_)
                        (_else37153730_)))))
               (_K37183744_
                (lambda (_rest3741_ _hd3742_)
                  (if (_f3706_ _hd3742_) (_lp3709_ _rest3741_) '#f))))
          (if (##pair? _g37123722_)
              (let ((_hd37193747_ (##car _g37123722_))
                    (_tl37203749_ (##cdr _g37123722_)))
                (let* ((_hd3752_ _hd37193747_) (_rest3754_ _tl37203749_))
                  (_K37183744_ _rest3754_ _hd3752_)))
              (_try-match37143738_))))))
  (define gx#stx-ormap
    (lambda (_f3653_ _stx3654_)
      (let _lp3656_ ((_rest3658_ _stx3654_))
        (let* ((_g36593669_ (gx#syntax-e _rest3658_))
               (_E36633673_
                (lambda () (error '"No clause matching" _g36593669_)))
               (_else36623677_ (lambda () (_f3653_ _rest3658_)))
               (_try-match36613685_
                (lambda ()
                  (let ((_K36643682_ (lambda () '#f)))
                    (if (##null? _g36593669_)
                        (_K36643682_)
                        (_else36623677_)))))
               (_K36653694_
                (lambda (_rest3688_ _hd3689_)
                  (let ((_$e3691_ (_f3653_ _hd3689_)))
                    (if _$e3691_ _$e3691_ (_lp3656_ _rest3688_))))))
          (if (##pair? _g36593669_)
              (let ((_hd36663697_ (##car _g36593669_))
                    (_tl36673699_ (##cdr _g36593669_)))
                (let* ((_hd3702_ _hd36663697_) (_rest3704_ _tl36673699_))
                  (_K36653694_ _rest3704_ _hd3702_)))
              (_try-match36613685_))))))
  (define gx#stx-foldl
    (lambda (_f3601_ _iv3602_ _stx3603_)
      (let _lp3605_ ((_r3607_ _iv3602_) (_rest3608_ _stx3603_))
        (let* ((_g36093619_ (gx#syntax-e _rest3608_))
               (_E36133623_
                (lambda () (error '"No clause matching" _g36093619_)))
               (_else36123627_ (lambda () (_f3601_ _rest3608_ _r3607_)))
               (_try-match36113635_
                (lambda ()
                  (let ((_K36143632_ (lambda () _r3607_)))
                    (if (##null? _g36093619_)
                        (_K36143632_)
                        (_else36123627_)))))
               (_K36153641_
                (lambda (_rest3638_ _hd3639_)
                  (_lp3605_ (_f3601_ _hd3639_ _r3607_) _rest3638_))))
          (if (##pair? _g36093619_)
              (let ((_hd36163644_ (##car _g36093619_))
                    (_tl36173646_ (##cdr _g36093619_)))
                (let* ((_hd3649_ _hd36163644_) (_rest3651_ _tl36173646_))
                  (_K36153641_ _rest3651_ _hd3649_)))
              (_try-match36113635_))))))
  (define gx#stx-foldr
    (lambda (_f3550_ _iv3551_ _stx3552_)
      (let _recur3554_ ((_rest3556_ _stx3552_))
        (let* ((_g35573567_ (gx#syntax-e _rest3556_))
               (_E35613571_
                (lambda () (error '"No clause matching" _g35573567_)))
               (_else35603575_ (lambda () (_f3550_ _rest3556_ _iv3551_)))
               (_try-match35593583_
                (lambda ()
                  (let ((_K35623580_ (lambda () _iv3551_)))
                    (if (##null? _g35573567_)
                        (_K35623580_)
                        (_else35603575_)))))
               (_K35633589_
                (lambda (_rest3586_ _hd3587_)
                  (_f3550_ _hd3587_ (_recur3554_ _rest3586_)))))
          (if (##pair? _g35573567_)
              (let ((_hd35643592_ (##car _g35573567_))
                    (_tl35653594_ (##cdr _g35573567_)))
                (let* ((_hd3597_ _hd35643592_) (_rest3599_ _tl35653594_))
                  (_K35633589_ _rest3599_ _hd3597_)))
              (_try-match35593583_))))))
  (define gx#stx-reverse
    (lambda (_stx3548_) (gx#stx-foldl cons '() _stx3548_)))
  (define gx#stx-last
    (lambda (_stx3509_)
      (let _lp3511_ ((_rest3513_ _stx3509_))
        (let* ((_g35143522_ (gx#syntax-e _rest3513_))
               (_E35173526_
                (lambda () (error '"No clause matching" _g35143522_)))
               (_else35163530_ (lambda () _rest3513_))
               (_K35183536_
                (lambda (_rest3533_ _hd3534_)
                  (if (gx#stx-null? _rest3533_)
                      _hd3534_
                      (_lp3511_ _rest3533_)))))
          (if (##pair? _g35143522_)
              (let ((_hd35193539_ (##car _g35143522_))
                    (_tl35203541_ (##cdr _g35143522_)))
                (let* ((_hd3544_ _hd35193539_) (_rest3546_ _tl35203541_))
                  (_K35183536_ _rest3546_ _hd3544_)))
              (_else35163530_))))))
  (define gx#stx-last-pair
    (lambda (_stx3478_)
      (let _lp3480_ ((_hd3482_ _stx3478_))
        (let* ((_g34833490_ (gx#syntax-e _hd3482_))
               (_E34853494_
                (lambda () (error '"No clause matching" _g34833490_)))
               (_K34863499_
                (lambda (_rest3497_)
                  (if (gx#stx-pair? _rest3497_)
                      (_lp3480_ _rest3497_)
                      _hd3482_))))
          (if (##pair? _g34833490_)
              (let ((_hd34873502_ (##car _g34833490_))
                    (_tl34883504_ (##cdr _g34833490_)))
                (let ((_rest3507_ _tl34883504_)) (_K34863499_ _rest3507_)))
              (_E34853494_))))))
  (define gx#stx-list-tail
    (lambda (_stx3445_ _k3446_)
      (let _lp3448_ ((_rest3450_ _stx3445_) (_k3451_ _k3446_))
        (if (fxpositive? _k3451_)
            (let* ((_g34523459_ (gx#syntax-e _rest3450_))
                   (_E34543463_
                    (lambda () (error '"No clause matching" _g34523459_)))
                   (_K34553468_
                    (lambda (_rest3466_)
                      (_lp3448_ _rest3466_ (fx- _k3451_ '1)))))
              (if (##pair? _g34523459_)
                  (let ((_hd34563471_ (##car _g34523459_))
                        (_tl34573473_ (##cdr _g34523459_)))
                    (let ((_rest3476_ _tl34573473_)) (_K34553468_ _rest3476_)))
                  (_E34543463_)))
            _rest3450_))))
  (define gx#stx-list-ref
    (lambda (_stx3442_ _k3443_)
      (gx#stx-car (gx#stx-list-tail _stx3442_ _k3443_))))
  (begin
    (define gx#stx-plist?__opt-lambda3350
      (lambda (_stx3352_ _key?3353_)
        (let _lp3355_ ((_rest3357_ _stx3352_))
          (let* ((_g33583368_ (gx#stx-e _rest3357_))
                 (_E33623372_
                  (lambda () (error '"No clause matching" _g33583368_)))
                 (_else33613376_ (lambda () '#f))
                 (_try-match33603384_
                  (lambda ()
                    (let ((_K33633381_ (lambda () '#t)))
                      (if (##null? _g33583368_)
                          (_K33633381_)
                          (_else33613376_)))))
                 (_K33643420_
                  (lambda (_rest3387_ _hd3388_)
                    (if (_key?3353_ _hd3388_)
                        (let* ((_g33893397_ (gx#stx-e _rest3387_))
                               (_E33923401_
                                (lambda ()
                                  (error '"No clause matching" _g33893397_)))
                               (_else33913405_ (lambda () '#f))
                               (_K33933410_
                                (lambda (_rest3408_) (_lp3355_ _rest3408_))))
                          (if (##pair? _g33893397_)
                              (let ((_hd33943413_ (##car _g33893397_))
                                    (_tl33953415_ (##cdr _g33893397_)))
                                (let ((_rest3418_ _tl33953415_))
                                  (_K33933410_ _rest3418_)))
                              (_else33913405_)))
                        '#f))))
            (if (##pair? _g33583368_)
                (let ((_hd33653423_ (##car _g33583368_))
                      (_tl33663425_ (##cdr _g33583368_)))
                  (let* ((_hd3428_ _hd33653423_) (_rest3430_ _tl33663425_))
                    (_K33643420_ _rest3430_ _hd3428_)))
                (_try-match33603384_))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3435_)
          (let ((_key?3437_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda3350 _stx3435_ _key?3437_))))
      (define gx#stx-plist?
        (lambda _g4459_
          (let ((_g4458_ (length _g4459_)))
            (cond ((fx= _g4458_ 1) (apply gx#stx-plist?__0 _g4459_))
                  ((fx= _g4458_ 2)
                   (apply gx#stx-plist?__opt-lambda3350 _g4459_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4459_))))))))
  (begin
    (define gx#stx-getq__opt-lambda3268
      (lambda (_key3270_ _stx3271_ _key=?3272_)
        (let _lp3274_ ((_rest3276_ _stx3271_))
          (let* ((_g32773285_ (gx#syntax-e _rest3276_))
                 (_E32803289_
                  (lambda () (error '"No clause matching" _g32773285_)))
                 (_else32793293_ (lambda () '#f))
                 (_K32813327_
                  (lambda (_rest3296_ _hd3297_)
                    (let* ((_g32983305_ (gx#syntax-e _rest3296_))
                           (_E33003309_
                            (lambda ()
                              (error '"No clause matching" _g32983305_)))
                           (_K33013315_
                            (lambda (_rest3312_ _val3313_)
                              (if (_key=?3272_ _hd3297_ _key3270_)
                                  _val3313_
                                  (_lp3274_ _rest3312_)))))
                      (if (##pair? _g32983305_)
                          (let ((_hd33023318_ (##car _g32983305_))
                                (_tl33033320_ (##cdr _g32983305_)))
                            (let* ((_val3323_ _hd33023318_)
                                   (_rest3325_ _tl33033320_))
                              (_K33013315_ _rest3325_ _val3323_)))
                          (_E33003309_))))))
            (if (##pair? _g32773285_)
                (let ((_hd32823330_ (##car _g32773285_))
                      (_tl32833332_ (##cdr _g32773285_)))
                  (let* ((_hd3335_ _hd32823330_) (_rest3337_ _tl32833332_))
                    (_K32813327_ _rest3337_ _hd3335_)))
                (_else32793293_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key3342_ _stx3343_)
          (let ((_key=?3345_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda3268 _key3342_ _stx3343_ _key=?3345_))))
      (define gx#stx-getq
        (lambda _g4461_
          (let ((_g4460_ (length _g4461_)))
            (cond ((fx= _g4460_ 2) (apply gx#stx-getq__0 _g4461_))
                  ((fx= _g4460_ 3) (apply gx#stx-getq__opt-lambda3268 _g4461_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4461_)))))))))
