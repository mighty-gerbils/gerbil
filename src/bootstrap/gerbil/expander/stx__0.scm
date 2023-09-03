(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1693679893)
  (begin
    (declare (not safe))
    (define gx#&AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define gx#&AST-source (make-struct-field-unchecked-accessor AST::t '1))
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
      (lambda _$args6213_
        (apply make-struct-instance gx#identifier-wrap::t _$args6213_)))
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
       AST::t
       '1
       'syntax
       '((final: . #t))
       '#f
       '(mark)))
    (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args6210_
        (apply make-struct-instance gx#syntax-wrap::t _$args6210_)))
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
       AST::t
       '2
       'syntax
       '((final: . #t))
       '#f
       '(context marks)))
    (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args6207_
        (apply make-struct-instance gx#syntax-quote::t _$args6207_)))
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
    (define gx#identifier? (lambda (_stx6205_) (symbol? (gx#stx-e _stx6205_))))
    (define gx#identifier-quote?
      (lambda (_stx6203_)
        (if (##structure-direct-instance-of? _stx6203_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx6203_ '1 AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx6201_)
        (if (##structure-direct-instance-of? _stx6201_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx6201_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx6201_ '1 AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx6199_)
        (if (##structure-direct-instance-of? _stx6199_ 'gx#syntax-quote::t)
            _stx6199_
            (if (##structure-direct-instance-of? _stx6199_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx6199_ '1 AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx6182_)
        (if (##structure-direct-instance-of? _stx6182_ 'gx#syntax-wrap::t)
            (let _lp6184_ ((_e6186_ (##unchecked-structure-ref
                                     _stx6182_
                                     '1
                                     AST::t
                                     '#f))
                           (_marks6187_
                            (cons (##unchecked-structure-ref
                                   _stx6182_
                                   '3
                                   gx#syntax-wrap::t
                                   '#f)
                                  '())))
              (if (##structure? _e6186_)
                  (let ((_$e6189_ (##type-id (##structure-type _e6186_))))
                    (if (eq? 'gx#syntax-wrap::t _$e6189_)
                        (_lp6184_
                         (##unchecked-structure-ref _e6186_ '1 AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e6186_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks6187_))
                        (if (or (eq? 'gx#syntax-quote::t _$e6189_)
                                (eq? 'gx#identifier-wrap::t _$e6189_))
                            (##unchecked-structure-ref _e6186_ '1 AST::t '#f)
                            (if (eq? 'gerbil#AST::t _$e6189_)
                                (_lp6184_
                                 (##unchecked-structure-ref
                                  _e6186_
                                  '1
                                  AST::t
                                  '#f)
                                 _marks6187_)
                                _e6186_))))
                  (if (null? _marks6187_)
                      _e6186_
                      (if (pair? _e6186_)
                          (cons (gx#stx-wrap (car _e6186_) _marks6187_)
                                (gx#stx-wrap (cdr _e6186_) _marks6187_))
                          (if (vector? _e6186_)
                              (vector-map
                               (lambda (_g61946196_)
                                 (gx#stx-wrap _g61946196_ _marks6187_))
                               _e6186_)
                              (if (box? _e6186_)
                                  (box (gx#stx-wrap
                                        (unbox _e6186_)
                                        _marks6187_))
                                  _e6186_))))))
            (if (##structure-instance-of? _stx6182_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6182_ '1 AST::t '#f)
                _stx6182_))))
    (define gx#syntax->datum
      (lambda (_stx6180_)
        (if (##structure-instance-of? _stx6180_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx6180_ '1 AST::t '#f))
            (if (pair? _stx6180_)
                (cons (gx#syntax->datum (car _stx6180_))
                      (gx#syntax->datum (cdr _stx6180_)))
                (if (vector? _stx6180_)
                    (vector-map gx#syntax->datum _stx6180_)
                    (if (box? _stx6180_)
                        (box (gx#syntax->datum (unbox _stx6180_)))
                        _stx6180_))))))
    (define gx#datum->syntax__%
      (lambda (_stx6123_ _datum6124_ _src6125_ _quote?6126_)
        (letrec ((_wrap-datum6128_
                  (lambda (_e6152_ _marks6153_)
                    (_wrap-inner6130_
                     _e6152_
                     (lambda (_g61546156_)
                       (##structure
                        gx#identifier-wrap::t
                        _g61546156_
                        _src6125_
                        _marks6153_)))))
                 (_wrap-quote6129_
                  (lambda (_e6144_ _ctx6145_ _marks6146_)
                    (_wrap-inner6130_
                     _e6144_
                     (lambda (_g61476149_)
                       (##structure
                        gx#syntax-quote::t
                        _g61476149_
                        _src6125_
                        _ctx6145_
                        _marks6146_)))))
                 (_wrap-inner6130_
                  (lambda (_e6137_ _wrap-e6138_)
                    (let _recur6140_ ((_e6142_ _e6137_))
                      (if (symbol? _e6142_)
                          (_wrap-e6138_ _e6142_)
                          (if (pair? _e6142_)
                              (cons (_recur6140_ (car _e6142_))
                                    (_recur6140_ (cdr _e6142_)))
                              (if (vector? _e6142_)
                                  (vector-map _recur6140_ _e6142_)
                                  (if (box? _e6142_)
                                      (box (_recur6140_ (unbox _e6142_)))
                                      _e6142_)))))))
                 (_wrap-outer6131_
                  (lambda (_e6135_)
                    (if (##structure-instance-of? _e6135_ 'gerbil#AST::t)
                        _e6135_
                        (##structure AST::t _e6135_ _src6125_)))))
          (if (##structure-instance-of? _datum6124_ 'gerbil#AST::t)
              _datum6124_
              (if (not _stx6123_)
                  (##structure AST::t _datum6124_ _src6125_)
                  (if (gx#identifier? _stx6123_)
                      (let ((_stx6133_ (gx#stx-unwrap__0 _stx6123_)))
                        (_wrap-outer6131_
                         (if (##structure-direct-instance-of?
                              _stx6133_
                              'gx#syntax-quote::t)
                             (if _quote?6126_
                                 (_wrap-quote6129_
                                  _datum6124_
                                  (##unchecked-structure-ref
                                   _stx6133_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx6133_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum6128_
                                  _datum6124_
                                  (##unchecked-structure-ref
                                   _stx6133_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum6128_
                              _datum6124_
                              (##unchecked-structure-ref
                               _stx6133_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx6123_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx6162_ _datum6163_)
        (let* ((_src6165_ '#f) (_quote?6167_ '#t))
          (gx#datum->syntax__% _stx6162_ _datum6163_ _src6165_ _quote?6167_))))
    (define gx#datum->syntax__1
      (lambda (_stx6169_ _datum6170_ _src6171_)
        (let ((_quote?6173_ '#t))
          (gx#datum->syntax__% _stx6169_ _datum6170_ _src6171_ _quote?6173_))))
    (define gx#datum->syntax
      (lambda _g6291_
        (let ((_g6290_ (##length _g6291_)))
          (cond ((##fx= _g6290_ 2) (apply gx#datum->syntax__0 _g6291_))
                ((##fx= _g6290_ 3) (apply gx#datum->syntax__1 _g6291_))
                ((##fx= _g6290_ 4) (apply gx#datum->syntax__% _g6291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g6291_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx6099_ _marks6100_)
        (let _lp6102_ ((_e6104_ _stx6099_)
                       (_marks6105_ _marks6100_)
                       (_src6106_ (gx#stx-source _stx6099_)))
          (if (##structure-direct-instance-of? _e6104_ 'gx#syntax-wrap::t)
              (_lp6102_
               (##unchecked-structure-ref _e6104_ '1 AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e6104_ '3 gx#syntax-wrap::t '#f)
                _marks6105_)
               (##unchecked-structure-ref _e6104_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e6104_
                   'gx#identifier-wrap::t)
                  (if (null? _marks6105_)
                      _e6104_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e6104_ '1 AST::t '#f)
                       (##unchecked-structure-ref _e6104_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e6104_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6105_)))
                  (if (##structure-direct-instance-of?
                       _e6104_
                       'gx#syntax-quote::t)
                      _e6104_
                      (if (##structure-instance-of? _e6104_ 'gerbil#AST::t)
                          (_lp6102_
                           (##unchecked-structure-ref _e6104_ '1 AST::t '#f)
                           _marks6105_
                           (##unchecked-structure-ref _e6104_ '2 AST::t '#f))
                          (if (symbol? _e6104_)
                              (##structure
                               gx#identifier-wrap::t
                               _e6104_
                               _src6106_
                               (reverse _marks6105_))
                              (if (null? _marks6105_)
                                  _e6104_
                                  (if (pair? _e6104_)
                                      (cons (gx#stx-wrap
                                             (car _e6104_)
                                             _marks6105_)
                                            (gx#stx-wrap
                                             (cdr _e6104_)
                                             _marks6105_))
                                      (if (vector? _e6104_)
                                          (vector-map
                                           (lambda (_g61076109_)
                                             (gx#stx-wrap
                                              _g61076109_
                                              _marks6105_))
                                           _e6104_)
                                          (if (box? _e6104_)
                                              (box (gx#stx-wrap
                                                    (unbox _e6104_)
                                                    _marks6105_))
                                              _e6104_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx6115_)
        (let ((_marks6117_ '())) (gx#stx-unwrap__% _stx6115_ _marks6117_))))
    (define gx#stx-unwrap
      (lambda _g6293_
        (let ((_g6292_ (##length _g6293_)))
          (cond ((##fx= _g6292_ 1) (apply gx#stx-unwrap__0 _g6293_))
                ((##fx= _g6292_ 2) (apply gx#stx-unwrap__% _g6293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g6293_))))))
    (define gx#stx-wrap
      (lambda (_stx6092_ _marks6093_)
        (foldl1 (lambda (_mark6095_ _stx6096_)
                  (gx#stx-apply-mark _stx6096_ _mark6095_))
                _stx6092_
                _marks6093_)))
    (define gx#stx-rewrap
      (lambda (_stx6086_ _marks6087_)
        (foldr1 (lambda (_mark6089_ _stx6090_)
                  (gx#stx-apply-mark _stx6090_ _mark6089_))
                _stx6086_
                _marks6087_)))
    (define gx#stx-apply-mark
      (lambda (_stx6083_ _mark6084_)
        (if (##structure-direct-instance-of? _stx6083_ 'gx#syntax-quote::t)
            _stx6083_
            (if (and (##structure-direct-instance-of?
                      _stx6083_
                      'gx#syntax-wrap::t)
                     (eq? _mark6084_
                          (##unchecked-structure-ref
                           _stx6083_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx6083_ '1 AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx6083_
                 (gx#stx-source _stx6083_)
                 _mark6084_)))))
    (define gx#apply-mark
      (lambda (_mark6047_ _marks6048_)
        (let* ((_marks60496057_ _marks6048_)
               (_else60516065_ (lambda () (cons _mark6047_ _marks6048_)))
               (_K60536071_
                (lambda (_rest6068_ _hd6069_)
                  (if (eq? _mark6047_ _hd6069_)
                      _rest6068_
                      (cons _mark6047_ _marks6048_)))))
          (if (##pair? _marks60496057_)
              (let ((_hd60546074_ (##car _marks60496057_))
                    (_tl60556076_ (##cdr _marks60496057_)))
                (let* ((_hd6079_ _hd60546074_) (_rest6081_ _tl60556076_))
                  (_K60536071_ _rest6081_ _hd6079_)))
              (_else60516065_)))))
    (define gx#stx-e
      (lambda (_stx6045_)
        (if (##structure-direct-instance-of? _stx6045_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx6045_ '1 AST::t '#f))
            (if (##structure-instance-of? _stx6045_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6045_ '1 AST::t '#f)
                _stx6045_))))
    (define gx#stx-source
      (lambda (_stx6043_)
        (if (##structure-instance-of? _stx6043_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx6043_ '2 AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx6037_ _src6038_)
        (if (or (##structure-instance-of? _stx6037_ 'gerbil#AST::t)
                (not _src6038_))
            _stx6037_
            (##structure AST::t _stx6037_ _src6038_))))
    (define gx#stx-datum?
      (lambda (_stx6035_) (gx#self-quoting? (gx#stx-e _stx6035_))))
    (define gx#self-quoting?
      (lambda (_x6018_)
        (let ((_$e6020_ (immediate? _x6018_)))
          (if _$e6020_
              _$e6020_
              (let ((_$e6023_ (number? _x6018_)))
                (if _$e6023_
                    _$e6023_
                    (let ((_$e6026_ (keyword? _x6018_)))
                      (if _$e6026_
                          _$e6026_
                          (let ((_$e6029_ (string? _x6018_)))
                            (if _$e6029_
                                _$e6029_
                                (let ((_$e6032_ (vector? _x6018_)))
                                  (if _$e6032_
                                      _$e6032_
                                      (u8vector? _x6018_)))))))))))))
    (define gx#stx-boolean? (lambda (_e6016_) (boolean? (gx#stx-e _e6016_))))
    (define gx#stx-keyword? (lambda (_e6014_) (keyword? (gx#stx-e _e6014_))))
    (define gx#stx-char? (lambda (_e6012_) (char? (gx#stx-e _e6012_))))
    (define gx#stx-number? (lambda (_e6010_) (number? (gx#stx-e _e6010_))))
    (define gx#stx-fixnum? (lambda (_e6008_) (fixnum? (gx#stx-e _e6008_))))
    (define gx#stx-string? (lambda (_e6006_) (string? (gx#stx-e _e6006_))))
    (define gx#stx-null? (lambda (_e6004_) (null? (gx#stx-e _e6004_))))
    (define gx#stx-pair? (lambda (_e6002_) (pair? (gx#stx-e _e6002_))))
    (define gx#stx-list?
      (lambda (_e5964_)
        (let* ((_g59655974_ (gx#stx-e _e5964_))
               (_E59685978_
                (lambda () (error '"No clause matching" _g59655974_))))
          (let ((_K59705994_ (lambda (_rest5992_) (gx#stx-list? _rest5992_)))
                (_K59695984_ (lambda (_tail5982_) (null? _tail5982_))))
            (if (##pair? _g59655974_)
                (let* ((_tl59725997_ (##cdr _g59655974_))
                       (_rest6000_ _tl59725997_))
                  (gx#stx-list? _rest6000_))
                (let ((_tail5987_ _g59655974_)) (null? _tail5987_)))))))
    (define gx#stx-pair/null?
      (lambda (_e5957_)
        (let* ((_e5959_ (gx#stx-e _e5957_)) (_$e5961_ (pair? _e5959_)))
          (if _$e5961_ _$e5961_ (null? _e5959_)))))
    (define gx#stx-vector? (lambda (_e5955_) (vector? (gx#stx-e _e5955_))))
    (define gx#stx-box? (lambda (_e5953_) (box? (gx#stx-e _e5953_))))
    (define gx#stx-eq?
      (lambda (_x5950_ _y5951_) (eq? (gx#stx-e _x5950_) (gx#stx-e _y5951_))))
    (define gx#stx-eqv?
      (lambda (_x5947_ _y5948_) (eqv? (gx#stx-e _x5947_) (gx#stx-e _y5948_))))
    (define gx#stx-equal?
      (lambda (_x5944_ _y5945_)
        (equal? (gx#stx-e _x5944_) (gx#stx-e _y5945_))))
    (define gx#stx-false? (lambda (_x5942_) (not (gx#stx-e _x5942_))))
    (define gx#stx-identifier
      (lambda (_template5939_ . _args5940_)
        (gx#datum->syntax__1
         _template5939_
         (apply make-symbol (map gx#stx-e _args5940_))
         (gx#stx-source _template5939_))))
    (define gx#stx-identifier-marks
      (lambda (_stx5937_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx5937_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx5935_)
        (if (##structure-direct-instance-of? _stx5935_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx5935_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of? _stx5935_ 'gx#syntax-quote::t)
                (##unchecked-structure-ref _stx5935_ '4 gx#syntax-quote::t '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx5935_)))))
    (define gx#stx-identifier-context
      (lambda (_stx5931_)
        (let ((_stx5933_ (gx#stx-unwrap__0 _stx5931_)))
          (if (gx#identifier-quote? _stx5933_)
              (##unchecked-structure-ref _stx5933_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx5886_)
        (let* ((_g58875897_ (gx#stx-e _stx5886_))
               (_else58905905_ (lambda () '#f)))
          (let ((_K58935919_
                 (lambda (_rest5916_ _hd5917_)
                   (if (gx#identifier? _hd5917_)
                       (gx#identifier-list? _rest5916_)
                       '#f)))
                (_K58925910_ (lambda () '#t)))
            (let ((_try-match58895913_
                   (lambda ()
                     (if (##null? _g58875897_)
                         (_K58925910_)
                         (_else58905905_)))))
              (if (##pair? _g58875897_)
                  (let ((_tl58955924_ (##cdr _g58875897_))
                        (_hd58945922_ (##car _g58875897_)))
                    (let ((_hd5927_ _hd58945922_) (_rest5929_ _tl58955924_))
                      (_K58935919_ _rest5929_ _hd5927_)))
                  (_try-match58895913_)))))))
    (define gx#genident__%
      (lambda (_e5863_ _src5864_)
        (gx#stx-wrap-source
         (gensym (let ((_e5866_ (gx#stx-e _e5863_)))
                   (if (interned-symbol? _e5866_) _e5866_ 'g)))
         (let ((_$e5868_ (gx#stx-source _e5863_)))
           (if _$e5868_ _$e5868_ _src5864_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e5875_ 'g) (_src5877_ '#f))
          (gx#genident__% _e5875_ _src5877_))))
    (define gx#genident__1
      (lambda (_e5879_)
        (let ((_src5881_ '#f)) (gx#genident__% _e5879_ _src5881_))))
    (define gx#genident
      (lambda _g6295_
        (let ((_g6294_ (##length _g6295_)))
          (cond ((##fx= _g6294_ 0) (apply gx#genident__0 _g6295_))
                ((##fx= _g6294_ 1) (apply gx#genident__1 _g6295_))
                ((##fx= _g6294_ 2) (apply gx#genident__% _g6295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g6295_))))))
    (define gx#gentemps
      (lambda (_stx-lst5860_) (gx#stx-map1 gx#genident _stx-lst5860_)))
    (define gx#syntax->list
      (lambda (_stx5858_) (gx#stx-map1 values _stx5858_)))
    (define gx#stx-car
      (lambda (_stx5855_) (declare (safe)) (car (gx#syntax-e _stx5855_))))
    (define gx#stx-cdr
      (lambda (_stx5852_) (declare (safe)) (cdr (gx#syntax-e _stx5852_))))
    (define gx#stx-length
      (lambda (_stx5817_)
        (let _lp5819_ ((_rest5821_ _stx5817_) (_n5822_ '0))
          (let* ((_g58235831_ (gx#stx-e _rest5821_))
                 (_else58255839_ (lambda () _n5822_))
                 (_K58275844_
                  (lambda (_rest5842_)
                    (_lp5819_ _rest5842_ (fx+ _n5822_ '1)))))
            (if (##pair? _g58235831_)
                (let* ((_tl58295847_ (##cdr _g58235831_))
                       (_rest5850_ _tl58295847_))
                  (_K58275844_ _rest5850_))
                (_else58255839_))))))
    (define gx#stx-for-each
      (lambda _g6297_
        (let ((_g6296_ (##length _g6297_)))
          (cond ((##fx= _g6296_ 2) (apply gx#stx-for-each1 _g6297_))
                ((##fx= _g6296_ 3) (apply gx#stx-for-each2 _g6297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g6297_))))))
    (define gx#stx-for-each1
      (lambda (_f5760_ _stx5761_)
        (if (procedure? _f5760_)
            '#!void
            (error '"Bad argument; expected procedure" _f5760_))
        (let _lp5763_ ((_rest5765_ _stx5761_))
          (let* ((_g57665776_ (gx#syntax-e _rest5765_))
                 (_else57695784_ (lambda () (_f5760_ _rest5765_))))
            (let ((_K57725798_
                   (lambda (_rest5795_ _hd5796_)
                     (_f5760_ _hd5796_)
                     (_lp5763_ _rest5795_)))
                  (_K57715789_ (lambda () '#!void)))
              (let ((_try-match57685792_
                     (lambda ()
                       (if (##null? _g57665776_)
                           (_K57715789_)
                           (_else57695784_)))))
                (if (##pair? _g57665776_)
                    (let ((_tl57745803_ (##cdr _g57665776_))
                          (_hd57735801_ (##car _g57665776_)))
                      (let ((_hd5806_ _hd57735801_) (_rest5808_ _tl57745803_))
                        (_K57725798_ _rest5808_ _hd5806_)))
                    (_try-match57685792_))))))))
    (define gx#stx-for-each2
      (lambda (_f5665_ _xstx5666_ _ystx5667_)
        (if (procedure? _f5665_)
            '#!void
            (error '"Bad argument; expected procedure" _f5665_))
        (let _lp5669_ ((_xrest5671_ _xstx5666_) (_yrest5672_ _ystx5667_))
          (let* ((_g56735683_ (gx#syntax-e _xrest5671_))
                 (_else56765691_ (lambda () '#!void)))
            (let ((_K56795748_
                   (lambda (_xrest5717_ _xhd5718_)
                     (let* ((_g57195726_ (gx#syntax-e _yrest5672_))
                            (_E57215730_
                             (lambda ()
                               (error '"No clause matching" _g57195726_)))
                            (_K57225736_
                             (lambda (_yrest5733_ _yhd5734_)
                               (_f5665_ _xhd5718_ _yhd5734_)
                               (_lp5669_ _xrest5717_ _yrest5733_))))
                       (if (##pair? _g57195726_)
                           (let ((_hd57235739_ (##car _g57195726_))
                                 (_tl57245741_ (##cdr _g57195726_)))
                             (let* ((_yhd5744_ _hd57235739_)
                                    (_yrest5746_ _tl57245741_))
                               (_K57225736_ _yrest5746_ _yhd5744_)))
                           (_E57215730_)))))
                  (_K56785711_
                   (lambda ()
                     (let* ((_yrest56955700_ _yrest5672_)
                            (_E56975704_
                             (lambda ()
                               (error '"No clause matching" _yrest56955700_)))
                            (_K56985708_
                             (lambda () (_f5665_ _xrest5671_ _yrest5672_))))
                       (if (not (gx#stx-null? _yrest56955700_))
                           (_K56985708_)
                           (_E56975704_))))))
              (let ((_try-match56755714_
                     (lambda ()
                       (if (not (null? _g56735683_))
                           (_K56785711_)
                           (_else56765691_)))))
                (if (##pair? _g56735683_)
                    (let ((_tl56815753_ (##cdr _g56735683_))
                          (_hd56805751_ (##car _g56735683_)))
                      (let ((_xhd5756_ _hd56805751_)
                            (_xrest5758_ _tl56815753_))
                        (_K56795748_ _xrest5758_ _xhd5756_)))
                    (_try-match56755714_))))))))
    (define gx#stx-map
      (lambda _g6299_
        (let ((_g6298_ (##length _g6299_)))
          (cond ((##fx= _g6298_ 2) (apply gx#stx-map1 _g6299_))
                ((##fx= _g6298_ 3) (apply gx#stx-map2 _g6299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g6299_))))))
    (define gx#stx-map1
      (lambda (_f5608_ _stx5609_)
        (if (procedure? _f5608_)
            '#!void
            (error '"Bad argument; expected procedure" _f5608_))
        (let _recur5611_ ((_rest5613_ _stx5609_))
          (let* ((_g56145624_ (gx#syntax-e _rest5613_))
                 (_else56175632_ (lambda () (_f5608_ _rest5613_))))
            (let ((_K56205646_
                   (lambda (_rest5643_ _hd5644_)
                     (cons (_f5608_ _hd5644_) (_recur5611_ _rest5643_))))
                  (_K56195637_ (lambda () '())))
              (let ((_try-match56165640_
                     (lambda ()
                       (if (##null? _g56145624_)
                           (_K56195637_)
                           (_else56175632_)))))
                (if (##pair? _g56145624_)
                    (let ((_tl56225651_ (##cdr _g56145624_))
                          (_hd56215649_ (##car _g56145624_)))
                      (let ((_hd5654_ _hd56215649_) (_rest5656_ _tl56225651_))
                        (_K56205646_ _rest5656_ _hd5654_)))
                    (_try-match56165640_))))))))
    (define gx#stx-map2
      (lambda (_f5513_ _xstx5514_ _ystx5515_)
        (if (procedure? _f5513_)
            '#!void
            (error '"Bad argument; expected procedure" _f5513_))
        (let _recur5517_ ((_xrest5519_ _xstx5514_) (_yrest5520_ _ystx5515_))
          (let* ((_g55215531_ (gx#syntax-e _xrest5519_))
                 (_else55245539_ (lambda () '())))
            (let ((_K55275596_
                   (lambda (_xrest5565_ _xhd5566_)
                     (let* ((_g55675574_ (gx#syntax-e _yrest5520_))
                            (_E55695578_
                             (lambda ()
                               (error '"No clause matching" _g55675574_)))
                            (_K55705584_
                             (lambda (_yrest5581_ _yhd5582_)
                               (cons (_f5513_ _xhd5566_ _yhd5582_)
                                     (_recur5517_ _xrest5565_ _yrest5581_)))))
                       (if (##pair? _g55675574_)
                           (let ((_hd55715587_ (##car _g55675574_))
                                 (_tl55725589_ (##cdr _g55675574_)))
                             (let* ((_yhd5592_ _hd55715587_)
                                    (_yrest5594_ _tl55725589_))
                               (_K55705584_ _yrest5594_ _yhd5592_)))
                           (_E55695578_)))))
                  (_K55265559_
                   (lambda ()
                     (let* ((_yrest55435548_ _yrest5520_)
                            (_E55455552_
                             (lambda ()
                               (error '"No clause matching" _yrest55435548_)))
                            (_K55465556_
                             (lambda () (_f5513_ _xrest5519_ _yrest5520_))))
                       (if (not (gx#stx-null? _yrest55435548_))
                           (_K55465556_)
                           (_E55455552_))))))
              (let ((_try-match55235562_
                     (lambda ()
                       (if (not (null? _g55215531_))
                           (_K55265559_)
                           (_else55245539_)))))
                (if (##pair? _g55215531_)
                    (let ((_tl55295601_ (##cdr _g55215531_))
                          (_hd55285599_ (##car _g55215531_)))
                      (let ((_xhd5604_ _hd55285599_)
                            (_xrest5606_ _tl55295601_))
                        (_K55275596_ _xrest5606_ _xhd5604_)))
                    (_try-match55235562_))))))))
    (define gx#stx-andmap
      (lambda (_f5463_ _stx5464_)
        (if (procedure? _f5463_)
            '#!void
            (error '"Bad argument; expected procedure" _f5463_))
        (let _lp5466_ ((_rest5468_ _stx5464_))
          (let* ((_g54695479_ (gx#syntax-e _rest5468_))
                 (_else54725487_ (lambda () (_f5463_ _rest5468_))))
            (let ((_K54755501_
                   (lambda (_rest5498_ _hd5499_)
                     (if (_f5463_ _hd5499_) (_lp5466_ _rest5498_) '#f)))
                  (_K54745492_ (lambda () '#t)))
              (let ((_try-match54715495_
                     (lambda ()
                       (if (##null? _g54695479_)
                           (_K54745492_)
                           (_else54725487_)))))
                (if (##pair? _g54695479_)
                    (let ((_tl54775506_ (##cdr _g54695479_))
                          (_hd54765504_ (##car _g54695479_)))
                      (let ((_hd5509_ _hd54765504_) (_rest5511_ _tl54775506_))
                        (_K54755501_ _rest5511_ _hd5509_)))
                    (_try-match54715495_))))))))
    (define gx#stx-ormap
      (lambda (_f5410_ _stx5411_)
        (if (procedure? _f5410_)
            '#!void
            (error '"Bad argument; expected procedure" _f5410_))
        (let _lp5413_ ((_rest5415_ _stx5411_))
          (let* ((_g54165426_ (gx#syntax-e _rest5415_))
                 (_else54195434_ (lambda () (_f5410_ _rest5415_))))
            (let ((_K54225451_
                   (lambda (_rest5445_ _hd5446_)
                     (let ((_$e5448_ (_f5410_ _hd5446_)))
                       (if _$e5448_ _$e5448_ (_lp5413_ _rest5445_)))))
                  (_K54215439_ (lambda () '#f)))
              (let ((_try-match54185442_
                     (lambda ()
                       (if (##null? _g54165426_)
                           (_K54215439_)
                           (_else54195434_)))))
                (if (##pair? _g54165426_)
                    (let ((_tl54245456_ (##cdr _g54165426_))
                          (_hd54235454_ (##car _g54165426_)))
                      (let ((_hd5459_ _hd54235454_) (_rest5461_ _tl54245456_))
                        (_K54225451_ _rest5461_ _hd5459_)))
                    (_try-match54185442_))))))))
    (define gx#stx-foldl
      (lambda (_f5358_ _iv5359_ _stx5360_)
        (if (procedure? _f5358_)
            '#!void
            (error '"Bad argument; expected procedure" _f5358_))
        (let _lp5362_ ((_r5364_ _iv5359_) (_rest5365_ _stx5360_))
          (let* ((_g53665376_ (gx#syntax-e _rest5365_))
                 (_else53695384_ (lambda () (_f5358_ _rest5365_ _r5364_))))
            (let ((_K53725398_
                   (lambda (_rest5395_ _hd5396_)
                     (_lp5362_ (_f5358_ _hd5396_ _r5364_) _rest5395_)))
                  (_K53715389_ (lambda () _r5364_)))
              (let ((_try-match53685392_
                     (lambda ()
                       (if (##null? _g53665376_)
                           (_K53715389_)
                           (_else53695384_)))))
                (if (##pair? _g53665376_)
                    (let ((_tl53745403_ (##cdr _g53665376_))
                          (_hd53735401_ (##car _g53665376_)))
                      (let ((_hd5406_ _hd53735401_) (_rest5408_ _tl53745403_))
                        (_K53725398_ _rest5408_ _hd5406_)))
                    (_try-match53685392_))))))))
    (define gx#stx-foldr
      (lambda (_f5307_ _iv5308_ _stx5309_)
        (if (procedure? _f5307_)
            '#!void
            (error '"Bad argument; expected procedure" _f5307_))
        (let _recur5311_ ((_rest5313_ _stx5309_))
          (let* ((_g53145324_ (gx#syntax-e _rest5313_))
                 (_else53175332_ (lambda () (_f5307_ _rest5313_ _iv5308_))))
            (let ((_K53205346_
                   (lambda (_rest5343_ _hd5344_)
                     (_f5307_ _hd5344_ (_recur5311_ _rest5343_))))
                  (_K53195337_ (lambda () _iv5308_)))
              (let ((_try-match53165340_
                     (lambda ()
                       (if (##null? _g53145324_)
                           (_K53195337_)
                           (_else53175332_)))))
                (if (##pair? _g53145324_)
                    (let ((_tl53225351_ (##cdr _g53145324_))
                          (_hd53215349_ (##car _g53145324_)))
                      (let ((_hd5354_ _hd53215349_) (_rest5356_ _tl53225351_))
                        (_K53205346_ _rest5356_ _hd5354_)))
                    (_try-match53165340_))))))))
    (define gx#stx-reverse
      (lambda (_stx5305_) (gx#stx-foldl cons '() _stx5305_)))
    (define gx#stx-last
      (lambda (_stx5266_)
        (let _lp5268_ ((_rest5270_ _stx5266_))
          (let* ((_g52715279_ (gx#syntax-e _rest5270_))
                 (_else52735287_ (lambda () _rest5270_))
                 (_K52755293_
                  (lambda (_rest5290_ _hd5291_)
                    (if (gx#stx-null? _rest5290_)
                        _hd5291_
                        (_lp5268_ _rest5290_)))))
            (if (##pair? _g52715279_)
                (let ((_hd52765296_ (##car _g52715279_))
                      (_tl52775298_ (##cdr _g52715279_)))
                  (let* ((_hd5301_ _hd52765296_) (_rest5303_ _tl52775298_))
                    (_K52755293_ _rest5303_ _hd5301_)))
                (_else52735287_))))))
    (define gx#stx-last-pair
      (lambda (_stx5237_)
        (let _lp5239_ ((_hd5241_ _stx5237_))
          (let* ((_g52425249_ (gx#syntax-e _hd5241_))
                 (_E52445253_
                  (lambda () (error '"No clause matching" _g52425249_)))
                 (_K52455258_
                  (lambda (_rest5256_)
                    (if (gx#stx-pair? _rest5256_)
                        (_lp5239_ _rest5256_)
                        _hd5241_))))
            (if (##pair? _g52425249_)
                (let* ((_tl52475261_ (##cdr _g52425249_))
                       (_rest5264_ _tl52475261_))
                  (_K52455258_ _rest5264_))
                (_E52445253_))))))
    (define gx#stx-list-tail
      (lambda (_stx5206_ _k5207_)
        (let _lp5209_ ((_rest5211_ _stx5206_) (_k5212_ _k5207_))
          (if (fxpositive? _k5212_)
              (let* ((_g52135220_ (gx#syntax-e _rest5211_))
                     (_E52155224_
                      (lambda () (error '"No clause matching" _g52135220_)))
                     (_K52165229_
                      (lambda (_rest5227_)
                        (_lp5209_ _rest5227_ (fx- _k5212_ '1)))))
                (if (##pair? _g52135220_)
                    (let* ((_tl52185232_ (##cdr _g52135220_))
                           (_rest5235_ _tl52185232_))
                      (_K52165229_ _rest5235_))
                    (_E52155224_)))
              _rest5211_))))
    (define gx#stx-list-ref
      (lambda (_stx5203_ _k5204_)
        (gx#stx-car (gx#stx-list-tail _stx5203_ _k5204_))))
    (define gx#stx-plist?__%
      (lambda (_stx5115_ _key?5116_)
        (if (procedure? _key?5116_)
            '#!void
            (error '"Bad argument; expected procedure" _key?5116_))
        (let _lp5118_ ((_rest5120_ _stx5115_))
          (let* ((_g51215131_ (gx#stx-e _rest5120_))
                 (_else51245139_ (lambda () '#f)))
            (let ((_K51275181_
                   (lambda (_rest5150_ _hd5151_)
                     (if (_key?5116_ _hd5151_)
                         (let* ((_g51525160_ (gx#stx-e _rest5150_))
                                (_else51545168_ (lambda () '#f))
                                (_K51565173_
                                 (lambda (_rest5171_) (_lp5118_ _rest5171_))))
                           (if (##pair? _g51525160_)
                               (let* ((_tl51585176_ (##cdr _g51525160_))
                                      (_rest5179_ _tl51585176_))
                                 (_lp5118_ _rest5179_))
                               (_else51545168_)))
                         '#f)))
                  (_K51265144_ (lambda () '#t)))
              (let ((_try-match51235147_
                     (lambda ()
                       (if (##null? _g51215131_)
                           (_K51265144_)
                           (_else51245139_)))))
                (if (##pair? _g51215131_)
                    (let ((_tl51295186_ (##cdr _g51215131_))
                          (_hd51285184_ (##car _g51215131_)))
                      (let ((_hd5189_ _hd51285184_) (_rest5191_ _tl51295186_))
                        (_K51275181_ _rest5191_ _hd5189_)))
                    (_try-match51235147_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx5196_)
        (let ((_key?5198_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx5196_ _key?5198_))))
    (define gx#stx-plist?
      (lambda _g6301_
        (let ((_g6300_ (##length _g6301_)))
          (cond ((##fx= _g6300_ 1) (apply gx#stx-plist?__0 _g6301_))
                ((##fx= _g6300_ 2) (apply gx#stx-plist?__% _g6301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g6301_))))))
    (define gx#stx-getq__%
      (lambda (_key5033_ _stx5034_ _key=?5035_)
        (if (procedure? _key=?5035_)
            '#!void
            (error '"Bad argument; expected procedure" _key=?5035_))
        (let _lp5037_ ((_rest5039_ _stx5034_))
          (let* ((_g50405048_ (gx#syntax-e _rest5039_))
                 (_else50425056_ (lambda () '#f))
                 (_K50445090_
                  (lambda (_rest5059_ _hd5060_)
                    (let* ((_g50615068_ (gx#syntax-e _rest5059_))
                           (_E50635072_
                            (lambda ()
                              (error '"No clause matching" _g50615068_)))
                           (_K50645078_
                            (lambda (_rest5075_ _val5076_)
                              (if (_key=?5035_ _hd5060_ _key5033_)
                                  _val5076_
                                  (_lp5037_ _rest5075_)))))
                      (if (##pair? _g50615068_)
                          (let ((_hd50655081_ (##car _g50615068_))
                                (_tl50665083_ (##cdr _g50615068_)))
                            (let* ((_val5086_ _hd50655081_)
                                   (_rest5088_ _tl50665083_))
                              (_K50645078_ _rest5088_ _val5086_)))
                          (_E50635072_))))))
            (if (##pair? _g50405048_)
                (let ((_hd50455093_ (##car _g50405048_))
                      (_tl50465095_ (##cdr _g50405048_)))
                  (let* ((_hd5098_ _hd50455093_) (_rest5100_ _tl50465095_))
                    (_K50445090_ _rest5100_ _hd5098_)))
                (_else50425056_))))))
    (define gx#stx-getq__0
      (lambda (_key5105_ _stx5106_)
        (let ((_key=?5108_ gx#stx-eq?))
          (gx#stx-getq__% _key5105_ _stx5106_ _key=?5108_))))
    (define gx#stx-getq
      (lambda _g6303_
        (let ((_g6302_ (##length _g6303_)))
          (cond ((##fx= _g6302_ 2) (apply gx#stx-getq__0 _g6303_))
                ((##fx= _g6302_ 3) (apply gx#stx-getq__% _g6303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g6303_))))))))
