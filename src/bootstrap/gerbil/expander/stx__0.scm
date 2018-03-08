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
    (lambda _$args4705_
      (apply make-struct-instance gx#identifier-wrap::t _$args4705_)))
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
    (lambda _$args4702_
      (apply make-struct-instance gx#syntax-wrap::t _$args4702_)))
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
    (lambda _$args4699_
      (apply make-struct-instance gx#syntax-quote::t _$args4699_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4697_) (symbol? (gx#stx-e _stx4697_))))
  (define gx#identifier-quote?
    (lambda (_stx4695_)
      (if (##structure-direct-instance-of? _stx4695_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4695_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4690_)
      (let ((_$e4692_
             (##structure-direct-instance-of? _stx4690_ 'gx#syntax-quote::t)))
        (if _$e4692_
            _$e4692_
            (if (##structure-instance-of? _stx4690_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4690_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4686_)
      (let ((_stx4688_ (gx#stx-unwrap__0 _stx4686_)))
        (if (##structure-instance-of? _stx4688_ 'gerbil#AST::t)
            (##structure-ref _stx4688_ '1 AST::t '#f)
            _stx4688_))))
  (define gx#syntax->datum
    (lambda (_stx4684_)
      (if (##structure-instance-of? _stx4684_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4684_ '1 AST::t '#f))
          (if (pair? _stx4684_)
              (cons (gx#syntax->datum (car _stx4684_))
                    (gx#syntax->datum (cdr _stx4684_)))
              (if (vector? _stx4684_)
                  (vector-map gx#syntax->datum _stx4684_)
                  (if (box? _stx4684_)
                      (box (gx#syntax->datum (unbox _stx4684_)))
                      _stx4684_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx4627_ _datum4628_ _src4629_ _quote?4630_)
        (letrec ((_wrap-datum4632_
                  (lambda (_e4656_ _marks4657_)
                    (_wrap-inner4634_
                     _e4656_
                     (lambda (_g46584660_)
                       (##structure
                        gx#identifier-wrap::t
                        _g46584660_
                        _src4629_
                        _marks4657_)))))
                 (_wrap-quote4633_
                  (lambda (_e4648_ _ctx4649_ _marks4650_)
                    (_wrap-inner4634_
                     _e4648_
                     (lambda (_g46514653_)
                       (##structure
                        gx#syntax-quote::t
                        _g46514653_
                        _src4629_
                        _ctx4649_
                        _marks4650_)))))
                 (_wrap-inner4634_
                  (lambda (_e4641_ _wrap-e4642_)
                    (let _recur4644_ ((_e4646_ _e4641_))
                      (if (symbol? _e4646_)
                          (_wrap-e4642_ _e4646_)
                          (if (pair? _e4646_)
                              (cons (_recur4644_ (car _e4646_))
                                    (_recur4644_ (cdr _e4646_)))
                              (if (vector? _e4646_)
                                  (vector-map _recur4644_ _e4646_)
                                  (if (box? _e4646_)
                                      (box (_recur4644_ (unbox _e4646_)))
                                      _e4646_)))))))
                 (_wrap-outer4635_
                  (lambda (_e4639_)
                    (if (##structure-instance-of? _e4639_ 'gerbil#AST::t)
                        _e4639_
                        (##structure AST::t _e4639_ _src4629_)))))
          (if (##structure-instance-of? _datum4628_ 'gerbil#AST::t)
              _datum4628_
              (if (not _stx4627_)
                  (##structure AST::t _datum4628_ _src4629_)
                  (if (gx#identifier? _stx4627_)
                      (let ((_stx4637_ (gx#stx-unwrap__0 _stx4627_)))
                        (_wrap-outer4635_
                         (if (##structure-direct-instance-of?
                              _stx4637_
                              'gx#syntax-quote::t)
                             (if _quote?4630_
                                 (_wrap-quote4633_
                                  _datum4628_
                                  (##direct-structure-ref
                                   _stx4637_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4637_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4632_
                                  _datum4628_
                                  (##direct-structure-ref
                                   _stx4637_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4632_
                              _datum4628_
                              (##direct-structure-ref
                               _stx4637_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4627_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4666_ _datum4667_)
          (let* ((_src4669_ '#f) (_quote?4671_ '#t))
            (gx#datum->syntax__%
             _stx4666_
             _datum4667_
             _src4669_
             _quote?4671_))))
      (define gx#datum->syntax__1
        (lambda (_stx4673_ _datum4674_ _src4675_)
          (let ((_quote?4677_ '#t))
            (gx#datum->syntax__%
             _stx4673_
             _datum4674_
             _src4675_
             _quote?4677_))))
      (define gx#datum->syntax
        (lambda _g4708_
          (let ((_g4707_ (length _g4708_)))
            (cond ((fx= _g4707_ 2) (apply gx#datum->syntax__0 _g4708_))
                  ((fx= _g4707_ 3) (apply gx#datum->syntax__1 _g4708_))
                  ((fx= _g4707_ 4) (apply gx#datum->syntax__% _g4708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4708_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx4603_ _marks4604_)
        (let _lp4606_ ((_e4608_ _stx4603_)
                       (_marks4609_ _marks4604_)
                       (_src4610_ (gx#stx-source _stx4603_)))
          (if (##structure-direct-instance-of? _e4608_ 'gx#syntax-wrap::t)
              (_lp4606_
               (##structure-ref _e4608_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4608_ '3 gx#syntax-wrap::t '#f)
                _marks4609_)
               (##structure-ref _e4608_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4608_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4609_)
                      _e4608_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4608_ '1 AST::t '#f)
                       (##structure-ref _e4608_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4608_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4609_)))
                  (if (##structure-direct-instance-of?
                       _e4608_
                       'gx#syntax-quote::t)
                      _e4608_
                      (if (##structure-instance-of? _e4608_ 'gerbil#AST::t)
                          (_lp4606_
                           (##structure-ref _e4608_ '1 AST::t '#f)
                           _marks4609_
                           (##structure-ref _e4608_ '2 AST::t '#f))
                          (if (symbol? _e4608_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4608_
                               _src4610_
                               (reverse _marks4609_))
                              (if (null? _marks4609_)
                                  _e4608_
                                  (if (pair? _e4608_)
                                      (cons (gx#stx-wrap
                                             (car _e4608_)
                                             _marks4609_)
                                            (gx#stx-wrap
                                             (cdr _e4608_)
                                             _marks4609_))
                                      (if (vector? _e4608_)
                                          (vector-map
                                           (lambda (_g46114613_)
                                             (gx#stx-wrap
                                              _g46114613_
                                              _marks4609_))
                                           _e4608_)
                                          (if (box? _e4608_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4608_)
                                                    _marks4609_))
                                              _e4608_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4619_)
          (let ((_marks4621_ '())) (gx#stx-unwrap__% _stx4619_ _marks4621_))))
      (define gx#stx-unwrap
        (lambda _g4710_
          (let ((_g4709_ (length _g4710_)))
            (cond ((fx= _g4709_ 1) (apply gx#stx-unwrap__0 _g4710_))
                  ((fx= _g4709_ 2) (apply gx#stx-unwrap__% _g4710_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4710_))))))))
  (define gx#stx-wrap
    (lambda (_stx4596_ _marks4597_)
      (foldl1 (lambda (_mark4599_ _stx4600_)
                (gx#stx-apply-mark _stx4600_ _mark4599_))
              _stx4596_
              _marks4597_)))
  (define gx#stx-rewrap
    (lambda (_stx4590_ _marks4591_)
      (foldr1 (lambda (_mark4593_ _stx4594_)
                (gx#stx-apply-mark _stx4594_ _mark4593_))
              _stx4590_
              _marks4591_)))
  (define gx#stx-apply-mark
    (lambda (_stx4587_ _mark4588_)
      (if (##structure-direct-instance-of? _stx4587_ 'gx#syntax-quote::t)
          _stx4587_
          (if (if (##structure-direct-instance-of?
                   _stx4587_
                   'gx#syntax-wrap::t)
                  (eq? _mark4588_
                       (##direct-structure-ref
                        _stx4587_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4587_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4587_
               (gx#stx-source _stx4587_)
               _mark4588_)))))
  (define gx#apply-mark
    (lambda (_mark4551_ _marks4552_)
      (let* ((_marks45534561_ _marks4552_)
             (_E45564565_
              (lambda () (error '"No clause matching" _marks45534561_)))
             (_else45554569_ (lambda () (cons _mark4551_ _marks4552_)))
             (_K45574575_
              (lambda (_rest4572_ _hd4573_)
                (if (eq? _mark4551_ _hd4573_)
                    _rest4572_
                    (cons _mark4551_ _marks4552_)))))
        (if (##pair? _marks45534561_)
            (let ((_hd45584578_ (##car _marks45534561_))
                  (_tl45594580_ (##cdr _marks45534561_)))
              (let* ((_hd4583_ _hd45584578_) (_rest4585_ _tl45594580_))
                (_K45574575_ _rest4585_ _hd4583_)))
            (_else45554569_)))))
  (define gx#stx-e
    (lambda (_stx4549_)
      (if (##structure-instance-of? _stx4549_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4549_ '1 AST::t '#f))
          _stx4549_)))
  (define gx#stx-source
    (lambda (_stx4547_)
      (if (##structure-instance-of? _stx4547_ 'gerbil#AST::t)
          (##structure-ref _stx4547_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4541_ _src4542_)
      (if (let ((_$e4544_ (##structure-instance-of? _stx4541_ 'gerbil#AST::t)))
            (if _$e4544_ _$e4544_ (not _src4542_)))
          _stx4541_
          (##structure AST::t _stx4541_ _src4542_))))
  (define gx#stx-datum?
    (lambda (_stx4539_) (gx#self-quoting? (gx#stx-e _stx4539_))))
  (define gx#self-quoting?
    (lambda (_x4522_)
      (let ((_$e4524_ (immediate? _x4522_)))
        (if _$e4524_
            _$e4524_
            (let ((_$e4527_ (number? _x4522_)))
              (if _$e4527_
                  _$e4527_
                  (let ((_$e4530_ (keyword? _x4522_)))
                    (if _$e4530_
                        _$e4530_
                        (let ((_$e4533_ (string? _x4522_)))
                          (if _$e4533_
                              _$e4533_
                              (let ((_$e4536_ (vector? _x4522_)))
                                (if _$e4536_
                                    _$e4536_
                                    (u8vector? _x4522_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4520_) (boolean? (gx#stx-e _e4520_))))
  (define gx#stx-keyword? (lambda (_e4518_) (keyword? (gx#stx-e _e4518_))))
  (define gx#stx-char? (lambda (_e4516_) (char? (gx#stx-e _e4516_))))
  (define gx#stx-number? (lambda (_e4514_) (number? (gx#stx-e _e4514_))))
  (define gx#stx-fixnum? (lambda (_e4512_) (fixnum? (gx#stx-e _e4512_))))
  (define gx#stx-string? (lambda (_e4510_) (string? (gx#stx-e _e4510_))))
  (define gx#stx-null? (lambda (_e4508_) (null? (gx#stx-e _e4508_))))
  (define gx#stx-pair? (lambda (_e4506_) (pair? (gx#stx-e _e4506_))))
  (define gx#stx-list?
    (lambda (_e4466_)
      (let* ((_g44674476_ (gx#stx-e _e4466_))
             (_E44704480_
              (lambda () (error '"No clause matching" _g44674476_)))
             (_try-match44694491_
              (lambda ()
                (let* ((_K44714486_ (lambda (_tail4484_) (null? _tail4484_)))
                       (_tail4489_ _g44674476_))
                  (null? _tail4489_))))
             (_K44724496_ (lambda (_rest4494_) (gx#stx-list? _rest4494_))))
        (if (##pair? _g44674476_)
            (let ((_hd44734499_ (##car _g44674476_))
                  (_tl44744501_ (##cdr _g44674476_)))
              (let ((_rest4504_ _tl44744501_)) (gx#stx-list? _rest4504_)))
            (_try-match44694491_)))))
  (define gx#stx-pair/null?
    (lambda (_e4459_)
      (let* ((_e4461_ (gx#stx-e _e4459_)) (_$e4463_ (pair? _e4461_)))
        (if _$e4463_ _$e4463_ (null? _e4461_)))))
  (define gx#stx-vector? (lambda (_e4457_) (vector? (gx#stx-e _e4457_))))
  (define gx#stx-box? (lambda (_e4455_) (box? (gx#stx-e _e4455_))))
  (define gx#stx-eq?
    (lambda (_x4452_ _y4453_) (eq? (gx#stx-e _x4452_) (gx#stx-e _y4453_))))
  (define gx#stx-eqv?
    (lambda (_x4449_ _y4450_) (eqv? (gx#stx-e _x4449_) (gx#stx-e _y4450_))))
  (define gx#stx-equal?
    (lambda (_x4446_ _y4447_) (equal? (gx#stx-e _x4446_) (gx#stx-e _y4447_))))
  (define gx#stx-false? (lambda (_x4444_) (not (gx#stx-e _x4444_))))
  (define gx#stx-identifier
    (lambda (_template4441_ . _args4442_)
      (gx#datum->syntax__1
       _template4441_
       (apply make-symbol (map gx#stx-e _args4442_))
       (gx#stx-source _template4441_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4437_)
      (let ((_stx4439_ (gx#stx-unwrap__0 _stx4437_)))
        (if (##structure-direct-instance-of? _stx4439_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4439_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4439_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4433_)
      (let ((_stx4435_ (gx#stx-unwrap__0 _stx4433_)))
        (if (gx#identifier-quote? _stx4435_)
            (##direct-structure-ref _stx4435_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4388_)
      (let* ((_g43894399_ (gx#stx-e _stx4388_))
             (_E43934403_
              (lambda () (error '"No clause matching" _g43894399_)))
             (_else43924407_ (lambda () '#f))
             (_try-match43914415_
              (lambda ()
                (let ((_K43944412_ (lambda () '#t)))
                  (if (##null? _g43894399_) (_K43944412_) (_else43924407_)))))
             (_K43954421_
              (lambda (_rest4418_ _hd4419_)
                (if (gx#identifier? _hd4419_)
                    (gx#identifier-list? _rest4418_)
                    '#f))))
        (if (##pair? _g43894399_)
            (let ((_hd43964424_ (##car _g43894399_))
                  (_tl43974426_ (##cdr _g43894399_)))
              (let* ((_hd4429_ _hd43964424_) (_rest4431_ _tl43974426_))
                (_K43954421_ _rest4431_ _hd4429_)))
            (_try-match43914415_)))))
  (begin
    (define gx#genident__%
      (lambda (_e4365_ _src4366_)
        (gx#stx-wrap-source
         (gensym (let ((_e4368_ (gx#stx-e _e4365_)))
                   (if (interned-symbol? _e4368_) _e4368_ 'g)))
         (let ((_$e4370_ (gx#stx-source _e4365_)))
           (if _$e4370_ _$e4370_ _src4366_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4377_ 'g) (_src4379_ '#f))
            (gx#genident__% _e4377_ _src4379_))))
      (define gx#genident__1
        (lambda (_e4381_)
          (let ((_src4383_ '#f)) (gx#genident__% _e4381_ _src4383_))))
      (define gx#genident
        (lambda _g4712_
          (let ((_g4711_ (length _g4712_)))
            (cond ((fx= _g4711_ 0) (apply gx#genident__0 _g4712_))
                  ((fx= _g4711_ 1) (apply gx#genident__1 _g4712_))
                  ((fx= _g4711_ 2) (apply gx#genident__% _g4712_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4712_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4362_) (gx#stx-map1 gx#genident _stx-lst4362_)))
  (define gx#syntax->list (lambda (_stx4360_) (gx#stx-map1 values _stx4360_)))
  (define gx#stx-car (lambda (_stx4358_) (car (gx#syntax-e _stx4358_))))
  (define gx#stx-cdr (lambda (_stx4356_) (cdr (gx#syntax-e _stx4356_))))
  (define gx#stx-length
    (lambda (_stx4319_)
      (let _lp4321_ ((_rest4323_ _stx4319_) (_n4324_ '0))
        (let* ((_g43254333_ (gx#stx-e _rest4323_))
               (_E43284337_
                (lambda () (error '"No clause matching" _g43254333_)))
               (_else43274341_ (lambda () _n4324_))
               (_K43294346_
                (lambda (_rest4344_) (_lp4321_ _rest4344_ (fx+ _n4324_ '1)))))
          (if (##pair? _g43254333_)
              (let ((_hd43304349_ (##car _g43254333_))
                    (_tl43314351_ (##cdr _g43254333_)))
                (let ((_rest4354_ _tl43314351_)) (_K43294346_ _rest4354_)))
              (_else43274341_))))))
  (define gx#stx-for-each
    (lambda _g4714_
      (let ((_g4713_ (length _g4714_)))
        (cond ((fx= _g4713_ 2) (apply gx#stx-for-each1 _g4714_))
              ((fx= _g4713_ 3) (apply gx#stx-for-each2 _g4714_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4714_))))))
  (define gx#stx-for-each1
    (lambda (_f4262_ _stx4263_)
      (let _lp4265_ ((_rest4267_ _stx4263_))
        (let* ((_g42684278_ (gx#syntax-e _rest4267_))
               (_E42724282_
                (lambda () (error '"No clause matching" _g42684278_)))
               (_else42714286_ (lambda () (_f4262_ _rest4267_)))
               (_try-match42704294_
                (lambda ()
                  (let ((_K42734291_ (lambda () '#!void)))
                    (if (##null? _g42684278_)
                        (_K42734291_)
                        (_else42714286_)))))
               (_K42744300_
                (lambda (_rest4297_ _hd4298_)
                  (begin (_f4262_ _hd4298_) (_lp4265_ _rest4297_)))))
          (if (##pair? _g42684278_)
              (let ((_hd42754303_ (##car _g42684278_))
                    (_tl42764305_ (##cdr _g42684278_)))
                (let* ((_hd4308_ _hd42754303_) (_rest4310_ _tl42764305_))
                  (_K42744300_ _rest4310_ _hd4308_)))
              (_try-match42704294_))))))
  (define gx#stx-for-each2
    (lambda (_f4167_ _xstx4168_ _ystx4169_)
      (let _lp4171_ ((_xrest4173_ _xstx4168_) (_yrest4174_ _ystx4169_))
        (let* ((_g41754185_ (gx#syntax-e _xrest4173_))
               (_E41794189_
                (lambda () (error '"No clause matching" _g41754185_)))
               (_else41784193_ (lambda () '#!void))
               (_try-match41774216_
                (lambda ()
                  (let ((_K41804213_
                         (lambda ()
                           (let* ((_yrest41974202_ _yrest4174_)
                                  (_E41994206_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest41974202_)))
                                  (_K42004210_
                                   (lambda ()
                                     (_f4167_ _xrest4173_ _yrest4174_))))
                             (if (not (gx#stx-null? _yrest41974202_))
                                 (_K42004210_)
                                 (_E41994206_))))))
                    (if (not (null? _g41754185_))
                        (_K41804213_)
                        (_else41784193_)))))
               (_K41814250_
                (lambda (_xrest4219_ _xhd4220_)
                  (let* ((_g42214228_ (gx#syntax-e _yrest4174_))
                         (_E42234232_
                          (lambda ()
                            (error '"No clause matching" _g42214228_)))
                         (_K42244238_
                          (lambda (_yrest4235_ _yhd4236_)
                            (begin
                              (_f4167_ _xhd4220_ _yhd4236_)
                              (_lp4171_ _xrest4219_ _yrest4235_)))))
                    (if (##pair? _g42214228_)
                        (let ((_hd42254241_ (##car _g42214228_))
                              (_tl42264243_ (##cdr _g42214228_)))
                          (let* ((_yhd4246_ _hd42254241_)
                                 (_yrest4248_ _tl42264243_))
                            (_K42244238_ _yrest4248_ _yhd4246_)))
                        (_E42234232_))))))
          (if (##pair? _g41754185_)
              (let ((_hd41824253_ (##car _g41754185_))
                    (_tl41834255_ (##cdr _g41754185_)))
                (let* ((_xhd4258_ _hd41824253_) (_xrest4260_ _tl41834255_))
                  (_K41814250_ _xrest4260_ _xhd4258_)))
              (_try-match41774216_))))))
  (define gx#stx-map
    (lambda _g4716_
      (let ((_g4715_ (length _g4716_)))
        (cond ((fx= _g4715_ 2) (apply gx#stx-map1 _g4716_))
              ((fx= _g4715_ 3) (apply gx#stx-map2 _g4716_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4716_))))))
  (define gx#stx-map1
    (lambda (_f4110_ _stx4111_)
      (let _recur4113_ ((_rest4115_ _stx4111_))
        (let* ((_g41164126_ (gx#syntax-e _rest4115_))
               (_E41204130_
                (lambda () (error '"No clause matching" _g41164126_)))
               (_else41194134_ (lambda () (_f4110_ _rest4115_)))
               (_try-match41184142_
                (lambda ()
                  (let ((_K41214139_ (lambda () '())))
                    (if (##null? _g41164126_)
                        (_K41214139_)
                        (_else41194134_)))))
               (_K41224148_
                (lambda (_rest4145_ _hd4146_)
                  (cons (_f4110_ _hd4146_) (_recur4113_ _rest4145_)))))
          (if (##pair? _g41164126_)
              (let ((_hd41234151_ (##car _g41164126_))
                    (_tl41244153_ (##cdr _g41164126_)))
                (let* ((_hd4156_ _hd41234151_) (_rest4158_ _tl41244153_))
                  (_K41224148_ _rest4158_ _hd4156_)))
              (_try-match41184142_))))))
  (define gx#stx-map2
    (lambda (_f4015_ _xstx4016_ _ystx4017_)
      (let _recur4019_ ((_xrest4021_ _xstx4016_) (_yrest4022_ _ystx4017_))
        (let* ((_g40234033_ (gx#syntax-e _xrest4021_))
               (_E40274037_
                (lambda () (error '"No clause matching" _g40234033_)))
               (_else40264041_ (lambda () '()))
               (_try-match40254064_
                (lambda ()
                  (let ((_K40284061_
                         (lambda ()
                           (let* ((_yrest40454050_ _yrest4022_)
                                  (_E40474054_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _yrest40454050_)))
                                  (_K40484058_
                                   (lambda ()
                                     (_f4015_ _xrest4021_ _yrest4022_))))
                             (if (not (gx#stx-null? _yrest40454050_))
                                 (_K40484058_)
                                 (_E40474054_))))))
                    (if (not (null? _g40234033_))
                        (_K40284061_)
                        (_else40264041_)))))
               (_K40294098_
                (lambda (_xrest4067_ _xhd4068_)
                  (let* ((_g40694076_ (gx#syntax-e _yrest4022_))
                         (_E40714080_
                          (lambda ()
                            (error '"No clause matching" _g40694076_)))
                         (_K40724086_
                          (lambda (_yrest4083_ _yhd4084_)
                            (cons (_f4015_ _xhd4068_ _yhd4084_)
                                  (_recur4019_ _xrest4067_ _yrest4083_)))))
                    (if (##pair? _g40694076_)
                        (let ((_hd40734089_ (##car _g40694076_))
                              (_tl40744091_ (##cdr _g40694076_)))
                          (let* ((_yhd4094_ _hd40734089_)
                                 (_yrest4096_ _tl40744091_))
                            (_K40724086_ _yrest4096_ _yhd4094_)))
                        (_E40714080_))))))
          (if (##pair? _g40234033_)
              (let ((_hd40304101_ (##car _g40234033_))
                    (_tl40314103_ (##cdr _g40234033_)))
                (let* ((_xhd4106_ _hd40304101_) (_xrest4108_ _tl40314103_))
                  (_K40294098_ _xrest4108_ _xhd4106_)))
              (_try-match40254064_))))))
  (define gx#stx-andmap
    (lambda (_f3965_ _stx3966_)
      (let _lp3968_ ((_rest3970_ _stx3966_))
        (let* ((_g39713981_ (gx#syntax-e _rest3970_))
               (_E39753985_
                (lambda () (error '"No clause matching" _g39713981_)))
               (_else39743989_ (lambda () (_f3965_ _rest3970_)))
               (_try-match39733997_
                (lambda ()
                  (let ((_K39763994_ (lambda () '#t)))
                    (if (##null? _g39713981_)
                        (_K39763994_)
                        (_else39743989_)))))
               (_K39774003_
                (lambda (_rest4000_ _hd4001_)
                  (if (_f3965_ _hd4001_) (_lp3968_ _rest4000_) '#f))))
          (if (##pair? _g39713981_)
              (let ((_hd39784006_ (##car _g39713981_))
                    (_tl39794008_ (##cdr _g39713981_)))
                (let* ((_hd4011_ _hd39784006_) (_rest4013_ _tl39794008_))
                  (_K39774003_ _rest4013_ _hd4011_)))
              (_try-match39733997_))))))
  (define gx#stx-ormap
    (lambda (_f3912_ _stx3913_)
      (let _lp3915_ ((_rest3917_ _stx3913_))
        (let* ((_g39183928_ (gx#syntax-e _rest3917_))
               (_E39223932_
                (lambda () (error '"No clause matching" _g39183928_)))
               (_else39213936_ (lambda () (_f3912_ _rest3917_)))
               (_try-match39203944_
                (lambda ()
                  (let ((_K39233941_ (lambda () '#f)))
                    (if (##null? _g39183928_)
                        (_K39233941_)
                        (_else39213936_)))))
               (_K39243953_
                (lambda (_rest3947_ _hd3948_)
                  (let ((_$e3950_ (_f3912_ _hd3948_)))
                    (if _$e3950_ _$e3950_ (_lp3915_ _rest3947_))))))
          (if (##pair? _g39183928_)
              (let ((_hd39253956_ (##car _g39183928_))
                    (_tl39263958_ (##cdr _g39183928_)))
                (let* ((_hd3961_ _hd39253956_) (_rest3963_ _tl39263958_))
                  (_K39243953_ _rest3963_ _hd3961_)))
              (_try-match39203944_))))))
  (define gx#stx-foldl
    (lambda (_f3860_ _iv3861_ _stx3862_)
      (let _lp3864_ ((_r3866_ _iv3861_) (_rest3867_ _stx3862_))
        (let* ((_g38683878_ (gx#syntax-e _rest3867_))
               (_E38723882_
                (lambda () (error '"No clause matching" _g38683878_)))
               (_else38713886_ (lambda () (_f3860_ _rest3867_ _r3866_)))
               (_try-match38703894_
                (lambda ()
                  (let ((_K38733891_ (lambda () _r3866_)))
                    (if (##null? _g38683878_)
                        (_K38733891_)
                        (_else38713886_)))))
               (_K38743900_
                (lambda (_rest3897_ _hd3898_)
                  (_lp3864_ (_f3860_ _hd3898_ _r3866_) _rest3897_))))
          (if (##pair? _g38683878_)
              (let ((_hd38753903_ (##car _g38683878_))
                    (_tl38763905_ (##cdr _g38683878_)))
                (let* ((_hd3908_ _hd38753903_) (_rest3910_ _tl38763905_))
                  (_K38743900_ _rest3910_ _hd3908_)))
              (_try-match38703894_))))))
  (define gx#stx-foldr
    (lambda (_f3809_ _iv3810_ _stx3811_)
      (let _recur3813_ ((_rest3815_ _stx3811_))
        (let* ((_g38163826_ (gx#syntax-e _rest3815_))
               (_E38203830_
                (lambda () (error '"No clause matching" _g38163826_)))
               (_else38193834_ (lambda () (_f3809_ _rest3815_ _iv3810_)))
               (_try-match38183842_
                (lambda ()
                  (let ((_K38213839_ (lambda () _iv3810_)))
                    (if (##null? _g38163826_)
                        (_K38213839_)
                        (_else38193834_)))))
               (_K38223848_
                (lambda (_rest3845_ _hd3846_)
                  (_f3809_ _hd3846_ (_recur3813_ _rest3845_)))))
          (if (##pair? _g38163826_)
              (let ((_hd38233851_ (##car _g38163826_))
                    (_tl38243853_ (##cdr _g38163826_)))
                (let* ((_hd3856_ _hd38233851_) (_rest3858_ _tl38243853_))
                  (_K38223848_ _rest3858_ _hd3856_)))
              (_try-match38183842_))))))
  (define gx#stx-reverse
    (lambda (_stx3807_) (gx#stx-foldl cons '() _stx3807_)))
  (define gx#stx-last
    (lambda (_stx3768_)
      (let _lp3770_ ((_rest3772_ _stx3768_))
        (let* ((_g37733781_ (gx#syntax-e _rest3772_))
               (_E37763785_
                (lambda () (error '"No clause matching" _g37733781_)))
               (_else37753789_ (lambda () _rest3772_))
               (_K37773795_
                (lambda (_rest3792_ _hd3793_)
                  (if (gx#stx-null? _rest3792_)
                      _hd3793_
                      (_lp3770_ _rest3792_)))))
          (if (##pair? _g37733781_)
              (let ((_hd37783798_ (##car _g37733781_))
                    (_tl37793800_ (##cdr _g37733781_)))
                (let* ((_hd3803_ _hd37783798_) (_rest3805_ _tl37793800_))
                  (_K37773795_ _rest3805_ _hd3803_)))
              (_else37753789_))))))
  (define gx#stx-last-pair
    (lambda (_stx3737_)
      (let _lp3739_ ((_hd3741_ _stx3737_))
        (let* ((_g37423749_ (gx#syntax-e _hd3741_))
               (_E37443753_
                (lambda () (error '"No clause matching" _g37423749_)))
               (_K37453758_
                (lambda (_rest3756_)
                  (if (gx#stx-pair? _rest3756_)
                      (_lp3739_ _rest3756_)
                      _hd3741_))))
          (if (##pair? _g37423749_)
              (let ((_hd37463761_ (##car _g37423749_))
                    (_tl37473763_ (##cdr _g37423749_)))
                (let ((_rest3766_ _tl37473763_)) (_K37453758_ _rest3766_)))
              (_E37443753_))))))
  (define gx#stx-list-tail
    (lambda (_stx3704_ _k3705_)
      (let _lp3707_ ((_rest3709_ _stx3704_) (_k3710_ _k3705_))
        (if (fxpositive? _k3710_)
            (let* ((_g37113718_ (gx#syntax-e _rest3709_))
                   (_E37133722_
                    (lambda () (error '"No clause matching" _g37113718_)))
                   (_K37143727_
                    (lambda (_rest3725_)
                      (_lp3707_ _rest3725_ (fx- _k3710_ '1)))))
              (if (##pair? _g37113718_)
                  (let ((_hd37153730_ (##car _g37113718_))
                        (_tl37163732_ (##cdr _g37113718_)))
                    (let ((_rest3735_ _tl37163732_)) (_K37143727_ _rest3735_)))
                  (_E37133722_)))
            _rest3709_))))
  (define gx#stx-list-ref
    (lambda (_stx3701_ _k3702_)
      (gx#stx-car (gx#stx-list-tail _stx3701_ _k3702_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx3611_ _key?3612_)
        (let _lp3614_ ((_rest3616_ _stx3611_))
          (let* ((_g36173627_ (gx#stx-e _rest3616_))
                 (_E36213631_
                  (lambda () (error '"No clause matching" _g36173627_)))
                 (_else36203635_ (lambda () '#f))
                 (_try-match36193643_
                  (lambda ()
                    (let ((_K36223640_ (lambda () '#t)))
                      (if (##null? _g36173627_)
                          (_K36223640_)
                          (_else36203635_)))))
                 (_K36233679_
                  (lambda (_rest3646_ _hd3647_)
                    (if (_key?3612_ _hd3647_)
                        (let* ((_g36483656_ (gx#stx-e _rest3646_))
                               (_E36513660_
                                (lambda ()
                                  (error '"No clause matching" _g36483656_)))
                               (_else36503664_ (lambda () '#f))
                               (_K36523669_
                                (lambda (_rest3667_) (_lp3614_ _rest3667_))))
                          (if (##pair? _g36483656_)
                              (let ((_hd36533672_ (##car _g36483656_))
                                    (_tl36543674_ (##cdr _g36483656_)))
                                (let ((_rest3677_ _tl36543674_))
                                  (_K36523669_ _rest3677_)))
                              (_else36503664_)))
                        '#f))))
            (if (##pair? _g36173627_)
                (let ((_hd36243682_ (##car _g36173627_))
                      (_tl36253684_ (##cdr _g36173627_)))
                  (let* ((_hd3687_ _hd36243682_) (_rest3689_ _tl36253684_))
                    (_K36233679_ _rest3689_ _hd3687_)))
                (_try-match36193643_))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3694_)
          (let ((_key?3696_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx3694_ _key?3696_))))
      (define gx#stx-plist?
        (lambda _g4718_
          (let ((_g4717_ (length _g4718_)))
            (cond ((fx= _g4717_ 1) (apply gx#stx-plist?__0 _g4718_))
                  ((fx= _g4717_ 2) (apply gx#stx-plist?__% _g4718_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4718_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key3529_ _stx3530_ _key=?3531_)
        (let _lp3533_ ((_rest3535_ _stx3530_))
          (let* ((_g35363544_ (gx#syntax-e _rest3535_))
                 (_E35393548_
                  (lambda () (error '"No clause matching" _g35363544_)))
                 (_else35383552_ (lambda () '#f))
                 (_K35403586_
                  (lambda (_rest3555_ _hd3556_)
                    (let* ((_g35573564_ (gx#syntax-e _rest3555_))
                           (_E35593568_
                            (lambda ()
                              (error '"No clause matching" _g35573564_)))
                           (_K35603574_
                            (lambda (_rest3571_ _val3572_)
                              (if (_key=?3531_ _hd3556_ _key3529_)
                                  _val3572_
                                  (_lp3533_ _rest3571_)))))
                      (if (##pair? _g35573564_)
                          (let ((_hd35613577_ (##car _g35573564_))
                                (_tl35623579_ (##cdr _g35573564_)))
                            (let* ((_val3582_ _hd35613577_)
                                   (_rest3584_ _tl35623579_))
                              (_K35603574_ _rest3584_ _val3582_)))
                          (_E35593568_))))))
            (if (##pair? _g35363544_)
                (let ((_hd35413589_ (##car _g35363544_))
                      (_tl35423591_ (##cdr _g35363544_)))
                  (let* ((_hd3594_ _hd35413589_) (_rest3596_ _tl35423591_))
                    (_K35403586_ _rest3596_ _hd3594_)))
                (_else35383552_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key3601_ _stx3602_)
          (let ((_key=?3604_ gx#stx-eq?))
            (gx#stx-getq__% _key3601_ _stx3602_ _key=?3604_))))
      (define gx#stx-getq
        (lambda _g4720_
          (let ((_g4719_ (length _g4720_)))
            (cond ((fx= _g4719_ 2) (apply gx#stx-getq__0 _g4720_))
                  ((fx= _g4719_ 3) (apply gx#stx-getq__% _g4720_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4720_)))))))))
