(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1695117494)
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
      (lambda _$args6221_
        (apply make-struct-instance gx#identifier-wrap::t _$args6221_)))
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
      (lambda _$args6218_
        (apply make-struct-instance gx#syntax-wrap::t _$args6218_)))
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
      (lambda _$args6215_
        (apply make-struct-instance gx#syntax-quote::t _$args6215_)))
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
    (define gx#identifier? (lambda (_stx6213_) (symbol? (gx#stx-e _stx6213_))))
    (define gx#identifier-quote?
      (lambda (_stx6211_)
        (if (##structure-direct-instance-of? _stx6211_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx6211_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx6209_)
        (if (##structure-direct-instance-of? _stx6209_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx6209_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx6209_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx6207_)
        (if (##structure-direct-instance-of? _stx6207_ 'gx#syntax-quote::t)
            _stx6207_
            (if (##structure-direct-instance-of? _stx6207_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx6207_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx6190_)
        (if (##structure-direct-instance-of? _stx6190_ 'gx#syntax-wrap::t)
            (let _lp6192_ ((_e6194_ (##unchecked-structure-ref
                                     _stx6190_
                                     '1
                                     gx#AST::t
                                     '#f))
                           (_marks6195_
                            (cons (##unchecked-structure-ref
                                   _stx6190_
                                   '3
                                   gx#syntax-wrap::t
                                   '#f)
                                  '())))
              (if (##structure? _e6194_)
                  (let ((_$e6197_ (##type-id (##structure-type _e6194_))))
                    (if (eq? 'gx#syntax-wrap::t _$e6197_)
                        (_lp6192_
                         (##unchecked-structure-ref _e6194_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e6194_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks6195_))
                        (if (or (eq? 'gx#syntax-quote::t _$e6197_)
                                (eq? 'gx#identifier-wrap::t _$e6197_))
                            (##unchecked-structure-ref
                             _e6194_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e6197_)
                                (_lp6192_
                                 (##unchecked-structure-ref
                                  _e6194_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks6195_)
                                _e6194_))))
                  (if (null? _marks6195_)
                      _e6194_
                      (if (pair? _e6194_)
                          (cons (gx#stx-wrap (car _e6194_) _marks6195_)
                                (gx#stx-wrap (cdr _e6194_) _marks6195_))
                          (if (vector? _e6194_)
                              (vector-map
                               (lambda (_g62026204_)
                                 (gx#stx-wrap _g62026204_ _marks6195_))
                               _e6194_)
                              (if (box? _e6194_)
                                  (box (gx#stx-wrap
                                        (unbox _e6194_)
                                        _marks6195_))
                                  _e6194_))))))
            (if (##structure-instance-of? _stx6190_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6190_ '1 gx#AST::t '#f)
                _stx6190_))))
    (define gx#syntax->datum
      (lambda (_stx6188_)
        (if (##structure-instance-of? _stx6188_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx6188_ '1 gx#AST::t '#f))
            (if (pair? _stx6188_)
                (cons (gx#syntax->datum (car _stx6188_))
                      (gx#syntax->datum (cdr _stx6188_)))
                (if (vector? _stx6188_)
                    (vector-map gx#syntax->datum _stx6188_)
                    (if (box? _stx6188_)
                        (box (gx#syntax->datum (unbox _stx6188_)))
                        _stx6188_))))))
    (define gx#datum->syntax__%
      (lambda (_stx6131_ _datum6132_ _src6133_ _quote?6134_)
        (letrec ((_wrap-datum6136_
                  (lambda (_e6160_ _marks6161_)
                    (_wrap-inner6138_
                     _e6160_
                     (lambda (_g61626164_)
                       (##structure
                        gx#identifier-wrap::t
                        _g61626164_
                        _src6133_
                        _marks6161_)))))
                 (_wrap-quote6137_
                  (lambda (_e6152_ _ctx6153_ _marks6154_)
                    (_wrap-inner6138_
                     _e6152_
                     (lambda (_g61556157_)
                       (##structure
                        gx#syntax-quote::t
                        _g61556157_
                        _src6133_
                        _ctx6153_
                        _marks6154_)))))
                 (_wrap-inner6138_
                  (lambda (_e6145_ _wrap-e6146_)
                    (let _recur6148_ ((_e6150_ _e6145_))
                      (if (symbol? _e6150_)
                          (_wrap-e6146_ _e6150_)
                          (if (pair? _e6150_)
                              (cons (_recur6148_ (car _e6150_))
                                    (_recur6148_ (cdr _e6150_)))
                              (if (vector? _e6150_)
                                  (vector-map _recur6148_ _e6150_)
                                  (if (box? _e6150_)
                                      (box (_recur6148_ (unbox _e6150_)))
                                      _e6150_)))))))
                 (_wrap-outer6139_
                  (lambda (_e6143_)
                    (if (##structure-instance-of? _e6143_ 'gerbil#AST::t)
                        _e6143_
                        (##structure gx#AST::t _e6143_ _src6133_)))))
          (if (##structure-instance-of? _datum6132_ 'gerbil#AST::t)
              _datum6132_
              (if (not _stx6131_)
                  (##structure gx#AST::t _datum6132_ _src6133_)
                  (if (gx#identifier? _stx6131_)
                      (let ((_stx6141_ (gx#stx-unwrap__0 _stx6131_)))
                        (_wrap-outer6139_
                         (if (##structure-direct-instance-of?
                              _stx6141_
                              'gx#syntax-quote::t)
                             (if _quote?6134_
                                 (_wrap-quote6137_
                                  _datum6132_
                                  (##unchecked-structure-ref
                                   _stx6141_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx6141_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum6136_
                                  _datum6132_
                                  (##unchecked-structure-ref
                                   _stx6141_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum6136_
                              _datum6132_
                              (##unchecked-structure-ref
                               _stx6141_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx6131_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx6170_ _datum6171_)
        (let* ((_src6173_ '#f) (_quote?6175_ '#t))
          (gx#datum->syntax__% _stx6170_ _datum6171_ _src6173_ _quote?6175_))))
    (define gx#datum->syntax__1
      (lambda (_stx6177_ _datum6178_ _src6179_)
        (let ((_quote?6181_ '#t))
          (gx#datum->syntax__% _stx6177_ _datum6178_ _src6179_ _quote?6181_))))
    (define gx#datum->syntax
      (lambda _g6299_
        (let ((_g6298_ (##length _g6299_)))
          (cond ((##fx= _g6298_ 2) (apply gx#datum->syntax__0 _g6299_))
                ((##fx= _g6298_ 3) (apply gx#datum->syntax__1 _g6299_))
                ((##fx= _g6298_ 4) (apply gx#datum->syntax__% _g6299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g6299_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx6107_ _marks6108_)
        (let _lp6110_ ((_e6112_ _stx6107_)
                       (_marks6113_ _marks6108_)
                       (_src6114_ (gx#stx-source _stx6107_)))
          (if (##structure-direct-instance-of? _e6112_ 'gx#syntax-wrap::t)
              (_lp6110_
               (##unchecked-structure-ref _e6112_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e6112_ '3 gx#syntax-wrap::t '#f)
                _marks6113_)
               (##unchecked-structure-ref _e6112_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e6112_
                   'gx#identifier-wrap::t)
                  (if (null? _marks6113_)
                      _e6112_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e6112_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e6112_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e6112_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6113_)))
                  (if (##structure-direct-instance-of?
                       _e6112_
                       'gx#syntax-quote::t)
                      _e6112_
                      (if (##structure-instance-of? _e6112_ 'gerbil#AST::t)
                          (_lp6110_
                           (##unchecked-structure-ref _e6112_ '1 gx#AST::t '#f)
                           _marks6113_
                           (##unchecked-structure-ref
                            _e6112_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e6112_)
                              (##structure
                               gx#identifier-wrap::t
                               _e6112_
                               _src6114_
                               (reverse _marks6113_))
                              (if (null? _marks6113_)
                                  _e6112_
                                  (if (pair? _e6112_)
                                      (cons (gx#stx-wrap
                                             (car _e6112_)
                                             _marks6113_)
                                            (gx#stx-wrap
                                             (cdr _e6112_)
                                             _marks6113_))
                                      (if (vector? _e6112_)
                                          (vector-map
                                           (lambda (_g61156117_)
                                             (gx#stx-wrap
                                              _g61156117_
                                              _marks6113_))
                                           _e6112_)
                                          (if (box? _e6112_)
                                              (box (gx#stx-wrap
                                                    (unbox _e6112_)
                                                    _marks6113_))
                                              _e6112_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx6123_)
        (let ((_marks6125_ '())) (gx#stx-unwrap__% _stx6123_ _marks6125_))))
    (define gx#stx-unwrap
      (lambda _g6301_
        (let ((_g6300_ (##length _g6301_)))
          (cond ((##fx= _g6300_ 1) (apply gx#stx-unwrap__0 _g6301_))
                ((##fx= _g6300_ 2) (apply gx#stx-unwrap__% _g6301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g6301_))))))
    (define gx#stx-wrap
      (lambda (_stx6100_ _marks6101_)
        (foldl1 (lambda (_mark6103_ _stx6104_)
                  (gx#stx-apply-mark _stx6104_ _mark6103_))
                _stx6100_
                _marks6101_)))
    (define gx#stx-rewrap
      (lambda (_stx6094_ _marks6095_)
        (foldr1 (lambda (_mark6097_ _stx6098_)
                  (gx#stx-apply-mark _stx6098_ _mark6097_))
                _stx6094_
                _marks6095_)))
    (define gx#stx-apply-mark
      (lambda (_stx6091_ _mark6092_)
        (if (##structure-direct-instance-of? _stx6091_ 'gx#syntax-quote::t)
            _stx6091_
            (if (and (##structure-direct-instance-of?
                      _stx6091_
                      'gx#syntax-wrap::t)
                     (eq? _mark6092_
                          (##unchecked-structure-ref
                           _stx6091_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx6091_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx6091_
                 (gx#stx-source _stx6091_)
                 _mark6092_)))))
    (define gx#apply-mark
      (lambda (_mark6055_ _marks6056_)
        (let* ((_marks60576065_ _marks6056_)
               (_else60596073_ (lambda () (cons _mark6055_ _marks6056_)))
               (_K60616079_
                (lambda (_rest6076_ _hd6077_)
                  (if (eq? _mark6055_ _hd6077_)
                      _rest6076_
                      (cons _mark6055_ _marks6056_)))))
          (if (##pair? _marks60576065_)
              (let ((_hd60626082_ (##car _marks60576065_))
                    (_tl60636084_ (##cdr _marks60576065_)))
                (let* ((_hd6087_ _hd60626082_) (_rest6089_ _tl60636084_))
                  (_K60616079_ _rest6089_ _hd6087_)))
              (_else60596073_)))))
    (define gx#stx-e
      (lambda (_stx6053_)
        (if (##structure-direct-instance-of? _stx6053_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx6053_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx6053_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6053_ '1 gx#AST::t '#f)
                _stx6053_))))
    (define gx#stx-source
      (lambda (_stx6051_)
        (if (##structure-instance-of? _stx6051_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx6051_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx6045_ _src6046_)
        (if (or (##structure-instance-of? _stx6045_ 'gerbil#AST::t)
                (not _src6046_))
            _stx6045_
            (##structure gx#AST::t _stx6045_ _src6046_))))
    (define gx#stx-datum?
      (lambda (_stx6043_) (gx#self-quoting? (gx#stx-e _stx6043_))))
    (define gx#self-quoting?
      (lambda (_x6026_)
        (let ((_$e6028_ (immediate? _x6026_)))
          (if _$e6028_
              _$e6028_
              (let ((_$e6031_ (number? _x6026_)))
                (if _$e6031_
                    _$e6031_
                    (let ((_$e6034_ (keyword? _x6026_)))
                      (if _$e6034_
                          _$e6034_
                          (let ((_$e6037_ (string? _x6026_)))
                            (if _$e6037_
                                _$e6037_
                                (let ((_$e6040_ (vector? _x6026_)))
                                  (if _$e6040_
                                      _$e6040_
                                      (u8vector? _x6026_)))))))))))))
    (define gx#stx-boolean? (lambda (_e6024_) (boolean? (gx#stx-e _e6024_))))
    (define gx#stx-keyword? (lambda (_e6022_) (keyword? (gx#stx-e _e6022_))))
    (define gx#stx-char? (lambda (_e6020_) (char? (gx#stx-e _e6020_))))
    (define gx#stx-number? (lambda (_e6018_) (number? (gx#stx-e _e6018_))))
    (define gx#stx-fixnum? (lambda (_e6016_) (fixnum? (gx#stx-e _e6016_))))
    (define gx#stx-string? (lambda (_e6014_) (string? (gx#stx-e _e6014_))))
    (define gx#stx-null? (lambda (_e6012_) (null? (gx#stx-e _e6012_))))
    (define gx#stx-pair? (lambda (_e6010_) (pair? (gx#stx-e _e6010_))))
    (define gx#stx-list?
      (lambda (_e5972_)
        (let* ((_g59735982_ (gx#stx-e _e5972_))
               (_E59765986_
                (lambda () (error '"No clause matching" _g59735982_))))
          (let ((_K59786002_ (lambda (_rest6000_) (gx#stx-list? _rest6000_)))
                (_K59775992_ (lambda (_tail5990_) (null? _tail5990_))))
            (if (##pair? _g59735982_)
                (let* ((_tl59806005_ (##cdr _g59735982_))
                       (_rest6008_ _tl59806005_))
                  (gx#stx-list? _rest6008_))
                (let ((_tail5995_ _g59735982_)) (null? _tail5995_)))))))
    (define gx#stx-pair/null?
      (lambda (_e5965_)
        (let* ((_e5967_ (gx#stx-e _e5965_)) (_$e5969_ (pair? _e5967_)))
          (if _$e5969_ _$e5969_ (null? _e5967_)))))
    (define gx#stx-vector? (lambda (_e5963_) (vector? (gx#stx-e _e5963_))))
    (define gx#stx-box? (lambda (_e5961_) (box? (gx#stx-e _e5961_))))
    (define gx#stx-eq?
      (lambda (_x5958_ _y5959_) (eq? (gx#stx-e _x5958_) (gx#stx-e _y5959_))))
    (define gx#stx-eqv?
      (lambda (_x5955_ _y5956_) (eqv? (gx#stx-e _x5955_) (gx#stx-e _y5956_))))
    (define gx#stx-equal?
      (lambda (_x5952_ _y5953_)
        (equal? (gx#stx-e _x5952_) (gx#stx-e _y5953_))))
    (define gx#stx-false? (lambda (_x5950_) (not (gx#stx-e _x5950_))))
    (define gx#stx-identifier
      (lambda (_template5947_ . _args5948_)
        (gx#datum->syntax__1
         _template5947_
         (apply make-symbol (map gx#stx-e _args5948_))
         (gx#stx-source _template5947_))))
    (define gx#stx-identifier-marks
      (lambda (_stx5945_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx5945_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx5943_)
        (if (##structure-direct-instance-of? _stx5943_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx5943_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of? _stx5943_ 'gx#syntax-quote::t)
                (##unchecked-structure-ref _stx5943_ '4 gx#syntax-quote::t '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx5943_)))))
    (define gx#stx-identifier-context
      (lambda (_stx5939_)
        (let ((_stx5941_ (gx#stx-unwrap__0 _stx5939_)))
          (if (gx#identifier-quote? _stx5941_)
              (##unchecked-structure-ref _stx5941_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx5894_)
        (let* ((_g58955905_ (gx#stx-e _stx5894_))
               (_else58985913_ (lambda () '#f)))
          (let ((_K59015927_
                 (lambda (_rest5924_ _hd5925_)
                   (if (gx#identifier? _hd5925_)
                       (gx#identifier-list? _rest5924_)
                       '#f)))
                (_K59005918_ (lambda () '#t)))
            (let ((_try-match58975921_
                   (lambda ()
                     (if (##null? _g58955905_)
                         (_K59005918_)
                         (_else58985913_)))))
              (if (##pair? _g58955905_)
                  (let ((_tl59035932_ (##cdr _g58955905_))
                        (_hd59025930_ (##car _g58955905_)))
                    (let ((_hd5935_ _hd59025930_) (_rest5937_ _tl59035932_))
                      (_K59015927_ _rest5937_ _hd5935_)))
                  (_try-match58975921_)))))))
    (define gx#genident__%
      (lambda (_e5871_ _src5872_)
        (gx#stx-wrap-source
         (gensym (let ((_e5874_ (gx#stx-e _e5871_)))
                   (if (interned-symbol? _e5874_) _e5874_ 'g)))
         (let ((_$e5876_ (gx#stx-source _e5871_)))
           (if _$e5876_ _$e5876_ _src5872_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e5883_ 'g) (_src5885_ '#f))
          (gx#genident__% _e5883_ _src5885_))))
    (define gx#genident__1
      (lambda (_e5887_)
        (let ((_src5889_ '#f)) (gx#genident__% _e5887_ _src5889_))))
    (define gx#genident
      (lambda _g6303_
        (let ((_g6302_ (##length _g6303_)))
          (cond ((##fx= _g6302_ 0) (apply gx#genident__0 _g6303_))
                ((##fx= _g6302_ 1) (apply gx#genident__1 _g6303_))
                ((##fx= _g6302_ 2) (apply gx#genident__% _g6303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g6303_))))))
    (define gx#gentemps
      (lambda (_stx-lst5868_) (gx#stx-map1 gx#genident _stx-lst5868_)))
    (define gx#syntax->list
      (lambda (_stx5866_) (gx#stx-map1 values _stx5866_)))
    (define gx#stx-car
      (lambda (_stx5863_) (declare (safe)) (car (gx#syntax-e _stx5863_))))
    (define gx#stx-cdr
      (lambda (_stx5860_) (declare (safe)) (cdr (gx#syntax-e _stx5860_))))
    (define gx#stx-length
      (lambda (_stx5825_)
        (let _lp5827_ ((_rest5829_ _stx5825_) (_n5830_ '0))
          (let* ((_g58315839_ (gx#stx-e _rest5829_))
                 (_else58335847_ (lambda () _n5830_))
                 (_K58355852_
                  (lambda (_rest5850_)
                    (_lp5827_ _rest5850_ (fx+ _n5830_ '1)))))
            (if (##pair? _g58315839_)
                (let* ((_tl58375855_ (##cdr _g58315839_))
                       (_rest5858_ _tl58375855_))
                  (_K58355852_ _rest5858_))
                (_else58335847_))))))
    (define gx#stx-for-each
      (lambda _g6305_
        (let ((_g6304_ (##length _g6305_)))
          (cond ((##fx= _g6304_ 2) (apply gx#stx-for-each1 _g6305_))
                ((##fx= _g6304_ 3) (apply gx#stx-for-each2 _g6305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g6305_))))))
    (define gx#stx-for-each1
      (lambda (_f5768_ _stx5769_)
        (if (procedure? _f5768_) '#!void (error '"expected procedure" _f5768_))
        (let _lp5771_ ((_rest5773_ _stx5769_))
          (let* ((_g57745784_ (gx#syntax-e _rest5773_))
                 (_else57775792_ (lambda () (_f5768_ _rest5773_))))
            (let ((_K57805806_
                   (lambda (_rest5803_ _hd5804_)
                     (_f5768_ _hd5804_)
                     (_lp5771_ _rest5803_)))
                  (_K57795797_ (lambda () '#!void)))
              (let ((_try-match57765800_
                     (lambda ()
                       (if (##null? _g57745784_)
                           (_K57795797_)
                           (_else57775792_)))))
                (if (##pair? _g57745784_)
                    (let ((_tl57825811_ (##cdr _g57745784_))
                          (_hd57815809_ (##car _g57745784_)))
                      (let ((_hd5814_ _hd57815809_) (_rest5816_ _tl57825811_))
                        (_K57805806_ _rest5816_ _hd5814_)))
                    (_try-match57765800_))))))))
    (define gx#stx-for-each2
      (lambda (_f5673_ _xstx5674_ _ystx5675_)
        (if (procedure? _f5673_) '#!void (error '"expected procedure" _f5673_))
        (let _lp5677_ ((_xrest5679_ _xstx5674_) (_yrest5680_ _ystx5675_))
          (let* ((_g56815691_ (gx#syntax-e _xrest5679_))
                 (_else56845699_ (lambda () '#!void)))
            (let ((_K56875756_
                   (lambda (_xrest5725_ _xhd5726_)
                     (let* ((_g57275734_ (gx#syntax-e _yrest5680_))
                            (_E57295738_
                             (lambda ()
                               (error '"No clause matching" _g57275734_)))
                            (_K57305744_
                             (lambda (_yrest5741_ _yhd5742_)
                               (_f5673_ _xhd5726_ _yhd5742_)
                               (_lp5677_ _xrest5725_ _yrest5741_))))
                       (if (##pair? _g57275734_)
                           (let ((_hd57315747_ (##car _g57275734_))
                                 (_tl57325749_ (##cdr _g57275734_)))
                             (let* ((_yhd5752_ _hd57315747_)
                                    (_yrest5754_ _tl57325749_))
                               (_K57305744_ _yrest5754_ _yhd5752_)))
                           (_E57295738_)))))
                  (_K56865719_
                   (lambda ()
                     (let* ((_yrest57035708_ _yrest5680_)
                            (_E57055712_
                             (lambda ()
                               (error '"No clause matching" _yrest57035708_)))
                            (_K57065716_
                             (lambda () (_f5673_ _xrest5679_ _yrest5680_))))
                       (if (not (gx#stx-null? _yrest57035708_))
                           (_K57065716_)
                           (_E57055712_))))))
              (let ((_try-match56835722_
                     (lambda ()
                       (if (not (null? _g56815691_))
                           (_K56865719_)
                           (_else56845699_)))))
                (if (##pair? _g56815691_)
                    (let ((_tl56895761_ (##cdr _g56815691_))
                          (_hd56885759_ (##car _g56815691_)))
                      (let ((_xhd5764_ _hd56885759_)
                            (_xrest5766_ _tl56895761_))
                        (_K56875756_ _xrest5766_ _xhd5764_)))
                    (_try-match56835722_))))))))
    (define gx#stx-map
      (lambda _g6307_
        (let ((_g6306_ (##length _g6307_)))
          (cond ((##fx= _g6306_ 2) (apply gx#stx-map1 _g6307_))
                ((##fx= _g6306_ 3) (apply gx#stx-map2 _g6307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g6307_))))))
    (define gx#stx-map1
      (lambda (_f5616_ _stx5617_)
        (if (procedure? _f5616_) '#!void (error '"expected procedure" _f5616_))
        (let _recur5619_ ((_rest5621_ _stx5617_))
          (let* ((_g56225632_ (gx#syntax-e _rest5621_))
                 (_else56255640_ (lambda () (_f5616_ _rest5621_))))
            (let ((_K56285654_
                   (lambda (_rest5651_ _hd5652_)
                     (cons (_f5616_ _hd5652_) (_recur5619_ _rest5651_))))
                  (_K56275645_ (lambda () '())))
              (let ((_try-match56245648_
                     (lambda ()
                       (if (##null? _g56225632_)
                           (_K56275645_)
                           (_else56255640_)))))
                (if (##pair? _g56225632_)
                    (let ((_tl56305659_ (##cdr _g56225632_))
                          (_hd56295657_ (##car _g56225632_)))
                      (let ((_hd5662_ _hd56295657_) (_rest5664_ _tl56305659_))
                        (_K56285654_ _rest5664_ _hd5662_)))
                    (_try-match56245648_))))))))
    (define gx#stx-map2
      (lambda (_f5521_ _xstx5522_ _ystx5523_)
        (if (procedure? _f5521_) '#!void (error '"expected procedure" _f5521_))
        (let _recur5525_ ((_xrest5527_ _xstx5522_) (_yrest5528_ _ystx5523_))
          (let* ((_g55295539_ (gx#syntax-e _xrest5527_))
                 (_else55325547_ (lambda () '())))
            (let ((_K55355604_
                   (lambda (_xrest5573_ _xhd5574_)
                     (let* ((_g55755582_ (gx#syntax-e _yrest5528_))
                            (_E55775586_
                             (lambda ()
                               (error '"No clause matching" _g55755582_)))
                            (_K55785592_
                             (lambda (_yrest5589_ _yhd5590_)
                               (cons (_f5521_ _xhd5574_ _yhd5590_)
                                     (_recur5525_ _xrest5573_ _yrest5589_)))))
                       (if (##pair? _g55755582_)
                           (let ((_hd55795595_ (##car _g55755582_))
                                 (_tl55805597_ (##cdr _g55755582_)))
                             (let* ((_yhd5600_ _hd55795595_)
                                    (_yrest5602_ _tl55805597_))
                               (_K55785592_ _yrest5602_ _yhd5600_)))
                           (_E55775586_)))))
                  (_K55345567_
                   (lambda ()
                     (let* ((_yrest55515556_ _yrest5528_)
                            (_E55535560_
                             (lambda ()
                               (error '"No clause matching" _yrest55515556_)))
                            (_K55545564_
                             (lambda () (_f5521_ _xrest5527_ _yrest5528_))))
                       (if (not (gx#stx-null? _yrest55515556_))
                           (_K55545564_)
                           (_E55535560_))))))
              (let ((_try-match55315570_
                     (lambda ()
                       (if (not (null? _g55295539_))
                           (_K55345567_)
                           (_else55325547_)))))
                (if (##pair? _g55295539_)
                    (let ((_tl55375609_ (##cdr _g55295539_))
                          (_hd55365607_ (##car _g55295539_)))
                      (let ((_xhd5612_ _hd55365607_)
                            (_xrest5614_ _tl55375609_))
                        (_K55355604_ _xrest5614_ _xhd5612_)))
                    (_try-match55315570_))))))))
    (define gx#stx-andmap
      (lambda (_f5471_ _stx5472_)
        (if (procedure? _f5471_) '#!void (error '"expected procedure" _f5471_))
        (let _lp5474_ ((_rest5476_ _stx5472_))
          (let* ((_g54775487_ (gx#syntax-e _rest5476_))
                 (_else54805495_ (lambda () (_f5471_ _rest5476_))))
            (let ((_K54835509_
                   (lambda (_rest5506_ _hd5507_)
                     (if (_f5471_ _hd5507_) (_lp5474_ _rest5506_) '#f)))
                  (_K54825500_ (lambda () '#t)))
              (let ((_try-match54795503_
                     (lambda ()
                       (if (##null? _g54775487_)
                           (_K54825500_)
                           (_else54805495_)))))
                (if (##pair? _g54775487_)
                    (let ((_tl54855514_ (##cdr _g54775487_))
                          (_hd54845512_ (##car _g54775487_)))
                      (let ((_hd5517_ _hd54845512_) (_rest5519_ _tl54855514_))
                        (_K54835509_ _rest5519_ _hd5517_)))
                    (_try-match54795503_))))))))
    (define gx#stx-ormap
      (lambda (_f5418_ _stx5419_)
        (if (procedure? _f5418_) '#!void (error '"expected procedure" _f5418_))
        (let _lp5421_ ((_rest5423_ _stx5419_))
          (let* ((_g54245434_ (gx#syntax-e _rest5423_))
                 (_else54275442_ (lambda () (_f5418_ _rest5423_))))
            (let ((_K54305459_
                   (lambda (_rest5453_ _hd5454_)
                     (let ((_$e5456_ (_f5418_ _hd5454_)))
                       (if _$e5456_ _$e5456_ (_lp5421_ _rest5453_)))))
                  (_K54295447_ (lambda () '#f)))
              (let ((_try-match54265450_
                     (lambda ()
                       (if (##null? _g54245434_)
                           (_K54295447_)
                           (_else54275442_)))))
                (if (##pair? _g54245434_)
                    (let ((_tl54325464_ (##cdr _g54245434_))
                          (_hd54315462_ (##car _g54245434_)))
                      (let ((_hd5467_ _hd54315462_) (_rest5469_ _tl54325464_))
                        (_K54305459_ _rest5469_ _hd5467_)))
                    (_try-match54265450_))))))))
    (define gx#stx-foldl
      (lambda (_f5366_ _iv5367_ _stx5368_)
        (if (procedure? _f5366_) '#!void (error '"expected procedure" _f5366_))
        (let _lp5370_ ((_r5372_ _iv5367_) (_rest5373_ _stx5368_))
          (let* ((_g53745384_ (gx#syntax-e _rest5373_))
                 (_else53775392_ (lambda () (_f5366_ _rest5373_ _r5372_))))
            (let ((_K53805406_
                   (lambda (_rest5403_ _hd5404_)
                     (_lp5370_ (_f5366_ _hd5404_ _r5372_) _rest5403_)))
                  (_K53795397_ (lambda () _r5372_)))
              (let ((_try-match53765400_
                     (lambda ()
                       (if (##null? _g53745384_)
                           (_K53795397_)
                           (_else53775392_)))))
                (if (##pair? _g53745384_)
                    (let ((_tl53825411_ (##cdr _g53745384_))
                          (_hd53815409_ (##car _g53745384_)))
                      (let ((_hd5414_ _hd53815409_) (_rest5416_ _tl53825411_))
                        (_K53805406_ _rest5416_ _hd5414_)))
                    (_try-match53765400_))))))))
    (define gx#stx-foldr
      (lambda (_f5315_ _iv5316_ _stx5317_)
        (if (procedure? _f5315_) '#!void (error '"expected procedure" _f5315_))
        (let _recur5319_ ((_rest5321_ _stx5317_))
          (let* ((_g53225332_ (gx#syntax-e _rest5321_))
                 (_else53255340_ (lambda () (_f5315_ _rest5321_ _iv5316_))))
            (let ((_K53285354_
                   (lambda (_rest5351_ _hd5352_)
                     (_f5315_ _hd5352_ (_recur5319_ _rest5351_))))
                  (_K53275345_ (lambda () _iv5316_)))
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
    (define gx#stx-reverse
      (lambda (_stx5313_) (gx#stx-foldl cons '() _stx5313_)))
    (define gx#stx-last
      (lambda (_stx5274_)
        (let _lp5276_ ((_rest5278_ _stx5274_))
          (let* ((_g52795287_ (gx#syntax-e _rest5278_))
                 (_else52815295_ (lambda () _rest5278_))
                 (_K52835301_
                  (lambda (_rest5298_ _hd5299_)
                    (if (gx#stx-null? _rest5298_)
                        _hd5299_
                        (_lp5276_ _rest5298_)))))
            (if (##pair? _g52795287_)
                (let ((_hd52845304_ (##car _g52795287_))
                      (_tl52855306_ (##cdr _g52795287_)))
                  (let* ((_hd5309_ _hd52845304_) (_rest5311_ _tl52855306_))
                    (_K52835301_ _rest5311_ _hd5309_)))
                (_else52815295_))))))
    (define gx#stx-last-pair
      (lambda (_stx5245_)
        (let _lp5247_ ((_hd5249_ _stx5245_))
          (let* ((_g52505257_ (gx#syntax-e _hd5249_))
                 (_E52525261_
                  (lambda () (error '"No clause matching" _g52505257_)))
                 (_K52535266_
                  (lambda (_rest5264_)
                    (if (gx#stx-pair? _rest5264_)
                        (_lp5247_ _rest5264_)
                        _hd5249_))))
            (if (##pair? _g52505257_)
                (let* ((_tl52555269_ (##cdr _g52505257_))
                       (_rest5272_ _tl52555269_))
                  (_K52535266_ _rest5272_))
                (_E52525261_))))))
    (define gx#stx-list-tail
      (lambda (_stx5214_ _k5215_)
        (let _lp5217_ ((_rest5219_ _stx5214_) (_k5220_ _k5215_))
          (if (fxpositive? _k5220_)
              (let* ((_g52215228_ (gx#syntax-e _rest5219_))
                     (_E52235232_
                      (lambda () (error '"No clause matching" _g52215228_)))
                     (_K52245237_
                      (lambda (_rest5235_)
                        (_lp5217_ _rest5235_ (fx- _k5220_ '1)))))
                (if (##pair? _g52215228_)
                    (let* ((_tl52265240_ (##cdr _g52215228_))
                           (_rest5243_ _tl52265240_))
                      (_K52245237_ _rest5243_))
                    (_E52235232_)))
              _rest5219_))))
    (define gx#stx-list-ref
      (lambda (_stx5211_ _k5212_)
        (gx#stx-car (gx#stx-list-tail _stx5211_ _k5212_))))
    (define gx#stx-plist?__%
      (lambda (_stx5123_ _key?5124_)
        (if (procedure? _key?5124_)
            '#!void
            (error '"expected procedure" _key?5124_))
        (let _lp5126_ ((_rest5128_ _stx5123_))
          (let* ((_g51295139_ (gx#stx-e _rest5128_))
                 (_else51325147_ (lambda () '#f)))
            (let ((_K51355189_
                   (lambda (_rest5158_ _hd5159_)
                     (if (_key?5124_ _hd5159_)
                         (let* ((_g51605168_ (gx#stx-e _rest5158_))
                                (_else51625176_ (lambda () '#f))
                                (_K51645181_
                                 (lambda (_rest5179_) (_lp5126_ _rest5179_))))
                           (if (##pair? _g51605168_)
                               (let* ((_tl51665184_ (##cdr _g51605168_))
                                      (_rest5187_ _tl51665184_))
                                 (_lp5126_ _rest5187_))
                               (_else51625176_)))
                         '#f)))
                  (_K51345152_ (lambda () '#t)))
              (let ((_try-match51315155_
                     (lambda ()
                       (if (##null? _g51295139_)
                           (_K51345152_)
                           (_else51325147_)))))
                (if (##pair? _g51295139_)
                    (let ((_tl51375194_ (##cdr _g51295139_))
                          (_hd51365192_ (##car _g51295139_)))
                      (let ((_hd5197_ _hd51365192_) (_rest5199_ _tl51375194_))
                        (_K51355189_ _rest5199_ _hd5197_)))
                    (_try-match51315155_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx5204_)
        (let ((_key?5206_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx5204_ _key?5206_))))
    (define gx#stx-plist?
      (lambda _g6309_
        (let ((_g6308_ (##length _g6309_)))
          (cond ((##fx= _g6308_ 1) (apply gx#stx-plist?__0 _g6309_))
                ((##fx= _g6308_ 2) (apply gx#stx-plist?__% _g6309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g6309_))))))
    (define gx#stx-getq__%
      (lambda (_key5041_ _stx5042_ _key=?5043_)
        (if (procedure? _key=?5043_)
            '#!void
            (error '"expected procedure" _key=?5043_))
        (let _lp5045_ ((_rest5047_ _stx5042_))
          (let* ((_g50485056_ (gx#syntax-e _rest5047_))
                 (_else50505064_ (lambda () '#f))
                 (_K50525098_
                  (lambda (_rest5067_ _hd5068_)
                    (let* ((_g50695076_ (gx#syntax-e _rest5067_))
                           (_E50715080_
                            (lambda ()
                              (error '"No clause matching" _g50695076_)))
                           (_K50725086_
                            (lambda (_rest5083_ _val5084_)
                              (if (_key=?5043_ _hd5068_ _key5041_)
                                  _val5084_
                                  (_lp5045_ _rest5083_)))))
                      (if (##pair? _g50695076_)
                          (let ((_hd50735089_ (##car _g50695076_))
                                (_tl50745091_ (##cdr _g50695076_)))
                            (let* ((_val5094_ _hd50735089_)
                                   (_rest5096_ _tl50745091_))
                              (_K50725086_ _rest5096_ _val5094_)))
                          (_E50715080_))))))
            (if (##pair? _g50485056_)
                (let ((_hd50535101_ (##car _g50485056_))
                      (_tl50545103_ (##cdr _g50485056_)))
                  (let* ((_hd5106_ _hd50535101_) (_rest5108_ _tl50545103_))
                    (_K50525098_ _rest5108_ _hd5106_)))
                (_else50505064_))))))
    (define gx#stx-getq__0
      (lambda (_key5113_ _stx5114_)
        (let ((_key=?5116_ gx#stx-eq?))
          (gx#stx-getq__% _key5113_ _stx5114_ _key=?5116_))))
    (define gx#stx-getq
      (lambda _g6311_
        (let ((_g6310_ (##length _g6311_)))
          (cond ((##fx= _g6310_ 2) (apply gx#stx-getq__0 _g6311_))
                ((##fx= _g6310_ 3) (apply gx#stx-getq__% _g6311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g6311_))))))))
