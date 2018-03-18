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
    (lambda _$args4696_
      (apply make-struct-instance gx#identifier-wrap::t _$args4696_)))
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
    (lambda _$args4693_
      (apply make-struct-instance gx#syntax-wrap::t _$args4693_)))
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
    (lambda _$args4690_
      (apply make-struct-instance gx#syntax-quote::t _$args4690_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4688_) (symbol? (gx#stx-e _stx4688_))))
  (define gx#identifier-quote?
    (lambda (_stx4686_)
      (if (##structure-direct-instance-of? _stx4686_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4686_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4681_)
      (let ((_$e4683_
             (##structure-direct-instance-of? _stx4681_ 'gx#syntax-quote::t)))
        (if _$e4683_
            _$e4683_
            (if (##structure-instance-of? _stx4681_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4681_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4677_)
      (let ((_stx4679_ (gx#stx-unwrap__0 _stx4677_)))
        (if (##structure-instance-of? _stx4679_ 'gerbil#AST::t)
            (##structure-ref _stx4679_ '1 AST::t '#f)
            _stx4679_))))
  (define gx#syntax->datum
    (lambda (_stx4675_)
      (if (##structure-instance-of? _stx4675_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4675_ '1 AST::t '#f))
          (if (pair? _stx4675_)
              (cons (gx#syntax->datum (car _stx4675_))
                    (gx#syntax->datum (cdr _stx4675_)))
              (if (vector? _stx4675_)
                  (vector-map gx#syntax->datum _stx4675_)
                  (if (box? _stx4675_)
                      (box (gx#syntax->datum (unbox _stx4675_)))
                      _stx4675_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx4618_ _datum4619_ _src4620_ _quote?4621_)
        (letrec ((_wrap-datum4623_
                  (lambda (_e4647_ _marks4648_)
                    (_wrap-inner4625_
                     _e4647_
                     (lambda (_g46494651_)
                       (##structure
                        gx#identifier-wrap::t
                        _g46494651_
                        _src4620_
                        _marks4648_)))))
                 (_wrap-quote4624_
                  (lambda (_e4639_ _ctx4640_ _marks4641_)
                    (_wrap-inner4625_
                     _e4639_
                     (lambda (_g46424644_)
                       (##structure
                        gx#syntax-quote::t
                        _g46424644_
                        _src4620_
                        _ctx4640_
                        _marks4641_)))))
                 (_wrap-inner4625_
                  (lambda (_e4632_ _wrap-e4633_)
                    (let _recur4635_ ((_e4637_ _e4632_))
                      (if (symbol? _e4637_)
                          (_wrap-e4633_ _e4637_)
                          (if (pair? _e4637_)
                              (cons (_recur4635_ (car _e4637_))
                                    (_recur4635_ (cdr _e4637_)))
                              (if (vector? _e4637_)
                                  (vector-map _recur4635_ _e4637_)
                                  (if (box? _e4637_)
                                      (box (_recur4635_ (unbox _e4637_)))
                                      _e4637_)))))))
                 (_wrap-outer4626_
                  (lambda (_e4630_)
                    (if (##structure-instance-of? _e4630_ 'gerbil#AST::t)
                        _e4630_
                        (##structure AST::t _e4630_ _src4620_)))))
          (if (##structure-instance-of? _datum4619_ 'gerbil#AST::t)
              _datum4619_
              (if (not _stx4618_)
                  (##structure AST::t _datum4619_ _src4620_)
                  (if (gx#identifier? _stx4618_)
                      (let ((_stx4628_ (gx#stx-unwrap__0 _stx4618_)))
                        (_wrap-outer4626_
                         (if (##structure-direct-instance-of?
                              _stx4628_
                              'gx#syntax-quote::t)
                             (if _quote?4621_
                                 (_wrap-quote4624_
                                  _datum4619_
                                  (##direct-structure-ref
                                   _stx4628_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4628_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4623_
                                  _datum4619_
                                  (##direct-structure-ref
                                   _stx4628_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4623_
                              _datum4619_
                              (##direct-structure-ref
                               _stx4628_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4618_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4657_ _datum4658_)
          (let* ((_src4660_ '#f) (_quote?4662_ '#t))
            (gx#datum->syntax__%
             _stx4657_
             _datum4658_
             _src4660_
             _quote?4662_))))
      (define gx#datum->syntax__1
        (lambda (_stx4664_ _datum4665_ _src4666_)
          (let ((_quote?4668_ '#t))
            (gx#datum->syntax__%
             _stx4664_
             _datum4665_
             _src4666_
             _quote?4668_))))
      (define gx#datum->syntax
        (lambda _g4732_
          (let ((_g4731_ (length _g4732_)))
            (cond ((##fx= _g4731_ 2) (apply gx#datum->syntax__0 _g4732_))
                  ((##fx= _g4731_ 3) (apply gx#datum->syntax__1 _g4732_))
                  ((##fx= _g4731_ 4) (apply gx#datum->syntax__% _g4732_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4732_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx4594_ _marks4595_)
        (let _lp4597_ ((_e4599_ _stx4594_)
                       (_marks4600_ _marks4595_)
                       (_src4601_ (gx#stx-source _stx4594_)))
          (if (##structure-direct-instance-of? _e4599_ 'gx#syntax-wrap::t)
              (_lp4597_
               (##structure-ref _e4599_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4599_ '3 gx#syntax-wrap::t '#f)
                _marks4600_)
               (##structure-ref _e4599_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4599_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4600_)
                      _e4599_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4599_ '1 AST::t '#f)
                       (##structure-ref _e4599_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4599_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4600_)))
                  (if (##structure-direct-instance-of?
                       _e4599_
                       'gx#syntax-quote::t)
                      _e4599_
                      (if (##structure-instance-of? _e4599_ 'gerbil#AST::t)
                          (_lp4597_
                           (##structure-ref _e4599_ '1 AST::t '#f)
                           _marks4600_
                           (##structure-ref _e4599_ '2 AST::t '#f))
                          (if (symbol? _e4599_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4599_
                               _src4601_
                               (reverse _marks4600_))
                              (if (null? _marks4600_)
                                  _e4599_
                                  (if (pair? _e4599_)
                                      (cons (gx#stx-wrap
                                             (car _e4599_)
                                             _marks4600_)
                                            (gx#stx-wrap
                                             (cdr _e4599_)
                                             _marks4600_))
                                      (if (vector? _e4599_)
                                          (vector-map
                                           (lambda (_g46024604_)
                                             (gx#stx-wrap
                                              _g46024604_
                                              _marks4600_))
                                           _e4599_)
                                          (if (box? _e4599_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4599_)
                                                    _marks4600_))
                                              _e4599_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4610_)
          (let ((_marks4612_ '())) (gx#stx-unwrap__% _stx4610_ _marks4612_))))
      (define gx#stx-unwrap
        (lambda _g4734_
          (let ((_g4733_ (length _g4734_)))
            (cond ((##fx= _g4733_ 1) (apply gx#stx-unwrap__0 _g4734_))
                  ((##fx= _g4733_ 2) (apply gx#stx-unwrap__% _g4734_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4734_))))))))
  (define gx#stx-wrap
    (lambda (_stx4587_ _marks4588_)
      (foldl1 (lambda (_mark4590_ _stx4591_)
                (gx#stx-apply-mark _stx4591_ _mark4590_))
              _stx4587_
              _marks4588_)))
  (define gx#stx-rewrap
    (lambda (_stx4581_ _marks4582_)
      (foldr1 (lambda (_mark4584_ _stx4585_)
                (gx#stx-apply-mark _stx4585_ _mark4584_))
              _stx4581_
              _marks4582_)))
  (define gx#stx-apply-mark
    (lambda (_stx4578_ _mark4579_)
      (if (##structure-direct-instance-of? _stx4578_ 'gx#syntax-quote::t)
          _stx4578_
          (if (if (##structure-direct-instance-of?
                   _stx4578_
                   'gx#syntax-wrap::t)
                  (eq? _mark4579_
                       (##direct-structure-ref
                        _stx4578_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4578_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4578_
               (gx#stx-source _stx4578_)
               _mark4579_)))))
  (define gx#apply-mark
    (lambda (_mark4542_ _marks4543_)
      (let* ((_marks45444552_ _marks4543_)
             (_else45464560_ (lambda () (cons _mark4542_ _marks4543_)))
             (_K45484566_
              (lambda (_rest4563_ _hd4564_)
                (if (eq? _mark4542_ _hd4564_)
                    _rest4563_
                    (cons _mark4542_ _marks4543_)))))
        (if (##pair? _marks45444552_)
            (let ((_hd45494569_ (##car _marks45444552_))
                  (_tl45504571_ (##cdr _marks45444552_)))
              (let* ((_hd4574_ _hd45494569_) (_rest4576_ _tl45504571_))
                (_K45484566_ _rest4576_ _hd4574_)))
            (_else45464560_)))))
  (define gx#stx-e
    (lambda (_stx4540_)
      (if (##structure-instance-of? _stx4540_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4540_ '1 AST::t '#f))
          _stx4540_)))
  (define gx#stx-source
    (lambda (_stx4538_)
      (if (##structure-instance-of? _stx4538_ 'gerbil#AST::t)
          (##structure-ref _stx4538_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4532_ _src4533_)
      (if (let ((_$e4535_ (##structure-instance-of? _stx4532_ 'gerbil#AST::t)))
            (if _$e4535_ _$e4535_ (not _src4533_)))
          _stx4532_
          (##structure AST::t _stx4532_ _src4533_))))
  (define gx#stx-datum?
    (lambda (_stx4530_) (gx#self-quoting? (gx#stx-e _stx4530_))))
  (define gx#self-quoting?
    (lambda (_x4513_)
      (let ((_$e4515_ (immediate? _x4513_)))
        (if _$e4515_
            _$e4515_
            (let ((_$e4518_ (number? _x4513_)))
              (if _$e4518_
                  _$e4518_
                  (let ((_$e4521_ (keyword? _x4513_)))
                    (if _$e4521_
                        _$e4521_
                        (let ((_$e4524_ (string? _x4513_)))
                          (if _$e4524_
                              _$e4524_
                              (let ((_$e4527_ (vector? _x4513_)))
                                (if _$e4527_
                                    _$e4527_
                                    (u8vector? _x4513_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4511_) (boolean? (gx#stx-e _e4511_))))
  (define gx#stx-keyword? (lambda (_e4509_) (keyword? (gx#stx-e _e4509_))))
  (define gx#stx-char? (lambda (_e4507_) (char? (gx#stx-e _e4507_))))
  (define gx#stx-number? (lambda (_e4505_) (number? (gx#stx-e _e4505_))))
  (define gx#stx-fixnum? (lambda (_e4503_) (fixnum? (gx#stx-e _e4503_))))
  (define gx#stx-string? (lambda (_e4501_) (string? (gx#stx-e _e4501_))))
  (define gx#stx-null? (lambda (_e4499_) (null? (gx#stx-e _e4499_))))
  (define gx#stx-pair? (lambda (_e4497_) (pair? (gx#stx-e _e4497_))))
  (define gx#stx-list?
    (lambda (_e4459_)
      (let* ((_g44604469_ (gx#stx-e _e4459_))
             (_E44634473_
              (lambda () (error '"No clause matching" _g44604469_))))
        (let ((_K44654489_ (lambda (_rest4487_) (gx#stx-list? _rest4487_)))
              (_K44644479_ (lambda (_tail4477_) (null? _tail4477_))))
          (if (##pair? _g44604469_)
              (let* ((_tl44674492_ (##cdr _g44604469_))
                     (_rest4495_ _tl44674492_))
                (gx#stx-list? _rest4495_))
              (let ((_tail4482_ _g44604469_)) (null? _tail4482_)))))))
  (define gx#stx-pair/null?
    (lambda (_e4452_)
      (let* ((_e4454_ (gx#stx-e _e4452_)) (_$e4456_ (pair? _e4454_)))
        (if _$e4456_ _$e4456_ (null? _e4454_)))))
  (define gx#stx-vector? (lambda (_e4450_) (vector? (gx#stx-e _e4450_))))
  (define gx#stx-box? (lambda (_e4448_) (box? (gx#stx-e _e4448_))))
  (define gx#stx-eq?
    (lambda (_x4445_ _y4446_) (eq? (gx#stx-e _x4445_) (gx#stx-e _y4446_))))
  (define gx#stx-eqv?
    (lambda (_x4442_ _y4443_) (eqv? (gx#stx-e _x4442_) (gx#stx-e _y4443_))))
  (define gx#stx-equal?
    (lambda (_x4439_ _y4440_) (equal? (gx#stx-e _x4439_) (gx#stx-e _y4440_))))
  (define gx#stx-false? (lambda (_x4437_) (not (gx#stx-e _x4437_))))
  (define gx#stx-identifier
    (lambda (_template4434_ . _args4435_)
      (gx#datum->syntax__1
       _template4434_
       (apply make-symbol (map gx#stx-e _args4435_))
       (gx#stx-source _template4434_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4430_)
      (let ((_stx4432_ (gx#stx-unwrap__0 _stx4430_)))
        (if (##structure-direct-instance-of? _stx4432_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4432_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4432_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4426_)
      (let ((_stx4428_ (gx#stx-unwrap__0 _stx4426_)))
        (if (gx#identifier-quote? _stx4428_)
            (##direct-structure-ref _stx4428_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4381_)
      (let* ((_g43824392_ (gx#stx-e _stx4381_))
             (_else43854400_ (lambda () '#f)))
        (let ((_K43884414_
               (lambda (_rest4411_ _hd4412_)
                 (if (gx#identifier? _hd4412_)
                     (gx#identifier-list? _rest4411_)
                     '#f)))
              (_K43874405_ (lambda () '#t)))
          (let ((_try-match43844408_
                 (lambda ()
                   (if (##null? _g43824392_)
                       (let () (_K43874405_))
                       (_else43854400_)))))
            (if (##pair? _g43824392_)
                (let ((_tl43904419_ (##cdr _g43824392_))
                      (_hd43894417_ (##car _g43824392_)))
                  (let ((_hd4422_ _hd43894417_) (_rest4424_ _tl43904419_))
                    (_K43884414_ _rest4424_ _hd4422_)))
                (_try-match43844408_)))))))
  (begin
    (define gx#genident__%
      (lambda (_e4358_ _src4359_)
        (gx#stx-wrap-source
         (gensym (let ((_e4361_ (gx#stx-e _e4358_)))
                   (if (interned-symbol? _e4361_) _e4361_ 'g)))
         (let ((_$e4363_ (gx#stx-source _e4358_)))
           (if _$e4363_ _$e4363_ _src4359_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4370_ 'g) (_src4372_ '#f))
            (gx#genident__% _e4370_ _src4372_))))
      (define gx#genident__1
        (lambda (_e4374_)
          (let ((_src4376_ '#f)) (gx#genident__% _e4374_ _src4376_))))
      (define gx#genident
        (lambda _g4736_
          (let ((_g4735_ (length _g4736_)))
            (cond ((##fx= _g4735_ 0) (apply gx#genident__0 _g4736_))
                  ((##fx= _g4735_ 1) (apply gx#genident__1 _g4736_))
                  ((##fx= _g4735_ 2) (apply gx#genident__% _g4736_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4736_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4355_) (gx#stx-map1 gx#genident _stx-lst4355_)))
  (define gx#syntax->list (lambda (_stx4353_) (gx#stx-map1 values _stx4353_)))
  (define gx#stx-car (lambda (_stx4351_) (car (gx#syntax-e _stx4351_))))
  (define gx#stx-cdr (lambda (_stx4349_) (cdr (gx#syntax-e _stx4349_))))
  (define gx#stx-length
    (lambda (_stx4314_)
      (let _lp4316_ ((_rest4318_ _stx4314_) (_n4319_ '0))
        (let* ((_g43204328_ (gx#stx-e _rest4318_))
               (_else43224336_ (lambda () _n4319_))
               (_K43244341_
                (lambda (_rest4339_) (_lp4316_ _rest4339_ (fx+ _n4319_ '1)))))
          (if (##pair? _g43204328_)
              (let* ((_tl43264344_ (##cdr _g43204328_))
                     (_rest4347_ _tl43264344_))
                (_K43244341_ _rest4347_))
              (_else43224336_))))))
  (define gx#stx-for-each
    (lambda _g4738_
      (let ((_g4737_ (length _g4738_)))
        (cond ((##fx= _g4737_ 2) (apply gx#stx-for-each1 _g4738_))
              ((##fx= _g4737_ 3) (apply gx#stx-for-each2 _g4738_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4738_))))))
  (define gx#stx-for-each1
    (lambda (_f4257_ _stx4258_)
      (let _lp4260_ ((_rest4262_ _stx4258_))
        (let* ((_g42634273_ (gx#syntax-e _rest4262_))
               (_else42664281_ (lambda () (_f4257_ _rest4262_))))
          (let ((_K42694295_
                 (lambda (_rest4292_ _hd4293_)
                   (begin (_f4257_ _hd4293_) (_lp4260_ _rest4292_))))
                (_K42684286_ (lambda () '#!void)))
            (let ((_try-match42654289_
                   (lambda ()
                     (if (##null? _g42634273_)
                         (let () (_K42684286_))
                         (_else42664281_)))))
              (if (##pair? _g42634273_)
                  (let ((_tl42714300_ (##cdr _g42634273_))
                        (_hd42704298_ (##car _g42634273_)))
                    (let ((_hd4303_ _hd42704298_) (_rest4305_ _tl42714300_))
                      (_K42694295_ _rest4305_ _hd4303_)))
                  (_try-match42654289_))))))))
  (define gx#stx-for-each2
    (lambda (_f4162_ _xstx4163_ _ystx4164_)
      (let _lp4166_ ((_xrest4168_ _xstx4163_) (_yrest4169_ _ystx4164_))
        (let* ((_g41704180_ (gx#syntax-e _xrest4168_))
               (_else41734188_ (lambda () '#!void)))
          (let ((_K41764245_
                 (lambda (_xrest4214_ _xhd4215_)
                   (let* ((_g42164223_ (gx#syntax-e _yrest4169_))
                          (_E42184227_
                           (lambda ()
                             (error '"No clause matching" _g42164223_)))
                          (_K42194233_
                           (lambda (_yrest4230_ _yhd4231_)
                             (begin
                               (_f4162_ _xhd4215_ _yhd4231_)
                               (_lp4166_ _xrest4214_ _yrest4230_)))))
                     (if (##pair? _g42164223_)
                         (let ((_hd42204236_ (##car _g42164223_))
                               (_tl42214238_ (##cdr _g42164223_)))
                           (let* ((_yhd4241_ _hd42204236_)
                                  (_yrest4243_ _tl42214238_))
                             (_K42194233_ _yrest4243_ _yhd4241_)))
                         (_E42184227_)))))
                (_K41754208_
                 (lambda ()
                   (let* ((_yrest41924197_ _yrest4169_)
                          (_E41944201_
                           (lambda ()
                             (error '"No clause matching" _yrest41924197_)))
                          (_K41954205_
                           (lambda () (_f4162_ _xrest4168_ _yrest4169_))))
                     (if (not (gx#stx-null? _yrest41924197_))
                         (_K41954205_)
                         (_E41944201_))))))
            (let ((_try-match41724211_
                   (lambda ()
                     (if (not (null? _g41704180_))
                         (let () (_K41754208_))
                         (_else41734188_)))))
              (if (##pair? _g41704180_)
                  (let ((_tl41784250_ (##cdr _g41704180_))
                        (_hd41774248_ (##car _g41704180_)))
                    (let ((_xhd4253_ _hd41774248_) (_xrest4255_ _tl41784250_))
                      (_K41764245_ _xrest4255_ _xhd4253_)))
                  (_try-match41724211_))))))))
  (define gx#stx-map
    (lambda _g4740_
      (let ((_g4739_ (length _g4740_)))
        (cond ((##fx= _g4739_ 2) (apply gx#stx-map1 _g4740_))
              ((##fx= _g4739_ 3) (apply gx#stx-map2 _g4740_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4740_))))))
  (define gx#stx-map1
    (lambda (_f4105_ _stx4106_)
      (let _recur4108_ ((_rest4110_ _stx4106_))
        (let* ((_g41114121_ (gx#syntax-e _rest4110_))
               (_else41144129_ (lambda () (_f4105_ _rest4110_))))
          (let ((_K41174143_
                 (lambda (_rest4140_ _hd4141_)
                   (cons (_f4105_ _hd4141_) (_recur4108_ _rest4140_))))
                (_K41164134_ (lambda () '())))
            (let ((_try-match41134137_
                   (lambda ()
                     (if (##null? _g41114121_)
                         (let () (_K41164134_))
                         (_else41144129_)))))
              (if (##pair? _g41114121_)
                  (let ((_tl41194148_ (##cdr _g41114121_))
                        (_hd41184146_ (##car _g41114121_)))
                    (let ((_hd4151_ _hd41184146_) (_rest4153_ _tl41194148_))
                      (_K41174143_ _rest4153_ _hd4151_)))
                  (_try-match41134137_))))))))
  (define gx#stx-map2
    (lambda (_f4010_ _xstx4011_ _ystx4012_)
      (let _recur4014_ ((_xrest4016_ _xstx4011_) (_yrest4017_ _ystx4012_))
        (let* ((_g40184028_ (gx#syntax-e _xrest4016_))
               (_else40214036_ (lambda () '())))
          (let ((_K40244093_
                 (lambda (_xrest4062_ _xhd4063_)
                   (let* ((_g40644071_ (gx#syntax-e _yrest4017_))
                          (_E40664075_
                           (lambda ()
                             (error '"No clause matching" _g40644071_)))
                          (_K40674081_
                           (lambda (_yrest4078_ _yhd4079_)
                             (cons (_f4010_ _xhd4063_ _yhd4079_)
                                   (_recur4014_ _xrest4062_ _yrest4078_)))))
                     (if (##pair? _g40644071_)
                         (let ((_hd40684084_ (##car _g40644071_))
                               (_tl40694086_ (##cdr _g40644071_)))
                           (let* ((_yhd4089_ _hd40684084_)
                                  (_yrest4091_ _tl40694086_))
                             (_K40674081_ _yrest4091_ _yhd4089_)))
                         (_E40664075_)))))
                (_K40234056_
                 (lambda ()
                   (let* ((_yrest40404045_ _yrest4017_)
                          (_E40424049_
                           (lambda ()
                             (error '"No clause matching" _yrest40404045_)))
                          (_K40434053_
                           (lambda () (_f4010_ _xrest4016_ _yrest4017_))))
                     (if (not (gx#stx-null? _yrest40404045_))
                         (_K40434053_)
                         (_E40424049_))))))
            (let ((_try-match40204059_
                   (lambda ()
                     (if (not (null? _g40184028_))
                         (let () (_K40234056_))
                         (_else40214036_)))))
              (if (##pair? _g40184028_)
                  (let ((_tl40264098_ (##cdr _g40184028_))
                        (_hd40254096_ (##car _g40184028_)))
                    (let ((_xhd4101_ _hd40254096_) (_xrest4103_ _tl40264098_))
                      (_K40244093_ _xrest4103_ _xhd4101_)))
                  (_try-match40204059_))))))))
  (define gx#stx-andmap
    (lambda (_f3960_ _stx3961_)
      (let _lp3963_ ((_rest3965_ _stx3961_))
        (let* ((_g39663976_ (gx#syntax-e _rest3965_))
               (_else39693984_ (lambda () (_f3960_ _rest3965_))))
          (let ((_K39723998_
                 (lambda (_rest3995_ _hd3996_)
                   (if (_f3960_ _hd3996_) (_lp3963_ _rest3995_) '#f)))
                (_K39713989_ (lambda () '#t)))
            (let ((_try-match39683992_
                   (lambda ()
                     (if (##null? _g39663976_)
                         (let () (_K39713989_))
                         (_else39693984_)))))
              (if (##pair? _g39663976_)
                  (let ((_tl39744003_ (##cdr _g39663976_))
                        (_hd39734001_ (##car _g39663976_)))
                    (let ((_hd4006_ _hd39734001_) (_rest4008_ _tl39744003_))
                      (_K39723998_ _rest4008_ _hd4006_)))
                  (_try-match39683992_))))))))
  (define gx#stx-ormap
    (lambda (_f3907_ _stx3908_)
      (let _lp3910_ ((_rest3912_ _stx3908_))
        (let* ((_g39133923_ (gx#syntax-e _rest3912_))
               (_else39163931_ (lambda () (_f3907_ _rest3912_))))
          (let ((_K39193948_
                 (lambda (_rest3942_ _hd3943_)
                   (let ((_$e3945_ (_f3907_ _hd3943_)))
                     (if _$e3945_ _$e3945_ (_lp3910_ _rest3942_)))))
                (_K39183936_ (lambda () '#f)))
            (let ((_try-match39153939_
                   (lambda ()
                     (if (##null? _g39133923_)
                         (let () (_K39183936_))
                         (_else39163931_)))))
              (if (##pair? _g39133923_)
                  (let ((_tl39213953_ (##cdr _g39133923_))
                        (_hd39203951_ (##car _g39133923_)))
                    (let ((_hd3956_ _hd39203951_) (_rest3958_ _tl39213953_))
                      (_K39193948_ _rest3958_ _hd3956_)))
                  (_try-match39153939_))))))))
  (define gx#stx-foldl
    (lambda (_f3855_ _iv3856_ _stx3857_)
      (let _lp3859_ ((_r3861_ _iv3856_) (_rest3862_ _stx3857_))
        (let* ((_g38633873_ (gx#syntax-e _rest3862_))
               (_else38663881_ (lambda () (_f3855_ _rest3862_ _r3861_))))
          (let ((_K38693895_
                 (lambda (_rest3892_ _hd3893_)
                   (_lp3859_ (_f3855_ _hd3893_ _r3861_) _rest3892_)))
                (_K38683886_ (lambda () _r3861_)))
            (let ((_try-match38653889_
                   (lambda ()
                     (if (##null? _g38633873_)
                         (let () (_K38683886_))
                         (_else38663881_)))))
              (if (##pair? _g38633873_)
                  (let ((_tl38713900_ (##cdr _g38633873_))
                        (_hd38703898_ (##car _g38633873_)))
                    (let ((_hd3903_ _hd38703898_) (_rest3905_ _tl38713900_))
                      (_K38693895_ _rest3905_ _hd3903_)))
                  (_try-match38653889_))))))))
  (define gx#stx-foldr
    (lambda (_f3804_ _iv3805_ _stx3806_)
      (let _recur3808_ ((_rest3810_ _stx3806_))
        (let* ((_g38113821_ (gx#syntax-e _rest3810_))
               (_else38143829_ (lambda () (_f3804_ _rest3810_ _iv3805_))))
          (let ((_K38173843_
                 (lambda (_rest3840_ _hd3841_)
                   (_f3804_ _hd3841_ (_recur3808_ _rest3840_))))
                (_K38163834_ (lambda () _iv3805_)))
            (let ((_try-match38133837_
                   (lambda ()
                     (if (##null? _g38113821_)
                         (let () (_K38163834_))
                         (_else38143829_)))))
              (if (##pair? _g38113821_)
                  (let ((_tl38193848_ (##cdr _g38113821_))
                        (_hd38183846_ (##car _g38113821_)))
                    (let ((_hd3851_ _hd38183846_) (_rest3853_ _tl38193848_))
                      (_K38173843_ _rest3853_ _hd3851_)))
                  (_try-match38133837_))))))))
  (define gx#stx-reverse
    (lambda (_stx3802_) (gx#stx-foldl cons '() _stx3802_)))
  (define gx#stx-last
    (lambda (_stx3763_)
      (let _lp3765_ ((_rest3767_ _stx3763_))
        (let* ((_g37683776_ (gx#syntax-e _rest3767_))
               (_else37703784_ (lambda () _rest3767_))
               (_K37723790_
                (lambda (_rest3787_ _hd3788_)
                  (if (gx#stx-null? _rest3787_)
                      _hd3788_
                      (_lp3765_ _rest3787_)))))
          (if (##pair? _g37683776_)
              (let ((_hd37733793_ (##car _g37683776_))
                    (_tl37743795_ (##cdr _g37683776_)))
                (let* ((_hd3798_ _hd37733793_) (_rest3800_ _tl37743795_))
                  (_K37723790_ _rest3800_ _hd3798_)))
              (_else37703784_))))))
  (define gx#stx-last-pair
    (lambda (_stx3734_)
      (let _lp3736_ ((_hd3738_ _stx3734_))
        (let* ((_g37393746_ (gx#syntax-e _hd3738_))
               (_E37413750_
                (lambda () (error '"No clause matching" _g37393746_)))
               (_K37423755_
                (lambda (_rest3753_)
                  (if (gx#stx-pair? _rest3753_)
                      (_lp3736_ _rest3753_)
                      _hd3738_))))
          (if (##pair? _g37393746_)
              (let* ((_tl37443758_ (##cdr _g37393746_))
                     (_rest3761_ _tl37443758_))
                (_K37423755_ _rest3761_))
              (_E37413750_))))))
  (define gx#stx-list-tail
    (lambda (_stx3703_ _k3704_)
      (let _lp3706_ ((_rest3708_ _stx3703_) (_k3709_ _k3704_))
        (if (fxpositive? _k3709_)
            (let* ((_g37103717_ (gx#syntax-e _rest3708_))
                   (_E37123721_
                    (lambda () (error '"No clause matching" _g37103717_)))
                   (_K37133726_
                    (lambda (_rest3724_)
                      (_lp3706_ _rest3724_ (fx- _k3709_ '1)))))
              (if (##pair? _g37103717_)
                  (let* ((_tl37153729_ (##cdr _g37103717_))
                         (_rest3732_ _tl37153729_))
                    (_K37133726_ _rest3732_))
                  (_E37123721_)))
            _rest3708_))))
  (define gx#stx-list-ref
    (lambda (_stx3700_ _k3701_)
      (gx#stx-car (gx#stx-list-tail _stx3700_ _k3701_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx3612_ _key?3613_)
        (let _lp3615_ ((_rest3617_ _stx3612_))
          (let* ((_g36183628_ (gx#stx-e _rest3617_))
                 (_else36213636_ (lambda () '#f)))
            (let ((_K36243678_
                   (lambda (_rest3647_ _hd3648_)
                     (if (_key?3613_ _hd3648_)
                         (let* ((_g36493657_ (gx#stx-e _rest3647_))
                                (_else36513665_ (lambda () '#f))
                                (_K36533670_
                                 (lambda (_rest3668_) (_lp3615_ _rest3668_))))
                           (if (##pair? _g36493657_)
                               (let* ((_tl36553673_ (##cdr _g36493657_))
                                      (_rest3676_ _tl36553673_))
                                 (_K36533670_ _rest3676_))
                               (_else36513665_)))
                         '#f)))
                  (_K36233641_ (lambda () '#t)))
              (let ((_try-match36203644_
                     (lambda ()
                       (if (##null? _g36183628_)
                           (let () (_K36233641_))
                           (_else36213636_)))))
                (if (##pair? _g36183628_)
                    (let ((_tl36263683_ (##cdr _g36183628_))
                          (_hd36253681_ (##car _g36183628_)))
                      (let ((_hd3686_ _hd36253681_) (_rest3688_ _tl36263683_))
                        (_K36243678_ _rest3688_ _hd3686_)))
                    (_try-match36203644_))))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3693_)
          (let ((_key?3695_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx3693_ _key?3695_))))
      (define gx#stx-plist?
        (lambda _g4742_
          (let ((_g4741_ (length _g4742_)))
            (cond ((##fx= _g4741_ 1) (apply gx#stx-plist?__0 _g4742_))
                  ((##fx= _g4741_ 2) (apply gx#stx-plist?__% _g4742_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4742_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key3530_ _stx3531_ _key=?3532_)
        (let _lp3534_ ((_rest3536_ _stx3531_))
          (let* ((_g35373545_ (gx#syntax-e _rest3536_))
                 (_else35393553_ (lambda () '#f))
                 (_K35413587_
                  (lambda (_rest3556_ _hd3557_)
                    (let* ((_g35583565_ (gx#syntax-e _rest3556_))
                           (_E35603569_
                            (lambda ()
                              (error '"No clause matching" _g35583565_)))
                           (_K35613575_
                            (lambda (_rest3572_ _val3573_)
                              (if (_key=?3532_ _hd3557_ _key3530_)
                                  _val3573_
                                  (_lp3534_ _rest3572_)))))
                      (if (##pair? _g35583565_)
                          (let ((_hd35623578_ (##car _g35583565_))
                                (_tl35633580_ (##cdr _g35583565_)))
                            (let* ((_val3583_ _hd35623578_)
                                   (_rest3585_ _tl35633580_))
                              (_K35613575_ _rest3585_ _val3583_)))
                          (_E35603569_))))))
            (if (##pair? _g35373545_)
                (let ((_hd35423590_ (##car _g35373545_))
                      (_tl35433592_ (##cdr _g35373545_)))
                  (let* ((_hd3595_ _hd35423590_) (_rest3597_ _tl35433592_))
                    (_K35413587_ _rest3597_ _hd3595_)))
                (_else35393553_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key3602_ _stx3603_)
          (let ((_key=?3605_ gx#stx-eq?))
            (gx#stx-getq__% _key3602_ _stx3603_ _key=?3605_))))
      (define gx#stx-getq
        (lambda _g4744_
          (let ((_g4743_ (length _g4744_)))
            (cond ((##fx= _g4743_ 2) (apply gx#stx-getq__0 _g4744_))
                  ((##fx= _g4743_ 3) (apply gx#stx-getq__% _g4744_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4744_)))))))))
