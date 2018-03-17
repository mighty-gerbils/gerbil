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
    (lambda _$args4695_
      (apply make-struct-instance gx#identifier-wrap::t _$args4695_)))
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
    (lambda _$args4692_
      (apply make-struct-instance gx#syntax-wrap::t _$args4692_)))
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
    (lambda _$args4689_
      (apply make-struct-instance gx#syntax-quote::t _$args4689_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx4687_) (symbol? (gx#stx-e _stx4687_))))
  (define gx#identifier-quote?
    (lambda (_stx4685_)
      (if (##structure-direct-instance-of? _stx4685_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx4685_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx4680_)
      (let ((_$e4682_
             (##structure-direct-instance-of? _stx4680_ 'gx#syntax-quote::t)))
        (if _$e4682_
            _$e4682_
            (if (##structure-instance-of? _stx4680_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx4680_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx4676_)
      (let ((_stx4678_ (gx#stx-unwrap__0 _stx4676_)))
        (if (##structure-instance-of? _stx4678_ 'gerbil#AST::t)
            (##structure-ref _stx4678_ '1 AST::t '#f)
            _stx4678_))))
  (define gx#syntax->datum
    (lambda (_stx4674_)
      (if (##structure-instance-of? _stx4674_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx4674_ '1 AST::t '#f))
          (if (pair? _stx4674_)
              (cons (gx#syntax->datum (car _stx4674_))
                    (gx#syntax->datum (cdr _stx4674_)))
              (if (vector? _stx4674_)
                  (vector-map gx#syntax->datum _stx4674_)
                  (if (box? _stx4674_)
                      (box (gx#syntax->datum (unbox _stx4674_)))
                      _stx4674_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx4617_ _datum4618_ _src4619_ _quote?4620_)
        (letrec ((_wrap-datum4622_
                  (lambda (_e4646_ _marks4647_)
                    (_wrap-inner4624_
                     _e4646_
                     (lambda (_g46484650_)
                       (##structure
                        gx#identifier-wrap::t
                        _g46484650_
                        _src4619_
                        _marks4647_)))))
                 (_wrap-quote4623_
                  (lambda (_e4638_ _ctx4639_ _marks4640_)
                    (_wrap-inner4624_
                     _e4638_
                     (lambda (_g46414643_)
                       (##structure
                        gx#syntax-quote::t
                        _g46414643_
                        _src4619_
                        _ctx4639_
                        _marks4640_)))))
                 (_wrap-inner4624_
                  (lambda (_e4631_ _wrap-e4632_)
                    (let _recur4634_ ((_e4636_ _e4631_))
                      (if (symbol? _e4636_)
                          (_wrap-e4632_ _e4636_)
                          (if (pair? _e4636_)
                              (cons (_recur4634_ (car _e4636_))
                                    (_recur4634_ (cdr _e4636_)))
                              (if (vector? _e4636_)
                                  (vector-map _recur4634_ _e4636_)
                                  (if (box? _e4636_)
                                      (box (_recur4634_ (unbox _e4636_)))
                                      _e4636_)))))))
                 (_wrap-outer4625_
                  (lambda (_e4629_)
                    (if (##structure-instance-of? _e4629_ 'gerbil#AST::t)
                        _e4629_
                        (##structure AST::t _e4629_ _src4619_)))))
          (if (##structure-instance-of? _datum4618_ 'gerbil#AST::t)
              _datum4618_
              (if (not _stx4617_)
                  (##structure AST::t _datum4618_ _src4619_)
                  (if (gx#identifier? _stx4617_)
                      (let ((_stx4627_ (gx#stx-unwrap__0 _stx4617_)))
                        (_wrap-outer4625_
                         (if (##structure-direct-instance-of?
                              _stx4627_
                              'gx#syntax-quote::t)
                             (if _quote?4620_
                                 (_wrap-quote4623_
                                  _datum4618_
                                  (##direct-structure-ref
                                   _stx4627_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx4627_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum4622_
                                  _datum4618_
                                  (##direct-structure-ref
                                   _stx4627_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum4622_
                              _datum4618_
                              (##direct-structure-ref
                               _stx4627_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx4617_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx4656_ _datum4657_)
          (let* ((_src4659_ '#f) (_quote?4661_ '#t))
            (gx#datum->syntax__%
             _stx4656_
             _datum4657_
             _src4659_
             _quote?4661_))))
      (define gx#datum->syntax__1
        (lambda (_stx4663_ _datum4664_ _src4665_)
          (let ((_quote?4667_ '#t))
            (gx#datum->syntax__%
             _stx4663_
             _datum4664_
             _src4665_
             _quote?4667_))))
      (define gx#datum->syntax
        (lambda _g4731_
          (let ((_g4730_ (length _g4731_)))
            (cond ((##fx= _g4730_ 2) (apply gx#datum->syntax__0 _g4731_))
                  ((##fx= _g4730_ 3) (apply gx#datum->syntax__1 _g4731_))
                  ((##fx= _g4730_ 4) (apply gx#datum->syntax__% _g4731_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g4731_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx4593_ _marks4594_)
        (let _lp4596_ ((_e4598_ _stx4593_)
                       (_marks4599_ _marks4594_)
                       (_src4600_ (gx#stx-source _stx4593_)))
          (if (##structure-direct-instance-of? _e4598_ 'gx#syntax-wrap::t)
              (_lp4596_
               (##structure-ref _e4598_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e4598_ '3 gx#syntax-wrap::t '#f)
                _marks4599_)
               (##structure-ref _e4598_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e4598_
                   'gx#identifier-wrap::t)
                  (if (null? _marks4599_)
                      _e4598_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e4598_ '1 AST::t '#f)
                       (##structure-ref _e4598_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4598_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4599_)))
                  (if (##structure-direct-instance-of?
                       _e4598_
                       'gx#syntax-quote::t)
                      _e4598_
                      (if (##structure-instance-of? _e4598_ 'gerbil#AST::t)
                          (_lp4596_
                           (##structure-ref _e4598_ '1 AST::t '#f)
                           _marks4599_
                           (##structure-ref _e4598_ '2 AST::t '#f))
                          (if (symbol? _e4598_)
                              (##structure
                               gx#identifier-wrap::t
                               _e4598_
                               _src4600_
                               (reverse _marks4599_))
                              (if (null? _marks4599_)
                                  _e4598_
                                  (if (pair? _e4598_)
                                      (cons (gx#stx-wrap
                                             (car _e4598_)
                                             _marks4599_)
                                            (gx#stx-wrap
                                             (cdr _e4598_)
                                             _marks4599_))
                                      (if (vector? _e4598_)
                                          (vector-map
                                           (lambda (_g46014603_)
                                             (gx#stx-wrap
                                              _g46014603_
                                              _marks4599_))
                                           _e4598_)
                                          (if (box? _e4598_)
                                              (box (gx#stx-wrap
                                                    (unbox _e4598_)
                                                    _marks4599_))
                                              _e4598_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx4609_)
          (let ((_marks4611_ '())) (gx#stx-unwrap__% _stx4609_ _marks4611_))))
      (define gx#stx-unwrap
        (lambda _g4733_
          (let ((_g4732_ (length _g4733_)))
            (cond ((##fx= _g4732_ 1) (apply gx#stx-unwrap__0 _g4733_))
                  ((##fx= _g4732_ 2) (apply gx#stx-unwrap__% _g4733_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g4733_))))))))
  (define gx#stx-wrap
    (lambda (_stx4586_ _marks4587_)
      (foldl1 (lambda (_mark4589_ _stx4590_)
                (gx#stx-apply-mark _stx4590_ _mark4589_))
              _stx4586_
              _marks4587_)))
  (define gx#stx-rewrap
    (lambda (_stx4580_ _marks4581_)
      (foldr1 (lambda (_mark4583_ _stx4584_)
                (gx#stx-apply-mark _stx4584_ _mark4583_))
              _stx4580_
              _marks4581_)))
  (define gx#stx-apply-mark
    (lambda (_stx4577_ _mark4578_)
      (if (##structure-direct-instance-of? _stx4577_ 'gx#syntax-quote::t)
          _stx4577_
          (if (if (##structure-direct-instance-of?
                   _stx4577_
                   'gx#syntax-wrap::t)
                  (eq? _mark4578_
                       (##direct-structure-ref
                        _stx4577_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx4577_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx4577_
               (gx#stx-source _stx4577_)
               _mark4578_)))))
  (define gx#apply-mark
    (lambda (_mark4541_ _marks4542_)
      (let* ((_marks45434551_ _marks4542_)
             (_else45454559_ (lambda () (cons _mark4541_ _marks4542_)))
             (_K45474565_
              (lambda (_rest4562_ _hd4563_)
                (if (eq? _mark4541_ _hd4563_)
                    _rest4562_
                    (cons _mark4541_ _marks4542_)))))
        (if (##pair? _marks45434551_)
            (let ((_hd45484568_ (##car _marks45434551_))
                  (_tl45494570_ (##cdr _marks45434551_)))
              (let* ((_hd4573_ _hd45484568_) (_rest4575_ _tl45494570_))
                (_K45474565_ _rest4575_ _hd4573_)))
            (_else45454559_)))))
  (define gx#stx-e
    (lambda (_stx4539_)
      (if (##structure-instance-of? _stx4539_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx4539_ '1 AST::t '#f))
          _stx4539_)))
  (define gx#stx-source
    (lambda (_stx4537_)
      (if (##structure-instance-of? _stx4537_ 'gerbil#AST::t)
          (##structure-ref _stx4537_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx4531_ _src4532_)
      (if (let ((_$e4534_ (##structure-instance-of? _stx4531_ 'gerbil#AST::t)))
            (if _$e4534_ _$e4534_ (not _src4532_)))
          _stx4531_
          (##structure AST::t _stx4531_ _src4532_))))
  (define gx#stx-datum?
    (lambda (_stx4529_) (gx#self-quoting? (gx#stx-e _stx4529_))))
  (define gx#self-quoting?
    (lambda (_x4512_)
      (let ((_$e4514_ (immediate? _x4512_)))
        (if _$e4514_
            _$e4514_
            (let ((_$e4517_ (number? _x4512_)))
              (if _$e4517_
                  _$e4517_
                  (let ((_$e4520_ (keyword? _x4512_)))
                    (if _$e4520_
                        _$e4520_
                        (let ((_$e4523_ (string? _x4512_)))
                          (if _$e4523_
                              _$e4523_
                              (let ((_$e4526_ (vector? _x4512_)))
                                (if _$e4526_
                                    _$e4526_
                                    (u8vector? _x4512_)))))))))))))
  (define gx#stx-boolean? (lambda (_e4510_) (boolean? (gx#stx-e _e4510_))))
  (define gx#stx-keyword? (lambda (_e4508_) (keyword? (gx#stx-e _e4508_))))
  (define gx#stx-char? (lambda (_e4506_) (char? (gx#stx-e _e4506_))))
  (define gx#stx-number? (lambda (_e4504_) (number? (gx#stx-e _e4504_))))
  (define gx#stx-fixnum? (lambda (_e4502_) (fixnum? (gx#stx-e _e4502_))))
  (define gx#stx-string? (lambda (_e4500_) (string? (gx#stx-e _e4500_))))
  (define gx#stx-null? (lambda (_e4498_) (null? (gx#stx-e _e4498_))))
  (define gx#stx-pair? (lambda (_e4496_) (pair? (gx#stx-e _e4496_))))
  (define gx#stx-list?
    (lambda (_e4458_)
      (let* ((_g44594468_ (gx#stx-e _e4458_))
             (_E44624472_
              (lambda () (error '"No clause matching" _g44594468_))))
        (let ((_K44644488_ (lambda (_rest4486_) (gx#stx-list? _rest4486_)))
              (_K44634478_ (lambda (_tail4476_) (null? _tail4476_))))
          (if (##pair? _g44594468_)
              (let* ((_tl44664491_ (##cdr _g44594468_))
                     (_rest4494_ _tl44664491_))
                (gx#stx-list? _rest4494_))
              (let ((_tail4481_ _g44594468_)) (null? _tail4481_)))))))
  (define gx#stx-pair/null?
    (lambda (_e4451_)
      (let* ((_e4453_ (gx#stx-e _e4451_)) (_$e4455_ (pair? _e4453_)))
        (if _$e4455_ _$e4455_ (null? _e4453_)))))
  (define gx#stx-vector? (lambda (_e4449_) (vector? (gx#stx-e _e4449_))))
  (define gx#stx-box? (lambda (_e4447_) (box? (gx#stx-e _e4447_))))
  (define gx#stx-eq?
    (lambda (_x4444_ _y4445_) (eq? (gx#stx-e _x4444_) (gx#stx-e _y4445_))))
  (define gx#stx-eqv?
    (lambda (_x4441_ _y4442_) (eqv? (gx#stx-e _x4441_) (gx#stx-e _y4442_))))
  (define gx#stx-equal?
    (lambda (_x4438_ _y4439_) (equal? (gx#stx-e _x4438_) (gx#stx-e _y4439_))))
  (define gx#stx-false? (lambda (_x4436_) (not (gx#stx-e _x4436_))))
  (define gx#stx-identifier
    (lambda (_template4433_ . _args4434_)
      (gx#datum->syntax__1
       _template4433_
       (apply make-symbol (map gx#stx-e _args4434_))
       (gx#stx-source _template4433_))))
  (define gx#stx-identifier-marks
    (lambda (_stx4429_)
      (let ((_stx4431_ (gx#stx-unwrap__0 _stx4429_)))
        (if (##structure-direct-instance-of? _stx4431_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx4431_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx4431_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx4425_)
      (let ((_stx4427_ (gx#stx-unwrap__0 _stx4425_)))
        (if (gx#identifier-quote? _stx4427_)
            (##direct-structure-ref _stx4427_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx4380_)
      (let* ((_g43814391_ (gx#stx-e _stx4380_))
             (_else43844399_ (lambda () '#f)))
        (let ((_K43874413_
               (lambda (_rest4410_ _hd4411_)
                 (if (gx#identifier? _hd4411_)
                     (gx#identifier-list? _rest4410_)
                     '#f)))
              (_K43864404_ (lambda () '#t)))
          (let ((_try-match43834407_
                 (lambda ()
                   (if (##null? _g43814391_)
                       (let () (_K43864404_))
                       (_else43844399_)))))
            (if (##pair? _g43814391_)
                (let ((_tl43894418_ (##cdr _g43814391_))
                      (_hd43884416_ (##car _g43814391_)))
                  (let ((_hd4421_ _hd43884416_) (_rest4423_ _tl43894418_))
                    (_K43874413_ _rest4423_ _hd4421_)))
                (_try-match43834407_)))))))
  (begin
    (define gx#genident__%
      (lambda (_e4357_ _src4358_)
        (gx#stx-wrap-source
         (gensym (let ((_e4360_ (gx#stx-e _e4357_)))
                   (if (interned-symbol? _e4360_) _e4360_ 'g)))
         (let ((_$e4362_ (gx#stx-source _e4357_)))
           (if _$e4362_ _$e4362_ _src4358_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e4369_ 'g) (_src4371_ '#f))
            (gx#genident__% _e4369_ _src4371_))))
      (define gx#genident__1
        (lambda (_e4373_)
          (let ((_src4375_ '#f)) (gx#genident__% _e4373_ _src4375_))))
      (define gx#genident
        (lambda _g4735_
          (let ((_g4734_ (length _g4735_)))
            (cond ((##fx= _g4734_ 0) (apply gx#genident__0 _g4735_))
                  ((##fx= _g4734_ 1) (apply gx#genident__1 _g4735_))
                  ((##fx= _g4734_ 2) (apply gx#genident__% _g4735_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g4735_))))))))
  (define gx#gentemps
    (lambda (_stx-lst4354_) (gx#stx-map1 gx#genident _stx-lst4354_)))
  (define gx#syntax->list (lambda (_stx4352_) (gx#stx-map1 values _stx4352_)))
  (define gx#stx-car (lambda (_stx4350_) (car (gx#syntax-e _stx4350_))))
  (define gx#stx-cdr (lambda (_stx4348_) (cdr (gx#syntax-e _stx4348_))))
  (define gx#stx-length
    (lambda (_stx4313_)
      (let _lp4315_ ((_rest4317_ _stx4313_) (_n4318_ '0))
        (let* ((_g43194327_ (gx#stx-e _rest4317_))
               (_else43214335_ (lambda () _n4318_))
               (_K43234340_
                (lambda (_rest4338_) (_lp4315_ _rest4338_ (fx+ _n4318_ '1)))))
          (if (##pair? _g43194327_)
              (let* ((_tl43254343_ (##cdr _g43194327_))
                     (_rest4346_ _tl43254343_))
                (_K43234340_ _rest4346_))
              (_else43214335_))))))
  (define gx#stx-for-each
    (lambda _g4737_
      (let ((_g4736_ (length _g4737_)))
        (cond ((##fx= _g4736_ 2) (apply gx#stx-for-each1 _g4737_))
              ((##fx= _g4736_ 3) (apply gx#stx-for-each2 _g4737_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g4737_))))))
  (define gx#stx-for-each1
    (lambda (_f4256_ _stx4257_)
      (let _lp4259_ ((_rest4261_ _stx4257_))
        (let* ((_g42624272_ (gx#syntax-e _rest4261_))
               (_else42654280_ (lambda () (_f4256_ _rest4261_))))
          (let ((_K42684294_
                 (lambda (_rest4291_ _hd4292_)
                   (begin (_f4256_ _hd4292_) (_lp4259_ _rest4291_))))
                (_K42674285_ (lambda () '#!void)))
            (let ((_try-match42644288_
                   (lambda ()
                     (if (##null? _g42624272_)
                         (let () (_K42674285_))
                         (_else42654280_)))))
              (if (##pair? _g42624272_)
                  (let ((_tl42704299_ (##cdr _g42624272_))
                        (_hd42694297_ (##car _g42624272_)))
                    (let ((_hd4302_ _hd42694297_) (_rest4304_ _tl42704299_))
                      (_K42684294_ _rest4304_ _hd4302_)))
                  (_try-match42644288_))))))))
  (define gx#stx-for-each2
    (lambda (_f4161_ _xstx4162_ _ystx4163_)
      (let _lp4165_ ((_xrest4167_ _xstx4162_) (_yrest4168_ _ystx4163_))
        (let* ((_g41694179_ (gx#syntax-e _xrest4167_))
               (_else41724187_ (lambda () '#!void)))
          (let ((_K41754244_
                 (lambda (_xrest4213_ _xhd4214_)
                   (let* ((_g42154222_ (gx#syntax-e _yrest4168_))
                          (_E42174226_
                           (lambda ()
                             (error '"No clause matching" _g42154222_)))
                          (_K42184232_
                           (lambda (_yrest4229_ _yhd4230_)
                             (begin
                               (_f4161_ _xhd4214_ _yhd4230_)
                               (_lp4165_ _xrest4213_ _yrest4229_)))))
                     (if (##pair? _g42154222_)
                         (let ((_hd42194235_ (##car _g42154222_))
                               (_tl42204237_ (##cdr _g42154222_)))
                           (let* ((_yhd4240_ _hd42194235_)
                                  (_yrest4242_ _tl42204237_))
                             (_K42184232_ _yrest4242_ _yhd4240_)))
                         (_E42174226_)))))
                (_K41744207_
                 (lambda ()
                   (let* ((_yrest41914196_ _yrest4168_)
                          (_E41934200_
                           (lambda ()
                             (error '"No clause matching" _yrest41914196_)))
                          (_K41944204_
                           (lambda () (_f4161_ _xrest4167_ _yrest4168_))))
                     (if (not (gx#stx-null? _yrest41914196_))
                         (_K41944204_)
                         (_E41934200_))))))
            (let ((_try-match41714210_
                   (lambda ()
                     (if (not (null? _g41694179_))
                         (let () (_K41744207_))
                         (_else41724187_)))))
              (if (##pair? _g41694179_)
                  (let ((_tl41774249_ (##cdr _g41694179_))
                        (_hd41764247_ (##car _g41694179_)))
                    (let ((_xhd4252_ _hd41764247_) (_xrest4254_ _tl41774249_))
                      (_K41754244_ _xrest4254_ _xhd4252_)))
                  (_try-match41714210_))))))))
  (define gx#stx-map
    (lambda _g4739_
      (let ((_g4738_ (length _g4739_)))
        (cond ((##fx= _g4738_ 2) (apply gx#stx-map1 _g4739_))
              ((##fx= _g4738_ 3) (apply gx#stx-map2 _g4739_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g4739_))))))
  (define gx#stx-map1
    (lambda (_f4104_ _stx4105_)
      (let _recur4107_ ((_rest4109_ _stx4105_))
        (let* ((_g41104120_ (gx#syntax-e _rest4109_))
               (_else41134128_ (lambda () (_f4104_ _rest4109_))))
          (let ((_K41164142_
                 (lambda (_rest4139_ _hd4140_)
                   (cons (_f4104_ _hd4140_) (_recur4107_ _rest4139_))))
                (_K41154133_ (lambda () '())))
            (let ((_try-match41124136_
                   (lambda ()
                     (if (##null? _g41104120_)
                         (let () (_K41154133_))
                         (_else41134128_)))))
              (if (##pair? _g41104120_)
                  (let ((_tl41184147_ (##cdr _g41104120_))
                        (_hd41174145_ (##car _g41104120_)))
                    (let ((_hd4150_ _hd41174145_) (_rest4152_ _tl41184147_))
                      (_K41164142_ _rest4152_ _hd4150_)))
                  (_try-match41124136_))))))))
  (define gx#stx-map2
    (lambda (_f4009_ _xstx4010_ _ystx4011_)
      (let _recur4013_ ((_xrest4015_ _xstx4010_) (_yrest4016_ _ystx4011_))
        (let* ((_g40174027_ (gx#syntax-e _xrest4015_))
               (_else40204035_ (lambda () '())))
          (let ((_K40234092_
                 (lambda (_xrest4061_ _xhd4062_)
                   (let* ((_g40634070_ (gx#syntax-e _yrest4016_))
                          (_E40654074_
                           (lambda ()
                             (error '"No clause matching" _g40634070_)))
                          (_K40664080_
                           (lambda (_yrest4077_ _yhd4078_)
                             (cons (_f4009_ _xhd4062_ _yhd4078_)
                                   (_recur4013_ _xrest4061_ _yrest4077_)))))
                     (if (##pair? _g40634070_)
                         (let ((_hd40674083_ (##car _g40634070_))
                               (_tl40684085_ (##cdr _g40634070_)))
                           (let* ((_yhd4088_ _hd40674083_)
                                  (_yrest4090_ _tl40684085_))
                             (_K40664080_ _yrest4090_ _yhd4088_)))
                         (_E40654074_)))))
                (_K40224055_
                 (lambda ()
                   (let* ((_yrest40394044_ _yrest4016_)
                          (_E40414048_
                           (lambda ()
                             (error '"No clause matching" _yrest40394044_)))
                          (_K40424052_
                           (lambda () (_f4009_ _xrest4015_ _yrest4016_))))
                     (if (not (gx#stx-null? _yrest40394044_))
                         (_K40424052_)
                         (_E40414048_))))))
            (let ((_try-match40194058_
                   (lambda ()
                     (if (not (null? _g40174027_))
                         (let () (_K40224055_))
                         (_else40204035_)))))
              (if (##pair? _g40174027_)
                  (let ((_tl40254097_ (##cdr _g40174027_))
                        (_hd40244095_ (##car _g40174027_)))
                    (let ((_xhd4100_ _hd40244095_) (_xrest4102_ _tl40254097_))
                      (_K40234092_ _xrest4102_ _xhd4100_)))
                  (_try-match40194058_))))))))
  (define gx#stx-andmap
    (lambda (_f3959_ _stx3960_)
      (let _lp3962_ ((_rest3964_ _stx3960_))
        (let* ((_g39653975_ (gx#syntax-e _rest3964_))
               (_else39683983_ (lambda () (_f3959_ _rest3964_))))
          (let ((_K39713997_
                 (lambda (_rest3994_ _hd3995_)
                   (if (_f3959_ _hd3995_) (_lp3962_ _rest3994_) '#f)))
                (_K39703988_ (lambda () '#t)))
            (let ((_try-match39673991_
                   (lambda ()
                     (if (##null? _g39653975_)
                         (let () (_K39703988_))
                         (_else39683983_)))))
              (if (##pair? _g39653975_)
                  (let ((_tl39734002_ (##cdr _g39653975_))
                        (_hd39724000_ (##car _g39653975_)))
                    (let ((_hd4005_ _hd39724000_) (_rest4007_ _tl39734002_))
                      (_K39713997_ _rest4007_ _hd4005_)))
                  (_try-match39673991_))))))))
  (define gx#stx-ormap
    (lambda (_f3906_ _stx3907_)
      (let _lp3909_ ((_rest3911_ _stx3907_))
        (let* ((_g39123922_ (gx#syntax-e _rest3911_))
               (_else39153930_ (lambda () (_f3906_ _rest3911_))))
          (let ((_K39183947_
                 (lambda (_rest3941_ _hd3942_)
                   (let ((_$e3944_ (_f3906_ _hd3942_)))
                     (if _$e3944_ _$e3944_ (_lp3909_ _rest3941_)))))
                (_K39173935_ (lambda () '#f)))
            (let ((_try-match39143938_
                   (lambda ()
                     (if (##null? _g39123922_)
                         (let () (_K39173935_))
                         (_else39153930_)))))
              (if (##pair? _g39123922_)
                  (let ((_tl39203952_ (##cdr _g39123922_))
                        (_hd39193950_ (##car _g39123922_)))
                    (let ((_hd3955_ _hd39193950_) (_rest3957_ _tl39203952_))
                      (_K39183947_ _rest3957_ _hd3955_)))
                  (_try-match39143938_))))))))
  (define gx#stx-foldl
    (lambda (_f3854_ _iv3855_ _stx3856_)
      (let _lp3858_ ((_r3860_ _iv3855_) (_rest3861_ _stx3856_))
        (let* ((_g38623872_ (gx#syntax-e _rest3861_))
               (_else38653880_ (lambda () (_f3854_ _rest3861_ _r3860_))))
          (let ((_K38683894_
                 (lambda (_rest3891_ _hd3892_)
                   (_lp3858_ (_f3854_ _hd3892_ _r3860_) _rest3891_)))
                (_K38673885_ (lambda () _r3860_)))
            (let ((_try-match38643888_
                   (lambda ()
                     (if (##null? _g38623872_)
                         (let () (_K38673885_))
                         (_else38653880_)))))
              (if (##pair? _g38623872_)
                  (let ((_tl38703899_ (##cdr _g38623872_))
                        (_hd38693897_ (##car _g38623872_)))
                    (let ((_hd3902_ _hd38693897_) (_rest3904_ _tl38703899_))
                      (_K38683894_ _rest3904_ _hd3902_)))
                  (_try-match38643888_))))))))
  (define gx#stx-foldr
    (lambda (_f3803_ _iv3804_ _stx3805_)
      (let _recur3807_ ((_rest3809_ _stx3805_))
        (let* ((_g38103820_ (gx#syntax-e _rest3809_))
               (_else38133828_ (lambda () (_f3803_ _rest3809_ _iv3804_))))
          (let ((_K38163842_
                 (lambda (_rest3839_ _hd3840_)
                   (_f3803_ _hd3840_ (_recur3807_ _rest3839_))))
                (_K38153833_ (lambda () _iv3804_)))
            (let ((_try-match38123836_
                   (lambda ()
                     (if (##null? _g38103820_)
                         (let () (_K38153833_))
                         (_else38133828_)))))
              (if (##pair? _g38103820_)
                  (let ((_tl38183847_ (##cdr _g38103820_))
                        (_hd38173845_ (##car _g38103820_)))
                    (let ((_hd3850_ _hd38173845_) (_rest3852_ _tl38183847_))
                      (_K38163842_ _rest3852_ _hd3850_)))
                  (_try-match38123836_))))))))
  (define gx#stx-reverse
    (lambda (_stx3801_) (gx#stx-foldl cons '() _stx3801_)))
  (define gx#stx-last
    (lambda (_stx3762_)
      (let _lp3764_ ((_rest3766_ _stx3762_))
        (let* ((_g37673775_ (gx#syntax-e _rest3766_))
               (_else37693783_ (lambda () _rest3766_))
               (_K37713789_
                (lambda (_rest3786_ _hd3787_)
                  (if (gx#stx-null? _rest3786_)
                      _hd3787_
                      (_lp3764_ _rest3786_)))))
          (if (##pair? _g37673775_)
              (let ((_hd37723792_ (##car _g37673775_))
                    (_tl37733794_ (##cdr _g37673775_)))
                (let* ((_hd3797_ _hd37723792_) (_rest3799_ _tl37733794_))
                  (_K37713789_ _rest3799_ _hd3797_)))
              (_else37693783_))))))
  (define gx#stx-last-pair
    (lambda (_stx3733_)
      (let _lp3735_ ((_hd3737_ _stx3733_))
        (let* ((_g37383745_ (gx#syntax-e _hd3737_))
               (_E37403749_
                (lambda () (error '"No clause matching" _g37383745_)))
               (_K37413754_
                (lambda (_rest3752_)
                  (if (gx#stx-pair? _rest3752_)
                      (_lp3735_ _rest3752_)
                      _hd3737_))))
          (if (##pair? _g37383745_)
              (let* ((_tl37433757_ (##cdr _g37383745_))
                     (_rest3760_ _tl37433757_))
                (_K37413754_ _rest3760_))
              (_E37403749_))))))
  (define gx#stx-list-tail
    (lambda (_stx3702_ _k3703_)
      (let _lp3705_ ((_rest3707_ _stx3702_) (_k3708_ _k3703_))
        (if (fxpositive? _k3708_)
            (let* ((_g37093716_ (gx#syntax-e _rest3707_))
                   (_E37113720_
                    (lambda () (error '"No clause matching" _g37093716_)))
                   (_K37123725_
                    (lambda (_rest3723_)
                      (_lp3705_ _rest3723_ (fx- _k3708_ '1)))))
              (if (##pair? _g37093716_)
                  (let* ((_tl37143728_ (##cdr _g37093716_))
                         (_rest3731_ _tl37143728_))
                    (_K37123725_ _rest3731_))
                  (_E37113720_)))
            _rest3707_))))
  (define gx#stx-list-ref
    (lambda (_stx3699_ _k3700_)
      (gx#stx-car (gx#stx-list-tail _stx3699_ _k3700_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx3611_ _key?3612_)
        (let _lp3614_ ((_rest3616_ _stx3611_))
          (let* ((_g36173627_ (gx#stx-e _rest3616_))
                 (_else36203635_ (lambda () '#f)))
            (let ((_K36233677_
                   (lambda (_rest3646_ _hd3647_)
                     (if (_key?3612_ _hd3647_)
                         (let* ((_g36483656_ (gx#stx-e _rest3646_))
                                (_else36503664_ (lambda () '#f))
                                (_K36523669_
                                 (lambda (_rest3667_) (_lp3614_ _rest3667_))))
                           (if (##pair? _g36483656_)
                               (let* ((_tl36543672_ (##cdr _g36483656_))
                                      (_rest3675_ _tl36543672_))
                                 (_K36523669_ _rest3675_))
                               (_else36503664_)))
                         '#f)))
                  (_K36223640_ (lambda () '#t)))
              (let ((_try-match36193643_
                     (lambda ()
                       (if (##null? _g36173627_)
                           (let () (_K36223640_))
                           (_else36203635_)))))
                (if (##pair? _g36173627_)
                    (let ((_tl36253682_ (##cdr _g36173627_))
                          (_hd36243680_ (##car _g36173627_)))
                      (let ((_hd3685_ _hd36243680_) (_rest3687_ _tl36253682_))
                        (_K36233677_ _rest3687_ _hd3685_)))
                    (_try-match36193643_))))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3692_)
          (let ((_key?3694_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx3692_ _key?3694_))))
      (define gx#stx-plist?
        (lambda _g4741_
          (let ((_g4740_ (length _g4741_)))
            (cond ((##fx= _g4740_ 1) (apply gx#stx-plist?__0 _g4741_))
                  ((##fx= _g4740_ 2) (apply gx#stx-plist?__% _g4741_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g4741_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key3529_ _stx3530_ _key=?3531_)
        (let _lp3533_ ((_rest3535_ _stx3530_))
          (let* ((_g35363544_ (gx#syntax-e _rest3535_))
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
        (lambda _g4743_
          (let ((_g4742_ (length _g4743_)))
            (cond ((##fx= _g4742_ 2) (apply gx#stx-getq__0 _g4743_))
                  ((##fx= _g4742_ 3) (apply gx#stx-getq__% _g4743_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g4743_)))))))))
