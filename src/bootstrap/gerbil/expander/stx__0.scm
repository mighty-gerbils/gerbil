(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#identifier-wrap::t
    (make-struct-type
     'gx#identifier-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
  (define gx#make-identifier-wrap
    (lambda _$args2504_
      (apply make-struct-instance gx#identifier-wrap::t _$args2504_)))
  (define gx#identifier-wrap-marks
    (make-struct-field-accessor gx#identifier-wrap::t '0))
  (define gx#identifier-wrap-marks-set!
    (make-struct-field-mutator gx#identifier-wrap::t '0))
  (begin)
  (define gx#syntax-wrap::t
    (make-struct-type
     'gx#syntax-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args2501_
      (apply make-struct-instance gx#syntax-wrap::t _$args2501_)))
  (define gx#syntax-wrap-mark
    (make-struct-field-accessor gx#syntax-wrap::t '0))
  (define gx#syntax-wrap-mark-set!
    (make-struct-field-mutator gx#syntax-wrap::t '0))
  (begin)
  (define gx#syntax-quote::t
    (make-struct-type
     'gx#syntax-quote::t
     AST::t
     '2
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args2498_
      (apply make-struct-instance gx#syntax-quote::t _$args2498_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (begin)
  (define gx#identifier? (lambda (_stx2496_) (symbol? (gx#stx-e _stx2496_))))
  (define gx#identifier-quote?
    (lambda (_stx2494_)
      (if (gx#syntax-quote? _stx2494_) (symbol? (AST-e _stx2494_)) '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx2489_)
      (let ((_$e2491_ (gx#syntax-quote? _stx2489_)))
        (if _$e2491_
            _$e2491_
            (if (AST? _stx2489_) (gx#sealed-syntax? (AST-e _stx2489_)) '#f)))))
  (define gx#syntax-e
    (lambda (_stx2485_)
      (let ((_stx2487_ (gx#stx-unwrap _stx2485_)))
        (if (AST? _stx2487_) (AST-e _stx2487_) _stx2487_))))
  (define gx#syntax->datum
    (lambda (_stx2483_)
      (if (AST? _stx2483_)
          (gx#syntax->datum (AST-e _stx2483_))
          (if (pair? _stx2483_)
              (cons (gx#syntax->datum (car _stx2483_))
                    (gx#syntax->datum (cdr _stx2483_)))
              (if (vector? _stx2483_)
                  (vector-map gx#syntax->datum _stx2483_)
                  (if (box? _stx2483_)
                      (box (gx#syntax->datum (unbox _stx2483_)))
                      _stx2483_))))))
  (define gx#datum->syntax
    (let ((_opt-lambda24512471_
           (lambda (_stx2453_ _datum2454_ _src2455_)
             (let ((_wrap-datum2457_
                    (lambda (_e2464_ _marks2465_)
                      ((letrec ((_recur2467_
                                 (lambda (_e2469_)
                                   (if (symbol? _e2469_)
                                       (gx#make-identifier-wrap
                                        _e2469_
                                        _src2455_
                                        _marks2465_)
                                       (if (pair? _e2469_)
                                           (cons (_recur2467_ (car _e2469_))
                                                 (_recur2467_ (cdr _e2469_)))
                                           (if (vector? _e2469_)
                                               (vector-map _recur2467_ _e2469_)
                                               (if (box? _e2469_)
                                                   (box (_recur2467_
                                                         (unbox _e2469_)))
                                                   _e2469_)))))))
                         _recur2467_)
                       _e2464_))))
               (let ((_wrap-outer2458_
                      (lambda (_e2462_)
                        (if (AST? _e2462_)
                            _e2462_
                            (make-AST _e2462_ _src2455_)))))
                 (if (AST? _datum2454_)
                     _datum2454_
                     (if (not _stx2453_)
                         (make-AST _datum2454_ _src2455_)
                         (if (gx#identifier? _stx2453_)
                             (let ((_stx2460_ (gx#stx-unwrap _stx2453_)))
                               (if (gx#identifier-quote? _stx2460_)
                                   (gx#make-syntax-quote
                                    _datum2454_
                                    _src2455_
                                    (gx#syntax-quote-context _stx2460_)
                                    (gx#syntax-quote-marks _stx2460_))
                                   (_wrap-outer2458_
                                    (_wrap-datum2457_
                                     _datum2454_
                                     (gx#identifier-wrap-marks _stx2460_)))))
                             (error '"Bad template syntax; expected identifier"
                                    _stx2453_)))))))))
      (lambda _g12653_
        (let ((_g12652_ (length _g12653_)))
          (cond ((fx= _g12652_ 2)
                 (apply (lambda (_stx2474_ _datum2475_)
                          (let ((_src2477_ '#f))
                            (_opt-lambda24512471_
                             _stx2474_
                             _datum2475_
                             _src2477_)))
                        _g12653_))
                ((fx= _g12652_ 3)
                 (apply (lambda (_stx2479_ _datum2480_ _src2481_)
                          (_opt-lambda24512471_
                           _stx2479_
                           _datum2480_
                           _src2481_))
                        _g12653_))
                (else (error "No clause matching arguments" _g12653_)))))))
  (define gx#stx-unwrap
    (let ((_opt-lambda24272442_
           (lambda (_stx2429_ _marks2430_)
             ((letrec ((_lp2432_
                        (lambda (_e2434_ _marks2435_ _src2436_)
                          (if (gx#syntax-wrap? _e2434_)
                              (_lp2432_
                               (AST-e _e2434_)
                               (gx#apply-mark
                                (gx#syntax-wrap-mark _e2434_)
                                _marks2435_)
                               (AST-source _e2434_))
                              (if (gx#identifier-wrap? _e2434_)
                                  (if (null? _marks2435_)
                                      _e2434_
                                      (gx#make-identifier-wrap
                                       (AST-e _e2434_)
                                       (AST-source _e2434_)
                                       (foldl gx#apply-mark
                                              (gx#identifier-wrap-marks
                                               _e2434_)
                                              _marks2435_)))
                                  (if (gx#syntax-quote? _e2434_)
                                      _e2434_
                                      (if (AST? _e2434_)
                                          (_lp2432_
                                           (AST-e _e2434_)
                                           _marks2435_
                                           (AST-source _e2434_))
                                          (if (symbol? _e2434_)
                                              (gx#make-identifier-wrap
                                               _e2434_
                                               _src2436_
                                               (reverse _marks2435_))
                                              (if (null? _marks2435_)
                                                  _e2434_
                                                  (if (pair? _e2434_)
                                                      (cons (gx#stx-wrap
                                                             (car _e2434_)
                                                             _marks2435_)
                                                            (gx#stx-wrap
                                                             (cdr _e2434_)
                                                             _marks2435_))
                                                      (if (vector? _e2434_)
                                                          (vector-map
                                                           (lambda (_g24372439_)
                                                             (gx#stx-wrap
                                                              _g24372439_
                                                              _marks2435_))
                                                           _e2434_)
                                                          (if (box? _e2434_)
                                                              (box (gx#stx-wrap
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (unbox _e2434_)
                            _marks2435_))
                      _e2434_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _lp2432_)
              _stx2429_
              _marks2430_
              (gx#stx-source _stx2429_)))))
      (lambda _g12655_
        (let ((_g12654_ (length _g12655_)))
          (cond ((fx= _g12654_ 1)
                 (apply (lambda (_stx2445_)
                          (let ((_marks2447_ '()))
                            (_opt-lambda24272442_ _stx2445_ _marks2447_)))
                        _g12655_))
                ((fx= _g12654_ 2)
                 (apply (lambda (_stx2449_ _marks2450_)
                          (_opt-lambda24272442_ _stx2449_ _marks2450_))
                        _g12655_))
                (else (error "No clause matching arguments" _g12655_)))))))
  (define gx#stx-wrap
    (lambda (_stx2422_ _marks2423_)
      (foldl (lambda (_mark2425_ _stx2426_)
               (gx#stx-apply-mark _stx2426_ _mark2425_))
             _stx2422_
             _marks2423_)))
  (define gx#stx-rewrap
    (lambda (_stx2416_ _marks2417_)
      (foldr (lambda (_mark2419_ _stx2420_)
               (gx#stx-apply-mark _stx2420_ _mark2419_))
             _stx2416_
             _marks2417_)))
  (define gx#stx-apply-mark
    (lambda (_stx2413_ _mark2414_)
      (if (gx#syntax-quote? _stx2413_)
          _stx2413_
          (if (if (gx#syntax-wrap? _stx2413_)
                  (eq? _mark2414_ (gx#syntax-wrap-mark _stx2413_))
                  '#f)
              (AST-e _stx2413_)
              (gx#make-syntax-wrap
               _stx2413_
               (gx#stx-source _stx2413_)
               _mark2414_)))))
  (define gx#apply-mark
    (lambda (_mark2377_ _marks2378_)
      (let ((_marks23792387_ _marks2378_))
        (let ((_E23822391_
               (lambda () (error '"No clause matching" _marks23792387_))))
          (let ((_else23812395_ (lambda () (cons _mark2377_ _marks2378_))))
            (let ((_K23832401_
                   (lambda (_rest2398_ _hd2399_)
                     (if (eq? _mark2377_ _hd2399_)
                         _rest2398_
                         (cons _mark2377_ _marks2378_)))))
              (if (##pair? _marks23792387_)
                  (let ((_hd23842404_ (##car _marks23792387_))
                        (_tl23852406_ (##cdr _marks23792387_)))
                    (let ((_hd2409_ _hd23842404_))
                      (let ((_rest2411_ _tl23852406_))
                        (_K23832401_ _rest2411_ _hd2409_))))
                  (_else23812395_))))))))
  (define gx#stx-e
    (lambda (_stx2375_)
      (if (AST? _stx2375_) (gx#stx-e (AST-e _stx2375_)) _stx2375_)))
  (define gx#stx-source
    (lambda (_stx2373_) (if (AST? _stx2373_) (AST-source _stx2373_) '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx2367_ _src2368_)
      (if (let ((_$e2370_ (AST? _stx2367_)))
            (if _$e2370_ _$e2370_ (not _src2368_)))
          _stx2367_
          (make-AST _stx2367_ _src2368_))))
  (define gx#stx-datum?
    (lambda (_stx2365_) (gx#self-quoting? (gx#stx-e _stx2365_))))
  (define gx#self-quoting?
    (lambda (_x2345_)
      (let ((_$e2347_ (boolean? _x2345_)))
        (if _$e2347_
            _$e2347_
            (let ((_$e2350_ (char? _x2345_)))
              (if _$e2350_
                  _$e2350_
                  (let ((_$e2353_ (number? _x2345_)))
                    (if _$e2353_
                        _$e2353_
                        (let ((_$e2356_ (keyword? _x2345_)))
                          (if _$e2356_
                              _$e2356_
                              (let ((_$e2359_ (string? _x2345_)))
                                (if _$e2359_
                                    _$e2359_
                                    (let ((_$e2362_ (void? _x2345_)))
                                      (if _$e2362_
                                          _$e2362_
                                          (dssl-object? _x2345_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e2343_) (boolean? (gx#stx-e _e2343_))))
  (define gx#stx-keyword? (lambda (_e2341_) (keyword? (gx#stx-e _e2341_))))
  (define gx#stx-char? (lambda (_e2339_) (char? (gx#stx-e _e2339_))))
  (define gx#stx-number? (lambda (_e2337_) (number? (gx#stx-e _e2337_))))
  (define gx#stx-fixnum? (lambda (_e2335_) (fixnum? (gx#stx-e _e2335_))))
  (define gx#stx-string? (lambda (_e2333_) (string? (gx#stx-e _e2333_))))
  (define gx#stx-null? (lambda (_e2331_) (null? (gx#stx-e _e2331_))))
  (define gx#stx-pair? (lambda (_e2329_) (pair? (gx#stx-e _e2329_))))
  (define gx#stx-list?
    (lambda (_e2289_)
      (let ((_g22902299_ (gx#stx-e _e2289_)))
        (let ((_E22932303_
               (lambda () (error '"No clause matching" _g22902299_))))
          (let ((_try-match22922314_
                 (lambda ()
                   (let ((_K22942309_
                          (lambda (_tail2307_) (null? _tail2307_))))
                     (let ((_tail2312_ _g22902299_))
                       (_K22942309_ _tail2312_))))))
            (let ((_K22952319_
                   (lambda (_rest2317_) (gx#stx-list? _rest2317_))))
              (if (##pair? _g22902299_)
                  (let ((_hd22962322_ (##car _g22902299_))
                        (_tl22972324_ (##cdr _g22902299_)))
                    (let ((_rest2327_ _tl22972324_)) (_K22952319_ _rest2327_)))
                  (_try-match22922314_))))))))
  (define gx#stx-pair/null?
    (lambda (_e2282_)
      (let ((_e2284_ (gx#stx-e _e2282_)))
        (let ((_$e2286_ (pair? _e2284_)))
          (if _$e2286_ _$e2286_ (null? _e2284_))))))
  (define gx#stx-vector? (lambda (_e2280_) (vector? (gx#stx-e _e2280_))))
  (define gx#stx-box? (lambda (_e2278_) (box? (gx#stx-e _e2278_))))
  (define gx#stx-eq?
    (lambda (_x2275_ _y2276_) (eq? (gx#stx-e _x2275_) (gx#stx-e _y2276_))))
  (define gx#stx-eqv?
    (lambda (_x2272_ _y2273_) (eqv? (gx#stx-e _x2272_) (gx#stx-e _y2273_))))
  (define gx#stx-equal?
    (lambda (_x2269_ _y2270_) (equal? (gx#stx-e _x2269_) (gx#stx-e _y2270_))))
  (define gx#stx-false? (lambda (_x2267_) (not (gx#stx-e _x2267_))))
  (define gx#stx-identifier
    (lambda (_template2264_ . _args2265_)
      (gx#datum->syntax
       _template2264_
       (apply make-symbol (map gx#stx-e _args2265_))
       (gx#stx-source _template2264_))))
  (define gx#stx-identifier-marks
    (lambda (_stx2260_)
      (let ((_stx2262_ (gx#stx-unwrap _stx2260_)))
        (if (gx#identifier-wrap? _stx2262_)
            (gx#identifier-wrap-marks _stx2262_)
            (gx#syntax-quote-marks _stx2262_)))))
  (define gx#stx-identifier-context
    (lambda (_stx2256_)
      (let ((_stx2258_ (gx#stx-unwrap _stx2256_)))
        (if (gx#identifier-quote? _stx2258_)
            (gx#syntax-quote-context _stx2258_)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx2211_)
      (let ((_g22122222_ (gx#stx-e _stx2211_)))
        (let ((_E22162226_
               (lambda () (error '"No clause matching" _g22122222_))))
          (let ((_else22152230_ (lambda () '#f)))
            (let ((_try-match22142238_
                   (lambda ()
                     (let ((_K22172235_ (lambda () '#t)))
                       (if (##null? _g22122222_)
                           (_K22172235_)
                           (_else22152230_))))))
              (let ((_K22182244_
                     (lambda (_rest2241_ _hd2242_)
                       (if (gx#identifier? _hd2242_)
                           (gx#identifier-list? _rest2241_)
                           '#f))))
                (if (##pair? _g22122222_)
                    (let ((_hd22192247_ (##car _g22122222_))
                          (_tl22202249_ (##cdr _g22122222_)))
                      (let ((_hd2252_ _hd22192247_))
                        (let ((_rest2254_ _tl22202249_))
                          (_K22182244_ _rest2254_ _hd2252_))))
                    (_try-match22142238_)))))))))
  (define gx#genident
    (let ((_opt-lambda21862196_
           (lambda (_e2188_ _src2189_)
             (gx#stx-wrap-source
              (gensym (let ((_e2191_ (gx#stx-e _e2188_)))
                        (if (interned-symbol? _e2191_) _e2191_ 'g)))
              (let ((_$e2193_ (gx#stx-source _e2188_)))
                (if _$e2193_ _$e2193_ _src2189_))))))
      (lambda _g12657_
        (let ((_g12656_ (length _g12657_)))
          (cond ((fx= _g12656_ 0)
                 (apply (lambda ()
                          (let ((_e2200_ 'g))
                            (let ((_src2202_ '#f))
                              (_opt-lambda21862196_ _e2200_ _src2202_))))
                        _g12657_))
                ((fx= _g12656_ 1)
                 (apply (lambda (_e2204_)
                          (let ((_src2206_ '#f))
                            (_opt-lambda21862196_ _e2204_ _src2206_)))
                        _g12657_))
                ((fx= _g12656_ 2)
                 (apply (lambda (_e2208_ _src2209_)
                          (_opt-lambda21862196_ _e2208_ _src2209_))
                        _g12657_))
                (else (error "No clause matching arguments" _g12657_)))))))
  (define gx#gentemps
    (lambda (_stx-lst2185_) (gx#stx-map gx#genident _stx-lst2185_)))
  (define gx#syntax->list (lambda (_stx2183_) (gx#stx-map values _stx2183_)))
  (define gx#stx-car (lambda (_stx2181_) (car (gx#syntax-e _stx2181_))))
  (define gx#stx-cdr (lambda (_stx2179_) (cdr (gx#syntax-e _stx2179_))))
  (define gx#stx-length
    (lambda (_stx2142_)
      ((letrec ((_lp2144_
                 (lambda (_rest2146_ _n2147_)
                   (let ((_g21482156_ (gx#stx-e _rest2146_)))
                     (let ((_E21512160_
                            (lambda ()
                              (error '"No clause matching" _g21482156_))))
                       (let ((_else21502164_ (lambda () _n2147_)))
                         (let ((_K21522169_
                                (lambda (_rest2167_)
                                  (_lp2144_ _rest2167_ (fx1+ _n2147_)))))
                           (if (##pair? _g21482156_)
                               (let ((_hd21532172_ (##car _g21482156_))
                                     (_tl21542174_ (##cdr _g21482156_)))
                                 (let ((_rest2177_ _tl21542174_))
                                   (_K21522169_ _rest2177_)))
                               (_else21502164_)))))))))
         _lp2144_)
       _stx2142_
       '0)))
  (define gx#stx-for-each
    (lambda _g12659_
      (let ((_g12658_ (length _g12659_)))
        (cond ((fx= _g12658_ 2)
               (apply (lambda (_f2135_ _stx2136_)
                        (gx#stx-for-each1 _f2135_ _stx2136_))
                      _g12659_))
              ((fx= _g12658_ 3)
               (apply (lambda (_f2138_ _xstx2139_ _ystx2140_)
                        (gx#stx-for-each2 _f2138_ _xstx2139_ _ystx2140_))
                      _g12659_))
              (else (error "No clause matching arguments" _g12659_))))))
  (define gx#stx-for-each1
    (lambda (_f2085_ _stx2086_)
      ((letrec ((_lp2088_
                 (lambda (_rest2090_)
                   (let ((_g20912101_ (gx#syntax-e _rest2090_)))
                     (let ((_E20952105_
                            (lambda ()
                              (error '"No clause matching" _g20912101_))))
                       (let ((_else20942109_ (lambda () (_f2085_ _rest2090_))))
                         (let ((_try-match20932117_
                                (lambda ()
                                  (let ((_K20962114_ (lambda () '#!void)))
                                    (if (##null? _g20912101_)
                                        (_K20962114_)
                                        (_else20942109_))))))
                           (let ((_K20972123_
                                  (lambda (_rest2120_ _hd2121_)
                                    (begin
                                      (_f2085_ _hd2121_)
                                      (_lp2088_ _rest2120_)))))
                             (if (##pair? _g20912101_)
                                 (let ((_hd20982126_ (##car _g20912101_))
                                       (_tl20992128_ (##cdr _g20912101_)))
                                   (let ((_hd2131_ _hd20982126_))
                                     (let ((_rest2133_ _tl20992128_))
                                       (_K20972123_ _rest2133_ _hd2131_))))
                                 (_try-match20932117_))))))))))
         _lp2088_)
       _stx2086_)))
  (define gx#stx-for-each2
    (lambda (_f1990_ _xstx1991_ _ystx1992_)
      ((letrec ((_lp1994_
                 (lambda (_xrest1996_ _yrest1997_)
                   (let ((_g19982008_ (gx#syntax-e _xrest1996_)))
                     (let ((_E20022012_
                            (lambda ()
                              (error '"No clause matching" _g19982008_))))
                       (let ((_else20012016_ (lambda () '#!void)))
                         (let ((_try-match20002039_
                                (lambda ()
                                  (let ((_K20032036_
                                         (lambda ()
                                           (let ((_yrest20202025_ _yrest1997_))
                                             (let ((_E20222029_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest20202025_))))
                                               (let ((_K20232033_
                                                      (lambda ()
                                                        (_f1990_ _xrest1996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest1997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest20202025_))
                                                     (_K20232033_)
                                                     (_E20222029_))))))))
                                    (if (not (null? _g19982008_))
                                        (_K20032036_)
                                        (_else20012016_))))))
                           (let ((_K20042073_
                                  (lambda (_xrest2042_ _xhd2043_)
                                    (let ((_g20442051_
                                           (gx#syntax-e _yrest1997_)))
                                      (let ((_E20462055_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g20442051_))))
                                        (let ((_K20472061_
                                               (lambda (_yrest2058_ _yhd2059_)
                                                 (begin
                                                   (_f1990_ _xhd2043_
                                                            _yhd2059_)
                                                   (_lp1994_
                                                    _xrest2042_
                                                    _yrest2058_)))))
                                          (if (##pair? _g20442051_)
                                              (let ((_hd20482064_
                                                     (##car _g20442051_))
                                                    (_tl20492066_
                                                     (##cdr _g20442051_)))
                                                (let ((_yhd2069_ _hd20482064_))
                                                  (let ((_yrest2071_
                                                         _tl20492066_))
                                                    (_K20472061_
                                                     _yrest2071_
                                                     _yhd2069_))))
                                              (_E20462055_))))))))
                             (if (##pair? _g19982008_)
                                 (let ((_hd20052076_ (##car _g19982008_))
                                       (_tl20062078_ (##cdr _g19982008_)))
                                   (let ((_xhd2081_ _hd20052076_))
                                     (let ((_xrest2083_ _tl20062078_))
                                       (_K20042073_ _xrest2083_ _xhd2081_))))
                                 (_try-match20002039_))))))))))
         _lp1994_)
       _xstx1991_
       _ystx1992_)))
  (define gx#stx-map
    (lambda _g12661_
      (let ((_g12660_ (length _g12661_)))
        (cond ((fx= _g12660_ 2)
               (apply (lambda (_f1983_ _stx1984_)
                        (gx#stx-map1 _f1983_ _stx1984_))
                      _g12661_))
              ((fx= _g12660_ 3)
               (apply (lambda (_f1986_ _xstx1987_ _ystx1988_)
                        (gx#stx-map2 _f1986_ _xstx1987_ _ystx1988_))
                      _g12661_))
              (else (error "No clause matching arguments" _g12661_))))))
  (define gx#stx-map1
    (lambda (_f1933_ _stx1934_)
      ((letrec ((_recur1936_
                 (lambda (_rest1938_)
                   (let ((_g19391949_ (gx#syntax-e _rest1938_)))
                     (let ((_E19431953_
                            (lambda ()
                              (error '"No clause matching" _g19391949_))))
                       (let ((_else19421957_ (lambda () (_f1933_ _rest1938_))))
                         (let ((_try-match19411965_
                                (lambda ()
                                  (let ((_K19441962_ (lambda () '())))
                                    (if (##null? _g19391949_)
                                        (_K19441962_)
                                        (_else19421957_))))))
                           (let ((_K19451971_
                                  (lambda (_rest1968_ _hd1969_)
                                    (cons (_f1933_ _hd1969_)
                                          (_recur1936_ _rest1968_)))))
                             (if (##pair? _g19391949_)
                                 (let ((_hd19461974_ (##car _g19391949_))
                                       (_tl19471976_ (##cdr _g19391949_)))
                                   (let ((_hd1979_ _hd19461974_))
                                     (let ((_rest1981_ _tl19471976_))
                                       (_K19451971_ _rest1981_ _hd1979_))))
                                 (_try-match19411965_))))))))))
         _recur1936_)
       _stx1934_)))
  (define gx#stx-map2
    (lambda (_f1838_ _xstx1839_ _ystx1840_)
      ((letrec ((_recur1842_
                 (lambda (_xrest1844_ _yrest1845_)
                   (let ((_g18461856_ (gx#syntax-e _xrest1844_)))
                     (let ((_E18501860_
                            (lambda ()
                              (error '"No clause matching" _g18461856_))))
                       (let ((_else18491864_ (lambda () '())))
                         (let ((_try-match18481887_
                                (lambda ()
                                  (let ((_K18511884_
                                         (lambda ()
                                           (let ((_yrest18681873_ _yrest1845_))
                                             (let ((_E18701877_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest18681873_))))
                                               (let ((_K18711881_
                                                      (lambda ()
                                                        (_f1838_ _xrest1844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest1845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest18681873_))
                                                     (_K18711881_)
                                                     (_E18701877_))))))))
                                    (if (not (null? _g18461856_))
                                        (_K18511884_)
                                        (_else18491864_))))))
                           (let ((_K18521921_
                                  (lambda (_xrest1890_ _xhd1891_)
                                    (let ((_g18921899_
                                           (gx#syntax-e _yrest1845_)))
                                      (let ((_E18941903_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g18921899_))))
                                        (let ((_K18951909_
                                               (lambda (_yrest1906_ _yhd1907_)
                                                 (cons (_f1838_ _xhd1891_
                                                                _yhd1907_)
                                                       (_recur1842_
                                                        _xrest1890_
                                                        _yrest1906_)))))
                                          (if (##pair? _g18921899_)
                                              (let ((_hd18961912_
                                                     (##car _g18921899_))
                                                    (_tl18971914_
                                                     (##cdr _g18921899_)))
                                                (let ((_yhd1917_ _hd18961912_))
                                                  (let ((_yrest1919_
                                                         _tl18971914_))
                                                    (_K18951909_
                                                     _yrest1919_
                                                     _yhd1917_))))
                                              (_E18941903_))))))))
                             (if (##pair? _g18461856_)
                                 (let ((_hd18531924_ (##car _g18461856_))
                                       (_tl18541926_ (##cdr _g18461856_)))
                                   (let ((_xhd1929_ _hd18531924_))
                                     (let ((_xrest1931_ _tl18541926_))
                                       (_K18521921_ _xrest1931_ _xhd1929_))))
                                 (_try-match18481887_))))))))))
         _recur1842_)
       _xstx1839_
       _ystx1840_)))
  (define gx#stx-andmap
    (lambda (_f1788_ _stx1789_)
      ((letrec ((_lp1791_
                 (lambda (_rest1793_)
                   (let ((_g17941804_ (gx#syntax-e _rest1793_)))
                     (let ((_E17981808_
                            (lambda ()
                              (error '"No clause matching" _g17941804_))))
                       (let ((_else17971812_ (lambda () (_f1788_ _rest1793_))))
                         (let ((_try-match17961820_
                                (lambda ()
                                  (let ((_K17991817_ (lambda () '#t)))
                                    (if (##null? _g17941804_)
                                        (_K17991817_)
                                        (_else17971812_))))))
                           (let ((_K18001826_
                                  (lambda (_rest1823_ _hd1824_)
                                    (if (_f1788_ _hd1824_)
                                        (_lp1791_ _rest1823_)
                                        '#f))))
                             (if (##pair? _g17941804_)
                                 (let ((_hd18011829_ (##car _g17941804_))
                                       (_tl18021831_ (##cdr _g17941804_)))
                                   (let ((_hd1834_ _hd18011829_))
                                     (let ((_rest1836_ _tl18021831_))
                                       (_K18001826_ _rest1836_ _hd1834_))))
                                 (_try-match17961820_))))))))))
         _lp1791_)
       _stx1789_)))
  (define gx#stx-ormap
    (lambda (_f1735_ _stx1736_)
      ((letrec ((_lp1738_
                 (lambda (_rest1740_)
                   (let ((_g17411751_ (gx#syntax-e _rest1740_)))
                     (let ((_E17451755_
                            (lambda ()
                              (error '"No clause matching" _g17411751_))))
                       (let ((_else17441759_ (lambda () (_f1735_ _rest1740_))))
                         (let ((_try-match17431767_
                                (lambda ()
                                  (let ((_K17461764_ (lambda () '#f)))
                                    (if (##null? _g17411751_)
                                        (_K17461764_)
                                        (_else17441759_))))))
                           (let ((_K17471776_
                                  (lambda (_rest1770_ _hd1771_)
                                    (let ((_$e1773_ (_f1735_ _hd1771_)))
                                      (if _$e1773_
                                          _$e1773_
                                          (_lp1738_ _rest1770_))))))
                             (if (##pair? _g17411751_)
                                 (let ((_hd17481779_ (##car _g17411751_))
                                       (_tl17491781_ (##cdr _g17411751_)))
                                   (let ((_hd1784_ _hd17481779_))
                                     (let ((_rest1786_ _tl17491781_))
                                       (_K17471776_ _rest1786_ _hd1784_))))
                                 (_try-match17431767_))))))))))
         _lp1738_)
       _stx1736_)))
  (define gx#stx-foldl
    (lambda (_f1683_ _iv1684_ _stx1685_)
      ((letrec ((_lp1687_
                 (lambda (_r1689_ _rest1690_)
                   (let ((_g16911701_ (gx#syntax-e _rest1690_)))
                     (let ((_E16951705_
                            (lambda ()
                              (error '"No clause matching" _g16911701_))))
                       (let ((_else16941709_
                              (lambda () (_f1683_ _rest1690_ _r1689_))))
                         (let ((_try-match16931717_
                                (lambda ()
                                  (let ((_K16961714_ (lambda () _r1689_)))
                                    (if (##null? _g16911701_)
                                        (_K16961714_)
                                        (_else16941709_))))))
                           (let ((_K16971723_
                                  (lambda (_rest1720_ _hd1721_)
                                    (_lp1687_
                                     (_f1683_ _hd1721_ _r1689_)
                                     _rest1720_))))
                             (if (##pair? _g16911701_)
                                 (let ((_hd16981726_ (##car _g16911701_))
                                       (_tl16991728_ (##cdr _g16911701_)))
                                   (let ((_hd1731_ _hd16981726_))
                                     (let ((_rest1733_ _tl16991728_))
                                       (_K16971723_ _rest1733_ _hd1731_))))
                                 (_try-match16931717_))))))))))
         _lp1687_)
       _iv1684_
       _stx1685_)))
  (define gx#stx-foldr
    (lambda (_f1632_ _iv1633_ _stx1634_)
      ((letrec ((_recur1636_
                 (lambda (_rest1638_)
                   (let ((_g16391649_ (gx#syntax-e _rest1638_)))
                     (let ((_E16431653_
                            (lambda ()
                              (error '"No clause matching" _g16391649_))))
                       (let ((_else16421657_
                              (lambda () (_f1632_ _rest1638_ _iv1633_))))
                         (let ((_try-match16411665_
                                (lambda ()
                                  (let ((_K16441662_ (lambda () _iv1633_)))
                                    (if (##null? _g16391649_)
                                        (_K16441662_)
                                        (_else16421657_))))))
                           (let ((_K16451671_
                                  (lambda (_rest1668_ _hd1669_)
                                    (_f1632_ _hd1669_
                                             (_recur1636_ _rest1668_)))))
                             (if (##pair? _g16391649_)
                                 (let ((_hd16461674_ (##car _g16391649_))
                                       (_tl16471676_ (##cdr _g16391649_)))
                                   (let ((_hd1679_ _hd16461674_))
                                     (let ((_rest1681_ _tl16471676_))
                                       (_K16451671_ _rest1681_ _hd1679_))))
                                 (_try-match16411665_))))))))))
         _recur1636_)
       _stx1634_)))
  (define gx#stx-reverse
    (lambda (_stx1630_) (gx#stx-foldl cons '() _stx1630_)))
  (define gx#stx-last
    (lambda (_stx1591_)
      ((letrec ((_lp1593_
                 (lambda (_rest1595_)
                   (let ((_g15961604_ (gx#syntax-e _rest1595_)))
                     (let ((_E15991608_
                            (lambda ()
                              (error '"No clause matching" _g15961604_))))
                       (let ((_else15981612_ (lambda () _rest1595_)))
                         (let ((_K16001618_
                                (lambda (_rest1615_ _hd1616_)
                                  (if (gx#stx-null? _rest1615_)
                                      _hd1616_
                                      (_lp1593_ _rest1615_)))))
                           (if (##pair? _g15961604_)
                               (let ((_hd16011621_ (##car _g15961604_))
                                     (_tl16021623_ (##cdr _g15961604_)))
                                 (let ((_hd1626_ _hd16011621_))
                                   (let ((_rest1628_ _tl16021623_))
                                     (_K16001618_ _rest1628_ _hd1626_))))
                               (_else15981612_)))))))))
         _lp1593_)
       _stx1591_)))
  (define gx#stx-last-pair
    (lambda (_stx1560_)
      ((letrec ((_lp1562_
                 (lambda (_hd1564_)
                   (let ((_g15651572_ (gx#syntax-e _hd1564_)))
                     (let ((_E15671576_
                            (lambda ()
                              (error '"No clause matching" _g15651572_))))
                       (let ((_K15681581_
                              (lambda (_rest1579_)
                                (if (gx#stx-pair? _rest1579_)
                                    (_lp1562_ _rest1579_)
                                    _hd1564_))))
                         (if (##pair? _g15651572_)
                             (let ((_hd15691584_ (##car _g15651572_))
                                   (_tl15701586_ (##cdr _g15651572_)))
                               (let ((_rest1589_ _tl15701586_))
                                 (_K15681581_ _rest1589_)))
                             (_E15671576_))))))))
         _lp1562_)
       _stx1560_)))
  (define gx#stx-list-tail
    (lambda (_stx1527_ _k1528_)
      ((letrec ((_lp1530_
                 (lambda (_rest1532_ _k1533_)
                   (if (fxpositive? _k1533_)
                       (let ((_g15341541_ (gx#syntax-e _rest1532_)))
                         (let ((_E15361545_
                                (lambda ()
                                  (error '"No clause matching" _g15341541_))))
                           (let ((_K15371550_
                                  (lambda (_rest1548_)
                                    (_lp1530_ _rest1548_ (fx1- _k1533_)))))
                             (if (##pair? _g15341541_)
                                 (let ((_hd15381553_ (##car _g15341541_))
                                       (_tl15391555_ (##cdr _g15341541_)))
                                   (let ((_rest1558_ _tl15391555_))
                                     (_K15371550_ _rest1558_)))
                                 (_E15361545_)))))
                       _rest1532_))))
         _lp1530_)
       _stx1527_
       _k1528_)))
  (define gx#stx-list-ref
    (lambda (_stx1524_ _k1525_)
      (gx#stx-car (gx#stx-list-tail _stx1524_ _k1525_))))
  (define gx#stx-plist?
    (let ((_opt-lambda14321514_
           (lambda (_stx1434_ _key?1435_)
             ((letrec ((_lp1437_
                        (lambda (_rest1439_)
                          (let ((_g14401450_ (gx#stx-e _rest1439_)))
                            (let ((_E14441454_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g14401450_))))
                              (let ((_else14431458_ (lambda () '#f)))
                                (let ((_try-match14421466_
                                       (lambda ()
                                         (let ((_K14451463_ (lambda () '#t)))
                                           (if (##null? _g14401450_)
                                               (_K14451463_)
                                               (_else14431458_))))))
                                  (let ((_K14461502_
                                         (lambda (_rest1469_ _hd1470_)
                                           (if (_key?1435_ _hd1470_)
                                               (let ((_g14711479_
                                                      (gx#stx-e _rest1469_)))
                                                 (let ((_E14741483_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14711479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_else14731487_
                                                          (lambda () '#f)))
                                                     (let ((_K14751492_
                                                            (lambda (_rest1490_)
                                                              (_lp1437_
                                                               _rest1490_))))
                                                       (if (##pair? _g14711479_)
                                                           (let ((_hd14761495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _g14711479_))
                         (_tl14771497_ (##cdr _g14711479_)))
                     (let ((_rest1500_ _tl14771497_))
                       (_K14751492_ _rest1500_)))
                   (_else14731487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '#f))))
                                    (if (##pair? _g14401450_)
                                        (let ((_hd14471505_
                                               (##car _g14401450_))
                                              (_tl14481507_
                                               (##cdr _g14401450_)))
                                          (let ((_hd1510_ _hd14471505_))
                                            (let ((_rest1512_ _tl14481507_))
                                              (_K14461502_
                                               _rest1512_
                                               _hd1510_))))
                                        (_try-match14421466_))))))))))
                _lp1437_)
              _stx1434_))))
      (lambda _g12663_
        (let ((_g12662_ (length _g12663_)))
          (cond ((fx= _g12662_ 1)
                 (apply (lambda (_stx1517_)
                          (let ((_key?1519_ gx#stx-keyword?))
                            (_opt-lambda14321514_ _stx1517_ _key?1519_)))
                        _g12663_))
                ((fx= _g12662_ 2)
                 (apply (lambda (_stx1521_ _key?1522_)
                          (_opt-lambda14321514_ _stx1521_ _key?1522_))
                        _g12663_))
                (else (error "No clause matching arguments" _g12663_)))))))
  (define gx#stx-getq
    (let ((_opt-lambda13501421_
           (lambda (_key1352_ _stx1353_ _key=?1354_)
             ((letrec ((_lp1356_
                        (lambda (_rest1358_)
                          (let ((_g13591367_ (gx#syntax-e _rest1358_)))
                            (let ((_E13621371_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g13591367_))))
                              (let ((_else13611375_ (lambda () '#f)))
                                (let ((_K13631409_
                                       (lambda (_rest1378_ _hd1379_)
                                         (let ((_g13801387_
                                                (gx#syntax-e _rest1378_)))
                                           (let ((_E13821391_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _g13801387_))))
                                             (let ((_K13831397_
                                                    (lambda (_rest1394_
                                                             _val1395_)
                                                      (if (_key=?1354_
                                                           _hd1379_
                                                           _key1352_)
                                                          _val1395_
                                                          (_lp1356_
                                                           _rest1394_)))))
                                               (if (##pair? _g13801387_)
                                                   (let ((_hd13841400_
                                                          (##car _g13801387_))
                                                         (_tl13851402_
                                                          (##cdr _g13801387_)))
                                                     (let ((_val1405_
                                                            _hd13841400_))
                                                       (let ((_rest1407_
                                                              _tl13851402_))
                                                         (_K13831397_
                                                          _rest1407_
                                                          _val1405_))))
                                                   (_E13821391_))))))))
                                  (if (##pair? _g13591367_)
                                      (let ((_hd13641412_ (##car _g13591367_))
                                            (_tl13651414_ (##cdr _g13591367_)))
                                        (let ((_hd1417_ _hd13641412_))
                                          (let ((_rest1419_ _tl13651414_))
                                            (_K13631409_
                                             _rest1419_
                                             _hd1417_))))
                                      (_else13611375_)))))))))
                _lp1356_)
              _stx1353_))))
      (lambda _g12665_
        (let ((_g12664_ (length _g12665_)))
          (cond ((fx= _g12664_ 2)
                 (apply (lambda (_key1424_ _stx1425_)
                          (let ((_key=?1427_ gx#stx-eq?))
                            (_opt-lambda13501421_
                             _key1424_
                             _stx1425_
                             _key=?1427_)))
                        _g12665_))
                ((fx= _g12664_ 3)
                 (apply (lambda (_key1429_ _stx1430_ _key=?1431_)
                          (_opt-lambda13501421_
                           _key1429_
                           _stx1430_
                           _key=?1431_))
                        _g12665_))
                (else (error "No clause matching arguments" _g12665_))))))))
