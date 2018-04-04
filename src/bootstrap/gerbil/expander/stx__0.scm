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
    (lambda _$args6155_
      (apply make-struct-instance gx#identifier-wrap::t _$args6155_)))
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
    (lambda _$args6152_
      (apply make-struct-instance gx#syntax-wrap::t _$args6152_)))
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
    (lambda _$args6149_
      (apply make-struct-instance gx#syntax-quote::t _$args6149_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx6147_) (symbol? (gx#stx-e _stx6147_))))
  (define gx#identifier-quote?
    (lambda (_stx6145_)
      (if (##structure-direct-instance-of? _stx6145_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx6145_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx6140_)
      (let ((_$e6142_
             (##structure-direct-instance-of? _stx6140_ 'gx#syntax-quote::t)))
        (if _$e6142_
            _$e6142_
            (if (##structure-instance-of? _stx6140_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx6140_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx6136_)
      (let ((_stx6138_ (gx#stx-unwrap__0 _stx6136_)))
        (if (##structure-instance-of? _stx6138_ 'gerbil#AST::t)
            (##structure-ref _stx6138_ '1 AST::t '#f)
            _stx6138_))))
  (define gx#syntax->datum
    (lambda (_stx6134_)
      (if (##structure-instance-of? _stx6134_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx6134_ '1 AST::t '#f))
          (if (pair? _stx6134_)
              (cons (gx#syntax->datum (car _stx6134_))
                    (gx#syntax->datum (cdr _stx6134_)))
              (if (vector? _stx6134_)
                  (vector-map gx#syntax->datum _stx6134_)
                  (if (box? _stx6134_)
                      (box (gx#syntax->datum (unbox _stx6134_)))
                      _stx6134_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx6077_ _datum6078_ _src6079_ _quote?6080_)
        (letrec ((_wrap-datum6082_
                  (lambda (_e6106_ _marks6107_)
                    (_wrap-inner6084_
                     _e6106_
                     (lambda (_g61086110_)
                       (##structure
                        gx#identifier-wrap::t
                        _g61086110_
                        _src6079_
                        _marks6107_)))))
                 (_wrap-quote6083_
                  (lambda (_e6098_ _ctx6099_ _marks6100_)
                    (_wrap-inner6084_
                     _e6098_
                     (lambda (_g61016103_)
                       (##structure
                        gx#syntax-quote::t
                        _g61016103_
                        _src6079_
                        _ctx6099_
                        _marks6100_)))))
                 (_wrap-inner6084_
                  (lambda (_e6091_ _wrap-e6092_)
                    (let _recur6094_ ((_e6096_ _e6091_))
                      (if (symbol? _e6096_)
                          (_wrap-e6092_ _e6096_)
                          (if (pair? _e6096_)
                              (cons (_recur6094_ (car _e6096_))
                                    (_recur6094_ (cdr _e6096_)))
                              (if (vector? _e6096_)
                                  (vector-map _recur6094_ _e6096_)
                                  (if (box? _e6096_)
                                      (box (_recur6094_ (unbox _e6096_)))
                                      _e6096_)))))))
                 (_wrap-outer6085_
                  (lambda (_e6089_)
                    (if (##structure-instance-of? _e6089_ 'gerbil#AST::t)
                        _e6089_
                        (##structure AST::t _e6089_ _src6079_)))))
          (if (##structure-instance-of? _datum6078_ 'gerbil#AST::t)
              _datum6078_
              (if (not _stx6077_)
                  (##structure AST::t _datum6078_ _src6079_)
                  (if (gx#identifier? _stx6077_)
                      (let ((_stx6087_ (gx#stx-unwrap__0 _stx6077_)))
                        (_wrap-outer6085_
                         (if (##structure-direct-instance-of?
                              _stx6087_
                              'gx#syntax-quote::t)
                             (if _quote?6080_
                                 (_wrap-quote6083_
                                  _datum6078_
                                  (##direct-structure-ref
                                   _stx6087_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx6087_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum6082_
                                  _datum6078_
                                  (##direct-structure-ref
                                   _stx6087_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum6082_
                              _datum6078_
                              (##direct-structure-ref
                               _stx6087_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx6077_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx6116_ _datum6117_)
          (let* ((_src6119_ '#f) (_quote?6121_ '#t))
            (gx#datum->syntax__%
             _stx6116_
             _datum6117_
             _src6119_
             _quote?6121_))))
      (define gx#datum->syntax__1
        (lambda (_stx6123_ _datum6124_ _src6125_)
          (let ((_quote?6127_ '#t))
            (gx#datum->syntax__%
             _stx6123_
             _datum6124_
             _src6125_
             _quote?6127_))))
      (define gx#datum->syntax
        (lambda _g6233_
          (let ((_g6232_ (length _g6233_)))
            (cond ((##fx= _g6232_ 2) (apply gx#datum->syntax__0 _g6233_))
                  ((##fx= _g6232_ 3) (apply gx#datum->syntax__1 _g6233_))
                  ((##fx= _g6232_ 4) (apply gx#datum->syntax__% _g6233_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g6233_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx6053_ _marks6054_)
        (let _lp6056_ ((_e6058_ _stx6053_)
                       (_marks6059_ _marks6054_)
                       (_src6060_ (gx#stx-source _stx6053_)))
          (if (##structure-direct-instance-of? _e6058_ 'gx#syntax-wrap::t)
              (_lp6056_
               (##structure-ref _e6058_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e6058_ '3 gx#syntax-wrap::t '#f)
                _marks6059_)
               (##structure-ref _e6058_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e6058_
                   'gx#identifier-wrap::t)
                  (if (null? _marks6059_)
                      _e6058_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e6058_ '1 AST::t '#f)
                       (##structure-ref _e6058_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e6058_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6059_)))
                  (if (##structure-direct-instance-of?
                       _e6058_
                       'gx#syntax-quote::t)
                      _e6058_
                      (if (##structure-instance-of? _e6058_ 'gerbil#AST::t)
                          (_lp6056_
                           (##structure-ref _e6058_ '1 AST::t '#f)
                           _marks6059_
                           (##structure-ref _e6058_ '2 AST::t '#f))
                          (if (symbol? _e6058_)
                              (##structure
                               gx#identifier-wrap::t
                               _e6058_
                               _src6060_
                               (reverse _marks6059_))
                              (if (null? _marks6059_)
                                  _e6058_
                                  (if (pair? _e6058_)
                                      (cons (gx#stx-wrap
                                             (car _e6058_)
                                             _marks6059_)
                                            (gx#stx-wrap
                                             (cdr _e6058_)
                                             _marks6059_))
                                      (if (vector? _e6058_)
                                          (vector-map
                                           (lambda (_g60616063_)
                                             (gx#stx-wrap
                                              _g60616063_
                                              _marks6059_))
                                           _e6058_)
                                          (if (box? _e6058_)
                                              (box (gx#stx-wrap
                                                    (unbox _e6058_)
                                                    _marks6059_))
                                              _e6058_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx6069_)
          (let ((_marks6071_ '())) (gx#stx-unwrap__% _stx6069_ _marks6071_))))
      (define gx#stx-unwrap
        (lambda _g6235_
          (let ((_g6234_ (length _g6235_)))
            (cond ((##fx= _g6234_ 1) (apply gx#stx-unwrap__0 _g6235_))
                  ((##fx= _g6234_ 2) (apply gx#stx-unwrap__% _g6235_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g6235_))))))))
  (define gx#stx-wrap
    (lambda (_stx6046_ _marks6047_)
      (foldl1 (lambda (_mark6049_ _stx6050_)
                (gx#stx-apply-mark _stx6050_ _mark6049_))
              _stx6046_
              _marks6047_)))
  (define gx#stx-rewrap
    (lambda (_stx6040_ _marks6041_)
      (foldr1 (lambda (_mark6043_ _stx6044_)
                (gx#stx-apply-mark _stx6044_ _mark6043_))
              _stx6040_
              _marks6041_)))
  (define gx#stx-apply-mark
    (lambda (_stx6037_ _mark6038_)
      (if (##structure-direct-instance-of? _stx6037_ 'gx#syntax-quote::t)
          _stx6037_
          (if (if (##structure-direct-instance-of?
                   _stx6037_
                   'gx#syntax-wrap::t)
                  (eq? _mark6038_
                       (##direct-structure-ref
                        _stx6037_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx6037_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx6037_
               (gx#stx-source _stx6037_)
               _mark6038_)))))
  (define gx#apply-mark
    (lambda (_mark6001_ _marks6002_)
      (let* ((_marks60036011_ _marks6002_)
             (_else60056019_ (lambda () (cons _mark6001_ _marks6002_)))
             (_K60076025_
              (lambda (_rest6022_ _hd6023_)
                (if (eq? _mark6001_ _hd6023_)
                    _rest6022_
                    (cons _mark6001_ _marks6002_)))))
        (if (##pair? _marks60036011_)
            (let ((_hd60086028_ (##car _marks60036011_))
                  (_tl60096030_ (##cdr _marks60036011_)))
              (let* ((_hd6033_ _hd60086028_) (_rest6035_ _tl60096030_))
                (_K60076025_ _rest6035_ _hd6033_)))
            (_else60056019_)))))
  (define gx#stx-e
    (lambda (_stx5999_)
      (if (##structure-instance-of? _stx5999_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx5999_ '1 AST::t '#f))
          _stx5999_)))
  (define gx#stx-source
    (lambda (_stx5997_)
      (if (##structure-instance-of? _stx5997_ 'gerbil#AST::t)
          (##structure-ref _stx5997_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx5991_ _src5992_)
      (if (let ((_$e5994_ (##structure-instance-of? _stx5991_ 'gerbil#AST::t)))
            (if _$e5994_ _$e5994_ (not _src5992_)))
          _stx5991_
          (##structure AST::t _stx5991_ _src5992_))))
  (define gx#stx-datum?
    (lambda (_stx5989_) (gx#self-quoting? (gx#stx-e _stx5989_))))
  (define gx#self-quoting?
    (lambda (_x5972_)
      (let ((_$e5974_ (immediate? _x5972_)))
        (if _$e5974_
            _$e5974_
            (let ((_$e5977_ (number? _x5972_)))
              (if _$e5977_
                  _$e5977_
                  (let ((_$e5980_ (keyword? _x5972_)))
                    (if _$e5980_
                        _$e5980_
                        (let ((_$e5983_ (string? _x5972_)))
                          (if _$e5983_
                              _$e5983_
                              (let ((_$e5986_ (vector? _x5972_)))
                                (if _$e5986_
                                    _$e5986_
                                    (u8vector? _x5972_)))))))))))))
  (define gx#stx-boolean? (lambda (_e5970_) (boolean? (gx#stx-e _e5970_))))
  (define gx#stx-keyword? (lambda (_e5968_) (keyword? (gx#stx-e _e5968_))))
  (define gx#stx-char? (lambda (_e5966_) (char? (gx#stx-e _e5966_))))
  (define gx#stx-number? (lambda (_e5964_) (number? (gx#stx-e _e5964_))))
  (define gx#stx-fixnum? (lambda (_e5962_) (fixnum? (gx#stx-e _e5962_))))
  (define gx#stx-string? (lambda (_e5960_) (string? (gx#stx-e _e5960_))))
  (define gx#stx-null? (lambda (_e5958_) (null? (gx#stx-e _e5958_))))
  (define gx#stx-pair? (lambda (_e5956_) (pair? (gx#stx-e _e5956_))))
  (define gx#stx-list?
    (lambda (_e5918_)
      (let* ((_g59195928_ (gx#stx-e _e5918_))
             (_E59225932_
              (lambda () (error '"No clause matching" _g59195928_))))
        (let ((_K59245948_ (lambda (_rest5946_) (gx#stx-list? _rest5946_)))
              (_K59235938_ (lambda (_tail5936_) (null? _tail5936_))))
          (if (##pair? _g59195928_)
              (let* ((_tl59265951_ (##cdr _g59195928_))
                     (_rest5954_ _tl59265951_))
                (gx#stx-list? _rest5954_))
              (let ((_tail5941_ _g59195928_)) (null? _tail5941_)))))))
  (define gx#stx-pair/null?
    (lambda (_e5911_)
      (let* ((_e5913_ (gx#stx-e _e5911_)) (_$e5915_ (pair? _e5913_)))
        (if _$e5915_ _$e5915_ (null? _e5913_)))))
  (define gx#stx-vector? (lambda (_e5909_) (vector? (gx#stx-e _e5909_))))
  (define gx#stx-box? (lambda (_e5907_) (box? (gx#stx-e _e5907_))))
  (define gx#stx-eq?
    (lambda (_x5904_ _y5905_) (eq? (gx#stx-e _x5904_) (gx#stx-e _y5905_))))
  (define gx#stx-eqv?
    (lambda (_x5901_ _y5902_) (eqv? (gx#stx-e _x5901_) (gx#stx-e _y5902_))))
  (define gx#stx-equal?
    (lambda (_x5898_ _y5899_) (equal? (gx#stx-e _x5898_) (gx#stx-e _y5899_))))
  (define gx#stx-false? (lambda (_x5896_) (not (gx#stx-e _x5896_))))
  (define gx#stx-identifier
    (lambda (_template5893_ . _args5894_)
      (gx#datum->syntax__1
       _template5893_
       (apply make-symbol (map gx#stx-e _args5894_))
       (gx#stx-source _template5893_))))
  (define gx#stx-identifier-marks
    (lambda (_stx5889_)
      (let ((_stx5891_ (gx#stx-unwrap__0 _stx5889_)))
        (if (##structure-direct-instance-of? _stx5891_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx5891_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx5891_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx5885_)
      (let ((_stx5887_ (gx#stx-unwrap__0 _stx5885_)))
        (if (gx#identifier-quote? _stx5887_)
            (##direct-structure-ref _stx5887_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx5840_)
      (let* ((_g58415851_ (gx#stx-e _stx5840_))
             (_else58445859_ (lambda () '#f)))
        (let ((_K58475873_
               (lambda (_rest5870_ _hd5871_)
                 (if (gx#identifier? _hd5871_)
                     (gx#identifier-list? _rest5870_)
                     '#f)))
              (_K58465864_ (lambda () '#t)))
          (let ((_try-match58435867_
                 (lambda ()
                   (if (##null? _g58415851_) (_K58465864_) (_else58445859_)))))
            (if (##pair? _g58415851_)
                (let ((_tl58495878_ (##cdr _g58415851_))
                      (_hd58485876_ (##car _g58415851_)))
                  (let ((_hd5881_ _hd58485876_) (_rest5883_ _tl58495878_))
                    (_K58475873_ _rest5883_ _hd5881_)))
                (_try-match58435867_)))))))
  (begin
    (define gx#genident__%
      (lambda (_e5817_ _src5818_)
        (gx#stx-wrap-source
         (gensym (let ((_e5820_ (gx#stx-e _e5817_)))
                   (if (interned-symbol? _e5820_) _e5820_ 'g)))
         (let ((_$e5822_ (gx#stx-source _e5817_)))
           (if _$e5822_ _$e5822_ _src5818_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e5829_ 'g) (_src5831_ '#f))
            (gx#genident__% _e5829_ _src5831_))))
      (define gx#genident__1
        (lambda (_e5833_)
          (let ((_src5835_ '#f)) (gx#genident__% _e5833_ _src5835_))))
      (define gx#genident
        (lambda _g6237_
          (let ((_g6236_ (length _g6237_)))
            (cond ((##fx= _g6236_ 0) (apply gx#genident__0 _g6237_))
                  ((##fx= _g6236_ 1) (apply gx#genident__1 _g6237_))
                  ((##fx= _g6236_ 2) (apply gx#genident__% _g6237_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g6237_))))))))
  (define gx#gentemps
    (lambda (_stx-lst5814_) (gx#stx-map1 gx#genident _stx-lst5814_)))
  (define gx#syntax->list (lambda (_stx5812_) (gx#stx-map1 values _stx5812_)))
  (define gx#stx-car (lambda (_stx5810_) (car (gx#syntax-e _stx5810_))))
  (define gx#stx-cdr (lambda (_stx5808_) (cdr (gx#syntax-e _stx5808_))))
  (define gx#stx-length
    (lambda (_stx5773_)
      (let _lp5775_ ((_rest5777_ _stx5773_) (_n5778_ '0))
        (let* ((_g57795787_ (gx#stx-e _rest5777_))
               (_else57815795_ (lambda () _n5778_))
               (_K57835800_
                (lambda (_rest5798_) (_lp5775_ _rest5798_ (fx+ _n5778_ '1)))))
          (if (##pair? _g57795787_)
              (let* ((_tl57855803_ (##cdr _g57795787_))
                     (_rest5806_ _tl57855803_))
                (_K57835800_ _rest5806_))
              (_else57815795_))))))
  (define gx#stx-for-each
    (lambda _g6239_
      (let ((_g6238_ (length _g6239_)))
        (cond ((##fx= _g6238_ 2) (apply gx#stx-for-each1 _g6239_))
              ((##fx= _g6238_ 3) (apply gx#stx-for-each2 _g6239_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g6239_))))))
  (define gx#stx-for-each1
    (lambda (_f5716_ _stx5717_)
      (let _lp5719_ ((_rest5721_ _stx5717_))
        (let* ((_g57225732_ (gx#syntax-e _rest5721_))
               (_else57255740_ (lambda () (_f5716_ _rest5721_))))
          (let ((_K57285754_
                 (lambda (_rest5751_ _hd5752_)
                   (begin (_f5716_ _hd5752_) (_lp5719_ _rest5751_))))
                (_K57275745_ (lambda () '#!void)))
            (let ((_try-match57245748_
                   (lambda ()
                     (if (##null? _g57225732_)
                         (_K57275745_)
                         (_else57255740_)))))
              (if (##pair? _g57225732_)
                  (let ((_tl57305759_ (##cdr _g57225732_))
                        (_hd57295757_ (##car _g57225732_)))
                    (let ((_hd5762_ _hd57295757_) (_rest5764_ _tl57305759_))
                      (_K57285754_ _rest5764_ _hd5762_)))
                  (_try-match57245748_))))))))
  (define gx#stx-for-each2
    (lambda (_f5621_ _xstx5622_ _ystx5623_)
      (let _lp5625_ ((_xrest5627_ _xstx5622_) (_yrest5628_ _ystx5623_))
        (let* ((_g56295639_ (gx#syntax-e _xrest5627_))
               (_else56325647_ (lambda () '#!void)))
          (let ((_K56355704_
                 (lambda (_xrest5673_ _xhd5674_)
                   (let* ((_g56755682_ (gx#syntax-e _yrest5628_))
                          (_E56775686_
                           (lambda ()
                             (error '"No clause matching" _g56755682_)))
                          (_K56785692_
                           (lambda (_yrest5689_ _yhd5690_)
                             (begin
                               (_f5621_ _xhd5674_ _yhd5690_)
                               (_lp5625_ _xrest5673_ _yrest5689_)))))
                     (if (##pair? _g56755682_)
                         (let ((_hd56795695_ (##car _g56755682_))
                               (_tl56805697_ (##cdr _g56755682_)))
                           (let* ((_yhd5700_ _hd56795695_)
                                  (_yrest5702_ _tl56805697_))
                             (_K56785692_ _yrest5702_ _yhd5700_)))
                         (_E56775686_)))))
                (_K56345667_
                 (lambda ()
                   (let* ((_yrest56515656_ _yrest5628_)
                          (_E56535660_
                           (lambda ()
                             (error '"No clause matching" _yrest56515656_)))
                          (_K56545664_
                           (lambda () (_f5621_ _xrest5627_ _yrest5628_))))
                     (if (not (gx#stx-null? _yrest56515656_))
                         (_K56545664_)
                         (_E56535660_))))))
            (let ((_try-match56315670_
                   (lambda ()
                     (if (not (null? _g56295639_))
                         (_K56345667_)
                         (_else56325647_)))))
              (if (##pair? _g56295639_)
                  (let ((_tl56375709_ (##cdr _g56295639_))
                        (_hd56365707_ (##car _g56295639_)))
                    (let ((_xhd5712_ _hd56365707_) (_xrest5714_ _tl56375709_))
                      (_K56355704_ _xrest5714_ _xhd5712_)))
                  (_try-match56315670_))))))))
  (define gx#stx-map
    (lambda _g6241_
      (let ((_g6240_ (length _g6241_)))
        (cond ((##fx= _g6240_ 2) (apply gx#stx-map1 _g6241_))
              ((##fx= _g6240_ 3) (apply gx#stx-map2 _g6241_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g6241_))))))
  (define gx#stx-map1
    (lambda (_f5564_ _stx5565_)
      (let _recur5567_ ((_rest5569_ _stx5565_))
        (let* ((_g55705580_ (gx#syntax-e _rest5569_))
               (_else55735588_ (lambda () (_f5564_ _rest5569_))))
          (let ((_K55765602_
                 (lambda (_rest5599_ _hd5600_)
                   (cons (_f5564_ _hd5600_) (_recur5567_ _rest5599_))))
                (_K55755593_ (lambda () '())))
            (let ((_try-match55725596_
                   (lambda ()
                     (if (##null? _g55705580_)
                         (_K55755593_)
                         (_else55735588_)))))
              (if (##pair? _g55705580_)
                  (let ((_tl55785607_ (##cdr _g55705580_))
                        (_hd55775605_ (##car _g55705580_)))
                    (let ((_hd5610_ _hd55775605_) (_rest5612_ _tl55785607_))
                      (_K55765602_ _rest5612_ _hd5610_)))
                  (_try-match55725596_))))))))
  (define gx#stx-map2
    (lambda (_f5469_ _xstx5470_ _ystx5471_)
      (let _recur5473_ ((_xrest5475_ _xstx5470_) (_yrest5476_ _ystx5471_))
        (let* ((_g54775487_ (gx#syntax-e _xrest5475_))
               (_else54805495_ (lambda () '())))
          (let ((_K54835552_
                 (lambda (_xrest5521_ _xhd5522_)
                   (let* ((_g55235530_ (gx#syntax-e _yrest5476_))
                          (_E55255534_
                           (lambda ()
                             (error '"No clause matching" _g55235530_)))
                          (_K55265540_
                           (lambda (_yrest5537_ _yhd5538_)
                             (cons (_f5469_ _xhd5522_ _yhd5538_)
                                   (_recur5473_ _xrest5521_ _yrest5537_)))))
                     (if (##pair? _g55235530_)
                         (let ((_hd55275543_ (##car _g55235530_))
                               (_tl55285545_ (##cdr _g55235530_)))
                           (let* ((_yhd5548_ _hd55275543_)
                                  (_yrest5550_ _tl55285545_))
                             (_K55265540_ _yrest5550_ _yhd5548_)))
                         (_E55255534_)))))
                (_K54825515_
                 (lambda ()
                   (let* ((_yrest54995504_ _yrest5476_)
                          (_E55015508_
                           (lambda ()
                             (error '"No clause matching" _yrest54995504_)))
                          (_K55025512_
                           (lambda () (_f5469_ _xrest5475_ _yrest5476_))))
                     (if (not (gx#stx-null? _yrest54995504_))
                         (_K55025512_)
                         (_E55015508_))))))
            (let ((_try-match54795518_
                   (lambda ()
                     (if (not (null? _g54775487_))
                         (_K54825515_)
                         (_else54805495_)))))
              (if (##pair? _g54775487_)
                  (let ((_tl54855557_ (##cdr _g54775487_))
                        (_hd54845555_ (##car _g54775487_)))
                    (let ((_xhd5560_ _hd54845555_) (_xrest5562_ _tl54855557_))
                      (_K54835552_ _xrest5562_ _xhd5560_)))
                  (_try-match54795518_))))))))
  (define gx#stx-andmap
    (lambda (_f5419_ _stx5420_)
      (let _lp5422_ ((_rest5424_ _stx5420_))
        (let* ((_g54255435_ (gx#syntax-e _rest5424_))
               (_else54285443_ (lambda () (_f5419_ _rest5424_))))
          (let ((_K54315457_
                 (lambda (_rest5454_ _hd5455_)
                   (if (_f5419_ _hd5455_) (_lp5422_ _rest5454_) '#f)))
                (_K54305448_ (lambda () '#t)))
            (let ((_try-match54275451_
                   (lambda ()
                     (if (##null? _g54255435_)
                         (_K54305448_)
                         (_else54285443_)))))
              (if (##pair? _g54255435_)
                  (let ((_tl54335462_ (##cdr _g54255435_))
                        (_hd54325460_ (##car _g54255435_)))
                    (let ((_hd5465_ _hd54325460_) (_rest5467_ _tl54335462_))
                      (_K54315457_ _rest5467_ _hd5465_)))
                  (_try-match54275451_))))))))
  (define gx#stx-ormap
    (lambda (_f5366_ _stx5367_)
      (let _lp5369_ ((_rest5371_ _stx5367_))
        (let* ((_g53725382_ (gx#syntax-e _rest5371_))
               (_else53755390_ (lambda () (_f5366_ _rest5371_))))
          (let ((_K53785407_
                 (lambda (_rest5401_ _hd5402_)
                   (let ((_$e5404_ (_f5366_ _hd5402_)))
                     (if _$e5404_ _$e5404_ (_lp5369_ _rest5401_)))))
                (_K53775395_ (lambda () '#f)))
            (let ((_try-match53745398_
                   (lambda ()
                     (if (##null? _g53725382_)
                         (_K53775395_)
                         (_else53755390_)))))
              (if (##pair? _g53725382_)
                  (let ((_tl53805412_ (##cdr _g53725382_))
                        (_hd53795410_ (##car _g53725382_)))
                    (let ((_hd5415_ _hd53795410_) (_rest5417_ _tl53805412_))
                      (_K53785407_ _rest5417_ _hd5415_)))
                  (_try-match53745398_))))))))
  (define gx#stx-foldl
    (lambda (_f5314_ _iv5315_ _stx5316_)
      (let _lp5318_ ((_r5320_ _iv5315_) (_rest5321_ _stx5316_))
        (let* ((_g53225332_ (gx#syntax-e _rest5321_))
               (_else53255340_ (lambda () (_f5314_ _rest5321_ _r5320_))))
          (let ((_K53285354_
                 (lambda (_rest5351_ _hd5352_)
                   (_lp5318_ (_f5314_ _hd5352_ _r5320_) _rest5351_)))
                (_K53275345_ (lambda () _r5320_)))
            (let ((_try-match53245348_
                   (lambda ()
                     (if (##null? _g53225332_)
                         (_K53275345_)
                         (_else53255340_)))))
              (if (##pair? _g53225332_)
                  (let ((_tl53305359_ (##cdr _g53225332_))
                        (_hd53295357_ (##car _g53225332_)))
                    (let ((_hd5362_ _hd53295357_) (_rest5364_ _tl53305359_))
                      (_K53285354_ _rest5364_ _hd5362_)))
                  (_try-match53245348_))))))))
  (define gx#stx-foldr
    (lambda (_f5263_ _iv5264_ _stx5265_)
      (let _recur5267_ ((_rest5269_ _stx5265_))
        (let* ((_g52705280_ (gx#syntax-e _rest5269_))
               (_else52735288_ (lambda () (_f5263_ _rest5269_ _iv5264_))))
          (let ((_K52765302_
                 (lambda (_rest5299_ _hd5300_)
                   (_f5263_ _hd5300_ (_recur5267_ _rest5299_))))
                (_K52755293_ (lambda () _iv5264_)))
            (let ((_try-match52725296_
                   (lambda ()
                     (if (##null? _g52705280_)
                         (_K52755293_)
                         (_else52735288_)))))
              (if (##pair? _g52705280_)
                  (let ((_tl52785307_ (##cdr _g52705280_))
                        (_hd52775305_ (##car _g52705280_)))
                    (let ((_hd5310_ _hd52775305_) (_rest5312_ _tl52785307_))
                      (_K52765302_ _rest5312_ _hd5310_)))
                  (_try-match52725296_))))))))
  (define gx#stx-reverse
    (lambda (_stx5261_) (gx#stx-foldl cons '() _stx5261_)))
  (define gx#stx-last
    (lambda (_stx5222_)
      (let _lp5224_ ((_rest5226_ _stx5222_))
        (let* ((_g52275235_ (gx#syntax-e _rest5226_))
               (_else52295243_ (lambda () _rest5226_))
               (_K52315249_
                (lambda (_rest5246_ _hd5247_)
                  (if (gx#stx-null? _rest5246_)
                      _hd5247_
                      (_lp5224_ _rest5246_)))))
          (if (##pair? _g52275235_)
              (let ((_hd52325252_ (##car _g52275235_))
                    (_tl52335254_ (##cdr _g52275235_)))
                (let* ((_hd5257_ _hd52325252_) (_rest5259_ _tl52335254_))
                  (_K52315249_ _rest5259_ _hd5257_)))
              (_else52295243_))))))
  (define gx#stx-last-pair
    (lambda (_stx5193_)
      (let _lp5195_ ((_hd5197_ _stx5193_))
        (let* ((_g51985205_ (gx#syntax-e _hd5197_))
               (_E52005209_
                (lambda () (error '"No clause matching" _g51985205_)))
               (_K52015214_
                (lambda (_rest5212_)
                  (if (gx#stx-pair? _rest5212_)
                      (_lp5195_ _rest5212_)
                      _hd5197_))))
          (if (##pair? _g51985205_)
              (let* ((_tl52035217_ (##cdr _g51985205_))
                     (_rest5220_ _tl52035217_))
                (_K52015214_ _rest5220_))
              (_E52005209_))))))
  (define gx#stx-list-tail
    (lambda (_stx5162_ _k5163_)
      (let _lp5165_ ((_rest5167_ _stx5162_) (_k5168_ _k5163_))
        (if (fxpositive? _k5168_)
            (let* ((_g51695176_ (gx#syntax-e _rest5167_))
                   (_E51715180_
                    (lambda () (error '"No clause matching" _g51695176_)))
                   (_K51725185_
                    (lambda (_rest5183_)
                      (_lp5165_ _rest5183_ (fx- _k5168_ '1)))))
              (if (##pair? _g51695176_)
                  (let* ((_tl51745188_ (##cdr _g51695176_))
                         (_rest5191_ _tl51745188_))
                    (_K51725185_ _rest5191_))
                  (_E51715180_)))
            _rest5167_))))
  (define gx#stx-list-ref
    (lambda (_stx5159_ _k5160_)
      (gx#stx-car (gx#stx-list-tail _stx5159_ _k5160_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx5071_ _key?5072_)
        (let _lp5074_ ((_rest5076_ _stx5071_))
          (let* ((_g50775087_ (gx#stx-e _rest5076_))
                 (_else50805095_ (lambda () '#f)))
            (let ((_K50835137_
                   (lambda (_rest5106_ _hd5107_)
                     (if (_key?5072_ _hd5107_)
                         (let* ((_g51085116_ (gx#stx-e _rest5106_))
                                (_else51105124_ (lambda () '#f))
                                (_K51125129_
                                 (lambda (_rest5127_) (_lp5074_ _rest5127_))))
                           (if (##pair? _g51085116_)
                               (let* ((_tl51145132_ (##cdr _g51085116_))
                                      (_rest5135_ _tl51145132_))
                                 (_lp5074_ _rest5135_))
                               (_else51105124_)))
                         '#f)))
                  (_K50825100_ (lambda () '#t)))
              (let ((_try-match50795103_
                     (lambda ()
                       (if (##null? _g50775087_)
                           (_K50825100_)
                           (_else50805095_)))))
                (if (##pair? _g50775087_)
                    (let ((_tl50855142_ (##cdr _g50775087_))
                          (_hd50845140_ (##car _g50775087_)))
                      (let ((_hd5145_ _hd50845140_) (_rest5147_ _tl50855142_))
                        (_K50835137_ _rest5147_ _hd5145_)))
                    (_try-match50795103_))))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx5152_)
          (let ((_key?5154_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx5152_ _key?5154_))))
      (define gx#stx-plist?
        (lambda _g6243_
          (let ((_g6242_ (length _g6243_)))
            (cond ((##fx= _g6242_ 1) (apply gx#stx-plist?__0 _g6243_))
                  ((##fx= _g6242_ 2) (apply gx#stx-plist?__% _g6243_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g6243_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key4989_ _stx4990_ _key=?4991_)
        (let _lp4993_ ((_rest4995_ _stx4990_))
          (let* ((_g49965004_ (gx#syntax-e _rest4995_))
                 (_else49985012_ (lambda () '#f))
                 (_K50005046_
                  (lambda (_rest5015_ _hd5016_)
                    (let* ((_g50175024_ (gx#syntax-e _rest5015_))
                           (_E50195028_
                            (lambda ()
                              (error '"No clause matching" _g50175024_)))
                           (_K50205034_
                            (lambda (_rest5031_ _val5032_)
                              (if (_key=?4991_ _hd5016_ _key4989_)
                                  _val5032_
                                  (_lp4993_ _rest5031_)))))
                      (if (##pair? _g50175024_)
                          (let ((_hd50215037_ (##car _g50175024_))
                                (_tl50225039_ (##cdr _g50175024_)))
                            (let* ((_val5042_ _hd50215037_)
                                   (_rest5044_ _tl50225039_))
                              (_K50205034_ _rest5044_ _val5042_)))
                          (_E50195028_))))))
            (if (##pair? _g49965004_)
                (let ((_hd50015049_ (##car _g49965004_))
                      (_tl50025051_ (##cdr _g49965004_)))
                  (let* ((_hd5054_ _hd50015049_) (_rest5056_ _tl50025051_))
                    (_K50005046_ _rest5056_ _hd5054_)))
                (_else49985012_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key5061_ _stx5062_)
          (let ((_key=?5064_ gx#stx-eq?))
            (gx#stx-getq__% _key5061_ _stx5062_ _key=?5064_))))
      (define gx#stx-getq
        (lambda _g6245_
          (let ((_g6244_ (length _g6245_)))
            (cond ((##fx= _g6244_ 2) (apply gx#stx-getq__0 _g6245_))
                  ((##fx= _g6244_ 3) (apply gx#stx-getq__% _g6245_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g6245_)))))))))
