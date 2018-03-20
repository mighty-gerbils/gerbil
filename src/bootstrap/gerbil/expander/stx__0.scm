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
    (lambda _$args4794_
      (apply make-struct-instance gx#identifier-wrap::t _$args4794_)))
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
    (lambda _$args4791_
      (apply make-struct-instance gx#syntax-wrap::t _$args4791_)))
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
    (lambda _$args4788_
      (apply make-struct-instance gx#syntax-quote::t _$args4788_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4786_) (symbol? (gx#stx-e _stx4786_))))
  (define gx#identifier-quote?
    (lambda (_stx4784_)
      (if (##structure-direct-instance-of? _stx4784_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4784_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4779_)
      (let ((_$e4781_
             (##structure-direct-instance-of? _stx4779_ 'gx#syntax-quote::t)))
        (if _$e4781_
            _$e4781_
            (if (##structure-instance-of? _stx4779_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4779_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4775_)
      (let ((_stx4777_ (gx#stx-unwrap__0 _stx4775_)))
        (if (##structure-instance-of? _stx4777_ 'gerbil#AST::t)
            (##structure-ref _stx4777_ '1 AST::t '#f)
            _stx4777_))))
  (define gx#syntax->datum
    (lambda (_stx4773_)
      (if (##structure-instance-of? _stx4773_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4773_ '1 AST::t '#f))
          (if (pair? _stx4773_)
              (cons (gx#syntax->datum (car _stx4773_))
                    (gx#syntax->datum (cdr _stx4773_)))
              (if (vector? _stx4773_)
                  (vector-map gx#syntax->datum _stx4773_)
                  (if (box? _stx4773_)
                      (box (gx#syntax->datum (unbox _stx4773_)))
                      _stx4773_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx4716_ _datum4717_ _src4718_ _quote?4719_)
        (letrec ((_wrap-datum4721_
                  (lambda (_e4745_ _marks4746_)
                    (_wrap-inner4723_
                     _e4745_
                     (lambda (_g47474749_)
                       (##structure
                        gx#identifier-wrap::t
                        _g47474749_
                        _src4718_
                        _marks4746_)))))
                 (_wrap-quote4722_
                  (lambda (_e4737_ _ctx4738_ _marks4739_)
                    (_wrap-inner4723_
                     _e4737_
                     (lambda (_g47404742_)
                       (##structure
                        gx#syntax-quote::t
                        _g47404742_
                        _src4718_
                        _ctx4738_
                        _marks4739_)))))
                 (_wrap-inner4723_
                  (lambda (_e4730_ _wrap-e4731_)
                    (let _recur4733_ ((_e4735_ _e4730_))
                      (if (symbol? _e4735_)
                          (_wrap-e4731_ _e4735_)
                          (if (pair? _e4735_)
                              (cons (_recur4733_ (car _e4735_))
                                    (_recur4733_ (cdr _e4735_)))
                              (if (vector? _e4735_)
                                  (vector-map _recur4733_ _e4735_)
                                  (if (box? _e4735_)
                                      (box (_recur4733_ (unbox _e4735_)))
                                      _e4735_)))))))
                 (_wrap-outer4724_
                  (lambda (_e4728_)
                    (if (##structure-instance-of? _e4728_ 'gerbil#AST::t)
                        _e4728_
                        (##structure AST::t _e4728_ _src4718_)))))
          (if (##structure-instance-of? _datum4717_ 'gerbil#AST::t)
              _datum4717_
              (if (not _stx4716_)
                  (##structure AST::t _datum4717_ _src4718_)
                  (if (gx#identifier? _stx4716_)
                      (let ((_stx4726_ (gx#stx-unwrap__0 _stx4716_)))
                        (_wrap-outer4724_
                         (if (##structure-direct-instance-of?
                              _stx4726_
                              'gx#syntax-quote::t)
                             (if _quote?4719_
                                 (_wrap-quote4722_
                                  _datum4717_
                                  (##direct-structure-ref
                                   _stx4726_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4726_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4721_
                                  _datum4717_
                                  (##direct-structure-ref
                                   _stx4726_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4721_
                              _datum4717_
                              (##direct-structure-ref
                               _stx4726_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4716_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4755_ _datum4756_)
          (let* ((_src4758_ '#f) (_quote?4760_ '#t))
            (gx#datum->syntax__%
             _stx4755_
             _datum4756_
             _src4758_
             _quote?4760_))))
      (define gx#datum->syntax__1
        (lambda (_stx4762_ _datum4763_ _src4764_)
          (let ((_quote?4766_ '#t))
            (gx#datum->syntax__%
             _stx4762_
             _datum4763_
             _src4764_
             _quote?4766_))))
      (define gx#datum->syntax
        (lambda _g4872_
          (let ((_g4871_ (length _g4872_)))
            (cond ((##fx= _g4871_ 2) (apply gx#datum->syntax__0 _g4872_))
                  ((##fx= _g4871_ 3) (apply gx#datum->syntax__1 _g4872_))
                  ((##fx= _g4871_ 4) (apply gx#datum->syntax__% _g4872_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4872_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx4692_ _marks4693_)
        (let _lp4695_ ((_e4697_ _stx4692_)
                       (_marks4698_ _marks4693_)
                       (_src4699_ (gx#stx-source _stx4692_)))
          (if (##structure-direct-instance-of? _e4697_ 'gx#syntax-wrap::t)
              (_lp4695_
               (##structure-ref _e4697_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4697_ '3 gx#syntax-wrap::t '#f)
                _marks4698_)
               (##structure-ref _e4697_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4697_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4698_)
                      _e4697_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4697_ '1 AST::t '#f)
                       (##structure-ref _e4697_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4697_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4698_)))
                  (if (##structure-direct-instance-of?
                       _e4697_
                       'gx#syntax-quote::t)
                      _e4697_
                      (if (##structure-instance-of? _e4697_ 'gerbil#AST::t)
                          (_lp4695_
                           (##structure-ref _e4697_ '1 AST::t '#f)
                           _marks4698_
                           (##structure-ref _e4697_ '2 AST::t '#f))
                          (if (symbol? _e4697_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4697_
                               _src4699_
                               (reverse _marks4698_))
                              (if (null? _marks4698_)
                                  _e4697_
                                  (if (pair? _e4697_)
                                      (cons (gx#stx-wrap
                                             (car _e4697_)
                                             _marks4698_)
                                            (gx#stx-wrap
                                             (cdr _e4697_)
                                             _marks4698_))
                                      (if (vector? _e4697_)
                                          (vector-map
                                           (lambda (_g47004702_)
                                             (gx#stx-wrap
                                              _g47004702_
                                              _marks4698_))
                                           _e4697_)
                                          (if (box? _e4697_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4697_)
                                                    _marks4698_))
                                              _e4697_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4708_)
          (let ((_marks4710_ '())) (gx#stx-unwrap__% _stx4708_ _marks4710_))))
      (define gx#stx-unwrap
        (lambda _g4874_
          (let ((_g4873_ (length _g4874_)))
            (cond ((##fx= _g4873_ 1) (apply gx#stx-unwrap__0 _g4874_))
                  ((##fx= _g4873_ 2) (apply gx#stx-unwrap__% _g4874_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4874_))))))))
  (define gx#stx-wrap
    (lambda (_stx4685_ _marks4686_)
      (foldl1 (lambda (_mark4688_ _stx4689_)
                (gx#stx-apply-mark _stx4689_ _mark4688_))
              _stx4685_
              _marks4686_)))
  (define gx#stx-rewrap
    (lambda (_stx4679_ _marks4680_)
      (foldr1 (lambda (_mark4682_ _stx4683_)
                (gx#stx-apply-mark _stx4683_ _mark4682_))
              _stx4679_
              _marks4680_)))
  (define gx#stx-apply-mark
    (lambda (_stx4676_ _mark4677_)
      (if (##structure-direct-instance-of? _stx4676_ 'gx#syntax-quote::t)
          _stx4676_
          (if (if (##structure-direct-instance-of?
                   _stx4676_
                   'gx#syntax-wrap::t)
                  (eq? _mark4677_
                       (##direct-structure-ref
                        _stx4676_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4676_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4676_
               (gx#stx-source _stx4676_)
               _mark4677_)))))
  (define gx#apply-mark
    (lambda (_mark4640_ _marks4641_)
      (let* ((_marks46424650_ _marks4641_)
             (_else46444658_ (lambda () (cons _mark4640_ _marks4641_)))
             (_K46464664_
              (lambda (_rest4661_ _hd4662_)
                (if (eq? _mark4640_ _hd4662_)
                    _rest4661_
                    (cons _mark4640_ _marks4641_)))))
        (if (##pair? _marks46424650_)
            (let ((_hd46474667_ (##car _marks46424650_))
                  (_tl46484669_ (##cdr _marks46424650_)))
              (let* ((_hd4672_ _hd46474667_) (_rest4674_ _tl46484669_))
                (_K46464664_ _rest4674_ _hd4672_)))
            (_else46444658_)))))
  (define gx#stx-e
    (lambda (_stx4638_)
      (if (##structure-instance-of? _stx4638_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4638_ '1 AST::t '#f))
          _stx4638_)))
  (define gx#stx-source
    (lambda (_stx4636_)
      (if (##structure-instance-of? _stx4636_ 'gerbil#AST::t)
          (##structure-ref _stx4636_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4630_ _src4631_)
      (if (if (##structure-instance-of? _stx4630_ 'gerbil#AST::t)
              '#t
              (not _src4631_))
          _stx4630_
          (##structure AST::t _stx4630_ _src4631_))))
  (define gx#stx-datum?
    (lambda (_stx4628_) (gx#self-quoting? (gx#stx-e _stx4628_))))
  (define gx#self-quoting?
    (lambda (_x4611_)
      (let ((_$e4613_ (immediate? _x4611_)))
        (if _$e4613_
            _$e4613_
            (let ((_$e4616_ (number? _x4611_)))
              (if _$e4616_
                  _$e4616_
                  (let ((_$e4619_ (keyword? _x4611_)))
                    (if _$e4619_
                        _$e4619_
                        (let ((_$e4622_ (string? _x4611_)))
                          (if _$e4622_
                              _$e4622_
                              (let ((_$e4625_ (vector? _x4611_)))
                                (if _$e4625_
                                    _$e4625_
                                    (u8vector? _x4611_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4609_) (boolean? (gx#stx-e _e4609_))))
  (define gx#stx-keyword? (lambda (_e4607_) (keyword? (gx#stx-e _e4607_))))
  (define gx#stx-char? (lambda (_e4605_) (char? (gx#stx-e _e4605_))))
  (define gx#stx-number? (lambda (_e4603_) (number? (gx#stx-e _e4603_))))
  (define gx#stx-fixnum? (lambda (_e4601_) (fixnum? (gx#stx-e _e4601_))))
  (define gx#stx-string? (lambda (_e4599_) (string? (gx#stx-e _e4599_))))
  (define gx#stx-null? (lambda (_e4597_) (null? (gx#stx-e _e4597_))))
  (define gx#stx-pair? (lambda (_e4595_) (pair? (gx#stx-e _e4595_))))
  (define gx#stx-list?
    (lambda (_e4557_)
      (let* ((_g45584567_ (gx#stx-e _e4557_))
             (_E45614571_
              (lambda () (error '"No clause matching" _g45584567_))))
        (let ((_K45634587_ (lambda (_rest4585_) (gx#stx-list? _rest4585_)))
              (_K45624577_ (lambda (_tail4575_) (null? _tail4575_))))
          (if (##pair? _g45584567_)
              (let* ((_tl45654590_ (##cdr _g45584567_))
                     (_rest4593_ _tl45654590_))
                (gx#stx-list? _rest4593_))
              (let ((_tail4580_ _g45584567_)) (null? _tail4580_)))))))
  (define gx#stx-pair/null?
    (lambda (_e4550_)
      (let* ((_e4552_ (gx#stx-e _e4550_)) (_$e4554_ (pair? _e4552_)))
        (if _$e4554_ _$e4554_ (null? _e4552_)))))
  (define gx#stx-vector? (lambda (_e4548_) (vector? (gx#stx-e _e4548_))))
  (define gx#stx-box? (lambda (_e4546_) (box? (gx#stx-e _e4546_))))
  (define gx#stx-eq?
    (lambda (_x4543_ _y4544_) (eq? (gx#stx-e _x4543_) (gx#stx-e _y4544_))))
  (define gx#stx-eqv?
    (lambda (_x4540_ _y4541_) (eqv? (gx#stx-e _x4540_) (gx#stx-e _y4541_))))
  (define gx#stx-equal?
    (lambda (_x4537_ _y4538_) (equal? (gx#stx-e _x4537_) (gx#stx-e _y4538_))))
  (define gx#stx-false? (lambda (_x4535_) (not (gx#stx-e _x4535_))))
  (define gx#stx-identifier
    (lambda (_template4532_ . _args4533_)
      (gx#datum->syntax__1
       _template4532_
       (apply make-symbol (map gx#stx-e _args4533_))
       (gx#stx-source _template4532_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4528_)
      (let ((_stx4530_ (gx#stx-unwrap__0 _stx4528_)))
        (if (##structure-direct-instance-of? _stx4530_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4530_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4530_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4524_)
      (let ((_stx4526_ (gx#stx-unwrap__0 _stx4524_)))
        (if (gx#identifier-quote? _stx4526_)
            (##direct-structure-ref _stx4526_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4479_)
      (let* ((_g44804490_ (gx#stx-e _stx4479_))
             (_else44834498_ (lambda () '#f)))
        (let ((_K44864512_
               (lambda (_rest4509_ _hd4510_)
                 (if (gx#identifier? _hd4510_)
                     (gx#identifier-list? _rest4509_)
                     '#f)))
              (_K44854503_ (lambda () '#t)))
          (let ((_try-match44824506_
                 (lambda ()
                   (if (##null? _g44804490_) (_K44854503_) (_else44834498_)))))
            (if (##pair? _g44804490_)
                (let ((_tl44884517_ (##cdr _g44804490_))
                      (_hd44874515_ (##car _g44804490_)))
                  (let ((_hd4520_ _hd44874515_) (_rest4522_ _tl44884517_))
                    (_K44864512_ _rest4522_ _hd4520_)))
                (_try-match44824506_)))))))
  (begin
    (define gx#genident__%
      (lambda (_e4456_ _src4457_)
        (gx#stx-wrap-source
         (gensym (let ((_e4459_ (gx#stx-e _e4456_)))
                   (if (interned-symbol? _e4459_) _e4459_ 'g)))
         (let ((_$e4461_ (gx#stx-source _e4456_)))
           (if _$e4461_ _$e4461_ _src4457_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4468_ 'g) (_src4470_ '#f))
            (gx#genident__% _e4468_ _src4470_))))
      (define gx#genident__1
        (lambda (_e4472_)
          (let ((_src4474_ '#f)) (gx#genident__% _e4472_ _src4474_))))
      (define gx#genident
        (lambda _g4876_
          (let ((_g4875_ (length _g4876_)))
            (cond ((##fx= _g4875_ 0) (apply gx#genident__0 _g4876_))
                  ((##fx= _g4875_ 1) (apply gx#genident__1 _g4876_))
                  ((##fx= _g4875_ 2) (apply gx#genident__% _g4876_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4876_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4453_) (gx#stx-map1 gx#genident _stx-lst4453_)))
  (define gx#syntax->list (lambda (_stx4451_) (gx#stx-map1 values _stx4451_)))
  (define gx#stx-car (lambda (_stx4449_) (car (gx#syntax-e _stx4449_))))
  (define gx#stx-cdr (lambda (_stx4447_) (cdr (gx#syntax-e _stx4447_))))
  (define gx#stx-length
    (lambda (_stx4412_)
      (let _lp4414_ ((_rest4416_ _stx4412_) (_n4417_ '0))
        (let* ((_g44184426_ (gx#stx-e _rest4416_))
               (_else44204434_ (lambda () _n4417_))
               (_K44224439_
                (lambda (_rest4437_) (_lp4414_ _rest4437_ (fx+ _n4417_ '1)))))
          (if (##pair? _g44184426_)
              (let* ((_tl44244442_ (##cdr _g44184426_))
                     (_rest4445_ _tl44244442_))
                (_K44224439_ _rest4445_))
              (_else44204434_))))))
  (define gx#stx-for-each
    (lambda _g4878_
      (let ((_g4877_ (length _g4878_)))
        (cond ((##fx= _g4877_ 2) (apply gx#stx-for-each1 _g4878_))
              ((##fx= _g4877_ 3) (apply gx#stx-for-each2 _g4878_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4878_))))))
  (define gx#stx-for-each1
    (lambda (_f4355_ _stx4356_)
      (let _lp4358_ ((_rest4360_ _stx4356_))
        (let* ((_g43614371_ (gx#syntax-e _rest4360_))
               (_else43644379_ (lambda () (_f4355_ _rest4360_))))
          (let ((_K43674393_
                 (lambda (_rest4390_ _hd4391_)
                   (begin (_f4355_ _hd4391_) (_lp4358_ _rest4390_))))
                (_K43664384_ (lambda () '#!void)))
            (let ((_try-match43634387_
                   (lambda ()
                     (if (##null? _g43614371_)
                         (_K43664384_)
                         (_else43644379_)))))
              (if (##pair? _g43614371_)
                  (let ((_tl43694398_ (##cdr _g43614371_))
                        (_hd43684396_ (##car _g43614371_)))
                    (let ((_hd4401_ _hd43684396_) (_rest4403_ _tl43694398_))
                      (_K43674393_ _rest4403_ _hd4401_)))
                  (_try-match43634387_))))))))
  (define gx#stx-for-each2
    (lambda (_f4260_ _xstx4261_ _ystx4262_)
      (let _lp4264_ ((_xrest4266_ _xstx4261_) (_yrest4267_ _ystx4262_))
        (let* ((_g42684278_ (gx#syntax-e _xrest4266_))
               (_else42714286_ (lambda () '#!void)))
          (let ((_K42744343_
                 (lambda (_xrest4312_ _xhd4313_)
                   (let* ((_g43144321_ (gx#syntax-e _yrest4267_))
                          (_E43164325_
                           (lambda ()
                             (error '"No clause matching" _g43144321_)))
                          (_K43174331_
                           (lambda (_yrest4328_ _yhd4329_)
                             (begin
                               (_f4260_ _xhd4313_ _yhd4329_)
                               (_lp4264_ _xrest4312_ _yrest4328_)))))
                     (if (##pair? _g43144321_)
                         (let ((_hd43184334_ (##car _g43144321_))
                               (_tl43194336_ (##cdr _g43144321_)))
                           (let* ((_yhd4339_ _hd43184334_)
                                  (_yrest4341_ _tl43194336_))
                             (_K43174331_ _yrest4341_ _yhd4339_)))
                         (_E43164325_)))))
                (_K42734306_
                 (lambda ()
                   (let* ((_yrest42904295_ _yrest4267_)
                          (_E42924299_
                           (lambda ()
                             (error '"No clause matching" _yrest42904295_)))
                          (_K42934303_
                           (lambda () (_f4260_ _xrest4266_ _yrest4267_))))
                     (if (not (gx#stx-null? _yrest42904295_))
                         (_K42934303_)
                         (_E42924299_))))))
            (let ((_try-match42704309_
                   (lambda ()
                     (if (not (null? _g42684278_))
                         (_K42734306_)
                         (_else42714286_)))))
              (if (##pair? _g42684278_)
                  (let ((_tl42764348_ (##cdr _g42684278_))
                        (_hd42754346_ (##car _g42684278_)))
                    (let ((_xhd4351_ _hd42754346_) (_xrest4353_ _tl42764348_))
                      (_K42744343_ _xrest4353_ _xhd4351_)))
                  (_try-match42704309_))))))))
  (define gx#stx-map
    (lambda _g4880_
      (let ((_g4879_ (length _g4880_)))
        (cond ((##fx= _g4879_ 2) (apply gx#stx-map1 _g4880_))
              ((##fx= _g4879_ 3) (apply gx#stx-map2 _g4880_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4880_))))))
  (define gx#stx-map1
    (lambda (_f4203_ _stx4204_)
      (let _recur4206_ ((_rest4208_ _stx4204_))
        (let* ((_g42094219_ (gx#syntax-e _rest4208_))
               (_else42124227_ (lambda () (_f4203_ _rest4208_))))
          (let ((_K42154241_
                 (lambda (_rest4238_ _hd4239_)
                   (cons (_f4203_ _hd4239_) (_recur4206_ _rest4238_))))
                (_K42144232_ (lambda () '())))
            (let ((_try-match42114235_
                   (lambda ()
                     (if (##null? _g42094219_)
                         (_K42144232_)
                         (_else42124227_)))))
              (if (##pair? _g42094219_)
                  (let ((_tl42174246_ (##cdr _g42094219_))
                        (_hd42164244_ (##car _g42094219_)))
                    (let ((_hd4249_ _hd42164244_) (_rest4251_ _tl42174246_))
                      (_K42154241_ _rest4251_ _hd4249_)))
                  (_try-match42114235_))))))))
  (define gx#stx-map2
    (lambda (_f4108_ _xstx4109_ _ystx4110_)
      (let _recur4112_ ((_xrest4114_ _xstx4109_) (_yrest4115_ _ystx4110_))
        (let* ((_g41164126_ (gx#syntax-e _xrest4114_))
               (_else41194134_ (lambda () '())))
          (let ((_K41224191_
                 (lambda (_xrest4160_ _xhd4161_)
                   (let* ((_g41624169_ (gx#syntax-e _yrest4115_))
                          (_E41644173_
                           (lambda ()
                             (error '"No clause matching" _g41624169_)))
                          (_K41654179_
                           (lambda (_yrest4176_ _yhd4177_)
                             (cons (_f4108_ _xhd4161_ _yhd4177_)
                                   (_recur4112_ _xrest4160_ _yrest4176_)))))
                     (if (##pair? _g41624169_)
                         (let ((_hd41664182_ (##car _g41624169_))
                               (_tl41674184_ (##cdr _g41624169_)))
                           (let* ((_yhd4187_ _hd41664182_)
                                  (_yrest4189_ _tl41674184_))
                             (_K41654179_ _yrest4189_ _yhd4187_)))
                         (_E41644173_)))))
                (_K41214154_
                 (lambda ()
                   (let* ((_yrest41384143_ _yrest4115_)
                          (_E41404147_
                           (lambda ()
                             (error '"No clause matching" _yrest41384143_)))
                          (_K41414151_
                           (lambda () (_f4108_ _xrest4114_ _yrest4115_))))
                     (if (not (gx#stx-null? _yrest41384143_))
                         (_K41414151_)
                         (_E41404147_))))))
            (let ((_try-match41184157_
                   (lambda ()
                     (if (not (null? _g41164126_))
                         (_K41214154_)
                         (_else41194134_)))))
              (if (##pair? _g41164126_)
                  (let ((_tl41244196_ (##cdr _g41164126_))
                        (_hd41234194_ (##car _g41164126_)))
                    (let ((_xhd4199_ _hd41234194_) (_xrest4201_ _tl41244196_))
                      (_K41224191_ _xrest4201_ _xhd4199_)))
                  (_try-match41184157_))))))))
  (define gx#stx-andmap
    (lambda (_f4058_ _stx4059_)
      (let _lp4061_ ((_rest4063_ _stx4059_))
        (let* ((_g40644074_ (gx#syntax-e _rest4063_))
               (_else40674082_ (lambda () (_f4058_ _rest4063_))))
          (let ((_K40704096_
                 (lambda (_rest4093_ _hd4094_)
                   (if (_f4058_ _hd4094_) (_lp4061_ _rest4093_) '#f)))
                (_K40694087_ (lambda () '#t)))
            (let ((_try-match40664090_
                   (lambda ()
                     (if (##null? _g40644074_)
                         (_K40694087_)
                         (_else40674082_)))))
              (if (##pair? _g40644074_)
                  (let ((_tl40724101_ (##cdr _g40644074_))
                        (_hd40714099_ (##car _g40644074_)))
                    (let ((_hd4104_ _hd40714099_) (_rest4106_ _tl40724101_))
                      (_K40704096_ _rest4106_ _hd4104_)))
                  (_try-match40664090_))))))))
  (define gx#stx-ormap
    (lambda (_f4005_ _stx4006_)
      (let _lp4008_ ((_rest4010_ _stx4006_))
        (let* ((_g40114021_ (gx#syntax-e _rest4010_))
               (_else40144029_ (lambda () (_f4005_ _rest4010_))))
          (let ((_K40174046_
                 (lambda (_rest4040_ _hd4041_)
                   (let ((_$e4043_ (_f4005_ _hd4041_)))
                     (if _$e4043_ _$e4043_ (_lp4008_ _rest4040_)))))
                (_K40164034_ (lambda () '#f)))
            (let ((_try-match40134037_
                   (lambda ()
                     (if (##null? _g40114021_)
                         (_K40164034_)
                         (_else40144029_)))))
              (if (##pair? _g40114021_)
                  (let ((_tl40194051_ (##cdr _g40114021_))
                        (_hd40184049_ (##car _g40114021_)))
                    (let ((_hd4054_ _hd40184049_) (_rest4056_ _tl40194051_))
                      (_K40174046_ _rest4056_ _hd4054_)))
                  (_try-match40134037_))))))))
  (define gx#stx-foldl
    (lambda (_f3953_ _iv3954_ _stx3955_)
      (let _lp3957_ ((_r3959_ _iv3954_) (_rest3960_ _stx3955_))
        (let* ((_g39613971_ (gx#syntax-e _rest3960_))
               (_else39643979_ (lambda () (_f3953_ _rest3960_ _r3959_))))
          (let ((_K39673993_
                 (lambda (_rest3990_ _hd3991_)
                   (_lp3957_ (_f3953_ _hd3991_ _r3959_) _rest3990_)))
                (_K39663984_ (lambda () _r3959_)))
            (let ((_try-match39633987_
                   (lambda ()
                     (if (##null? _g39613971_)
                         (_K39663984_)
                         (_else39643979_)))))
              (if (##pair? _g39613971_)
                  (let ((_tl39693998_ (##cdr _g39613971_))
                        (_hd39683996_ (##car _g39613971_)))
                    (let ((_hd4001_ _hd39683996_) (_rest4003_ _tl39693998_))
                      (_K39673993_ _rest4003_ _hd4001_)))
                  (_try-match39633987_))))))))
  (define gx#stx-foldr
    (lambda (_f3902_ _iv3903_ _stx3904_)
      (let _recur3906_ ((_rest3908_ _stx3904_))
        (let* ((_g39093919_ (gx#syntax-e _rest3908_))
               (_else39123927_ (lambda () (_f3902_ _rest3908_ _iv3903_))))
          (let ((_K39153941_
                 (lambda (_rest3938_ _hd3939_)
                   (_f3902_ _hd3939_ (_recur3906_ _rest3938_))))
                (_K39143932_ (lambda () _iv3903_)))
            (let ((_try-match39113935_
                   (lambda ()
                     (if (##null? _g39093919_)
                         (_K39143932_)
                         (_else39123927_)))))
              (if (##pair? _g39093919_)
                  (let ((_tl39173946_ (##cdr _g39093919_))
                        (_hd39163944_ (##car _g39093919_)))
                    (let ((_hd3949_ _hd39163944_) (_rest3951_ _tl39173946_))
                      (_K39153941_ _rest3951_ _hd3949_)))
                  (_try-match39113935_))))))))
  (define gx#stx-reverse
    (lambda (_stx3900_) (gx#stx-foldl cons '() _stx3900_)))
  (define gx#stx-last
    (lambda (_stx3861_)
      (let _lp3863_ ((_rest3865_ _stx3861_))
        (let* ((_g38663874_ (gx#syntax-e _rest3865_))
               (_else38683882_ (lambda () _rest3865_))
               (_K38703888_
                (lambda (_rest3885_ _hd3886_)
                  (if (gx#stx-null? _rest3885_)
                      _hd3886_
                      (_lp3863_ _rest3885_)))))
          (if (##pair? _g38663874_)
              (let ((_hd38713891_ (##car _g38663874_))
                    (_tl38723893_ (##cdr _g38663874_)))
                (let* ((_hd3896_ _hd38713891_) (_rest3898_ _tl38723893_))
                  (_K38703888_ _rest3898_ _hd3896_)))
              (_else38683882_))))))
  (define gx#stx-last-pair
    (lambda (_stx3832_)
      (let _lp3834_ ((_hd3836_ _stx3832_))
        (let* ((_g38373844_ (gx#syntax-e _hd3836_))
               (_E38393848_
                (lambda () (error '"No clause matching" _g38373844_)))
               (_K38403853_
                (lambda (_rest3851_)
                  (if (gx#stx-pair? _rest3851_)
                      (_lp3834_ _rest3851_)
                      _hd3836_))))
          (if (##pair? _g38373844_)
              (let* ((_tl38423856_ (##cdr _g38373844_))
                     (_rest3859_ _tl38423856_))
                (_K38403853_ _rest3859_))
              (_E38393848_))))))
  (define gx#stx-list-tail
    (lambda (_stx3801_ _k3802_)
      (let _lp3804_ ((_rest3806_ _stx3801_) (_k3807_ _k3802_))
        (if (fxpositive? _k3807_)
            (let* ((_g38083815_ (gx#syntax-e _rest3806_))
                   (_E38103819_
                    (lambda () (error '"No clause matching" _g38083815_)))
                   (_K38113824_
                    (lambda (_rest3822_)
                      (_lp3804_ _rest3822_ (fx- _k3807_ '1)))))
              (if (##pair? _g38083815_)
                  (let* ((_tl38133827_ (##cdr _g38083815_))
                         (_rest3830_ _tl38133827_))
                    (_K38113824_ _rest3830_))
                  (_E38103819_)))
            _rest3806_))))
  (define gx#stx-list-ref
    (lambda (_stx3798_ _k3799_)
      (gx#stx-car (gx#stx-list-tail _stx3798_ _k3799_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx3710_ _key?3711_)
        (let _lp3713_ ((_rest3715_ _stx3710_))
          (let* ((_g37163726_ (gx#stx-e _rest3715_))
                 (_else37193734_ (lambda () '#f)))
            (let ((_K37223776_
                   (lambda (_rest3745_ _hd3746_)
                     (if (_key?3711_ _hd3746_)
                         (let* ((_g37473755_ (gx#stx-e _rest3745_))
                                (_else37493763_ (lambda () '#f))
                                (_K37513768_
                                 (lambda (_rest3766_) (_lp3713_ _rest3766_))))
                           (if (##pair? _g37473755_)
                               (let* ((_tl37533771_ (##cdr _g37473755_))
                                      (_rest3774_ _tl37533771_))
                                 (_K37513768_ _rest3774_))
                               (_else37493763_)))
                         '#f)))
                  (_K37213739_ (lambda () '#t)))
              (let ((_try-match37183742_
                     (lambda ()
                       (if (##null? _g37163726_)
                           (_K37213739_)
                           (_else37193734_)))))
                (if (##pair? _g37163726_)
                    (let ((_tl37243781_ (##cdr _g37163726_))
                          (_hd37233779_ (##car _g37163726_)))
                      (let ((_hd3784_ _hd37233779_) (_rest3786_ _tl37243781_))
                        (_K37223776_ _rest3786_ _hd3784_)))
                    (_try-match37183742_))))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3791_)
          (let ((_key?3793_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx3791_ _key?3793_))))
      (define gx#stx-plist?
        (lambda _g4882_
          (let ((_g4881_ (length _g4882_)))
            (cond ((##fx= _g4881_ 1) (apply gx#stx-plist?__0 _g4882_))
                  ((##fx= _g4881_ 2) (apply gx#stx-plist?__% _g4882_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4882_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key3628_ _stx3629_ _key=?3630_)
        (let _lp3632_ ((_rest3634_ _stx3629_))
          (let* ((_g36353643_ (gx#syntax-e _rest3634_))
                 (_else36373651_ (lambda () '#f))
                 (_K36393685_
                  (lambda (_rest3654_ _hd3655_)
                    (let* ((_g36563663_ (gx#syntax-e _rest3654_))
                           (_E36583667_
                            (lambda ()
                              (error '"No clause matching" _g36563663_)))
                           (_K36593673_
                            (lambda (_rest3670_ _val3671_)
                              (if (_key=?3630_ _hd3655_ _key3628_)
                                  _val3671_
                                  (_lp3632_ _rest3670_)))))
                      (if (##pair? _g36563663_)
                          (let ((_hd36603676_ (##car _g36563663_))
                                (_tl36613678_ (##cdr _g36563663_)))
                            (let* ((_val3681_ _hd36603676_)
                                   (_rest3683_ _tl36613678_))
                              (_K36593673_ _rest3683_ _val3681_)))
                          (_E36583667_))))))
            (if (##pair? _g36353643_)
                (let ((_hd36403688_ (##car _g36353643_))
                      (_tl36413690_ (##cdr _g36353643_)))
                  (let* ((_hd3693_ _hd36403688_) (_rest3695_ _tl36413690_))
                    (_K36393685_ _rest3695_ _hd3693_)))
                (_else36373651_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key3700_ _stx3701_)
          (let ((_key=?3703_ gx#stx-eq?))
            (gx#stx-getq__% _key3700_ _stx3701_ _key=?3703_))))
      (define gx#stx-getq
        (lambda _g4884_
          (let ((_g4883_ (length _g4884_)))
            (cond ((##fx= _g4883_ 2) (apply gx#stx-getq__0 _g4884_))
                  ((##fx= _g4883_ 3) (apply gx#stx-getq__% _g4884_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4884_)))))))))
