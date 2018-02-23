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
    (lambda _$args4450_
      (apply make-struct-instance gx#identifier-wrap::t _$args4450_)))
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
    (lambda _$args4447_
      (apply make-struct-instance gx#syntax-wrap::t _$args4447_)))
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
    (lambda _$args4444_
      (apply make-struct-instance gx#syntax-quote::t _$args4444_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4442_) (symbol? (gx#stx-e _stx4442_))))
  (define gx#identifier-quote?
    (lambda (_stx4440_)
      (if (##structure-direct-instance-of? _stx4440_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4440_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4435_)
      (let ((_$e4437_
             (##structure-direct-instance-of? _stx4435_ 'gx#syntax-quote::t)))
        (if _$e4437_
            _$e4437_
            (if (##structure-instance-of? _stx4435_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4435_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4431_)
      (let ((_stx4433_ (gx#stx-unwrap__0 _stx4431_)))
        (if (##structure-instance-of? _stx4433_ 'gerbil#AST::t)
            (##structure-ref _stx4433_ '1 AST::t '#f)
            _stx4433_))))
  (define gx#syntax->datum
    (lambda (_stx4429_)
      (if (##structure-instance-of? _stx4429_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4429_ '1 AST::t '#f))
          (if (pair? _stx4429_)
              (cons (gx#syntax->datum (car _stx4429_))
                    (gx#syntax->datum (cdr _stx4429_)))
              (if (vector? _stx4429_)
                  (vector-map gx#syntax->datum _stx4429_)
                  (if (box? _stx4429_)
                      (box (gx#syntax->datum (unbox _stx4429_)))
                      _stx4429_))))))
  (begin
    (define gx#datum->syntax__opt-lambda4370
      (lambda (_stx4372_ _datum4373_ _src4374_ _quote?4375_)
        (letrec ((_wrap-datum4377_
                  (lambda (_e4401_ _marks4402_)
                    (_wrap-inner4379_
                     _e4401_
                     (lambda (_g44034405_)
                       (##structure
                        gx#identifier-wrap::t
                        _g44034405_
                        _src4374_
                        _marks4402_)))))
                 (_wrap-quote4378_
                  (lambda (_e4393_ _ctx4394_ _marks4395_)
                    (_wrap-inner4379_
                     _e4393_
                     (lambda (_g43964398_)
                       (##structure
                        gx#syntax-quote::t
                        _g43964398_
                        _src4374_
                        _ctx4394_
                        _marks4395_)))))
                 (_wrap-inner4379_
                  (lambda (_e4386_ _wrap-e4387_)
                    (let _recur4389_ ((_e4391_ _e4386_))
                      (if (symbol? _e4391_)
                          (_wrap-e4387_ _e4391_)
                          (if (pair? _e4391_)
                              (cons (_recur4389_ (car _e4391_))
                                    (_recur4389_ (cdr _e4391_)))
                              (if (vector? _e4391_)
                                  (vector-map _recur4389_ _e4391_)
                                  (if (box? _e4391_)
                                      (box (_recur4389_ (unbox _e4391_)))
                                      _e4391_)))))))
                 (_wrap-outer4380_
                  (lambda (_e4384_)
                    (if (##structure-instance-of? _e4384_ 'gerbil#AST::t)
                        _e4384_
                        (##structure AST::t _e4384_ _src4374_)))))
          (if (##structure-instance-of? _datum4373_ 'gerbil#AST::t)
              _datum4373_
              (if (not _stx4372_)
                  (##structure AST::t _datum4373_ _src4374_)
                  (if (gx#identifier? _stx4372_)
                      (let ((_stx4382_ (gx#stx-unwrap__0 _stx4372_)))
                        (_wrap-outer4380_
                         (if (##structure-direct-instance-of?
                              _stx4382_
                              'gx#syntax-quote::t)
                             (if _quote?4375_
                                 (_wrap-quote4378_
                                  _datum4373_
                                  (##direct-structure-ref
                                   _stx4382_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4382_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4377_
                                  _datum4373_
                                  (##direct-structure-ref
                                   _stx4382_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4377_
                              _datum4373_
                              (##direct-structure-ref
                               _stx4382_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4372_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4411_ _datum4412_)
          (let* ((_src4414_ '#f) (_quote?4416_ '#t))
            (gx#datum->syntax__opt-lambda4370
             _stx4411_
             _datum4412_
             _src4414_
             _quote?4416_))))
      (define gx#datum->syntax__1
        (lambda (_stx4418_ _datum4419_ _src4420_)
          (let ((_quote?4422_ '#t))
            (gx#datum->syntax__opt-lambda4370
             _stx4418_
             _datum4419_
             _src4420_
             _quote?4422_))))
      (define gx#datum->syntax
        (lambda _g4453_
          (let ((_g4452_ (length _g4453_)))
            (cond ((fx= _g4452_ 2) (apply gx#datum->syntax__0 _g4453_))
                  ((fx= _g4452_ 3) (apply gx#datum->syntax__1 _g4453_))
                  ((fx= _g4452_ 4)
                   (apply gx#datum->syntax__opt-lambda4370 _g4453_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4453_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda4346
      (lambda (_stx4348_ _marks4349_)
        (let _lp4351_ ((_e4353_ _stx4348_)
                       (_marks4354_ _marks4349_)
                       (_src4355_ (gx#stx-source _stx4348_)))
          (if (##structure-direct-instance-of? _e4353_ 'gx#syntax-wrap::t)
              (_lp4351_
               (##structure-ref _e4353_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4353_ '3 gx#syntax-wrap::t '#f)
                _marks4354_)
               (##structure-ref _e4353_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4353_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4354_)
                      _e4353_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4353_ '1 AST::t '#f)
                       (##structure-ref _e4353_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4353_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4354_)))
                  (if (##structure-direct-instance-of?
                       _e4353_
                       'gx#syntax-quote::t)
                      _e4353_
                      (if (##structure-instance-of? _e4353_ 'gerbil#AST::t)
                          (_lp4351_
                           (##structure-ref _e4353_ '1 AST::t '#f)
                           _marks4354_
                           (##structure-ref _e4353_ '2 AST::t '#f))
                          (if (symbol? _e4353_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4353_
                               _src4355_
                               (reverse _marks4354_))
                              (if (null? _marks4354_)
                                  _e4353_
                                  (if (pair? _e4353_)
                                      (cons (gx#stx-wrap
                                             (car _e4353_)
                                             _marks4354_)
                                            (gx#stx-wrap
                                             (cdr _e4353_)
                                             _marks4354_))
                                      (if (vector? _e4353_)
                                          (vector-map
                                           (lambda (_g43564358_)
                                             (gx#stx-wrap
                                              _g43564358_
                                              _marks4354_))
                                           _e4353_)
                                          (if (box? _e4353_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4353_)
                                                    _marks4354_))
                                              _e4353_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4364_)
          (let ((_marks4366_ '()))
            (gx#stx-unwrap__opt-lambda4346 _stx4364_ _marks4366_))))
      (define gx#stx-unwrap
        (lambda _g4455_
          (let ((_g4454_ (length _g4455_)))
            (cond ((fx= _g4454_ 1) (apply gx#stx-unwrap__0 _g4455_))
                  ((fx= _g4454_ 2)
                   (apply gx#stx-unwrap__opt-lambda4346 _g4455_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4455_))))))))
  (define gx#stx-wrap
    (lambda (_stx4341_ _marks4342_)
      (foldl1 (lambda (_mark4344_ _stx4345_)
                (gx#stx-apply-mark _stx4345_ _mark4344_))
              _stx4341_
              _marks4342_)))
  (define gx#stx-rewrap
    (lambda (_stx4335_ _marks4336_)
      (foldr1 (lambda (_mark4338_ _stx4339_)
                (gx#stx-apply-mark _stx4339_ _mark4338_))
              _stx4335_
              _marks4336_)))
  (define gx#stx-apply-mark
    (lambda (_stx4332_ _mark4333_)
      (if (##structure-direct-instance-of? _stx4332_ 'gx#syntax-quote::t)
          _stx4332_
          (if (if (##structure-direct-instance-of?
                   _stx4332_
                   'gx#syntax-wrap::t)
                  (eq? _mark4333_
                       (##direct-structure-ref
                        _stx4332_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4332_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4332_
               (gx#stx-source _stx4332_)
               _mark4333_)))))
  (define gx#apply-mark
    (lambda (_mark4296_ _marks4297_)
      (let* ((_marks42984306_ _marks4297_)
             (_E43014310_
              (lambda () (error '"No clause matching" _marks42984306_)))
             (_else43004314_ (lambda () (cons _mark4296_ _marks4297_)))
             (_K43024320_
              (lambda (_rest4317_ _hd4318_)
                (if (eq? _mark4296_ _hd4318_)
                    _rest4317_
                    (cons _mark4296_ _marks4297_)))))
        (if (##pair? _marks42984306_)
            (let ((_hd43034323_ (##car _marks42984306_))
                  (_tl43044325_ (##cdr _marks42984306_)))
              (let* ((_hd4328_ _hd43034323_) (_rest4330_ _tl43044325_))
                (_K43024320_ _rest4330_ _hd4328_)))
            (_else43004314_)))))
  (define gx#stx-e
    (lambda (_stx4294_)
      (if (##structure-instance-of? _stx4294_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4294_ '1 AST::t '#f))
          _stx4294_)))
  (define gx#stx-source
    (lambda (_stx4292_)
      (if (##structure-instance-of? _stx4292_ 'gerbil#AST::t)
          (##structure-ref _stx4292_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4286_ _src4287_)
      (if (let ((_$e4289_ (##structure-instance-of? _stx4286_ 'gerbil#AST::t)))
            (if _$e4289_ _$e4289_ (not _src4287_)))
          _stx4286_
          (##structure AST::t _stx4286_ _src4287_))))
  (define gx#stx-datum?
    (lambda (_stx4284_) (gx#self-quoting? (gx#stx-e _stx4284_))))
  (define gx#self-quoting?
    (lambda (_x4267_)
      (let ((_$e4269_ (immediate? _x4267_)))
        (if _$e4269_
            _$e4269_
            (let ((_$e4272_ (number? _x4267_)))
              (if _$e4272_
                  _$e4272_
                  (let ((_$e4275_ (keyword? _x4267_)))
                    (if _$e4275_
                        _$e4275_
                        (let ((_$e4278_ (string? _x4267_)))
                          (if _$e4278_
                              _$e4278_
                              (let ((_$e4281_ (vector? _x4267_)))
                                (if _$e4281_
                                    _$e4281_
                                    (u8vector? _x4267_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4265_) (boolean? (gx#stx-e _e4265_))))
  (define gx#stx-keyword? (lambda (_e4263_) (keyword? (gx#stx-e _e4263_))))
  (define gx#stx-char? (lambda (_e4261_) (char? (gx#stx-e _e4261_))))
  (define gx#stx-number? (lambda (_e4259_) (number? (gx#stx-e _e4259_))))
  (define gx#stx-fixnum? (lambda (_e4257_) (fixnum? (gx#stx-e _e4257_))))
  (define gx#stx-string? (lambda (_e4255_) (string? (gx#stx-e _e4255_))))
  (define gx#stx-null? (lambda (_e4253_) (null? (gx#stx-e _e4253_))))
  (define gx#stx-pair? (lambda (_e4251_) (pair? (gx#stx-e _e4251_))))
  (define gx#stx-list?
    (lambda (_e4211_)
      (let* ((_g42124221_ (gx#stx-e _e4211_))
             (_E42154225_
              (lambda () (error '"No clause matching" _g42124221_)))
             (_try-match42144236_
              (lambda ()
                (let* ((_K42164231_ (lambda (_tail4229_) (null? _tail4229_)))
                       (_tail4234_ _g42124221_))
                  (null? _tail4234_))))
             (_K42174241_ (lambda (_rest4239_) (gx#stx-list? _rest4239_))))
        (if (##pair? _g42124221_)
            (let ((_hd42184244_ (##car _g42124221_))
                  (_tl42194246_ (##cdr _g42124221_)))
              (let ((_rest4249_ _tl42194246_)) (gx#stx-list? _rest4249_)))
            (_try-match42144236_)))))
  (define gx#stx-pair/null?
    (lambda (_e4204_)
      (let* ((_e4206_ (gx#stx-e _e4204_)) (_$e4208_ (pair? _e4206_)))
        (if _$e4208_ _$e4208_ (null? _e4206_)))))
  (define gx#stx-vector? (lambda (_e4202_) (vector? (gx#stx-e _e4202_))))
  (define gx#stx-box? (lambda (_e4200_) (box? (gx#stx-e _e4200_))))
  (define gx#stx-eq?
    (lambda (_x4197_ _y4198_) (eq? (gx#stx-e _x4197_) (gx#stx-e _y4198_))))
  (define gx#stx-eqv?
    (lambda (_x4194_ _y4195_) (eqv? (gx#stx-e _x4194_) (gx#stx-e _y4195_))))
  (define gx#stx-equal?
    (lambda (_x4191_ _y4192_) (equal? (gx#stx-e _x4191_) (gx#stx-e _y4192_))))
  (define gx#stx-false? (lambda (_x4189_) (not (gx#stx-e _x4189_))))
  (define gx#stx-identifier
    (lambda (_template4186_ . _args4187_)
      (gx#datum->syntax__1
       _template4186_
       (apply make-symbol (map gx#stx-e _args4187_))
       (gx#stx-source _template4186_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4182_)
      (let ((_stx4184_ (gx#stx-unwrap__0 _stx4182_)))
        (if (##structure-direct-instance-of? _stx4184_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4184_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4184_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4178_)
      (let ((_stx4180_ (gx#stx-unwrap__0 _stx4178_)))
        (if (gx#identifier-quote? _stx4180_)
            (##direct-structure-ref _stx4180_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4133_)
      (let* ((_g41344144_ (gx#stx-e _stx4133_))
             (_E41384148_
              (lambda () (error '"No clause matching" _g41344144_)))
             (_else41374152_ (lambda () '#f))
             (_try-match41364160_
              (lambda ()
                (let ((_K41394157_ (lambda () '#t)))
                  (if (##null? _g41344144_) (_K41394157_) (_else41374152_)))))
             (_K41404166_
              (lambda (_rest4163_ _hd4164_)
                (if (gx#identifier? _hd4164_)
                    (gx#identifier-list? _rest4163_)
                    '#f))))
        (if (##pair? _g41344144_)
            (let ((_hd41414169_ (##car _g41344144_))
                  (_tl41424171_ (##cdr _g41344144_)))
              (let* ((_hd4174_ _hd41414169_) (_rest4176_ _tl41424171_))
                (_K41404166_ _rest4176_ _hd4174_)))
            (_try-match41364160_)))))
  (begin
    (define gx#genident__opt-lambda4108
      (lambda (_e4110_ _src4111_)
        (gx#stx-wrap-source
         (gensym (let ((_e4113_ (gx#stx-e _e4110_)))
                   (if (interned-symbol? _e4113_) _e4113_ 'g)))
         (let ((_$e4115_ (gx#stx-source _e4110_)))
           (if _$e4115_ _$e4115_ _src4111_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4122_ 'g) (_src4124_ '#f))
            (gx#genident__opt-lambda4108 _e4122_ _src4124_))))
      (define gx#genident__1
        (lambda (_e4126_)
          (let ((_src4128_ '#f))
            (gx#genident__opt-lambda4108 _e4126_ _src4128_))))
      (define gx#genident
        (lambda _g4457_
          (let ((_g4456_ (length _g4457_)))
            (cond ((fx= _g4456_ 0) (apply gx#genident__0 _g4457_))
                  ((fx= _g4456_ 1) (apply gx#genident__1 _g4457_))
                  ((fx= _g4456_ 2) (apply gx#genident__opt-lambda4108 _g4457_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4457_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4107_) (gx#stx-map1 gx#genident _stx-lst4107_)))
  (define gx#syntax->list (lambda (_stx4105_) (gx#stx-map1 values _stx4105_)))
  (define gx#stx-car (lambda (_stx4103_) (car (gx#syntax-e _stx4103_))))
  (define gx#stx-cdr (lambda (_stx4101_) (cdr (gx#syntax-e _stx4101_))))
  (define gx#stx-length
    (lambda (_stx4064_)
      (let _lp4066_ ((_rest4068_ _stx4064_) (_n4069_ '0))
        (let* ((_g40704078_ (gx#stx-e _rest4068_))
               (_E40734082_
                (lambda () (error '"No clause matching" _g40704078_)))
               (_else40724086_ (lambda () _n4069_))
               (_K40744091_
                (lambda (_rest4089_) (_lp4066_ _rest4089_ (fx+ _n4069_ '1)))))
          (if (##pair? _g40704078_)
              (let ((_hd40754094_ (##car _g40704078_))
                    (_tl40764096_ (##cdr _g40704078_)))
                (let ((_rest4099_ _tl40764096_)) (_K40744091_ _rest4099_)))
              (_else40724086_))))))
  (define gx#stx-for-each
    (lambda _g4459_
      (let ((_g4458_ (length _g4459_)))
        (cond ((fx= _g4458_ 2) (apply gx#stx-for-each1 _g4459_))
              ((fx= _g4458_ 3) (apply gx#stx-for-each2 _g4459_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4459_))))))
  (define gx#stx-for-each1
    (lambda (_f4007_ _stx4008_)
      (let _lp4010_ ((_rest4012_ _stx4008_))
        (let* ((_g40134023_ (gx#syntax-e _rest4012_))
               (_E40174027_
                (lambda () (error '"No clause matching" _g40134023_)))
               (_else40164031_ (lambda () (_f4007_ _rest4012_)))
               (_try-match40154039_
                (lambda ()
                  (let ((_K40184036_ (lambda () '#!void)))
                    (if (##null? _g40134023_)
                        (_K40184036_)
                        (_else40164031_)))))
               (_K40194045_
                (lambda (_rest4042_ _hd4043_)
                  (begin (_f4007_ _hd4043_) (_lp4010_ _rest4042_)))))
          (if (##pair? _g40134023_)
              (let ((_hd40204048_ (##car _g40134023_))
                    (_tl40214050_ (##cdr _g40134023_)))
                (let* ((_hd4053_ _hd40204048_) (_rest4055_ _tl40214050_))
                  (_K40194045_ _rest4055_ _hd4053_)))
              (_try-match40154039_))))))
  (define gx#stx-for-each2
    (lambda (_f3912_ _xstx3913_ _ystx3914_)
      (let _lp3916_ ((_xrest3918_ _xstx3913_) (_yrest3919_ _ystx3914_))
        (let* ((_g39203930_ (gx#syntax-e _xrest3918_))
               (_E39243934_
                (lambda () (error '"No clause matching" _g39203930_)))
               (_else39233938_ (lambda () '#!void))
               (_try-match39223961_
                (lambda ()
                  (let ((_K39253958_
                         (lambda ()
                           (let* ((_yrest39423947_ _yrest3919_)
                                  (_E39443951_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest39423947_)))
                                  (_K39453955_
                                   (lambda ()
                                     (_f3912_ _xrest3918_ _yrest3919_))))
                             (if (not (gx#stx-null? _yrest39423947_))
                                 (_K39453955_)
                                 (_E39443951_))))))
                    (if (not (null? _g39203930_))
                        (_K39253958_)
                        (_else39233938_)))))
               (_K39263995_
                (lambda (_xrest3964_ _xhd3965_)
                  (let* ((_g39663973_ (gx#syntax-e _yrest3919_))
                         (_E39683977_
                          (lambda ()
                            (error '"No clause matching" _g39663973_)))
                         (_K39693983_
                          (lambda (_yrest3980_ _yhd3981_)
                            (begin
                              (_f3912_ _xhd3965_ _yhd3981_)
                              (_lp3916_ _xrest3964_ _yrest3980_)))))
                    (if (##pair? _g39663973_)
                        (let ((_hd39703986_ (##car _g39663973_))
                              (_tl39713988_ (##cdr _g39663973_)))
                          (let* ((_yhd3991_ _hd39703986_)
                                 (_yrest3993_ _tl39713988_))
                            (_K39693983_ _yrest3993_ _yhd3991_)))
                        (_E39683977_))))))
          (if (##pair? _g39203930_)
              (let ((_hd39273998_ (##car _g39203930_))
                    (_tl39284000_ (##cdr _g39203930_)))
                (let* ((_xhd4003_ _hd39273998_) (_xrest4005_ _tl39284000_))
                  (_K39263995_ _xrest4005_ _xhd4003_)))
              (_try-match39223961_))))))
  (define gx#stx-map
    (lambda _g4461_
      (let ((_g4460_ (length _g4461_)))
        (cond ((fx= _g4460_ 2) (apply gx#stx-map1 _g4461_))
              ((fx= _g4460_ 3) (apply gx#stx-map2 _g4461_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4461_))))))
  (define gx#stx-map1
    (lambda (_f3855_ _stx3856_)
      (let _recur3858_ ((_rest3860_ _stx3856_))
        (let* ((_g38613871_ (gx#syntax-e _rest3860_))
               (_E38653875_
                (lambda () (error '"No clause matching" _g38613871_)))
               (_else38643879_ (lambda () (_f3855_ _rest3860_)))
               (_try-match38633887_
                (lambda ()
                  (let ((_K38663884_ (lambda () '())))
                    (if (##null? _g38613871_)
                        (_K38663884_)
                        (_else38643879_)))))
               (_K38673893_
                (lambda (_rest3890_ _hd3891_)
                  (cons (_f3855_ _hd3891_) (_recur3858_ _rest3890_)))))
          (if (##pair? _g38613871_)
              (let ((_hd38683896_ (##car _g38613871_))
                    (_tl38693898_ (##cdr _g38613871_)))
                (let* ((_hd3901_ _hd38683896_) (_rest3903_ _tl38693898_))
                  (_K38673893_ _rest3903_ _hd3901_)))
              (_try-match38633887_))))))
  (define gx#stx-map2
    (lambda (_f3760_ _xstx3761_ _ystx3762_)
      (let _recur3764_ ((_xrest3766_ _xstx3761_) (_yrest3767_ _ystx3762_))
        (let* ((_g37683778_ (gx#syntax-e _xrest3766_))
               (_E37723782_
                (lambda () (error '"No clause matching" _g37683778_)))
               (_else37713786_ (lambda () '()))
               (_try-match37703809_
                (lambda ()
                  (let ((_K37733806_
                         (lambda ()
                           (let* ((_yrest37903795_ _yrest3767_)
                                  (_E37923799_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest37903795_)))
                                  (_K37933803_
                                   (lambda ()
                                     (_f3760_ _xrest3766_ _yrest3767_))))
                             (if (not (gx#stx-null? _yrest37903795_))
                                 (_K37933803_)
                                 (_E37923799_))))))
                    (if (not (null? _g37683778_))
                        (_K37733806_)
                        (_else37713786_)))))
               (_K37743843_
                (lambda (_xrest3812_ _xhd3813_)
                  (let* ((_g38143821_ (gx#syntax-e _yrest3767_))
                         (_E38163825_
                          (lambda ()
                            (error '"No clause matching" _g38143821_)))
                         (_K38173831_
                          (lambda (_yrest3828_ _yhd3829_)
                            (cons (_f3760_ _xhd3813_ _yhd3829_)
                                  (_recur3764_ _xrest3812_ _yrest3828_)))))
                    (if (##pair? _g38143821_)
                        (let ((_hd38183834_ (##car _g38143821_))
                              (_tl38193836_ (##cdr _g38143821_)))
                          (let* ((_yhd3839_ _hd38183834_)
                                 (_yrest3841_ _tl38193836_))
                            (_K38173831_ _yrest3841_ _yhd3839_)))
                        (_E38163825_))))))
          (if (##pair? _g37683778_)
              (let ((_hd37753846_ (##car _g37683778_))
                    (_tl37763848_ (##cdr _g37683778_)))
                (let* ((_xhd3851_ _hd37753846_) (_xrest3853_ _tl37763848_))
                  (_K37743843_ _xrest3853_ _xhd3851_)))
              (_try-match37703809_))))))
  (define gx#stx-andmap
    (lambda (_f3710_ _stx3711_)
      (let _lp3713_ ((_rest3715_ _stx3711_))
        (let* ((_g37163726_ (gx#syntax-e _rest3715_))
               (_E37203730_
                (lambda () (error '"No clause matching" _g37163726_)))
               (_else37193734_ (lambda () (_f3710_ _rest3715_)))
               (_try-match37183742_
                (lambda ()
                  (let ((_K37213739_ (lambda () '#t)))
                    (if (##null? _g37163726_)
                        (_K37213739_)
                        (_else37193734_)))))
               (_K37223748_
                (lambda (_rest3745_ _hd3746_)
                  (if (_f3710_ _hd3746_) (_lp3713_ _rest3745_) '#f))))
          (if (##pair? _g37163726_)
              (let ((_hd37233751_ (##car _g37163726_))
                    (_tl37243753_ (##cdr _g37163726_)))
                (let* ((_hd3756_ _hd37233751_) (_rest3758_ _tl37243753_))
                  (_K37223748_ _rest3758_ _hd3756_)))
              (_try-match37183742_))))))
  (define gx#stx-ormap
    (lambda (_f3657_ _stx3658_)
      (let _lp3660_ ((_rest3662_ _stx3658_))
        (let* ((_g36633673_ (gx#syntax-e _rest3662_))
               (_E36673677_
                (lambda () (error '"No clause matching" _g36633673_)))
               (_else36663681_ (lambda () (_f3657_ _rest3662_)))
               (_try-match36653689_
                (lambda ()
                  (let ((_K36683686_ (lambda () '#f)))
                    (if (##null? _g36633673_)
                        (_K36683686_)
                        (_else36663681_)))))
               (_K36693698_
                (lambda (_rest3692_ _hd3693_)
                  (let ((_$e3695_ (_f3657_ _hd3693_)))
                    (if _$e3695_ _$e3695_ (_lp3660_ _rest3692_))))))
          (if (##pair? _g36633673_)
              (let ((_hd36703701_ (##car _g36633673_))
                    (_tl36713703_ (##cdr _g36633673_)))
                (let* ((_hd3706_ _hd36703701_) (_rest3708_ _tl36713703_))
                  (_K36693698_ _rest3708_ _hd3706_)))
              (_try-match36653689_))))))
  (define gx#stx-foldl
    (lambda (_f3605_ _iv3606_ _stx3607_)
      (let _lp3609_ ((_r3611_ _iv3606_) (_rest3612_ _stx3607_))
        (let* ((_g36133623_ (gx#syntax-e _rest3612_))
               (_E36173627_
                (lambda () (error '"No clause matching" _g36133623_)))
               (_else36163631_ (lambda () (_f3605_ _rest3612_ _r3611_)))
               (_try-match36153639_
                (lambda ()
                  (let ((_K36183636_ (lambda () _r3611_)))
                    (if (##null? _g36133623_)
                        (_K36183636_)
                        (_else36163631_)))))
               (_K36193645_
                (lambda (_rest3642_ _hd3643_)
                  (_lp3609_ (_f3605_ _hd3643_ _r3611_) _rest3642_))))
          (if (##pair? _g36133623_)
              (let ((_hd36203648_ (##car _g36133623_))
                    (_tl36213650_ (##cdr _g36133623_)))
                (let* ((_hd3653_ _hd36203648_) (_rest3655_ _tl36213650_))
                  (_K36193645_ _rest3655_ _hd3653_)))
              (_try-match36153639_))))))
  (define gx#stx-foldr
    (lambda (_f3554_ _iv3555_ _stx3556_)
      (let _recur3558_ ((_rest3560_ _stx3556_))
        (let* ((_g35613571_ (gx#syntax-e _rest3560_))
               (_E35653575_
                (lambda () (error '"No clause matching" _g35613571_)))
               (_else35643579_ (lambda () (_f3554_ _rest3560_ _iv3555_)))
               (_try-match35633587_
                (lambda ()
                  (let ((_K35663584_ (lambda () _iv3555_)))
                    (if (##null? _g35613571_)
                        (_K35663584_)
                        (_else35643579_)))))
               (_K35673593_
                (lambda (_rest3590_ _hd3591_)
                  (_f3554_ _hd3591_ (_recur3558_ _rest3590_)))))
          (if (##pair? _g35613571_)
              (let ((_hd35683596_ (##car _g35613571_))
                    (_tl35693598_ (##cdr _g35613571_)))
                (let* ((_hd3601_ _hd35683596_) (_rest3603_ _tl35693598_))
                  (_K35673593_ _rest3603_ _hd3601_)))
              (_try-match35633587_))))))
  (define gx#stx-reverse
    (lambda (_stx3552_) (gx#stx-foldl cons '() _stx3552_)))
  (define gx#stx-last
    (lambda (_stx3513_)
      (let _lp3515_ ((_rest3517_ _stx3513_))
        (let* ((_g35183526_ (gx#syntax-e _rest3517_))
               (_E35213530_
                (lambda () (error '"No clause matching" _g35183526_)))
               (_else35203534_ (lambda () _rest3517_))
               (_K35223540_
                (lambda (_rest3537_ _hd3538_)
                  (if (gx#stx-null? _rest3537_)
                      _hd3538_
                      (_lp3515_ _rest3537_)))))
          (if (##pair? _g35183526_)
              (let ((_hd35233543_ (##car _g35183526_))
                    (_tl35243545_ (##cdr _g35183526_)))
                (let* ((_hd3548_ _hd35233543_) (_rest3550_ _tl35243545_))
                  (_K35223540_ _rest3550_ _hd3548_)))
              (_else35203534_))))))
  (define gx#stx-last-pair
    (lambda (_stx3482_)
      (let _lp3484_ ((_hd3486_ _stx3482_))
        (let* ((_g34873494_ (gx#syntax-e _hd3486_))
               (_E34893498_
                (lambda () (error '"No clause matching" _g34873494_)))
               (_K34903503_
                (lambda (_rest3501_)
                  (if (gx#stx-pair? _rest3501_)
                      (_lp3484_ _rest3501_)
                      _hd3486_))))
          (if (##pair? _g34873494_)
              (let ((_hd34913506_ (##car _g34873494_))
                    (_tl34923508_ (##cdr _g34873494_)))
                (let ((_rest3511_ _tl34923508_)) (_K34903503_ _rest3511_)))
              (_E34893498_))))))
  (define gx#stx-list-tail
    (lambda (_stx3449_ _k3450_)
      (let _lp3452_ ((_rest3454_ _stx3449_) (_k3455_ _k3450_))
        (if (fxpositive? _k3455_)
            (let* ((_g34563463_ (gx#syntax-e _rest3454_))
                   (_E34583467_
                    (lambda () (error '"No clause matching" _g34563463_)))
                   (_K34593472_
                    (lambda (_rest3470_)
                      (_lp3452_ _rest3470_ (fx- _k3455_ '1)))))
              (if (##pair? _g34563463_)
                  (let ((_hd34603475_ (##car _g34563463_))
                        (_tl34613477_ (##cdr _g34563463_)))
                    (let ((_rest3480_ _tl34613477_)) (_K34593472_ _rest3480_)))
                  (_E34583467_)))
            _rest3454_))))
  (define gx#stx-list-ref
    (lambda (_stx3446_ _k3447_)
      (gx#stx-car (gx#stx-list-tail _stx3446_ _k3447_))))
  (begin
    (define gx#stx-plist?__opt-lambda3354
      (lambda (_stx3356_ _key?3357_)
        (let _lp3359_ ((_rest3361_ _stx3356_))
          (let* ((_g33623372_ (gx#stx-e _rest3361_))
                 (_E33663376_
                  (lambda () (error '"No clause matching" _g33623372_)))
                 (_else33653380_ (lambda () '#f))
                 (_try-match33643388_
                  (lambda ()
                    (let ((_K33673385_ (lambda () '#t)))
                      (if (##null? _g33623372_)
                          (_K33673385_)
                          (_else33653380_)))))
                 (_K33683424_
                  (lambda (_rest3391_ _hd3392_)
                    (if (_key?3357_ _hd3392_)
                        (let* ((_g33933401_ (gx#stx-e _rest3391_))
                               (_E33963405_
                                (lambda ()
                                  (error '"No clause matching" _g33933401_)))
                               (_else33953409_ (lambda () '#f))
                               (_K33973414_
                                (lambda (_rest3412_) (_lp3359_ _rest3412_))))
                          (if (##pair? _g33933401_)
                              (let ((_hd33983417_ (##car _g33933401_))
                                    (_tl33993419_ (##cdr _g33933401_)))
                                (let ((_rest3422_ _tl33993419_))
                                  (_K33973414_ _rest3422_)))
                              (_else33953409_)))
                        '#f))))
            (if (##pair? _g33623372_)
                (let ((_hd33693427_ (##car _g33623372_))
                      (_tl33703429_ (##cdr _g33623372_)))
                  (let* ((_hd3432_ _hd33693427_) (_rest3434_ _tl33703429_))
                    (_K33683424_ _rest3434_ _hd3432_)))
                (_try-match33643388_))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3439_)
          (let ((_key?3441_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda3354 _stx3439_ _key?3441_))))
      (define gx#stx-plist?
        (lambda _g4463_
          (let ((_g4462_ (length _g4463_)))
            (cond ((fx= _g4462_ 1) (apply gx#stx-plist?__0 _g4463_))
                  ((fx= _g4462_ 2)
                   (apply gx#stx-plist?__opt-lambda3354 _g4463_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4463_))))))))
  (begin
    (define gx#stx-getq__opt-lambda3272
      (lambda (_key3274_ _stx3275_ _key=?3276_)
        (let _lp3278_ ((_rest3280_ _stx3275_))
          (let* ((_g32813289_ (gx#syntax-e _rest3280_))
                 (_E32843293_
                  (lambda () (error '"No clause matching" _g32813289_)))
                 (_else32833297_ (lambda () '#f))
                 (_K32853331_
                  (lambda (_rest3300_ _hd3301_)
                    (let* ((_g33023309_ (gx#syntax-e _rest3300_))
                           (_E33043313_
                            (lambda ()
                              (error '"No clause matching" _g33023309_)))
                           (_K33053319_
                            (lambda (_rest3316_ _val3317_)
                              (if (_key=?3276_ _hd3301_ _key3274_)
                                  _val3317_
                                  (_lp3278_ _rest3316_)))))
                      (if (##pair? _g33023309_)
                          (let ((_hd33063322_ (##car _g33023309_))
                                (_tl33073324_ (##cdr _g33023309_)))
                            (let* ((_val3327_ _hd33063322_)
                                   (_rest3329_ _tl33073324_))
                              (_K33053319_ _rest3329_ _val3327_)))
                          (_E33043313_))))))
            (if (##pair? _g32813289_)
                (let ((_hd32863334_ (##car _g32813289_))
                      (_tl32873336_ (##cdr _g32813289_)))
                  (let* ((_hd3339_ _hd32863334_) (_rest3341_ _tl32873336_))
                    (_K32853331_ _rest3341_ _hd3339_)))
                (_else32833297_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key3346_ _stx3347_)
          (let ((_key=?3349_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda3272 _key3346_ _stx3347_ _key=?3349_))))
      (define gx#stx-getq
        (lambda _g4465_
          (let ((_g4464_ (length _g4465_)))
            (cond ((fx= _g4464_ 2) (apply gx#stx-getq__0 _g4465_))
                  ((fx= _g4464_ 3) (apply gx#stx-getq__opt-lambda3272 _g4465_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4465_)))))))))
