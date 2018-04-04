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
    (lambda _$args6153_
      (apply make-struct-instance gx#identifier-wrap::t _$args6153_)))
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
    (lambda _$args6150_
      (apply make-struct-instance gx#syntax-wrap::t _$args6150_)))
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
    (lambda _$args6147_
      (apply make-struct-instance gx#syntax-quote::t _$args6147_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx6145_) (symbol? (gx#stx-e _stx6145_))))
  (define gx#identifier-quote?
    (lambda (_stx6143_)
      (if (##structure-direct-instance-of? _stx6143_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx6143_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx6138_)
      (let ((_$e6140_
             (##structure-direct-instance-of? _stx6138_ 'gx#syntax-quote::t)))
        (if _$e6140_
            _$e6140_
            (if (##structure-instance-of? _stx6138_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx6138_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx6134_)
      (let ((_stx6136_ (gx#stx-unwrap__0 _stx6134_)))
        (if (##structure-instance-of? _stx6136_ 'gerbil#AST::t)
            (##structure-ref _stx6136_ '1 AST::t '#f)
            _stx6136_))))
  (define gx#syntax->datum
    (lambda (_stx6132_)
      (if (##structure-instance-of? _stx6132_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx6132_ '1 AST::t '#f))
          (if (pair? _stx6132_)
              (cons (gx#syntax->datum (car _stx6132_))
                    (gx#syntax->datum (cdr _stx6132_)))
              (if (vector? _stx6132_)
                  (vector-map gx#syntax->datum _stx6132_)
                  (if (box? _stx6132_)
                      (box (gx#syntax->datum (unbox _stx6132_)))
                      _stx6132_))))))
  (begin
    (define gx#datum->syntax__%
      (lambda (_stx6075_ _datum6076_ _src6077_ _quote?6078_)
        (letrec ((_wrap-datum6080_
                  (lambda (_e6104_ _marks6105_)
                    (_wrap-inner6082_
                     _e6104_
                     (lambda (_g61066108_)
                       (##structure
                        gx#identifier-wrap::t
                        _g61066108_
                        _src6077_
                        _marks6105_)))))
                 (_wrap-quote6081_
                  (lambda (_e6096_ _ctx6097_ _marks6098_)
                    (_wrap-inner6082_
                     _e6096_
                     (lambda (_g60996101_)
                       (##structure
                        gx#syntax-quote::t
                        _g60996101_
                        _src6077_
                        _ctx6097_
                        _marks6098_)))))
                 (_wrap-inner6082_
                  (lambda (_e6089_ _wrap-e6090_)
                    (let _recur6092_ ((_e6094_ _e6089_))
                      (if (symbol? _e6094_)
                          (_wrap-e6090_ _e6094_)
                          (if (pair? _e6094_)
                              (cons (_recur6092_ (car _e6094_))
                                    (_recur6092_ (cdr _e6094_)))
                              (if (vector? _e6094_)
                                  (vector-map _recur6092_ _e6094_)
                                  (if (box? _e6094_)
                                      (box (_recur6092_ (unbox _e6094_)))
                                      _e6094_)))))))
                 (_wrap-outer6083_
                  (lambda (_e6087_)
                    (if (##structure-instance-of? _e6087_ 'gerbil#AST::t)
                        _e6087_
                        (##structure AST::t _e6087_ _src6077_)))))
          (if (##structure-instance-of? _datum6076_ 'gerbil#AST::t)
              _datum6076_
              (if (not _stx6075_)
                  (##structure AST::t _datum6076_ _src6077_)
                  (if (gx#identifier? _stx6075_)
                      (let ((_stx6085_ (gx#stx-unwrap__0 _stx6075_)))
                        (_wrap-outer6083_
                         (if (##structure-direct-instance-of?
                              _stx6085_
                              'gx#syntax-quote::t)
                             (if _quote?6078_
                                 (_wrap-quote6081_
                                  _datum6076_
                                  (##direct-structure-ref
                                   _stx6085_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##direct-structure-ref
                                   _stx6085_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum6080_
                                  _datum6076_
                                  (##direct-structure-ref
                                   _stx6085_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum6080_
                              _datum6076_
                              (##direct-structure-ref
                               _stx6085_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx6075_)))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx6114_ _datum6115_)
          (let* ((_src6117_ '#f) (_quote?6119_ '#t))
            (gx#datum->syntax__%
             _stx6114_
             _datum6115_
             _src6117_
             _quote?6119_))))
      (define gx#datum->syntax__1
        (lambda (_stx6121_ _datum6122_ _src6123_)
          (let ((_quote?6125_ '#t))
            (gx#datum->syntax__%
             _stx6121_
             _datum6122_
             _src6123_
             _quote?6125_))))
      (define gx#datum->syntax
        (lambda _g6231_
          (let ((_g6230_ (length _g6231_)))
            (cond ((##fx= _g6230_ 2) (apply gx#datum->syntax__0 _g6231_))
                  ((##fx= _g6230_ 3) (apply gx#datum->syntax__1 _g6231_))
                  ((##fx= _g6230_ 4) (apply gx#datum->syntax__% _g6231_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#datum->syntax
                    _g6231_))))))))
  (begin
    (define gx#stx-unwrap__%
      (lambda (_stx6051_ _marks6052_)
        (let _lp6054_ ((_e6056_ _stx6051_)
                       (_marks6057_ _marks6052_)
                       (_src6058_ (gx#stx-source _stx6051_)))
          (if (##structure-direct-instance-of? _e6056_ 'gx#syntax-wrap::t)
              (_lp6054_
               (##structure-ref _e6056_ '1 AST::t '#f)
               (gx#apply-mark
                (##direct-structure-ref _e6056_ '3 gx#syntax-wrap::t '#f)
                _marks6057_)
               (##structure-ref _e6056_ '2 AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e6056_
                   'gx#identifier-wrap::t)
                  (if (null? _marks6057_)
                      _e6056_
                      (##structure
                       gx#identifier-wrap::t
                       (##structure-ref _e6056_ '1 AST::t '#f)
                       (##structure-ref _e6056_ '2 AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e6056_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6057_)))
                  (if (##structure-direct-instance-of?
                       _e6056_
                       'gx#syntax-quote::t)
                      _e6056_
                      (if (##structure-instance-of? _e6056_ 'gerbil#AST::t)
                          (_lp6054_
                           (##structure-ref _e6056_ '1 AST::t '#f)
                           _marks6057_
                           (##structure-ref _e6056_ '2 AST::t '#f))
                          (if (symbol? _e6056_)
                              (##structure
                               gx#identifier-wrap::t
                               _e6056_
                               _src6058_
                               (reverse _marks6057_))
                              (if (null? _marks6057_)
                                  _e6056_
                                  (if (pair? _e6056_)
                                      (cons (gx#stx-wrap
                                             (car _e6056_)
                                             _marks6057_)
                                            (gx#stx-wrap
                                             (cdr _e6056_)
                                             _marks6057_))
                                      (if (vector? _e6056_)
                                          (vector-map
                                           (lambda (_g60596061_)
                                             (gx#stx-wrap
                                              _g60596061_
                                              _marks6057_))
                                           _e6056_)
                                          (if (box? _e6056_)
                                              (box (gx#stx-wrap
                                                    (unbox _e6056_)
                                                    _marks6057_))
                                              _e6056_))))))))))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx6067_)
          (let ((_marks6069_ '())) (gx#stx-unwrap__% _stx6067_ _marks6069_))))
      (define gx#stx-unwrap
        (lambda _g6233_
          (let ((_g6232_ (length _g6233_)))
            (cond ((##fx= _g6232_ 1) (apply gx#stx-unwrap__0 _g6233_))
                  ((##fx= _g6232_ 2) (apply gx#stx-unwrap__% _g6233_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-unwrap
                    _g6233_))))))))
  (define gx#stx-wrap
    (lambda (_stx6044_ _marks6045_)
      (foldl1 (lambda (_mark6047_ _stx6048_)
                (gx#stx-apply-mark _stx6048_ _mark6047_))
              _stx6044_
              _marks6045_)))
  (define gx#stx-rewrap
    (lambda (_stx6038_ _marks6039_)
      (foldr1 (lambda (_mark6041_ _stx6042_)
                (gx#stx-apply-mark _stx6042_ _mark6041_))
              _stx6038_
              _marks6039_)))
  (define gx#stx-apply-mark
    (lambda (_stx6035_ _mark6036_)
      (if (##structure-direct-instance-of? _stx6035_ 'gx#syntax-quote::t)
          _stx6035_
          (if (if (##structure-direct-instance-of?
                   _stx6035_
                   'gx#syntax-wrap::t)
                  (eq? _mark6036_
                       (##direct-structure-ref
                        _stx6035_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx6035_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx6035_
               (gx#stx-source _stx6035_)
               _mark6036_)))))
  (define gx#apply-mark
    (lambda (_mark5999_ _marks6000_)
      (let* ((_marks60016009_ _marks6000_)
             (_else60036017_ (lambda () (cons _mark5999_ _marks6000_)))
             (_K60056023_
              (lambda (_rest6020_ _hd6021_)
                (if (eq? _mark5999_ _hd6021_)
                    _rest6020_
                    (cons _mark5999_ _marks6000_)))))
        (if (##pair? _marks60016009_)
            (let ((_hd60066026_ (##car _marks60016009_))
                  (_tl60076028_ (##cdr _marks60016009_)))
              (let* ((_hd6031_ _hd60066026_) (_rest6033_ _tl60076028_))
                (_K60056023_ _rest6033_ _hd6031_)))
            (_else60036017_)))))
  (define gx#stx-e
    (lambda (_stx5997_)
      (if (##structure-instance-of? _stx5997_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx5997_ '1 AST::t '#f))
          _stx5997_)))
  (define gx#stx-source
    (lambda (_stx5995_)
      (if (##structure-instance-of? _stx5995_ 'gerbil#AST::t)
          (##structure-ref _stx5995_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx5989_ _src5990_)
      (if (let ((_$e5992_ (##structure-instance-of? _stx5989_ 'gerbil#AST::t)))
            (if _$e5992_ _$e5992_ (not _src5990_)))
          _stx5989_
          (##structure AST::t _stx5989_ _src5990_))))
  (define gx#stx-datum?
    (lambda (_stx5987_) (gx#self-quoting? (gx#stx-e _stx5987_))))
  (define gx#self-quoting?
    (lambda (_x5970_)
      (let ((_$e5972_ (immediate? _x5970_)))
        (if _$e5972_
            _$e5972_
            (let ((_$e5975_ (number? _x5970_)))
              (if _$e5975_
                  _$e5975_
                  (let ((_$e5978_ (keyword? _x5970_)))
                    (if _$e5978_
                        _$e5978_
                        (let ((_$e5981_ (string? _x5970_)))
                          (if _$e5981_
                              _$e5981_
                              (let ((_$e5984_ (vector? _x5970_)))
                                (if _$e5984_
                                    _$e5984_
                                    (u8vector? _x5970_)))))))))))))
  (define gx#stx-boolean? (lambda (_e5968_) (boolean? (gx#stx-e _e5968_))))
  (define gx#stx-keyword? (lambda (_e5966_) (keyword? (gx#stx-e _e5966_))))
  (define gx#stx-char? (lambda (_e5964_) (char? (gx#stx-e _e5964_))))
  (define gx#stx-number? (lambda (_e5962_) (number? (gx#stx-e _e5962_))))
  (define gx#stx-fixnum? (lambda (_e5960_) (fixnum? (gx#stx-e _e5960_))))
  (define gx#stx-string? (lambda (_e5958_) (string? (gx#stx-e _e5958_))))
  (define gx#stx-null? (lambda (_e5956_) (null? (gx#stx-e _e5956_))))
  (define gx#stx-pair? (lambda (_e5954_) (pair? (gx#stx-e _e5954_))))
  (define gx#stx-list?
    (lambda (_e5916_)
      (let* ((_g59175926_ (gx#stx-e _e5916_))
             (_E59205930_
              (lambda () (error '"No clause matching" _g59175926_))))
        (let ((_K59225946_ (lambda (_rest5944_) (gx#stx-list? _rest5944_)))
              (_K59215936_ (lambda (_tail5934_) (null? _tail5934_))))
          (if (##pair? _g59175926_)
              (let* ((_tl59245949_ (##cdr _g59175926_))
                     (_rest5952_ _tl59245949_))
                (gx#stx-list? _rest5952_))
              (let ((_tail5939_ _g59175926_)) (null? _tail5939_)))))))
  (define gx#stx-pair/null?
    (lambda (_e5909_)
      (let* ((_e5911_ (gx#stx-e _e5909_)) (_$e5913_ (pair? _e5911_)))
        (if _$e5913_ _$e5913_ (null? _e5911_)))))
  (define gx#stx-vector? (lambda (_e5907_) (vector? (gx#stx-e _e5907_))))
  (define gx#stx-box? (lambda (_e5905_) (box? (gx#stx-e _e5905_))))
  (define gx#stx-eq?
    (lambda (_x5902_ _y5903_) (eq? (gx#stx-e _x5902_) (gx#stx-e _y5903_))))
  (define gx#stx-eqv?
    (lambda (_x5899_ _y5900_) (eqv? (gx#stx-e _x5899_) (gx#stx-e _y5900_))))
  (define gx#stx-equal?
    (lambda (_x5896_ _y5897_) (equal? (gx#stx-e _x5896_) (gx#stx-e _y5897_))))
  (define gx#stx-false? (lambda (_x5894_) (not (gx#stx-e _x5894_))))
  (define gx#stx-identifier
    (lambda (_template5891_ . _args5892_)
      (gx#datum->syntax__1
       _template5891_
       (apply make-symbol (map gx#stx-e _args5892_))
       (gx#stx-source _template5891_))))
  (define gx#stx-identifier-marks
    (lambda (_stx5887_)
      (let ((_stx5889_ (gx#stx-unwrap__0 _stx5887_)))
        (if (##structure-direct-instance-of? _stx5889_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx5889_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx5889_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx5883_)
      (let ((_stx5885_ (gx#stx-unwrap__0 _stx5883_)))
        (if (gx#identifier-quote? _stx5885_)
            (##direct-structure-ref _stx5885_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx5838_)
      (let* ((_g58395849_ (gx#stx-e _stx5838_))
             (_else58425857_ (lambda () '#f)))
        (let ((_K58455871_
               (lambda (_rest5868_ _hd5869_)
                 (if (gx#identifier? _hd5869_)
                     (gx#identifier-list? _rest5868_)
                     '#f)))
              (_K58445862_ (lambda () '#t)))
          (let ((_try-match58415865_
                 (lambda ()
                   (if (##null? _g58395849_) (_K58445862_) (_else58425857_)))))
            (if (##pair? _g58395849_)
                (let ((_tl58475876_ (##cdr _g58395849_))
                      (_hd58465874_ (##car _g58395849_)))
                  (let ((_hd5879_ _hd58465874_) (_rest5881_ _tl58475876_))
                    (_K58455871_ _rest5881_ _hd5879_)))
                (_try-match58415865_)))))))
  (begin
    (define gx#genident__%
      (lambda (_e5815_ _src5816_)
        (gx#stx-wrap-source
         (gensym (let ((_e5818_ (gx#stx-e _e5815_)))
                   (if (interned-symbol? _e5818_) _e5818_ 'g)))
         (let ((_$e5820_ (gx#stx-source _e5815_)))
           (if _$e5820_ _$e5820_ _src5816_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let* ((_e5827_ 'g) (_src5829_ '#f))
            (gx#genident__% _e5827_ _src5829_))))
      (define gx#genident__1
        (lambda (_e5831_)
          (let ((_src5833_ '#f)) (gx#genident__% _e5831_ _src5833_))))
      (define gx#genident
        (lambda _g6235_
          (let ((_g6234_ (length _g6235_)))
            (cond ((##fx= _g6234_ 0) (apply gx#genident__0 _g6235_))
                  ((##fx= _g6234_ 1) (apply gx#genident__1 _g6235_))
                  ((##fx= _g6234_ 2) (apply gx#genident__% _g6235_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#genident
                    _g6235_))))))))
  (define gx#gentemps
    (lambda (_stx-lst5812_) (gx#stx-map1 gx#genident _stx-lst5812_)))
  (define gx#syntax->list (lambda (_stx5810_) (gx#stx-map1 values _stx5810_)))
  (define gx#stx-car (lambda (_stx5808_) (car (gx#syntax-e _stx5808_))))
  (define gx#stx-cdr (lambda (_stx5806_) (cdr (gx#syntax-e _stx5806_))))
  (define gx#stx-length
    (lambda (_stx5771_)
      (let _lp5773_ ((_rest5775_ _stx5771_) (_n5776_ '0))
        (let* ((_g57775785_ (gx#stx-e _rest5775_))
               (_else57795793_ (lambda () _n5776_))
               (_K57815798_
                (lambda (_rest5796_) (_lp5773_ _rest5796_ (fx+ _n5776_ '1)))))
          (if (##pair? _g57775785_)
              (let* ((_tl57835801_ (##cdr _g57775785_))
                     (_rest5804_ _tl57835801_))
                (_K57815798_ _rest5804_))
              (_else57795793_))))))
  (define gx#stx-for-each
    (lambda _g6237_
      (let ((_g6236_ (length _g6237_)))
        (cond ((##fx= _g6236_ 2) (apply gx#stx-for-each1 _g6237_))
              ((##fx= _g6236_ 3) (apply gx#stx-for-each2 _g6237_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-for-each
                _g6237_))))))
  (define gx#stx-for-each1
    (lambda (_f5714_ _stx5715_)
      (let _lp5717_ ((_rest5719_ _stx5715_))
        (let* ((_g57205730_ (gx#syntax-e _rest5719_))
               (_else57235738_ (lambda () (_f5714_ _rest5719_))))
          (let ((_K57265752_
                 (lambda (_rest5749_ _hd5750_)
                   (begin (_f5714_ _hd5750_) (_lp5717_ _rest5749_))))
                (_K57255743_ (lambda () '#!void)))
            (let ((_try-match57225746_
                   (lambda ()
                     (if (##null? _g57205730_)
                         (_K57255743_)
                         (_else57235738_)))))
              (if (##pair? _g57205730_)
                  (let ((_tl57285757_ (##cdr _g57205730_))
                        (_hd57275755_ (##car _g57205730_)))
                    (let ((_hd5760_ _hd57275755_) (_rest5762_ _tl57285757_))
                      (_K57265752_ _rest5762_ _hd5760_)))
                  (_try-match57225746_))))))))
  (define gx#stx-for-each2
    (lambda (_f5619_ _xstx5620_ _ystx5621_)
      (let _lp5623_ ((_xrest5625_ _xstx5620_) (_yrest5626_ _ystx5621_))
        (let* ((_g56275637_ (gx#syntax-e _xrest5625_))
               (_else56305645_ (lambda () '#!void)))
          (let ((_K56335702_
                 (lambda (_xrest5671_ _xhd5672_)
                   (let* ((_g56735680_ (gx#syntax-e _yrest5626_))
                          (_E56755684_
                           (lambda ()
                             (error '"No clause matching" _g56735680_)))
                          (_K56765690_
                           (lambda (_yrest5687_ _yhd5688_)
                             (begin
                               (_f5619_ _xhd5672_ _yhd5688_)
                               (_lp5623_ _xrest5671_ _yrest5687_)))))
                     (if (##pair? _g56735680_)
                         (let ((_hd56775693_ (##car _g56735680_))
                               (_tl56785695_ (##cdr _g56735680_)))
                           (let* ((_yhd5698_ _hd56775693_)
                                  (_yrest5700_ _tl56785695_))
                             (_K56765690_ _yrest5700_ _yhd5698_)))
                         (_E56755684_)))))
                (_K56325665_
                 (lambda ()
                   (let* ((_yrest56495654_ _yrest5626_)
                          (_E56515658_
                           (lambda ()
                             (error '"No clause matching" _yrest56495654_)))
                          (_K56525662_
                           (lambda () (_f5619_ _xrest5625_ _yrest5626_))))
                     (if (not (gx#stx-null? _yrest56495654_))
                         (_K56525662_)
                         (_E56515658_))))))
            (let ((_try-match56295668_
                   (lambda ()
                     (if (not (null? _g56275637_))
                         (_K56325665_)
                         (_else56305645_)))))
              (if (##pair? _g56275637_)
                  (let ((_tl56355707_ (##cdr _g56275637_))
                        (_hd56345705_ (##car _g56275637_)))
                    (let ((_xhd5710_ _hd56345705_) (_xrest5712_ _tl56355707_))
                      (_K56335702_ _xrest5712_ _xhd5710_)))
                  (_try-match56295668_))))))))
  (define gx#stx-map
    (lambda _g6239_
      (let ((_g6238_ (length _g6239_)))
        (cond ((##fx= _g6238_ 2) (apply gx#stx-map1 _g6239_))
              ((##fx= _g6238_ 3) (apply gx#stx-map2 _g6239_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#stx-map
                _g6239_))))))
  (define gx#stx-map1
    (lambda (_f5562_ _stx5563_)
      (let _recur5565_ ((_rest5567_ _stx5563_))
        (let* ((_g55685578_ (gx#syntax-e _rest5567_))
               (_else55715586_ (lambda () (_f5562_ _rest5567_))))
          (let ((_K55745600_
                 (lambda (_rest5597_ _hd5598_)
                   (cons (_f5562_ _hd5598_) (_recur5565_ _rest5597_))))
                (_K55735591_ (lambda () '())))
            (let ((_try-match55705594_
                   (lambda ()
                     (if (##null? _g55685578_)
                         (_K55735591_)
                         (_else55715586_)))))
              (if (##pair? _g55685578_)
                  (let ((_tl55765605_ (##cdr _g55685578_))
                        (_hd55755603_ (##car _g55685578_)))
                    (let ((_hd5608_ _hd55755603_) (_rest5610_ _tl55765605_))
                      (_K55745600_ _rest5610_ _hd5608_)))
                  (_try-match55705594_))))))))
  (define gx#stx-map2
    (lambda (_f5467_ _xstx5468_ _ystx5469_)
      (let _recur5471_ ((_xrest5473_ _xstx5468_) (_yrest5474_ _ystx5469_))
        (let* ((_g54755485_ (gx#syntax-e _xrest5473_))
               (_else54785493_ (lambda () '())))
          (let ((_K54815550_
                 (lambda (_xrest5519_ _xhd5520_)
                   (let* ((_g55215528_ (gx#syntax-e _yrest5474_))
                          (_E55235532_
                           (lambda ()
                             (error '"No clause matching" _g55215528_)))
                          (_K55245538_
                           (lambda (_yrest5535_ _yhd5536_)
                             (cons (_f5467_ _xhd5520_ _yhd5536_)
                                   (_recur5471_ _xrest5519_ _yrest5535_)))))
                     (if (##pair? _g55215528_)
                         (let ((_hd55255541_ (##car _g55215528_))
                               (_tl55265543_ (##cdr _g55215528_)))
                           (let* ((_yhd5546_ _hd55255541_)
                                  (_yrest5548_ _tl55265543_))
                             (_K55245538_ _yrest5548_ _yhd5546_)))
                         (_E55235532_)))))
                (_K54805513_
                 (lambda ()
                   (let* ((_yrest54975502_ _yrest5474_)
                          (_E54995506_
                           (lambda ()
                             (error '"No clause matching" _yrest54975502_)))
                          (_K55005510_
                           (lambda () (_f5467_ _xrest5473_ _yrest5474_))))
                     (if (not (gx#stx-null? _yrest54975502_))
                         (_K55005510_)
                         (_E54995506_))))))
            (let ((_try-match54775516_
                   (lambda ()
                     (if (not (null? _g54755485_))
                         (_K54805513_)
                         (_else54785493_)))))
              (if (##pair? _g54755485_)
                  (let ((_tl54835555_ (##cdr _g54755485_))
                        (_hd54825553_ (##car _g54755485_)))
                    (let ((_xhd5558_ _hd54825553_) (_xrest5560_ _tl54835555_))
                      (_K54815550_ _xrest5560_ _xhd5558_)))
                  (_try-match54775516_))))))))
  (define gx#stx-andmap
    (lambda (_f5417_ _stx5418_)
      (let _lp5420_ ((_rest5422_ _stx5418_))
        (let* ((_g54235433_ (gx#syntax-e _rest5422_))
               (_else54265441_ (lambda () (_f5417_ _rest5422_))))
          (let ((_K54295455_
                 (lambda (_rest5452_ _hd5453_)
                   (if (_f5417_ _hd5453_) (_lp5420_ _rest5452_) '#f)))
                (_K54285446_ (lambda () '#t)))
            (let ((_try-match54255449_
                   (lambda ()
                     (if (##null? _g54235433_)
                         (_K54285446_)
                         (_else54265441_)))))
              (if (##pair? _g54235433_)
                  (let ((_tl54315460_ (##cdr _g54235433_))
                        (_hd54305458_ (##car _g54235433_)))
                    (let ((_hd5463_ _hd54305458_) (_rest5465_ _tl54315460_))
                      (_K54295455_ _rest5465_ _hd5463_)))
                  (_try-match54255449_))))))))
  (define gx#stx-ormap
    (lambda (_f5364_ _stx5365_)
      (let _lp5367_ ((_rest5369_ _stx5365_))
        (let* ((_g53705380_ (gx#syntax-e _rest5369_))
               (_else53735388_ (lambda () (_f5364_ _rest5369_))))
          (let ((_K53765405_
                 (lambda (_rest5399_ _hd5400_)
                   (let ((_$e5402_ (_f5364_ _hd5400_)))
                     (if _$e5402_ _$e5402_ (_lp5367_ _rest5399_)))))
                (_K53755393_ (lambda () '#f)))
            (let ((_try-match53725396_
                   (lambda ()
                     (if (##null? _g53705380_)
                         (_K53755393_)
                         (_else53735388_)))))
              (if (##pair? _g53705380_)
                  (let ((_tl53785410_ (##cdr _g53705380_))
                        (_hd53775408_ (##car _g53705380_)))
                    (let ((_hd5413_ _hd53775408_) (_rest5415_ _tl53785410_))
                      (_K53765405_ _rest5415_ _hd5413_)))
                  (_try-match53725396_))))))))
  (define gx#stx-foldl
    (lambda (_f5312_ _iv5313_ _stx5314_)
      (let _lp5316_ ((_r5318_ _iv5313_) (_rest5319_ _stx5314_))
        (let* ((_g53205330_ (gx#syntax-e _rest5319_))
               (_else53235338_ (lambda () (_f5312_ _rest5319_ _r5318_))))
          (let ((_K53265352_
                 (lambda (_rest5349_ _hd5350_)
                   (_lp5316_ (_f5312_ _hd5350_ _r5318_) _rest5349_)))
                (_K53255343_ (lambda () _r5318_)))
            (let ((_try-match53225346_
                   (lambda ()
                     (if (##null? _g53205330_)
                         (_K53255343_)
                         (_else53235338_)))))
              (if (##pair? _g53205330_)
                  (let ((_tl53285357_ (##cdr _g53205330_))
                        (_hd53275355_ (##car _g53205330_)))
                    (let ((_hd5360_ _hd53275355_) (_rest5362_ _tl53285357_))
                      (_K53265352_ _rest5362_ _hd5360_)))
                  (_try-match53225346_))))))))
  (define gx#stx-foldr
    (lambda (_f5261_ _iv5262_ _stx5263_)
      (let _recur5265_ ((_rest5267_ _stx5263_))
        (let* ((_g52685278_ (gx#syntax-e _rest5267_))
               (_else52715286_ (lambda () (_f5261_ _rest5267_ _iv5262_))))
          (let ((_K52745300_
                 (lambda (_rest5297_ _hd5298_)
                   (_f5261_ _hd5298_ (_recur5265_ _rest5297_))))
                (_K52735291_ (lambda () _iv5262_)))
            (let ((_try-match52705294_
                   (lambda ()
                     (if (##null? _g52685278_)
                         (_K52735291_)
                         (_else52715286_)))))
              (if (##pair? _g52685278_)
                  (let ((_tl52765305_ (##cdr _g52685278_))
                        (_hd52755303_ (##car _g52685278_)))
                    (let ((_hd5308_ _hd52755303_) (_rest5310_ _tl52765305_))
                      (_K52745300_ _rest5310_ _hd5308_)))
                  (_try-match52705294_))))))))
  (define gx#stx-reverse
    (lambda (_stx5259_) (gx#stx-foldl cons '() _stx5259_)))
  (define gx#stx-last
    (lambda (_stx5220_)
      (let _lp5222_ ((_rest5224_ _stx5220_))
        (let* ((_g52255233_ (gx#syntax-e _rest5224_))
               (_else52275241_ (lambda () _rest5224_))
               (_K52295247_
                (lambda (_rest5244_ _hd5245_)
                  (if (gx#stx-null? _rest5244_)
                      _hd5245_
                      (_lp5222_ _rest5244_)))))
          (if (##pair? _g52255233_)
              (let ((_hd52305250_ (##car _g52255233_))
                    (_tl52315252_ (##cdr _g52255233_)))
                (let* ((_hd5255_ _hd52305250_) (_rest5257_ _tl52315252_))
                  (_K52295247_ _rest5257_ _hd5255_)))
              (_else52275241_))))))
  (define gx#stx-last-pair
    (lambda (_stx5191_)
      (let _lp5193_ ((_hd5195_ _stx5191_))
        (let* ((_g51965203_ (gx#syntax-e _hd5195_))
               (_E51985207_
                (lambda () (error '"No clause matching" _g51965203_)))
               (_K51995212_
                (lambda (_rest5210_)
                  (if (gx#stx-pair? _rest5210_)
                      (_lp5193_ _rest5210_)
                      _hd5195_))))
          (if (##pair? _g51965203_)
              (let* ((_tl52015215_ (##cdr _g51965203_))
                     (_rest5218_ _tl52015215_))
                (_K51995212_ _rest5218_))
              (_E51985207_))))))
  (define gx#stx-list-tail
    (lambda (_stx5160_ _k5161_)
      (let _lp5163_ ((_rest5165_ _stx5160_) (_k5166_ _k5161_))
        (if (fxpositive? _k5166_)
            (let* ((_g51675174_ (gx#syntax-e _rest5165_))
                   (_E51695178_
                    (lambda () (error '"No clause matching" _g51675174_)))
                   (_K51705183_
                    (lambda (_rest5181_)
                      (_lp5163_ _rest5181_ (fx- _k5166_ '1)))))
              (if (##pair? _g51675174_)
                  (let* ((_tl51725186_ (##cdr _g51675174_))
                         (_rest5189_ _tl51725186_))
                    (_K51705183_ _rest5189_))
                  (_E51695178_)))
            _rest5165_))))
  (define gx#stx-list-ref
    (lambda (_stx5157_ _k5158_)
      (gx#stx-car (gx#stx-list-tail _stx5157_ _k5158_))))
  (begin
    (define gx#stx-plist?__%
      (lambda (_stx5069_ _key?5070_)
        (let _lp5072_ ((_rest5074_ _stx5069_))
          (let* ((_g50755085_ (gx#stx-e _rest5074_))
                 (_else50785093_ (lambda () '#f)))
            (let ((_K50815135_
                   (lambda (_rest5104_ _hd5105_)
                     (if (_key?5070_ _hd5105_)
                         (let* ((_g51065114_ (gx#stx-e _rest5104_))
                                (_else51085122_ (lambda () '#f))
                                (_K51105127_
                                 (lambda (_rest5125_) (_lp5072_ _rest5125_))))
                           (if (##pair? _g51065114_)
                               (let* ((_tl51125130_ (##cdr _g51065114_))
                                      (_rest5133_ _tl51125130_))
                                 (_lp5072_ _rest5133_))
                               (_else51085122_)))
                         '#f)))
                  (_K50805098_ (lambda () '#t)))
              (let ((_try-match50775101_
                     (lambda ()
                       (if (##null? _g50755085_)
                           (_K50805098_)
                           (_else50785093_)))))
                (if (##pair? _g50755085_)
                    (let ((_tl50835140_ (##cdr _g50755085_))
                          (_hd50825138_ (##car _g50755085_)))
                      (let ((_hd5143_ _hd50825138_) (_rest5145_ _tl50835140_))
                        (_K50815135_ _rest5145_ _hd5143_)))
                    (_try-match50775101_))))))))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx5150_)
          (let ((_key?5152_ gx#stx-keyword?))
            (gx#stx-plist?__% _stx5150_ _key?5152_))))
      (define gx#stx-plist?
        (lambda _g6241_
          (let ((_g6240_ (length _g6241_)))
            (cond ((##fx= _g6240_ 1) (apply gx#stx-plist?__0 _g6241_))
                  ((##fx= _g6240_ 2) (apply gx#stx-plist?__% _g6241_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-plist?
                    _g6241_))))))))
  (begin
    (define gx#stx-getq__%
      (lambda (_key4987_ _stx4988_ _key=?4989_)
        (let _lp4991_ ((_rest4993_ _stx4988_))
          (let* ((_g49945002_ (gx#syntax-e _rest4993_))
                 (_else49965010_ (lambda () '#f))
                 (_K49985044_
                  (lambda (_rest5013_ _hd5014_)
                    (let* ((_g50155022_ (gx#syntax-e _rest5013_))
                           (_E50175026_
                            (lambda ()
                              (error '"No clause matching" _g50155022_)))
                           (_K50185032_
                            (lambda (_rest5029_ _val5030_)
                              (if (_key=?4989_ _hd5014_ _key4987_)
                                  _val5030_
                                  (_lp4991_ _rest5029_)))))
                      (if (##pair? _g50155022_)
                          (let ((_hd50195035_ (##car _g50155022_))
                                (_tl50205037_ (##cdr _g50155022_)))
                            (let* ((_val5040_ _hd50195035_)
                                   (_rest5042_ _tl50205037_))
                              (_K50185032_ _rest5042_ _val5040_)))
                          (_E50175026_))))))
            (if (##pair? _g49945002_)
                (let ((_hd49995047_ (##car _g49945002_))
                      (_tl50005049_ (##cdr _g49945002_)))
                  (let* ((_hd5052_ _hd49995047_) (_rest5054_ _tl50005049_))
                    (_K49985044_ _rest5054_ _hd5052_)))
                (_else49965010_))))))
    (begin
      (define gx#stx-getq__0
        (lambda (_key5059_ _stx5060_)
          (let ((_key=?5062_ gx#stx-eq?))
            (gx#stx-getq__% _key5059_ _stx5060_ _key=?5062_))))
      (define gx#stx-getq
        (lambda _g6243_
          (let ((_g6242_ (length _g6243_)))
            (cond ((##fx= _g6242_ 2) (apply gx#stx-getq__0 _g6243_))
                  ((##fx= _g6242_ 3) (apply gx#stx-getq__% _g6243_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#stx-getq
                    _g6243_)))))))))
