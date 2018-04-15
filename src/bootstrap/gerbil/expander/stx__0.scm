(declare (block) (standard-bindings) (extended-bindings))
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
    (lambda _$args6230_
      (apply make-struct-instance gx#identifier-wrap::t _$args6230_)))
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
    (lambda _$args6227_
      (apply make-struct-instance gx#syntax-wrap::t _$args6227_)))
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
    (lambda _$args6224_
      (apply make-struct-instance gx#syntax-quote::t _$args6224_)))
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
  (define gx#identifier? (lambda (_stx6222_) (symbol? (gx#stx-e _stx6222_))))
  (define gx#identifier-quote?
    (lambda (_stx6220_)
      (if (##structure-direct-instance-of? _stx6220_ 'gx#syntax-quote::t)
          (symbol? (##unchecked-structure-ref _stx6220_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx6218_)
      (if (##structure-direct-instance-of? _stx6218_ 'gx#syntax-quote::t)
          '#t
          (if (##structure-direct-instance-of? _stx6218_ 'gx#syntax-wrap::t)
              (gx#sealed-syntax?
               (##unchecked-structure-ref _stx6218_ '1 AST::t '#f))
              '#f))))
  (define gx#sealed-syntax-unwrap
    (lambda (_stx6216_)
      (if (##structure-direct-instance-of? _stx6216_ 'gx#syntax-quote::t)
          _stx6216_
          (if (##structure-direct-instance-of? _stx6216_ 'gx#syntax-wrap::t)
              (gx#sealed-syntax-unwrap
               (##unchecked-structure-ref _stx6216_ '1 AST::t '#f))
              '#f))))
  (define gx#syntax-e
    (lambda (_stx6199_)
      (if (##structure-direct-instance-of? _stx6199_ 'gx#syntax-wrap::t)
          (let _lp6201_ ((_e6203_ (##unchecked-structure-ref
                                   _stx6199_
                                   '1
                                   AST::t
                                   '#f))
                         (_marks6204_
                          (cons (##unchecked-structure-ref
                                 _stx6199_
                                 '3
                                 gx#syntax-wrap::t
                                 '#f)
                                '())))
            (if (##structure? _e6203_)
                (let ((_$e6206_ (##type-id (##structure-type _e6203_))))
                  (if (eq? 'gx#syntax-wrap::t _$e6206_)
                      (_lp6201_
                       (##unchecked-structure-ref _e6203_ '1 AST::t '#f)
                       (gx#apply-mark
                        (##unchecked-structure-ref
                         _e6203_
                         '3
                         gx#syntax-wrap::t
                         '#f)
                        _marks6204_))
                      (if (or (eq? 'gx#syntax-quote::t _$e6206_)
                              (eq? 'gx#identifier-wrap::t _$e6206_))
                          (##unchecked-structure-ref _e6203_ '1 AST::t '#f)
                          (if (eq? 'gerbil#AST::t _$e6206_)
                              (_lp6201_
                               (##unchecked-structure-ref
                                _e6203_
                                '1
                                AST::t
                                '#f)
                               _marks6204_)
                              _e6203_))))
                (if (null? _marks6204_)
                    _e6203_
                    (if (pair? _e6203_)
                        (cons (gx#stx-wrap (car _e6203_) _marks6204_)
                              (gx#stx-wrap (cdr _e6203_) _marks6204_))
                        (if (vector? _e6203_)
                            (vector-map
                             (lambda (_g62116213_)
                               (gx#stx-wrap _g62116213_ _marks6204_))
                             _e6203_)
                            (if (box? _e6203_)
                                (box (gx#stx-wrap (unbox _e6203_) _marks6204_))
                                _e6203_))))))
          (if (##structure-instance-of? _stx6199_ 'gerbil#AST::t)
              (##unchecked-structure-ref _stx6199_ '1 AST::t '#f)
              _stx6199_))))
  (define gx#syntax->datum
    (lambda (_stx6197_)
      (if (##structure-instance-of? _stx6197_ 'gerbil#AST::t)
          (gx#syntax->datum
           (##unchecked-structure-ref _stx6197_ '1 AST::t '#f))
          (if (pair? _stx6197_)
              (cons (gx#syntax->datum (car _stx6197_))
                    (gx#syntax->datum (cdr _stx6197_)))
              (if (vector? _stx6197_)
                  (vector-map gx#syntax->datum _stx6197_)
                  (if (box? _stx6197_)
                      (box (gx#syntax->datum (unbox _stx6197_)))
                      _stx6197_))))))
  (define gx#datum->syntax__%
    (lambda (_stx6140_ _datum6141_ _src6142_ _quote?6143_)
      (letrec ((_wrap-datum6145_
                (lambda (_e6169_ _marks6170_)
                  (_wrap-inner6147_
                   _e6169_
                   (lambda (_g61716173_)
                     (##structure
                      gx#identifier-wrap::t
                      _g61716173_
                      _src6142_
                      _marks6170_)))))
               (_wrap-quote6146_
                (lambda (_e6161_ _ctx6162_ _marks6163_)
                  (_wrap-inner6147_
                   _e6161_
                   (lambda (_g61646166_)
                     (##structure
                      gx#syntax-quote::t
                      _g61646166_
                      _src6142_
                      _ctx6162_
                      _marks6163_)))))
               (_wrap-inner6147_
                (lambda (_e6154_ _wrap-e6155_)
                  (let _recur6157_ ((_e6159_ _e6154_))
                    (if (symbol? _e6159_)
                        (_wrap-e6155_ _e6159_)
                        (if (pair? _e6159_)
                            (cons (_recur6157_ (car _e6159_))
                                  (_recur6157_ (cdr _e6159_)))
                            (if (vector? _e6159_)
                                (vector-map _recur6157_ _e6159_)
                                (if (box? _e6159_)
                                    (box (_recur6157_ (unbox _e6159_)))
                                    _e6159_)))))))
               (_wrap-outer6148_
                (lambda (_e6152_)
                  (if (##structure-instance-of? _e6152_ 'gerbil#AST::t)
                      _e6152_
                      (##structure AST::t _e6152_ _src6142_)))))
        (if (##structure-instance-of? _datum6141_ 'gerbil#AST::t)
            _datum6141_
            (if (not _stx6140_)
                (##structure AST::t _datum6141_ _src6142_)
                (if (gx#identifier? _stx6140_)
                    (let ((_stx6150_ (gx#stx-unwrap__0 _stx6140_)))
                      (_wrap-outer6148_
                       (if (##structure-direct-instance-of?
                            _stx6150_
                            'gx#syntax-quote::t)
                           (if _quote?6143_
                               (_wrap-quote6146_
                                _datum6141_
                                (##unchecked-structure-ref
                                 _stx6150_
                                 '3
                                 gx#syntax-quote::t
                                 '#f)
                                (##unchecked-structure-ref
                                 _stx6150_
                                 '4
                                 gx#syntax-quote::t
                                 '#f))
                               (_wrap-datum6145_
                                _datum6141_
                                (##unchecked-structure-ref
                                 _stx6150_
                                 '4
                                 gx#syntax-quote::t
                                 '#f)))
                           (_wrap-datum6145_
                            _datum6141_
                            (##unchecked-structure-ref
                             _stx6150_
                             '3
                             gx#identifier-wrap::t
                             '#f)))))
                    (error '"Bad template syntax; expected identifier"
                           _stx6140_)))))))
  (define gx#datum->syntax__0
    (lambda (_stx6179_ _datum6180_)
      (let* ((_src6182_ '#f) (_quote?6184_ '#t))
        (gx#datum->syntax__% _stx6179_ _datum6180_ _src6182_ _quote?6184_))))
  (define gx#datum->syntax__1
    (lambda (_stx6186_ _datum6187_ _src6188_)
      (let ((_quote?6190_ '#t))
        (gx#datum->syntax__% _stx6186_ _datum6187_ _src6188_ _quote?6190_))))
  (define gx#datum->syntax
    (lambda _g6308_
      (let ((_g6307_ (length _g6308_)))
        (cond ((##fx= _g6307_ 2) (apply gx#datum->syntax__0 _g6308_))
              ((##fx= _g6307_ 3) (apply gx#datum->syntax__1 _g6308_))
              ((##fx= _g6307_ 4) (apply gx#datum->syntax__% _g6308_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#datum->syntax
                _g6308_))))))
  (define gx#stx-unwrap__%
    (lambda (_stx6116_ _marks6117_)
      (let _lp6119_ ((_e6121_ _stx6116_)
                     (_marks6122_ _marks6117_)
                     (_src6123_ (gx#stx-source _stx6116_)))
        (if (##structure-direct-instance-of? _e6121_ 'gx#syntax-wrap::t)
            (_lp6119_
             (##unchecked-structure-ref _e6121_ '1 AST::t '#f)
             (gx#apply-mark
              (##unchecked-structure-ref _e6121_ '3 gx#syntax-wrap::t '#f)
              _marks6122_)
             (##unchecked-structure-ref _e6121_ '2 AST::t '#f))
            (if (##structure-direct-instance-of?
                 _e6121_
                 'gx#identifier-wrap::t)
                (if (null? _marks6122_)
                    _e6121_
                    (##structure
                     gx#identifier-wrap::t
                     (##unchecked-structure-ref _e6121_ '1 AST::t '#f)
                     (##unchecked-structure-ref _e6121_ '2 AST::t '#f)
                     (foldl1 gx#apply-mark
                             (##unchecked-structure-ref
                              _e6121_
                              '3
                              gx#identifier-wrap::t
                              '#f)
                             _marks6122_)))
                (if (##structure-direct-instance-of?
                     _e6121_
                     'gx#syntax-quote::t)
                    _e6121_
                    (if (##structure-instance-of? _e6121_ 'gerbil#AST::t)
                        (_lp6119_
                         (##unchecked-structure-ref _e6121_ '1 AST::t '#f)
                         _marks6122_
                         (##unchecked-structure-ref _e6121_ '2 AST::t '#f))
                        (if (symbol? _e6121_)
                            (##structure
                             gx#identifier-wrap::t
                             _e6121_
                             _src6123_
                             (reverse _marks6122_))
                            (if (null? _marks6122_)
                                _e6121_
                                (if (pair? _e6121_)
                                    (cons (gx#stx-wrap
                                           (car _e6121_)
                                           _marks6122_)
                                          (gx#stx-wrap
                                           (cdr _e6121_)
                                           _marks6122_))
                                    (if (vector? _e6121_)
                                        (vector-map
                                         (lambda (_g61246126_)
                                           (gx#stx-wrap
                                            _g61246126_
                                            _marks6122_))
                                         _e6121_)
                                        (if (box? _e6121_)
                                            (box (gx#stx-wrap
                                                  (unbox _e6121_)
                                                  _marks6122_))
                                            _e6121_))))))))))))
  (define gx#stx-unwrap__0
    (lambda (_stx6132_)
      (let ((_marks6134_ '())) (gx#stx-unwrap__% _stx6132_ _marks6134_))))
  (define gx#stx-unwrap
    (lambda _g6310_
      (let ((_g6309_ (length _g6310_)))
        (cond ((##fx= _g6309_ 1) (apply gx#stx-unwrap__0 _g6310_))
              ((##fx= _g6309_ 2) (apply gx#stx-unwrap__% _g6310_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-unwrap
                _g6310_))))))
  (define gx#stx-wrap
    (lambda (_stx6109_ _marks6110_)
      (foldl1 (lambda (_mark6112_ _stx6113_)
                (gx#stx-apply-mark _stx6113_ _mark6112_))
              _stx6109_
              _marks6110_)))
  (define gx#stx-rewrap
    (lambda (_stx6103_ _marks6104_)
      (foldr1 (lambda (_mark6106_ _stx6107_)
                (gx#stx-apply-mark _stx6107_ _mark6106_))
              _stx6103_
              _marks6104_)))
  (define gx#stx-apply-mark
    (lambda (_stx6100_ _mark6101_)
      (if (##structure-direct-instance-of? _stx6100_ 'gx#syntax-quote::t)
          _stx6100_
          (if (and (##structure-direct-instance-of?
                    _stx6100_
                    'gx#syntax-wrap::t)
                   (eq? _mark6101_
                        (##unchecked-structure-ref
                         _stx6100_
                         '3
                         gx#syntax-wrap::t
                         '#f)))
              (##unchecked-structure-ref _stx6100_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx6100_
               (gx#stx-source _stx6100_)
               _mark6101_)))))
  (define gx#apply-mark
    (lambda (_mark6064_ _marks6065_)
      (let* ((_marks60666074_ _marks6065_)
             (_else60686082_ (lambda () (cons _mark6064_ _marks6065_)))
             (_K60706088_
              (lambda (_rest6085_ _hd6086_)
                (if (eq? _mark6064_ _hd6086_)
                    _rest6085_
                    (cons _mark6064_ _marks6065_)))))
        (if (##pair? _marks60666074_)
            (let ((_hd60716091_ (##car _marks60666074_))
                  (_tl60726093_ (##cdr _marks60666074_)))
              (let* ((_hd6096_ _hd60716091_) (_rest6098_ _tl60726093_))
                (_K60706088_ _rest6098_ _hd6096_)))
            (_else60686082_)))))
  (define gx#stx-e
    (lambda (_stx6062_)
      (if (##structure-direct-instance-of? _stx6062_ 'gx#syntax-wrap::t)
          (gx#stx-e (##unchecked-structure-ref _stx6062_ '1 AST::t '#f))
          (if (##structure-instance-of? _stx6062_ 'gerbil#AST::t)
              (##unchecked-structure-ref _stx6062_ '1 AST::t '#f)
              _stx6062_))))
  (define gx#stx-source
    (lambda (_stx6060_)
      (if (##structure-instance-of? _stx6060_ 'gerbil#AST::t)
          (##unchecked-structure-ref _stx6060_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx6054_ _src6055_)
      (if (or (##structure-instance-of? _stx6054_ 'gerbil#AST::t)
              (not _src6055_))
          _stx6054_
          (##structure AST::t _stx6054_ _src6055_))))
  (define gx#stx-datum?
    (lambda (_stx6052_) (gx#self-quoting? (gx#stx-e _stx6052_))))
  (define gx#self-quoting?
    (lambda (_x6035_)
      (let ((_$e6037_ (immediate? _x6035_)))
        (if _$e6037_
            _$e6037_
            (let ((_$e6040_ (number? _x6035_)))
              (if _$e6040_
                  _$e6040_
                  (let ((_$e6043_ (keyword? _x6035_)))
                    (if _$e6043_
                        _$e6043_
                        (let ((_$e6046_ (string? _x6035_)))
                          (if _$e6046_
                              _$e6046_
                              (let ((_$e6049_ (vector? _x6035_)))
                                (if _$e6049_
                                    _$e6049_
                                    (u8vector? _x6035_)))))))))))))
  (define gx#stx-boolean? (lambda (_e6033_) (boolean? (gx#stx-e _e6033_))))
  (define gx#stx-keyword? (lambda (_e6031_) (keyword? (gx#stx-e _e6031_))))
  (define gx#stx-char? (lambda (_e6029_) (char? (gx#stx-e _e6029_))))
  (define gx#stx-number? (lambda (_e6027_) (number? (gx#stx-e _e6027_))))
  (define gx#stx-fixnum? (lambda (_e6025_) (fixnum? (gx#stx-e _e6025_))))
  (define gx#stx-string? (lambda (_e6023_) (string? (gx#stx-e _e6023_))))
  (define gx#stx-null? (lambda (_e6021_) (null? (gx#stx-e _e6021_))))
  (define gx#stx-pair? (lambda (_e6019_) (pair? (gx#stx-e _e6019_))))
  (define gx#stx-list?
    (lambda (_e5981_)
      (let* ((_g59825991_ (gx#stx-e _e5981_))
             (_E59855995_
              (lambda () (error '"No clause matching" _g59825991_))))
        (let ((_K59876011_ (lambda (_rest6009_) (gx#stx-list? _rest6009_)))
              (_K59866001_ (lambda (_tail5999_) (null? _tail5999_))))
          (if (##pair? _g59825991_)
              (let* ((_tl59896014_ (##cdr _g59825991_))
                     (_rest6017_ _tl59896014_))
                (gx#stx-list? _rest6017_))
              (let ((_tail6004_ _g59825991_)) (null? _tail6004_)))))))
  (define gx#stx-pair/null?
    (lambda (_e5974_)
      (let* ((_e5976_ (gx#stx-e _e5974_)) (_$e5978_ (pair? _e5976_)))
        (if _$e5978_ _$e5978_ (null? _e5976_)))))
  (define gx#stx-vector? (lambda (_e5972_) (vector? (gx#stx-e _e5972_))))
  (define gx#stx-box? (lambda (_e5970_) (box? (gx#stx-e _e5970_))))
  (define gx#stx-eq?
    (lambda (_x5967_ _y5968_) (eq? (gx#stx-e _x5967_) (gx#stx-e _y5968_))))
  (define gx#stx-eqv?
    (lambda (_x5964_ _y5965_) (eqv? (gx#stx-e _x5964_) (gx#stx-e _y5965_))))
  (define gx#stx-equal?
    (lambda (_x5961_ _y5962_) (equal? (gx#stx-e _x5961_) (gx#stx-e _y5962_))))
  (define gx#stx-false? (lambda (_x5959_) (not (gx#stx-e _x5959_))))
  (define gx#stx-identifier
    (lambda (_template5956_ . _args5957_)
      (gx#datum->syntax__1
       _template5956_
       (apply make-symbol (map gx#stx-e _args5957_))
       (gx#stx-source _template5956_))))
  (define gx#stx-identifier-marks
    (lambda (_stx5954_)
      (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx5954_))))
  (define gx#stx-identifier-marks*
    (lambda (_stx5952_)
      (if (##structure-direct-instance-of? _stx5952_ 'gx#identifier-wrap::t)
          (##unchecked-structure-ref _stx5952_ '3 gx#identifier-wrap::t '#f)
          (if (##structure-direct-instance-of? _stx5952_ 'gx#syntax-quote::t)
              (##unchecked-structure-ref _stx5952_ '4 gx#syntax-quote::t '#f)
              (error '"Bad wrap; expected unwrapped identifier" _stx5952_)))))
  (define gx#stx-identifier-context
    (lambda (_stx5948_)
      (let ((_stx5950_ (gx#stx-unwrap__0 _stx5948_)))
        (if (gx#identifier-quote? _stx5950_)
            (##unchecked-structure-ref _stx5950_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx5903_)
      (let* ((_g59045914_ (gx#stx-e _stx5903_))
             (_else59075922_ (lambda () '#f)))
        (let ((_K59105936_
               (lambda (_rest5933_ _hd5934_)
                 (if (gx#identifier? _hd5934_)
                     (gx#identifier-list? _rest5933_)
                     '#f)))
              (_K59095927_ (lambda () '#t)))
          (let ((_try-match59065930_
                 (lambda ()
                   (if (##null? _g59045914_) (_K59095927_) (_else59075922_)))))
            (if (##pair? _g59045914_)
                (let ((_tl59125941_ (##cdr _g59045914_))
                      (_hd59115939_ (##car _g59045914_)))
                  (let ((_hd5944_ _hd59115939_) (_rest5946_ _tl59125941_))
                    (_K59105936_ _rest5946_ _hd5944_)))
                (_try-match59065930_)))))))
  (define gx#genident__%
    (lambda (_e5880_ _src5881_)
      (gx#stx-wrap-source
       (gensym (let ((_e5883_ (gx#stx-e _e5880_)))
                 (if (interned-symbol? _e5883_) _e5883_ 'g)))
       (let ((_$e5885_ (gx#stx-source _e5880_)))
         (if _$e5885_ _$e5885_ _src5881_)))))
  (define gx#genident__0
    (lambda ()
      (let* ((_e5892_ 'g) (_src5894_ '#f))
        (gx#genident__% _e5892_ _src5894_))))
  (define gx#genident__1
    (lambda (_e5896_)
      (let ((_src5898_ '#f)) (gx#genident__% _e5896_ _src5898_))))
  (define gx#genident
    (lambda _g6312_
      (let ((_g6311_ (length _g6312_)))
        (cond ((##fx= _g6311_ 0) (apply gx#genident__0 _g6312_))
              ((##fx= _g6311_ 1) (apply gx#genident__1 _g6312_))
              ((##fx= _g6311_ 2) (apply gx#genident__% _g6312_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#genident
                _g6312_))))))
  (define gx#gentemps
    (lambda (_stx-lst5877_) (gx#stx-map1 gx#genident _stx-lst5877_)))
  (define gx#syntax->list (lambda (_stx5875_) (gx#stx-map1 values _stx5875_)))
  (define gx#stx-car
    (lambda (_stx5872_) (declare (safe)) (car (gx#syntax-e _stx5872_))))
  (define gx#stx-cdr
    (lambda (_stx5869_) (declare (safe)) (cdr (gx#syntax-e _stx5869_))))
  (define gx#stx-length
    (lambda (_stx5834_)
      (let _lp5836_ ((_rest5838_ _stx5834_) (_n5839_ '0))
        (let* ((_g58405848_ (gx#stx-e _rest5838_))
               (_else58425856_ (lambda () _n5839_))
               (_K58445861_
                (lambda (_rest5859_) (_lp5836_ _rest5859_ (fx+ _n5839_ '1)))))
          (if (##pair? _g58405848_)
              (let* ((_tl58465864_ (##cdr _g58405848_))
                     (_rest5867_ _tl58465864_))
                (_K58445861_ _rest5867_))
              (_else58425856_))))))
  (define gx#stx-for-each
    (lambda _g6314_
      (let ((_g6313_ (length _g6314_)))
        (cond ((##fx= _g6313_ 2) (apply gx#stx-for-each1 _g6314_))
              ((##fx= _g6313_ 3) (apply gx#stx-for-each2 _g6314_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g6314_))))))
  (define gx#stx-for-each1
    (lambda (_f5777_ _stx5778_)
      (if (procedure? _f5777_)
          '#!void
          (error '"Bad argument; expected procedure" _f5777_))
      (let _lp5780_ ((_rest5782_ _stx5778_))
        (let* ((_g57835793_ (gx#syntax-e _rest5782_))
               (_else57865801_ (lambda () (_f5777_ _rest5782_))))
          (let ((_K57895815_
                 (lambda (_rest5812_ _hd5813_)
                   (_f5777_ _hd5813_)
                   (_lp5780_ _rest5812_)))
                (_K57885806_ (lambda () '#!void)))
            (let ((_try-match57855809_
                   (lambda ()
                     (if (##null? _g57835793_)
                         (_K57885806_)
                         (_else57865801_)))))
              (if (##pair? _g57835793_)
                  (let ((_tl57915820_ (##cdr _g57835793_))
                        (_hd57905818_ (##car _g57835793_)))
                    (let ((_hd5823_ _hd57905818_) (_rest5825_ _tl57915820_))
                      (_K57895815_ _rest5825_ _hd5823_)))
                  (_try-match57855809_))))))))
  (define gx#stx-for-each2
    (lambda (_f5682_ _xstx5683_ _ystx5684_)
      (if (procedure? _f5682_)
          '#!void
          (error '"Bad argument; expected procedure" _f5682_))
      (let _lp5686_ ((_xrest5688_ _xstx5683_) (_yrest5689_ _ystx5684_))
        (let* ((_g56905700_ (gx#syntax-e _xrest5688_))
               (_else56935708_ (lambda () '#!void)))
          (let ((_K56965765_
                 (lambda (_xrest5734_ _xhd5735_)
                   (let* ((_g57365743_ (gx#syntax-e _yrest5689_))
                          (_E57385747_
                           (lambda ()
                             (error '"No clause matching" _g57365743_)))
                          (_K57395753_
                           (lambda (_yrest5750_ _yhd5751_)
                             (_f5682_ _xhd5735_ _yhd5751_)
                             (_lp5686_ _xrest5734_ _yrest5750_))))
                     (if (##pair? _g57365743_)
                         (let ((_hd57405756_ (##car _g57365743_))
                               (_tl57415758_ (##cdr _g57365743_)))
                           (let* ((_yhd5761_ _hd57405756_)
                                  (_yrest5763_ _tl57415758_))
                             (_K57395753_ _yrest5763_ _yhd5761_)))
                         (_E57385747_)))))
                (_K56955728_
                 (lambda ()
                   (let* ((_yrest57125717_ _yrest5689_)
                          (_E57145721_
                           (lambda ()
                             (error '"No clause matching" _yrest57125717_)))
                          (_K57155725_
                           (lambda () (_f5682_ _xrest5688_ _yrest5689_))))
                     (if (not (gx#stx-null? _yrest57125717_))
                         (_K57155725_)
                         (_E57145721_))))))
            (let ((_try-match56925731_
                   (lambda ()
                     (if (not (null? _g56905700_))
                         (_K56955728_)
                         (_else56935708_)))))
              (if (##pair? _g56905700_)
                  (let ((_tl56985770_ (##cdr _g56905700_))
                        (_hd56975768_ (##car _g56905700_)))
                    (let ((_xhd5773_ _hd56975768_) (_xrest5775_ _tl56985770_))
                      (_K56965765_ _xrest5775_ _xhd5773_)))
                  (_try-match56925731_))))))))
  (define gx#stx-map
    (lambda _g6316_
      (let ((_g6315_ (length _g6316_)))
        (cond ((##fx= _g6315_ 2) (apply gx#stx-map1 _g6316_))
              ((##fx= _g6315_ 3) (apply gx#stx-map2 _g6316_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g6316_))))))
  (define gx#stx-map1
    (lambda (_f5625_ _stx5626_)
      (if (procedure? _f5625_)
          '#!void
          (error '"Bad argument; expected procedure" _f5625_))
      (let _recur5628_ ((_rest5630_ _stx5626_))
        (let* ((_g56315641_ (gx#syntax-e _rest5630_))
               (_else56345649_ (lambda () (_f5625_ _rest5630_))))
          (let ((_K56375663_
                 (lambda (_rest5660_ _hd5661_)
                   (cons (_f5625_ _hd5661_) (_recur5628_ _rest5660_))))
                (_K56365654_ (lambda () '())))
            (let ((_try-match56335657_
                   (lambda ()
                     (if (##null? _g56315641_)
                         (_K56365654_)
                         (_else56345649_)))))
              (if (##pair? _g56315641_)
                  (let ((_tl56395668_ (##cdr _g56315641_))
                        (_hd56385666_ (##car _g56315641_)))
                    (let ((_hd5671_ _hd56385666_) (_rest5673_ _tl56395668_))
                      (_K56375663_ _rest5673_ _hd5671_)))
                  (_try-match56335657_))))))))
  (define gx#stx-map2
    (lambda (_f5530_ _xstx5531_ _ystx5532_)
      (if (procedure? _f5530_)
          '#!void
          (error '"Bad argument; expected procedure" _f5530_))
      (let _recur5534_ ((_xrest5536_ _xstx5531_) (_yrest5537_ _ystx5532_))
        (let* ((_g55385548_ (gx#syntax-e _xrest5536_))
               (_else55415556_ (lambda () '())))
          (let ((_K55445613_
                 (lambda (_xrest5582_ _xhd5583_)
                   (let* ((_g55845591_ (gx#syntax-e _yrest5537_))
                          (_E55865595_
                           (lambda ()
                             (error '"No clause matching" _g55845591_)))
                          (_K55875601_
                           (lambda (_yrest5598_ _yhd5599_)
                             (cons (_f5530_ _xhd5583_ _yhd5599_)
                                   (_recur5534_ _xrest5582_ _yrest5598_)))))
                     (if (##pair? _g55845591_)
                         (let ((_hd55885604_ (##car _g55845591_))
                               (_tl55895606_ (##cdr _g55845591_)))
                           (let* ((_yhd5609_ _hd55885604_)
                                  (_yrest5611_ _tl55895606_))
                             (_K55875601_ _yrest5611_ _yhd5609_)))
                         (_E55865595_)))))
                (_K55435576_
                 (lambda ()
                   (let* ((_yrest55605565_ _yrest5537_)
                          (_E55625569_
                           (lambda ()
                             (error '"No clause matching" _yrest55605565_)))
                          (_K55635573_
                           (lambda () (_f5530_ _xrest5536_ _yrest5537_))))
                     (if (not (gx#stx-null? _yrest55605565_))
                         (_K55635573_)
                         (_E55625569_))))))
            (let ((_try-match55405579_
                   (lambda ()
                     (if (not (null? _g55385548_))
                         (_K55435576_)
                         (_else55415556_)))))
              (if (##pair? _g55385548_)
                  (let ((_tl55465618_ (##cdr _g55385548_))
                        (_hd55455616_ (##car _g55385548_)))
                    (let ((_xhd5621_ _hd55455616_) (_xrest5623_ _tl55465618_))
                      (_K55445613_ _xrest5623_ _xhd5621_)))
                  (_try-match55405579_))))))))
  (define gx#stx-andmap
    (lambda (_f5480_ _stx5481_)
      (if (procedure? _f5480_)
          '#!void
          (error '"Bad argument; expected procedure" _f5480_))
      (let _lp5483_ ((_rest5485_ _stx5481_))
        (let* ((_g54865496_ (gx#syntax-e _rest5485_))
               (_else54895504_ (lambda () (_f5480_ _rest5485_))))
          (let ((_K54925518_
                 (lambda (_rest5515_ _hd5516_)
                   (if (_f5480_ _hd5516_) (_lp5483_ _rest5515_) '#f)))
                (_K54915509_ (lambda () '#t)))
            (let ((_try-match54885512_
                   (lambda ()
                     (if (##null? _g54865496_)
                         (_K54915509_)
                         (_else54895504_)))))
              (if (##pair? _g54865496_)
                  (let ((_tl54945523_ (##cdr _g54865496_))
                        (_hd54935521_ (##car _g54865496_)))
                    (let ((_hd5526_ _hd54935521_) (_rest5528_ _tl54945523_))
                      (_K54925518_ _rest5528_ _hd5526_)))
                  (_try-match54885512_))))))))
  (define gx#stx-ormap
    (lambda (_f5427_ _stx5428_)
      (if (procedure? _f5427_)
          '#!void
          (error '"Bad argument; expected procedure" _f5427_))
      (let _lp5430_ ((_rest5432_ _stx5428_))
        (let* ((_g54335443_ (gx#syntax-e _rest5432_))
               (_else54365451_ (lambda () (_f5427_ _rest5432_))))
          (let ((_K54395468_
                 (lambda (_rest5462_ _hd5463_)
                   (let ((_$e5465_ (_f5427_ _hd5463_)))
                     (if _$e5465_ _$e5465_ (_lp5430_ _rest5462_)))))
                (_K54385456_ (lambda () '#f)))
            (let ((_try-match54355459_
                   (lambda ()
                     (if (##null? _g54335443_)
                         (_K54385456_)
                         (_else54365451_)))))
              (if (##pair? _g54335443_)
                  (let ((_tl54415473_ (##cdr _g54335443_))
                        (_hd54405471_ (##car _g54335443_)))
                    (let ((_hd5476_ _hd54405471_) (_rest5478_ _tl54415473_))
                      (_K54395468_ _rest5478_ _hd5476_)))
                  (_try-match54355459_))))))))
  (define gx#stx-foldl
    (lambda (_f5375_ _iv5376_ _stx5377_)
      (if (procedure? _f5375_)
          '#!void
          (error '"Bad argument; expected procedure" _f5375_))
      (let _lp5379_ ((_r5381_ _iv5376_) (_rest5382_ _stx5377_))
        (let* ((_g53835393_ (gx#syntax-e _rest5382_))
               (_else53865401_ (lambda () (_f5375_ _rest5382_ _r5381_))))
          (let ((_K53895415_
                 (lambda (_rest5412_ _hd5413_)
                   (_lp5379_ (_f5375_ _hd5413_ _r5381_) _rest5412_)))
                (_K53885406_ (lambda () _r5381_)))
            (let ((_try-match53855409_
                   (lambda ()
                     (if (##null? _g53835393_)
                         (_K53885406_)
                         (_else53865401_)))))
              (if (##pair? _g53835393_)
                  (let ((_tl53915420_ (##cdr _g53835393_))
                        (_hd53905418_ (##car _g53835393_)))
                    (let ((_hd5423_ _hd53905418_) (_rest5425_ _tl53915420_))
                      (_K53895415_ _rest5425_ _hd5423_)))
                  (_try-match53855409_))))))))
  (define gx#stx-foldr
    (lambda (_f5324_ _iv5325_ _stx5326_)
      (if (procedure? _f5324_)
          '#!void
          (error '"Bad argument; expected procedure" _f5324_))
      (let _recur5328_ ((_rest5330_ _stx5326_))
        (let* ((_g53315341_ (gx#syntax-e _rest5330_))
               (_else53345349_ (lambda () (_f5324_ _rest5330_ _iv5325_))))
          (let ((_K53375363_
                 (lambda (_rest5360_ _hd5361_)
                   (_f5324_ _hd5361_ (_recur5328_ _rest5360_))))
                (_K53365354_ (lambda () _iv5325_)))
            (let ((_try-match53335357_
                   (lambda ()
                     (if (##null? _g53315341_)
                         (_K53365354_)
                         (_else53345349_)))))
              (if (##pair? _g53315341_)
                  (let ((_tl53395368_ (##cdr _g53315341_))
                        (_hd53385366_ (##car _g53315341_)))
                    (let ((_hd5371_ _hd53385366_) (_rest5373_ _tl53395368_))
                      (_K53375363_ _rest5373_ _hd5371_)))
                  (_try-match53335357_))))))))
  (define gx#stx-reverse
    (lambda (_stx5322_) (gx#stx-foldl cons '() _stx5322_)))
  (define gx#stx-last
    (lambda (_stx5283_)
      (let _lp5285_ ((_rest5287_ _stx5283_))
        (let* ((_g52885296_ (gx#syntax-e _rest5287_))
               (_else52905304_ (lambda () _rest5287_))
               (_K52925310_
                (lambda (_rest5307_ _hd5308_)
                  (if (gx#stx-null? _rest5307_)
                      _hd5308_
                      (_lp5285_ _rest5307_)))))
          (if (##pair? _g52885296_)
              (let ((_hd52935313_ (##car _g52885296_))
                    (_tl52945315_ (##cdr _g52885296_)))
                (let* ((_hd5318_ _hd52935313_) (_rest5320_ _tl52945315_))
                  (_K52925310_ _rest5320_ _hd5318_)))
              (_else52905304_))))))
  (define gx#stx-last-pair
    (lambda (_stx5254_)
      (let _lp5256_ ((_hd5258_ _stx5254_))
        (let* ((_g52595266_ (gx#syntax-e _hd5258_))
               (_E52615270_
                (lambda () (error '"No clause matching" _g52595266_)))
               (_K52625275_
                (lambda (_rest5273_)
                  (if (gx#stx-pair? _rest5273_)
                      (_lp5256_ _rest5273_)
                      _hd5258_))))
          (if (##pair? _g52595266_)
              (let* ((_tl52645278_ (##cdr _g52595266_))
                     (_rest5281_ _tl52645278_))
                (_K52625275_ _rest5281_))
              (_E52615270_))))))
  (define gx#stx-list-tail
    (lambda (_stx5223_ _k5224_)
      (let _lp5226_ ((_rest5228_ _stx5223_) (_k5229_ _k5224_))
        (if (fxpositive? _k5229_)
            (let* ((_g52305237_ (gx#syntax-e _rest5228_))
                   (_E52325241_
                    (lambda () (error '"No clause matching" _g52305237_)))
                   (_K52335246_
                    (lambda (_rest5244_)
                      (_lp5226_ _rest5244_ (fx- _k5229_ '1)))))
              (if (##pair? _g52305237_)
                  (let* ((_tl52355249_ (##cdr _g52305237_))
                         (_rest5252_ _tl52355249_))
                    (_K52335246_ _rest5252_))
                  (_E52325241_)))
            _rest5228_))))
  (define gx#stx-list-ref
    (lambda (_stx5220_ _k5221_)
      (gx#stx-car (gx#stx-list-tail _stx5220_ _k5221_))))
  (define gx#stx-plist?__%
    (lambda (_stx5132_ _key?5133_)
      (if (procedure? _key?5133_)
          '#!void
          (error '"Bad argument; expected procedure" _key?5133_))
      (let _lp5135_ ((_rest5137_ _stx5132_))
        (let* ((_g51385148_ (gx#stx-e _rest5137_))
               (_else51415156_ (lambda () '#f)))
          (let ((_K51445198_
                 (lambda (_rest5167_ _hd5168_)
                   (if (_key?5133_ _hd5168_)
                       (let* ((_g51695177_ (gx#stx-e _rest5167_))
                              (_else51715185_ (lambda () '#f))
                              (_K51735190_
                               (lambda (_rest5188_) (_lp5135_ _rest5188_))))
                         (if (##pair? _g51695177_)
                             (let* ((_tl51755193_ (##cdr _g51695177_))
                                    (_rest5196_ _tl51755193_))
                               (_lp5135_ _rest5196_))
                             (_else51715185_)))
                       '#f)))
                (_K51435161_ (lambda () '#t)))
            (let ((_try-match51405164_
                   (lambda ()
                     (if (##null? _g51385148_)
                         (_K51435161_)
                         (_else51415156_)))))
              (if (##pair? _g51385148_)
                  (let ((_tl51465203_ (##cdr _g51385148_))
                        (_hd51455201_ (##car _g51385148_)))
                    (let ((_hd5206_ _hd51455201_) (_rest5208_ _tl51465203_))
                      (_K51445198_ _rest5208_ _hd5206_)))
                  (_try-match51405164_))))))))
  (define gx#stx-plist?__0
    (lambda (_stx5213_)
      (let ((_key?5215_ gx#stx-keyword?))
        (gx#stx-plist?__% _stx5213_ _key?5215_))))
  (define gx#stx-plist?
    (lambda _g6318_
      (let ((_g6317_ (length _g6318_)))
        (cond ((##fx= _g6317_ 1) (apply gx#stx-plist?__0 _g6318_))
              ((##fx= _g6317_ 2) (apply gx#stx-plist?__% _g6318_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-plist?
                _g6318_))))))
  (define gx#stx-getq__%
    (lambda (_key5050_ _stx5051_ _key=?5052_)
      (if (procedure? _key=?5052_)
          '#!void
          (error '"Bad argument; expected procedure" _key=?5052_))
      (let _lp5054_ ((_rest5056_ _stx5051_))
        (let* ((_g50575065_ (gx#syntax-e _rest5056_))
               (_else50595073_ (lambda () '#f))
               (_K50615107_
                (lambda (_rest5076_ _hd5077_)
                  (let* ((_g50785085_ (gx#syntax-e _rest5076_))
                         (_E50805089_
                          (lambda ()
                            (error '"No clause matching" _g50785085_)))
                         (_K50815095_
                          (lambda (_rest5092_ _val5093_)
                            (if (_key=?5052_ _hd5077_ _key5050_)
                                _val5093_
                                (_lp5054_ _rest5092_)))))
                    (if (##pair? _g50785085_)
                        (let ((_hd50825098_ (##car _g50785085_))
                              (_tl50835100_ (##cdr _g50785085_)))
                          (let* ((_val5103_ _hd50825098_)
                                 (_rest5105_ _tl50835100_))
                            (_K50815095_ _rest5105_ _val5103_)))
                        (_E50805089_))))))
          (if (##pair? _g50575065_)
              (let ((_hd50625110_ (##car _g50575065_))
                    (_tl50635112_ (##cdr _g50575065_)))
                (let* ((_hd5115_ _hd50625110_) (_rest5117_ _tl50635112_))
                  (_K50615107_ _rest5117_ _hd5115_)))
              (_else50595073_))))))
  (define gx#stx-getq__0
    (lambda (_key5122_ _stx5123_)
      (let ((_key=?5125_ gx#stx-eq?))
        (gx#stx-getq__% _key5122_ _stx5123_ _key=?5125_))))
  (define gx#stx-getq
    (lambda _g6320_
      (let ((_g6319_ (length _g6320_)))
        (cond ((##fx= _g6319_ 2) (apply gx#stx-getq__0 _g6320_))
              ((##fx= _g6319_ 3) (apply gx#stx-getq__% _g6320_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-getq
                _g6320_)))))))
