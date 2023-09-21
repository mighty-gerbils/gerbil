(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1695292397)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-struct-type
       'gx#identifier-wrap::t
       gx#AST::t
       '1
       'syntax
       '((final: . #t))
       '#f
       '(marks)))
    (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args6367_
        (apply make-struct-instance gx#identifier-wrap::t _$args6367_)))
    (define gx#identifier-wrap-marks
      (make-struct-field-accessor gx#identifier-wrap::t '0))
    (define gx#identifier-wrap-marks-set!
      (make-struct-field-mutator gx#identifier-wrap::t '0))
    (define gx#&identifier-wrap-marks
      (make-struct-field-unchecked-accessor gx#identifier-wrap::t '0))
    (define gx#&identifier-wrap-marks-set!
      (make-struct-field-unchecked-mutator gx#identifier-wrap::t '0))
    (define gx#syntax-wrap::t
      (make-struct-type
       'gx#syntax-wrap::t
       gx#AST::t
       '1
       'syntax
       '((final: . #t))
       '#f
       '(mark)))
    (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args6364_
        (apply make-struct-instance gx#syntax-wrap::t _$args6364_)))
    (define gx#syntax-wrap-mark
      (make-struct-field-accessor gx#syntax-wrap::t '0))
    (define gx#syntax-wrap-mark-set!
      (make-struct-field-mutator gx#syntax-wrap::t '0))
    (define gx#&syntax-wrap-mark
      (make-struct-field-unchecked-accessor gx#syntax-wrap::t '0))
    (define gx#&syntax-wrap-mark-set!
      (make-struct-field-unchecked-mutator gx#syntax-wrap::t '0))
    (define gx#syntax-quote::t
      (make-struct-type
       'gx#syntax-quote::t
       gx#AST::t
       '2
       'syntax
       '((final: . #t))
       '#f
       '(context marks)))
    (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args6361_
        (apply make-struct-instance gx#syntax-quote::t _$args6361_)))
    (define gx#syntax-quote-context
      (make-struct-field-accessor gx#syntax-quote::t '0))
    (define gx#syntax-quote-marks
      (make-struct-field-accessor gx#syntax-quote::t '1))
    (define gx#syntax-quote-context-set!
      (make-struct-field-mutator gx#syntax-quote::t '0))
    (define gx#syntax-quote-marks-set!
      (make-struct-field-mutator gx#syntax-quote::t '1))
    (define gx#&syntax-quote-context
      (make-struct-field-unchecked-accessor gx#syntax-quote::t '0))
    (define gx#&syntax-quote-marks
      (make-struct-field-unchecked-accessor gx#syntax-quote::t '1))
    (define gx#&syntax-quote-context-set!
      (make-struct-field-unchecked-mutator gx#syntax-quote::t '0))
    (define gx#&syntax-quote-marks-set!
      (make-struct-field-unchecked-mutator gx#syntax-quote::t '1))
    (define gx#identifier? (lambda (_stx6359_) (symbol? (gx#stx-e _stx6359_))))
    (define gx#identifier-quote?
      (lambda (_stx6357_)
        (if (##structure-direct-instance-of? _stx6357_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx6357_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx6355_)
        (if (##structure-direct-instance-of? _stx6355_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx6355_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx6355_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx6353_)
        (if (##structure-direct-instance-of? _stx6353_ 'gx#syntax-quote::t)
            _stx6353_
            (if (##structure-direct-instance-of? _stx6353_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx6353_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx6336_)
        (if (##structure-direct-instance-of? _stx6336_ 'gx#syntax-wrap::t)
            (let _lp6338_ ((_e6340_ (##unchecked-structure-ref
                                     _stx6336_
                                     '1
                                     gx#AST::t
                                     '#f))
                           (_marks6341_
                            (cons (##unchecked-structure-ref
                                   _stx6336_
                                   '3
                                   gx#syntax-wrap::t
                                   '#f)
                                  '())))
              (if (##structure? _e6340_)
                  (let ((_$e6343_ (##type-id (##structure-type _e6340_))))
                    (if (eq? 'gx#syntax-wrap::t _$e6343_)
                        (_lp6338_
                         (##unchecked-structure-ref _e6340_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e6340_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks6341_))
                        (if (or (eq? 'gx#syntax-quote::t _$e6343_)
                                (eq? 'gx#identifier-wrap::t _$e6343_))
                            (##unchecked-structure-ref
                             _e6340_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e6343_)
                                (_lp6338_
                                 (##unchecked-structure-ref
                                  _e6340_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks6341_)
                                _e6340_))))
                  (if (null? _marks6341_)
                      _e6340_
                      (if (pair? _e6340_)
                          (cons (gx#stx-wrap (car _e6340_) _marks6341_)
                                (gx#stx-wrap (cdr _e6340_) _marks6341_))
                          (if (vector? _e6340_)
                              (vector-map
                               (lambda (_g63486350_)
                                 (gx#stx-wrap _g63486350_ _marks6341_))
                               _e6340_)
                              (if (box? _e6340_)
                                  (box (gx#stx-wrap
                                        (unbox _e6340_)
                                        _marks6341_))
                                  _e6340_))))))
            (if (##structure-instance-of? _stx6336_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6336_ '1 gx#AST::t '#f)
                _stx6336_))))
    (define gx#syntax->datum
      (lambda (_stx6334_)
        (if (##structure-instance-of? _stx6334_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx6334_ '1 gx#AST::t '#f))
            (if (pair? _stx6334_)
                (cons (gx#syntax->datum (car _stx6334_))
                      (gx#syntax->datum (cdr _stx6334_)))
                (if (vector? _stx6334_)
                    (vector-map gx#syntax->datum _stx6334_)
                    (if (box? _stx6334_)
                        (box (gx#syntax->datum (unbox _stx6334_)))
                        _stx6334_))))))
    (define gx#datum->syntax__%
      (lambda (_stx6277_ _datum6278_ _src6279_ _quote?6280_)
        (letrec ((_wrap-datum6282_
                  (lambda (_e6306_ _marks6307_)
                    (_wrap-inner6284_
                     _e6306_
                     (lambda (_g63086310_)
                       (##structure
                        gx#identifier-wrap::t
                        _g63086310_
                        _src6279_
                        _marks6307_)))))
                 (_wrap-quote6283_
                  (lambda (_e6298_ _ctx6299_ _marks6300_)
                    (_wrap-inner6284_
                     _e6298_
                     (lambda (_g63016303_)
                       (##structure
                        gx#syntax-quote::t
                        _g63016303_
                        _src6279_
                        _ctx6299_
                        _marks6300_)))))
                 (_wrap-inner6284_
                  (lambda (_e6291_ _wrap-e6292_)
                    (let _recur6294_ ((_e6296_ _e6291_))
                      (if (symbol? _e6296_)
                          (_wrap-e6292_ _e6296_)
                          (if (pair? _e6296_)
                              (cons (_recur6294_ (car _e6296_))
                                    (_recur6294_ (cdr _e6296_)))
                              (if (vector? _e6296_)
                                  (vector-map _recur6294_ _e6296_)
                                  (if (box? _e6296_)
                                      (box (_recur6294_ (unbox _e6296_)))
                                      _e6296_)))))))
                 (_wrap-outer6285_
                  (lambda (_e6289_)
                    (if (##structure-instance-of? _e6289_ 'gerbil#AST::t)
                        _e6289_
                        (##structure gx#AST::t _e6289_ _src6279_)))))
          (if (##structure-instance-of? _datum6278_ 'gerbil#AST::t)
              _datum6278_
              (if (not _stx6277_)
                  (##structure gx#AST::t _datum6278_ _src6279_)
                  (if (gx#identifier? _stx6277_)
                      (let ((_stx6287_ (gx#stx-unwrap__0 _stx6277_)))
                        (_wrap-outer6285_
                         (if (##structure-direct-instance-of?
                              _stx6287_
                              'gx#syntax-quote::t)
                             (if _quote?6280_
                                 (_wrap-quote6283_
                                  _datum6278_
                                  (##unchecked-structure-ref
                                   _stx6287_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx6287_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum6282_
                                  _datum6278_
                                  (##unchecked-structure-ref
                                   _stx6287_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum6282_
                              _datum6278_
                              (##unchecked-structure-ref
                               _stx6287_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx6277_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx6316_ _datum6317_)
        (let* ((_src6319_ '#f) (_quote?6321_ '#t))
          (gx#datum->syntax__% _stx6316_ _datum6317_ _src6319_ _quote?6321_))))
    (define gx#datum->syntax__1
      (lambda (_stx6323_ _datum6324_ _src6325_)
        (let ((_quote?6327_ '#t))
          (gx#datum->syntax__% _stx6323_ _datum6324_ _src6325_ _quote?6327_))))
    (define gx#datum->syntax
      (lambda _g6445_
        (let ((_g6444_ (##length _g6445_)))
          (cond ((##fx= _g6444_ 2)
                 (apply (lambda (_stx6316_ _datum6317_)
                          (gx#datum->syntax__0 _stx6316_ _datum6317_))
                        _g6445_))
                ((##fx= _g6444_ 3)
                 (apply (lambda (_stx6323_ _datum6324_ _src6325_)
                          (gx#datum->syntax__1
                           _stx6323_
                           _datum6324_
                           _src6325_))
                        _g6445_))
                ((##fx= _g6444_ 4)
                 (apply (lambda (_stx6329_ _datum6330_ _src6331_ _quote?6332_)
                          (gx#datum->syntax__%
                           _stx6329_
                           _datum6330_
                           _src6331_
                           _quote?6332_))
                        _g6445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g6445_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx6253_ _marks6254_)
        (let _lp6256_ ((_e6258_ _stx6253_)
                       (_marks6259_ _marks6254_)
                       (_src6260_ (gx#stx-source _stx6253_)))
          (if (##structure-direct-instance-of? _e6258_ 'gx#syntax-wrap::t)
              (_lp6256_
               (##unchecked-structure-ref _e6258_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e6258_ '3 gx#syntax-wrap::t '#f)
                _marks6259_)
               (##unchecked-structure-ref _e6258_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e6258_
                   'gx#identifier-wrap::t)
                  (if (null? _marks6259_)
                      _e6258_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e6258_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e6258_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e6258_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6259_)))
                  (if (##structure-direct-instance-of?
                       _e6258_
                       'gx#syntax-quote::t)
                      _e6258_
                      (if (##structure-instance-of? _e6258_ 'gerbil#AST::t)
                          (_lp6256_
                           (##unchecked-structure-ref _e6258_ '1 gx#AST::t '#f)
                           _marks6259_
                           (##unchecked-structure-ref
                            _e6258_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e6258_)
                              (##structure
                               gx#identifier-wrap::t
                               _e6258_
                               _src6260_
                               (reverse _marks6259_))
                              (if (null? _marks6259_)
                                  _e6258_
                                  (if (pair? _e6258_)
                                      (cons (gx#stx-wrap
                                             (car _e6258_)
                                             _marks6259_)
                                            (gx#stx-wrap
                                             (cdr _e6258_)
                                             _marks6259_))
                                      (if (vector? _e6258_)
                                          (vector-map
                                           (lambda (_g62616263_)
                                             (gx#stx-wrap
                                              _g62616263_
                                              _marks6259_))
                                           _e6258_)
                                          (if (box? _e6258_)
                                              (box (gx#stx-wrap
                                                    (unbox _e6258_)
                                                    _marks6259_))
                                              _e6258_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx6269_)
        (let ((_marks6271_ '())) (gx#stx-unwrap__% _stx6269_ _marks6271_))))
    (define gx#stx-unwrap
      (lambda _g6447_
        (let ((_g6446_ (##length _g6447_)))
          (cond ((##fx= _g6446_ 1)
                 (apply (lambda (_stx6269_) (gx#stx-unwrap__0 _stx6269_))
                        _g6447_))
                ((##fx= _g6446_ 2)
                 (apply (lambda (_stx6273_ _marks6274_)
                          (gx#stx-unwrap__% _stx6273_ _marks6274_))
                        _g6447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g6447_))))))
    (define gx#stx-wrap
      (lambda (_stx6246_ _marks6247_)
        (foldl1 (lambda (_mark6249_ _stx6250_)
                  (gx#stx-apply-mark _stx6250_ _mark6249_))
                _stx6246_
                _marks6247_)))
    (define gx#stx-rewrap
      (lambda (_stx6240_ _marks6241_)
        (foldr1 (lambda (_mark6243_ _stx6244_)
                  (gx#stx-apply-mark _stx6244_ _mark6243_))
                _stx6240_
                _marks6241_)))
    (define gx#stx-apply-mark
      (lambda (_stx6237_ _mark6238_)
        (if (##structure-direct-instance-of? _stx6237_ 'gx#syntax-quote::t)
            _stx6237_
            (if (and (##structure-direct-instance-of?
                      _stx6237_
                      'gx#syntax-wrap::t)
                     (eq? _mark6238_
                          (##unchecked-structure-ref
                           _stx6237_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx6237_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx6237_
                 (gx#stx-source _stx6237_)
                 _mark6238_)))))
    (define gx#apply-mark
      (lambda (_mark6201_ _marks6202_)
        (let* ((_marks62036211_ _marks6202_)
               (_else62056219_ (lambda () (cons _mark6201_ _marks6202_)))
               (_K62076225_
                (lambda (_rest6222_ _hd6223_)
                  (if (eq? _mark6201_ _hd6223_)
                      _rest6222_
                      (cons _mark6201_ _marks6202_)))))
          (if (##pair? _marks62036211_)
              (let ((_hd62086228_ (##car _marks62036211_))
                    (_tl62096230_ (##cdr _marks62036211_)))
                (let* ((_hd6233_ _hd62086228_) (_rest6235_ _tl62096230_))
                  (_K62076225_ _rest6235_ _hd6233_)))
              (_else62056219_)))))
    (define gx#stx-e
      (lambda (_stx6199_)
        (if (##structure-direct-instance-of? _stx6199_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx6199_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx6199_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6199_ '1 gx#AST::t '#f)
                _stx6199_))))
    (define gx#stx-source
      (lambda (_stx6197_)
        (if (##structure-instance-of? _stx6197_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx6197_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx6191_ _src6192_)
        (if (or (##structure-instance-of? _stx6191_ 'gerbil#AST::t)
                (not _src6192_))
            _stx6191_
            (##structure gx#AST::t _stx6191_ _src6192_))))
    (define gx#stx-datum?
      (lambda (_stx6189_) (gx#self-quoting? (gx#stx-e _stx6189_))))
    (define gx#self-quoting?
      (lambda (_x6172_)
        (let ((_$e6174_ (immediate? _x6172_)))
          (if _$e6174_
              _$e6174_
              (let ((_$e6177_ (number? _x6172_)))
                (if _$e6177_
                    _$e6177_
                    (let ((_$e6180_ (keyword? _x6172_)))
                      (if _$e6180_
                          _$e6180_
                          (let ((_$e6183_ (string? _x6172_)))
                            (if _$e6183_
                                _$e6183_
                                (let ((_$e6186_ (vector? _x6172_)))
                                  (if _$e6186_
                                      _$e6186_
                                      (u8vector? _x6172_)))))))))))))
    (define gx#stx-boolean? (lambda (_e6170_) (boolean? (gx#stx-e _e6170_))))
    (define gx#stx-keyword? (lambda (_e6168_) (keyword? (gx#stx-e _e6168_))))
    (define gx#stx-char? (lambda (_e6166_) (char? (gx#stx-e _e6166_))))
    (define gx#stx-number? (lambda (_e6164_) (number? (gx#stx-e _e6164_))))
    (define gx#stx-fixnum? (lambda (_e6162_) (fixnum? (gx#stx-e _e6162_))))
    (define gx#stx-string? (lambda (_e6160_) (string? (gx#stx-e _e6160_))))
    (define gx#stx-null? (lambda (_e6158_) (null? (gx#stx-e _e6158_))))
    (define gx#stx-pair? (lambda (_e6156_) (pair? (gx#stx-e _e6156_))))
    (define gx#stx-list?
      (lambda (_e6118_)
        (let* ((_g61196128_ (gx#stx-e _e6118_))
               (_E61226132_
                (lambda () (error '"No clause matching" _g61196128_))))
          (let ((_K61246148_ (lambda (_rest6146_) (gx#stx-list? _rest6146_)))
                (_K61236138_ (lambda (_tail6136_) (null? _tail6136_))))
            (if (##pair? _g61196128_)
                (let* ((_tl61266151_ (##cdr _g61196128_))
                       (_rest6154_ _tl61266151_))
                  (gx#stx-list? _rest6154_))
                (let ((_tail6141_ _g61196128_)) (null? _tail6141_)))))))
    (define gx#stx-pair/null?
      (lambda (_e6111_)
        (let* ((_e6113_ (gx#stx-e _e6111_)) (_$e6115_ (pair? _e6113_)))
          (if _$e6115_ _$e6115_ (null? _e6113_)))))
    (define gx#stx-vector? (lambda (_e6109_) (vector? (gx#stx-e _e6109_))))
    (define gx#stx-box? (lambda (_e6107_) (box? (gx#stx-e _e6107_))))
    (define gx#stx-eq?
      (lambda (_x6104_ _y6105_) (eq? (gx#stx-e _x6104_) (gx#stx-e _y6105_))))
    (define gx#stx-eqv?
      (lambda (_x6101_ _y6102_) (eqv? (gx#stx-e _x6101_) (gx#stx-e _y6102_))))
    (define gx#stx-equal?
      (lambda (_x6098_ _y6099_)
        (equal? (gx#stx-e _x6098_) (gx#stx-e _y6099_))))
    (define gx#stx-false? (lambda (_x6096_) (not (gx#stx-e _x6096_))))
    (define gx#stx-identifier
      (lambda (_template6093_ . _args6094_)
        (gx#datum->syntax__1
         _template6093_
         (apply make-symbol (map gx#stx-e _args6094_))
         (gx#stx-source _template6093_))))
    (define gx#stx-identifier-marks
      (lambda (_stx6091_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx6091_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx6089_)
        (if (##structure-direct-instance-of? _stx6089_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx6089_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of? _stx6089_ 'gx#syntax-quote::t)
                (##unchecked-structure-ref _stx6089_ '4 gx#syntax-quote::t '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx6089_)))))
    (define gx#stx-identifier-context
      (lambda (_stx6085_)
        (let ((_stx6087_ (gx#stx-unwrap__0 _stx6085_)))
          (if (gx#identifier-quote? _stx6087_)
              (##unchecked-structure-ref _stx6087_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx6040_)
        (let* ((_g60416051_ (gx#stx-e _stx6040_))
               (_else60446059_ (lambda () '#f)))
          (let ((_K60476073_
                 (lambda (_rest6070_ _hd6071_)
                   (if (gx#identifier? _hd6071_)
                       (gx#identifier-list? _rest6070_)
                       '#f)))
                (_K60466064_ (lambda () '#t)))
            (let ((_try-match60436067_
                   (lambda ()
                     (if (##null? _g60416051_)
                         (_K60466064_)
                         (_else60446059_)))))
              (if (##pair? _g60416051_)
                  (let ((_tl60496078_ (##cdr _g60416051_))
                        (_hd60486076_ (##car _g60416051_)))
                    (let ((_hd6081_ _hd60486076_) (_rest6083_ _tl60496078_))
                      (_K60476073_ _rest6083_ _hd6081_)))
                  (_try-match60436067_)))))))
    (define gx#genident__%
      (lambda (_e6017_ _src6018_)
        (gx#stx-wrap-source
         (gensym (let ((_e6020_ (gx#stx-e _e6017_)))
                   (if (interned-symbol? _e6020_) _e6020_ 'g)))
         (let ((_$e6022_ (gx#stx-source _e6017_)))
           (if _$e6022_ _$e6022_ _src6018_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e6029_ 'g) (_src6031_ '#f))
          (gx#genident__% _e6029_ _src6031_))))
    (define gx#genident__1
      (lambda (_e6033_)
        (let ((_src6035_ '#f)) (gx#genident__% _e6033_ _src6035_))))
    (define gx#genident
      (lambda _g6449_
        (let ((_g6448_ (##length _g6449_)))
          (cond ((##fx= _g6448_ 0)
                 (apply (lambda () (gx#genident__0)) _g6449_))
                ((##fx= _g6448_ 1)
                 (apply (lambda (_e6033_) (gx#genident__1 _e6033_)) _g6449_))
                ((##fx= _g6448_ 2)
                 (apply (lambda (_e6037_ _src6038_)
                          (gx#genident__% _e6037_ _src6038_))
                        _g6449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g6449_))))))
    (define gx#gentemps
      (lambda (_stx-lst6014_) (gx#stx-map1 gx#genident _stx-lst6014_)))
    (define gx#syntax->list
      (lambda (_stx6012_) (gx#stx-map1 values _stx6012_)))
    (define gx#stx-car
      (lambda (_stx6009_)
        (declare (safe))
        (let ((__tmp6450
               (let () (declare (not safe)) (gx#syntax-e _stx6009_))))
          (declare (not safe))
          (car __tmp6450))))
    (define gx#stx-cdr
      (lambda (_stx6006_)
        (declare (safe))
        (let ((__tmp6451
               (let () (declare (not safe)) (gx#syntax-e _stx6006_))))
          (declare (not safe))
          (cdr __tmp6451))))
    (define gx#stx-length
      (lambda (_stx5971_)
        (let _lp5973_ ((_rest5975_ _stx5971_) (_n5976_ '0))
          (let* ((_g59775985_ (gx#stx-e _rest5975_))
                 (_else59795993_ (lambda () _n5976_))
                 (_K59815998_
                  (lambda (_rest5996_)
                    (_lp5973_ _rest5996_ (fx+ _n5976_ '1)))))
            (if (##pair? _g59775985_)
                (let* ((_tl59836001_ (##cdr _g59775985_))
                       (_rest6004_ _tl59836001_))
                  (_K59815998_ _rest6004_))
                (_else59795993_))))))
    (define gx#stx-for-each
      (lambda _g6453_
        (let ((_g6452_ (##length _g6453_)))
          (cond ((##fx= _g6452_ 2)
                 (apply (lambda (_f5964_ _stx5965_)
                          (gx#stx-for-each1 _f5964_ _stx5965_))
                        _g6453_))
                ((##fx= _g6452_ 3)
                 (apply (lambda (_f5967_ _xstx5968_ _ystx5969_)
                          (gx#stx-for-each2 _f5967_ _xstx5968_ _ystx5969_))
                        _g6453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g6453_))))))
    (define gx#stx-for-each1
      (lambda (_f5914_ _stx5915_)
        (if (procedure? _f5914_) '#!void (error '"expected procedure" _f5914_))
        (let _lp5917_ ((_rest5919_ _stx5915_))
          (let* ((_g59205930_ (gx#syntax-e _rest5919_))
                 (_else59235938_ (lambda () (_f5914_ _rest5919_))))
            (let ((_K59265952_
                   (lambda (_rest5949_ _hd5950_)
                     (_f5914_ _hd5950_)
                     (_lp5917_ _rest5949_)))
                  (_K59255943_ (lambda () '#!void)))
              (let ((_try-match59225946_
                     (lambda ()
                       (if (##null? _g59205930_)
                           (_K59255943_)
                           (_else59235938_)))))
                (if (##pair? _g59205930_)
                    (let ((_tl59285957_ (##cdr _g59205930_))
                          (_hd59275955_ (##car _g59205930_)))
                      (let ((_hd5960_ _hd59275955_) (_rest5962_ _tl59285957_))
                        (_K59265952_ _rest5962_ _hd5960_)))
                    (_try-match59225946_))))))))
    (define gx#stx-for-each2
      (lambda (_f5819_ _xstx5820_ _ystx5821_)
        (if (procedure? _f5819_) '#!void (error '"expected procedure" _f5819_))
        (let _lp5823_ ((_xrest5825_ _xstx5820_) (_yrest5826_ _ystx5821_))
          (let* ((_g58275837_ (gx#syntax-e _xrest5825_))
                 (_else58305845_ (lambda () '#!void)))
            (let ((_K58335902_
                   (lambda (_xrest5871_ _xhd5872_)
                     (let* ((_g58735880_ (gx#syntax-e _yrest5826_))
                            (_E58755884_
                             (lambda ()
                               (error '"No clause matching" _g58735880_)))
                            (_K58765890_
                             (lambda (_yrest5887_ _yhd5888_)
                               (_f5819_ _xhd5872_ _yhd5888_)
                               (_lp5823_ _xrest5871_ _yrest5887_))))
                       (if (##pair? _g58735880_)
                           (let ((_hd58775893_ (##car _g58735880_))
                                 (_tl58785895_ (##cdr _g58735880_)))
                             (let* ((_yhd5898_ _hd58775893_)
                                    (_yrest5900_ _tl58785895_))
                               (_K58765890_ _yrest5900_ _yhd5898_)))
                           (_E58755884_)))))
                  (_K58325865_
                   (lambda ()
                     (let* ((_yrest58495854_ _yrest5826_)
                            (_E58515858_
                             (lambda ()
                               (error '"No clause matching" _yrest58495854_)))
                            (_K58525862_
                             (lambda () (_f5819_ _xrest5825_ _yrest5826_))))
                       (if (not (gx#stx-null? _yrest58495854_))
                           (_K58525862_)
                           (_E58515858_))))))
              (let ((_try-match58295868_
                     (lambda ()
                       (if (not (null? _g58275837_))
                           (_K58325865_)
                           (_else58305845_)))))
                (if (##pair? _g58275837_)
                    (let ((_tl58355907_ (##cdr _g58275837_))
                          (_hd58345905_ (##car _g58275837_)))
                      (let ((_xhd5910_ _hd58345905_)
                            (_xrest5912_ _tl58355907_))
                        (_K58335902_ _xrest5912_ _xhd5910_)))
                    (_try-match58295868_))))))))
    (define gx#stx-map
      (lambda _g6455_
        (let ((_g6454_ (##length _g6455_)))
          (cond ((##fx= _g6454_ 2)
                 (apply (lambda (_f5812_ _stx5813_)
                          (gx#stx-map1 _f5812_ _stx5813_))
                        _g6455_))
                ((##fx= _g6454_ 3)
                 (apply (lambda (_f5815_ _xstx5816_ _ystx5817_)
                          (gx#stx-map2 _f5815_ _xstx5816_ _ystx5817_))
                        _g6455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g6455_))))))
    (define gx#stx-map1
      (lambda (_f5762_ _stx5763_)
        (if (procedure? _f5762_) '#!void (error '"expected procedure" _f5762_))
        (let _recur5765_ ((_rest5767_ _stx5763_))
          (let* ((_g57685778_ (gx#syntax-e _rest5767_))
                 (_else57715786_ (lambda () (_f5762_ _rest5767_))))
            (let ((_K57745800_
                   (lambda (_rest5797_ _hd5798_)
                     (cons (_f5762_ _hd5798_) (_recur5765_ _rest5797_))))
                  (_K57735791_ (lambda () '())))
              (let ((_try-match57705794_
                     (lambda ()
                       (if (##null? _g57685778_)
                           (_K57735791_)
                           (_else57715786_)))))
                (if (##pair? _g57685778_)
                    (let ((_tl57765805_ (##cdr _g57685778_))
                          (_hd57755803_ (##car _g57685778_)))
                      (let ((_hd5808_ _hd57755803_) (_rest5810_ _tl57765805_))
                        (_K57745800_ _rest5810_ _hd5808_)))
                    (_try-match57705794_))))))))
    (define gx#stx-map2
      (lambda (_f5667_ _xstx5668_ _ystx5669_)
        (if (procedure? _f5667_) '#!void (error '"expected procedure" _f5667_))
        (let _recur5671_ ((_xrest5673_ _xstx5668_) (_yrest5674_ _ystx5669_))
          (let* ((_g56755685_ (gx#syntax-e _xrest5673_))
                 (_else56785693_ (lambda () '())))
            (let ((_K56815750_
                   (lambda (_xrest5719_ _xhd5720_)
                     (let* ((_g57215728_ (gx#syntax-e _yrest5674_))
                            (_E57235732_
                             (lambda ()
                               (error '"No clause matching" _g57215728_)))
                            (_K57245738_
                             (lambda (_yrest5735_ _yhd5736_)
                               (cons (_f5667_ _xhd5720_ _yhd5736_)
                                     (_recur5671_ _xrest5719_ _yrest5735_)))))
                       (if (##pair? _g57215728_)
                           (let ((_hd57255741_ (##car _g57215728_))
                                 (_tl57265743_ (##cdr _g57215728_)))
                             (let* ((_yhd5746_ _hd57255741_)
                                    (_yrest5748_ _tl57265743_))
                               (_K57245738_ _yrest5748_ _yhd5746_)))
                           (_E57235732_)))))
                  (_K56805713_
                   (lambda ()
                     (let* ((_yrest56975702_ _yrest5674_)
                            (_E56995706_
                             (lambda ()
                               (error '"No clause matching" _yrest56975702_)))
                            (_K57005710_
                             (lambda () (_f5667_ _xrest5673_ _yrest5674_))))
                       (if (not (gx#stx-null? _yrest56975702_))
                           (_K57005710_)
                           (_E56995706_))))))
              (let ((_try-match56775716_
                     (lambda ()
                       (if (not (null? _g56755685_))
                           (_K56805713_)
                           (_else56785693_)))))
                (if (##pair? _g56755685_)
                    (let ((_tl56835755_ (##cdr _g56755685_))
                          (_hd56825753_ (##car _g56755685_)))
                      (let ((_xhd5758_ _hd56825753_)
                            (_xrest5760_ _tl56835755_))
                        (_K56815750_ _xrest5760_ _xhd5758_)))
                    (_try-match56775716_))))))))
    (define gx#stx-andmap
      (lambda (_f5617_ _stx5618_)
        (if (procedure? _f5617_) '#!void (error '"expected procedure" _f5617_))
        (let _lp5620_ ((_rest5622_ _stx5618_))
          (let* ((_g56235633_ (gx#syntax-e _rest5622_))
                 (_else56265641_ (lambda () (_f5617_ _rest5622_))))
            (let ((_K56295655_
                   (lambda (_rest5652_ _hd5653_)
                     (if (_f5617_ _hd5653_) (_lp5620_ _rest5652_) '#f)))
                  (_K56285646_ (lambda () '#t)))
              (let ((_try-match56255649_
                     (lambda ()
                       (if (##null? _g56235633_)
                           (_K56285646_)
                           (_else56265641_)))))
                (if (##pair? _g56235633_)
                    (let ((_tl56315660_ (##cdr _g56235633_))
                          (_hd56305658_ (##car _g56235633_)))
                      (let ((_hd5663_ _hd56305658_) (_rest5665_ _tl56315660_))
                        (_K56295655_ _rest5665_ _hd5663_)))
                    (_try-match56255649_))))))))
    (define gx#stx-ormap
      (lambda (_f5564_ _stx5565_)
        (if (procedure? _f5564_) '#!void (error '"expected procedure" _f5564_))
        (let _lp5567_ ((_rest5569_ _stx5565_))
          (let* ((_g55705580_ (gx#syntax-e _rest5569_))
                 (_else55735588_ (lambda () (_f5564_ _rest5569_))))
            (let ((_K55765605_
                   (lambda (_rest5599_ _hd5600_)
                     (let ((_$e5602_ (_f5564_ _hd5600_)))
                       (if _$e5602_ _$e5602_ (_lp5567_ _rest5599_)))))
                  (_K55755593_ (lambda () '#f)))
              (let ((_try-match55725596_
                     (lambda ()
                       (if (##null? _g55705580_)
                           (_K55755593_)
                           (_else55735588_)))))
                (if (##pair? _g55705580_)
                    (let ((_tl55785610_ (##cdr _g55705580_))
                          (_hd55775608_ (##car _g55705580_)))
                      (let ((_hd5613_ _hd55775608_) (_rest5615_ _tl55785610_))
                        (_K55765605_ _rest5615_ _hd5613_)))
                    (_try-match55725596_))))))))
    (define gx#stx-foldl
      (lambda (_f5512_ _iv5513_ _stx5514_)
        (if (procedure? _f5512_) '#!void (error '"expected procedure" _f5512_))
        (let _lp5516_ ((_r5518_ _iv5513_) (_rest5519_ _stx5514_))
          (let* ((_g55205530_ (gx#syntax-e _rest5519_))
                 (_else55235538_ (lambda () (_f5512_ _rest5519_ _r5518_))))
            (let ((_K55265552_
                   (lambda (_rest5549_ _hd5550_)
                     (_lp5516_ (_f5512_ _hd5550_ _r5518_) _rest5549_)))
                  (_K55255543_ (lambda () _r5518_)))
              (let ((_try-match55225546_
                     (lambda ()
                       (if (##null? _g55205530_)
                           (_K55255543_)
                           (_else55235538_)))))
                (if (##pair? _g55205530_)
                    (let ((_tl55285557_ (##cdr _g55205530_))
                          (_hd55275555_ (##car _g55205530_)))
                      (let ((_hd5560_ _hd55275555_) (_rest5562_ _tl55285557_))
                        (_K55265552_ _rest5562_ _hd5560_)))
                    (_try-match55225546_))))))))
    (define gx#stx-foldr
      (lambda (_f5461_ _iv5462_ _stx5463_)
        (if (procedure? _f5461_) '#!void (error '"expected procedure" _f5461_))
        (let _recur5465_ ((_rest5467_ _stx5463_))
          (let* ((_g54685478_ (gx#syntax-e _rest5467_))
                 (_else54715486_ (lambda () (_f5461_ _rest5467_ _iv5462_))))
            (let ((_K54745500_
                   (lambda (_rest5497_ _hd5498_)
                     (_f5461_ _hd5498_ (_recur5465_ _rest5497_))))
                  (_K54735491_ (lambda () _iv5462_)))
              (let ((_try-match54705494_
                     (lambda ()
                       (if (##null? _g54685478_)
                           (_K54735491_)
                           (_else54715486_)))))
                (if (##pair? _g54685478_)
                    (let ((_tl54765505_ (##cdr _g54685478_))
                          (_hd54755503_ (##car _g54685478_)))
                      (let ((_hd5508_ _hd54755503_) (_rest5510_ _tl54765505_))
                        (_K54745500_ _rest5510_ _hd5508_)))
                    (_try-match54705494_))))))))
    (define gx#stx-reverse
      (lambda (_stx5459_) (gx#stx-foldl cons '() _stx5459_)))
    (define gx#stx-last
      (lambda (_stx5420_)
        (let _lp5422_ ((_rest5424_ _stx5420_))
          (let* ((_g54255433_ (gx#syntax-e _rest5424_))
                 (_else54275441_ (lambda () _rest5424_))
                 (_K54295447_
                  (lambda (_rest5444_ _hd5445_)
                    (if (gx#stx-null? _rest5444_)
                        _hd5445_
                        (_lp5422_ _rest5444_)))))
            (if (##pair? _g54255433_)
                (let ((_hd54305450_ (##car _g54255433_))
                      (_tl54315452_ (##cdr _g54255433_)))
                  (let* ((_hd5455_ _hd54305450_) (_rest5457_ _tl54315452_))
                    (_K54295447_ _rest5457_ _hd5455_)))
                (_else54275441_))))))
    (define gx#stx-last-pair
      (lambda (_stx5391_)
        (let _lp5393_ ((_hd5395_ _stx5391_))
          (let* ((_g53965403_ (gx#syntax-e _hd5395_))
                 (_E53985407_
                  (lambda () (error '"No clause matching" _g53965403_)))
                 (_K53995412_
                  (lambda (_rest5410_)
                    (if (gx#stx-pair? _rest5410_)
                        (_lp5393_ _rest5410_)
                        _hd5395_))))
            (if (##pair? _g53965403_)
                (let* ((_tl54015415_ (##cdr _g53965403_))
                       (_rest5418_ _tl54015415_))
                  (_K53995412_ _rest5418_))
                (_E53985407_))))))
    (define gx#stx-list-tail
      (lambda (_stx5360_ _k5361_)
        (let _lp5363_ ((_rest5365_ _stx5360_) (_k5366_ _k5361_))
          (if (fxpositive? _k5366_)
              (let* ((_g53675374_ (gx#syntax-e _rest5365_))
                     (_E53695378_
                      (lambda () (error '"No clause matching" _g53675374_)))
                     (_K53705383_
                      (lambda (_rest5381_)
                        (_lp5363_ _rest5381_ (fx- _k5366_ '1)))))
                (if (##pair? _g53675374_)
                    (let* ((_tl53725386_ (##cdr _g53675374_))
                           (_rest5389_ _tl53725386_))
                      (_K53705383_ _rest5389_))
                    (_E53695378_)))
              _rest5365_))))
    (define gx#stx-list-ref
      (lambda (_stx5357_ _k5358_)
        (gx#stx-car (gx#stx-list-tail _stx5357_ _k5358_))))
    (define gx#stx-plist?__%
      (lambda (_stx5269_ _key?5270_)
        (if (procedure? _key?5270_)
            '#!void
            (error '"expected procedure" _key?5270_))
        (let _lp5272_ ((_rest5274_ _stx5269_))
          (let* ((_g52755285_ (gx#stx-e _rest5274_))
                 (_else52785293_ (lambda () '#f)))
            (let ((_K52815335_
                   (lambda (_rest5304_ _hd5305_)
                     (if (_key?5270_ _hd5305_)
                         (let* ((_g53065314_ (gx#stx-e _rest5304_))
                                (_else53085322_ (lambda () '#f))
                                (_K53105327_
                                 (lambda (_rest5325_) (_lp5272_ _rest5325_))))
                           (if (##pair? _g53065314_)
                               (let* ((_tl53125330_ (##cdr _g53065314_))
                                      (_rest5333_ _tl53125330_))
                                 (_lp5272_ _rest5333_))
                               (_else53085322_)))
                         '#f)))
                  (_K52805298_ (lambda () '#t)))
              (let ((_try-match52775301_
                     (lambda ()
                       (if (##null? _g52755285_)
                           (_K52805298_)
                           (_else52785293_)))))
                (if (##pair? _g52755285_)
                    (let ((_tl52835340_ (##cdr _g52755285_))
                          (_hd52825338_ (##car _g52755285_)))
                      (let ((_hd5343_ _hd52825338_) (_rest5345_ _tl52835340_))
                        (_K52815335_ _rest5345_ _hd5343_)))
                    (_try-match52775301_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx5350_)
        (let ((_key?5352_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx5350_ _key?5352_))))
    (define gx#stx-plist?
      (lambda _g6457_
        (let ((_g6456_ (##length _g6457_)))
          (cond ((##fx= _g6456_ 1)
                 (apply (lambda (_stx5350_) (gx#stx-plist?__0 _stx5350_))
                        _g6457_))
                ((##fx= _g6456_ 2)
                 (apply (lambda (_stx5354_ _key?5355_)
                          (gx#stx-plist?__% _stx5354_ _key?5355_))
                        _g6457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g6457_))))))
    (define gx#stx-getq__%
      (lambda (_key5187_ _stx5188_ _key=?5189_)
        (if (procedure? _key=?5189_)
            '#!void
            (error '"expected procedure" _key=?5189_))
        (let _lp5191_ ((_rest5193_ _stx5188_))
          (let* ((_g51945202_ (gx#syntax-e _rest5193_))
                 (_else51965210_ (lambda () '#f))
                 (_K51985244_
                  (lambda (_rest5213_ _hd5214_)
                    (let* ((_g52155222_ (gx#syntax-e _rest5213_))
                           (_E52175226_
                            (lambda ()
                              (error '"No clause matching" _g52155222_)))
                           (_K52185232_
                            (lambda (_rest5229_ _val5230_)
                              (if (_key=?5189_ _hd5214_ _key5187_)
                                  _val5230_
                                  (_lp5191_ _rest5229_)))))
                      (if (##pair? _g52155222_)
                          (let ((_hd52195235_ (##car _g52155222_))
                                (_tl52205237_ (##cdr _g52155222_)))
                            (let* ((_val5240_ _hd52195235_)
                                   (_rest5242_ _tl52205237_))
                              (_K52185232_ _rest5242_ _val5240_)))
                          (_E52175226_))))))
            (if (##pair? _g51945202_)
                (let ((_hd51995247_ (##car _g51945202_))
                      (_tl52005249_ (##cdr _g51945202_)))
                  (let* ((_hd5252_ _hd51995247_) (_rest5254_ _tl52005249_))
                    (_K51985244_ _rest5254_ _hd5252_)))
                (_else51965210_))))))
    (define gx#stx-getq__0
      (lambda (_key5259_ _stx5260_)
        (let ((_key=?5262_ gx#stx-eq?))
          (gx#stx-getq__% _key5259_ _stx5260_ _key=?5262_))))
    (define gx#stx-getq
      (lambda _g6459_
        (let ((_g6458_ (##length _g6459_)))
          (cond ((##fx= _g6458_ 2)
                 (apply (lambda (_key5259_ _stx5260_)
                          (gx#stx-getq__0 _key5259_ _stx5260_))
                        _g6459_))
                ((##fx= _g6458_ 3)
                 (apply (lambda (_key5264_ _stx5265_ _key=?5266_)
                          (gx#stx-getq__% _key5264_ _stx5265_ _key=?5266_))
                        _g6459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g6459_))))))))
