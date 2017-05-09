(declare (block) (standard-bindings) (extended-bindings))
(begin
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
    (lambda _$args2551_
      (apply make-struct-instance gx#identifier-wrap::t _$args2551_)))
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
     '#f))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args2548_
      (apply make-struct-instance gx#syntax-wrap::t _$args2548_)))
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
     '#f))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args2545_
      (apply make-struct-instance gx#syntax-quote::t _$args2545_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx2543_) (symbol? (gx#stx-e _stx2543_))))
  (define gx#identifier-quote?
    (lambda (_stx2541_)
      (if (##structure-direct-instance-of? _stx2541_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx2541_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx2536_)
      (let ((_$e2538_
             (##structure-direct-instance-of? _stx2536_ 'gx#syntax-quote::t)))
        (if _$e2538_
            _$e2538_
            (if (##structure-instance-of? _stx2536_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx2536_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx2532_)
      (let ((_stx2534_ (gx#stx-unwrap__0 _stx2532_)))
        (if (##structure-instance-of? _stx2534_ 'gerbil#AST::t)
            (##structure-ref _stx2534_ '1 AST::t '#f)
            _stx2534_))))
  (define gx#syntax->datum
    (lambda (_stx2530_)
      (if (##structure-instance-of? _stx2530_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx2530_ '1 AST::t '#f))
          (if (pair? _stx2530_)
              (cons (gx#syntax->datum (car _stx2530_))
                    (gx#syntax->datum (cdr _stx2530_)))
              (if (vector? _stx2530_)
                  (vector-map gx#syntax->datum _stx2530_)
                  (if (box? _stx2530_)
                      (box (gx#syntax->datum (unbox _stx2530_)))
                      _stx2530_))))))
  (begin
    (define gx#datum->syntax__opt-lambda2498
      (lambda (_stx2500_ _datum2501_ _src2502_)
        (let ((_wrap-datum2504_
               (lambda (_e2511_ _marks2512_)
                 ((letrec ((_recur2514_
                            (lambda (_e2516_)
                              (if (symbol? _e2516_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e2516_
                                   _src2502_
                                   _marks2512_)
                                  (if (pair? _e2516_)
                                      (cons (_recur2514_ (car _e2516_))
                                            (_recur2514_ (cdr _e2516_)))
                                      (if (vector? _e2516_)
                                          (vector-map _recur2514_ _e2516_)
                                          (if (box? _e2516_)
                                              (box (_recur2514_
                                                    (unbox _e2516_)))
                                              _e2516_)))))))
                    _recur2514_)
                  _e2511_))))
          (let ((_wrap-outer2505_
                 (lambda (_e2509_)
                   (if (##structure-instance-of? _e2509_ 'gerbil#AST::t)
                       _e2509_
                       (##structure AST::t _e2509_ _src2502_)))))
            (if (##structure-instance-of? _datum2501_ 'gerbil#AST::t)
                _datum2501_
                (if (not _stx2500_)
                    (##structure AST::t _datum2501_ _src2502_)
                    (if (gx#identifier? _stx2500_)
                        (let ((_stx2507_ (gx#stx-unwrap__0 _stx2500_)))
                          (if (gx#identifier-quote? _stx2507_)
                              (##structure
                               gx#syntax-quote::t
                               _datum2501_
                               _src2502_
                               (##structure-ref
                                _stx2507_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx2507_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer2505_
                               (_wrap-datum2504_
                                _datum2501_
                                (##structure-ref
                                 _stx2507_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx2500_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx2521_ _datum2522_)
          (let ((_src2524_ '#f))
            (gx#datum->syntax__opt-lambda2498
             _stx2521_
             _datum2522_
             _src2524_))))
      (define gx#datum->syntax
        (lambda _g2554_
          (let ((_g2553_ (length _g2554_)))
            (cond ((fx= _g2553_ 2)
                   (apply (lambda (_stx2521_ _datum2522_)
                            (gx#datum->syntax__0 _stx2521_ _datum2522_))
                          _g2554_))
                  ((fx= _g2553_ 3)
                   (apply (lambda (_stx2526_ _datum2527_ _src2528_)
                            (gx#datum->syntax__opt-lambda2498
                             _stx2526_
                             _datum2527_
                             _src2528_))
                          _g2554_))
                  (else (error "No clause matching arguments" _g2554_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda2474
      (lambda (_stx2476_ _marks2477_)
        ((letrec ((_lp2479_
                   (lambda (_e2481_ _marks2482_ _src2483_)
                     (if (##structure-direct-instance-of?
                          _e2481_
                          'gx#syntax-wrap::t)
                         (_lp2479_
                          (##structure-ref _e2481_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e2481_ '3 gx#syntax-wrap::t '#f)
                           _marks2482_)
                          (##structure-ref _e2481_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e2481_
                              'gx#identifier-wrap::t)
                             (if (null? _marks2482_)
                                 _e2481_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e2481_ '1 AST::t '#f)
                                  (##structure-ref _e2481_ '2 AST::t '#f)
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e2481_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks2482_)))
                             (if (##structure-direct-instance-of?
                                  _e2481_
                                  'gx#syntax-quote::t)
                                 _e2481_
                                 (if (##structure-instance-of?
                                      _e2481_
                                      'gerbil#AST::t)
                                     (_lp2479_
                                      (##structure-ref _e2481_ '1 AST::t '#f)
                                      _marks2482_
                                      (##structure-ref _e2481_ '2 AST::t '#f))
                                     (if (symbol? _e2481_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e2481_
                                          _src2483_
                                          (reverse _marks2482_))
                                         (if (null? _marks2482_)
                                             _e2481_
                                             (if (pair? _e2481_)
                                                 (cons (gx#stx-wrap
                                                        (car _e2481_)
                                                        _marks2482_)
                                                       (gx#stx-wrap
                                                        (cdr _e2481_)
                                                        _marks2482_))
                                                 (if (vector? _e2481_)
                                                     (vector-map
                                                      (lambda (_g24842486_)
                                                        (gx#stx-wrap
                                                         _g24842486_
                                                         _marks2482_))
                                                      _e2481_)
                                                     (if (box? _e2481_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e2481_)
                                                               _marks2482_))
                                                         _e2481_))))))))))))
           _lp2479_)
         _stx2476_
         _marks2477_
         (gx#stx-source _stx2476_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx2492_)
          (let ((_marks2494_ '()))
            (gx#stx-unwrap__opt-lambda2474 _stx2492_ _marks2494_))))
      (define gx#stx-unwrap
        (lambda _g2556_
          (let ((_g2555_ (length _g2556_)))
            (cond ((fx= _g2555_ 1)
                   (apply (lambda (_stx2492_) (gx#stx-unwrap__0 _stx2492_))
                          _g2556_))
                  ((fx= _g2555_ 2)
                   (apply (lambda (_stx2496_ _marks2497_)
                            (gx#stx-unwrap__opt-lambda2474
                             _stx2496_
                             _marks2497_))
                          _g2556_))
                  (else (error "No clause matching arguments" _g2556_))))))))
  (define gx#stx-wrap
    (lambda (_stx2469_ _marks2470_)
      (foldl (lambda (_mark2472_ _stx2473_)
               (gx#stx-apply-mark _stx2473_ _mark2472_))
             _stx2469_
             _marks2470_)))
  (define gx#stx-rewrap
    (lambda (_stx2463_ _marks2464_)
      (foldr (lambda (_mark2466_ _stx2467_)
               (gx#stx-apply-mark _stx2467_ _mark2466_))
             _stx2463_
             _marks2464_)))
  (define gx#stx-apply-mark
    (lambda (_stx2460_ _mark2461_)
      (if (##structure-direct-instance-of? _stx2460_ 'gx#syntax-quote::t)
          _stx2460_
          (if (if (##structure-direct-instance-of?
                   _stx2460_
                   'gx#syntax-wrap::t)
                  (eq? _mark2461_
                       (##structure-ref _stx2460_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx2460_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx2460_
               (gx#stx-source _stx2460_)
               _mark2461_)))))
  (define gx#apply-mark
    (lambda (_mark2424_ _marks2425_)
      (let ((_marks24262434_ _marks2425_))
        (let ((_E24292438_
               (lambda () (error '"No clause matching" _marks24262434_))))
          (let ((_else24282442_ (lambda () (cons _mark2424_ _marks2425_))))
            (let ((_K24302448_
                   (lambda (_rest2445_ _hd2446_)
                     (if (eq? _mark2424_ _hd2446_)
                         _rest2445_
                         (cons _mark2424_ _marks2425_)))))
              (if (##pair? _marks24262434_)
                  (let ((_hd24312451_ (##car _marks24262434_))
                        (_tl24322453_ (##cdr _marks24262434_)))
                    (let ((_hd2456_ _hd24312451_))
                      (let ((_rest2458_ _tl24322453_))
                        (_K24302448_ _rest2458_ _hd2456_))))
                  (_else24282442_))))))))
  (define gx#stx-e
    (lambda (_stx2422_)
      (if (##structure-instance-of? _stx2422_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx2422_ '1 AST::t '#f))
          _stx2422_)))
  (define gx#stx-source
    (lambda (_stx2420_)
      (if (##structure-instance-of? _stx2420_ 'gerbil#AST::t)
          (##structure-ref _stx2420_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx2414_ _src2415_)
      (if (let ((_$e2417_ (##structure-instance-of? _stx2414_ 'gerbil#AST::t)))
            (if _$e2417_ _$e2417_ (not _src2415_)))
          _stx2414_
          (##structure AST::t _stx2414_ _src2415_))))
  (define gx#stx-datum?
    (lambda (_stx2412_) (gx#self-quoting? (gx#stx-e _stx2412_))))
  (define gx#self-quoting?
    (lambda (_x2392_)
      (let ((_$e2394_ (boolean? _x2392_)))
        (if _$e2394_
            _$e2394_
            (let ((_$e2397_ (char? _x2392_)))
              (if _$e2397_
                  _$e2397_
                  (let ((_$e2400_ (number? _x2392_)))
                    (if _$e2400_
                        _$e2400_
                        (let ((_$e2403_ (keyword? _x2392_)))
                          (if _$e2403_
                              _$e2403_
                              (let ((_$e2406_ (string? _x2392_)))
                                (if _$e2406_
                                    _$e2406_
                                    (let ((_$e2409_ (void? _x2392_)))
                                      (if _$e2409_
                                          _$e2409_
                                          (dssl-object? _x2392_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e2390_) (boolean? (gx#stx-e _e2390_))))
  (define gx#stx-keyword? (lambda (_e2388_) (keyword? (gx#stx-e _e2388_))))
  (define gx#stx-char? (lambda (_e2386_) (char? (gx#stx-e _e2386_))))
  (define gx#stx-number? (lambda (_e2384_) (number? (gx#stx-e _e2384_))))
  (define gx#stx-fixnum? (lambda (_e2382_) (fixnum? (gx#stx-e _e2382_))))
  (define gx#stx-string? (lambda (_e2380_) (string? (gx#stx-e _e2380_))))
  (define gx#stx-null? (lambda (_e2378_) (null? (gx#stx-e _e2378_))))
  (define gx#stx-pair? (lambda (_e2376_) (pair? (gx#stx-e _e2376_))))
  (define gx#stx-list?
    (lambda (_e2336_)
      (let ((_g23372346_ (gx#stx-e _e2336_)))
        (let ((_E23402350_
               (lambda () (error '"No clause matching" _g23372346_))))
          (let ((_try-match23392361_
                 (lambda ()
                   (let ((_K23412356_
                          (lambda (_tail2354_) (null? _tail2354_))))
                     (let ((_tail2359_ _g23372346_))
                       (_K23412356_ _tail2359_))))))
            (let ((_K23422366_
                   (lambda (_rest2364_) (gx#stx-list? _rest2364_))))
              (if (##pair? _g23372346_)
                  (let ((_hd23432369_ (##car _g23372346_))
                        (_tl23442371_ (##cdr _g23372346_)))
                    (let ((_rest2374_ _tl23442371_)) (_K23422366_ _rest2374_)))
                  (_try-match23392361_))))))))
  (define gx#stx-pair/null?
    (lambda (_e2329_)
      (let ((_e2331_ (gx#stx-e _e2329_)))
        (let ((_$e2333_ (pair? _e2331_)))
          (if _$e2333_ _$e2333_ (null? _e2331_))))))
  (define gx#stx-vector? (lambda (_e2327_) (vector? (gx#stx-e _e2327_))))
  (define gx#stx-box? (lambda (_e2325_) (box? (gx#stx-e _e2325_))))
  (define gx#stx-eq?
    (lambda (_x2322_ _y2323_) (eq? (gx#stx-e _x2322_) (gx#stx-e _y2323_))))
  (define gx#stx-eqv?
    (lambda (_x2319_ _y2320_) (eqv? (gx#stx-e _x2319_) (gx#stx-e _y2320_))))
  (define gx#stx-equal?
    (lambda (_x2316_ _y2317_) (equal? (gx#stx-e _x2316_) (gx#stx-e _y2317_))))
  (define gx#stx-false? (lambda (_x2314_) (not (gx#stx-e _x2314_))))
  (define gx#stx-identifier
    (lambda (_template2311_ . _args2312_)
      (gx#datum->syntax__opt-lambda2498
       _template2311_
       (apply make-symbol (map gx#stx-e _args2312_))
       (gx#stx-source _template2311_))))
  (define gx#stx-identifier-marks
    (lambda (_stx2307_)
      (let ((_stx2309_ (gx#stx-unwrap__0 _stx2307_)))
        (if (##structure-direct-instance-of? _stx2309_ 'gx#identifier-wrap::t)
            (##structure-ref _stx2309_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx2309_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx2303_)
      (let ((_stx2305_ (gx#stx-unwrap__0 _stx2303_)))
        (if (gx#identifier-quote? _stx2305_)
            (##structure-ref _stx2305_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx2258_)
      (let ((_g22592269_ (gx#stx-e _stx2258_)))
        (let ((_E22632273_
               (lambda () (error '"No clause matching" _g22592269_))))
          (let ((_else22622277_ (lambda () '#f)))
            (let ((_try-match22612285_
                   (lambda ()
                     (let ((_K22642282_ (lambda () '#t)))
                       (if (##null? _g22592269_)
                           (_K22642282_)
                           (_else22622277_))))))
              (let ((_K22652291_
                     (lambda (_rest2288_ _hd2289_)
                       (if (gx#identifier? _hd2289_)
                           (gx#identifier-list? _rest2288_)
                           '#f))))
                (if (##pair? _g22592269_)
                    (let ((_hd22662294_ (##car _g22592269_))
                          (_tl22672296_ (##cdr _g22592269_)))
                      (let ((_hd2299_ _hd22662294_))
                        (let ((_rest2301_ _tl22672296_))
                          (_K22652291_ _rest2301_ _hd2299_))))
                    (_try-match22612285_)))))))))
  (begin
    (define gx#genident__opt-lambda2233
      (lambda (_e2235_ _src2236_)
        (gx#stx-wrap-source
         (gensym (let ((_e2238_ (gx#stx-e _e2235_)))
                   (if (interned-symbol? _e2238_) _e2238_ 'g)))
         (let ((_$e2240_ (gx#stx-source _e2235_)))
           (if _$e2240_ _$e2240_ _src2236_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e2247_ 'g))
            (let ((_src2249_ '#f))
              (gx#genident__opt-lambda2233 _e2247_ _src2249_)))))
      (define gx#genident__1
        (lambda (_e2251_)
          (let ((_src2253_ '#f))
            (gx#genident__opt-lambda2233 _e2251_ _src2253_))))
      (define gx#genident
        (lambda _g2558_
          (let ((_g2557_ (length _g2558_)))
            (cond ((fx= _g2557_ 0)
                   (apply (lambda () (gx#genident__0)) _g2558_))
                  ((fx= _g2557_ 1)
                   (apply (lambda (_e2251_) (gx#genident__1 _e2251_)) _g2558_))
                  ((fx= _g2557_ 2)
                   (apply (lambda (_e2255_ _src2256_)
                            (gx#genident__opt-lambda2233 _e2255_ _src2256_))
                          _g2558_))
                  (else (error "No clause matching arguments" _g2558_))))))))
  (define gx#gentemps
    (lambda (_stx-lst2232_) (gx#stx-map1 gx#genident _stx-lst2232_)))
  (define gx#syntax->list (lambda (_stx2230_) (gx#stx-map1 values _stx2230_)))
  (define gx#stx-car (lambda (_stx2228_) (car (gx#syntax-e _stx2228_))))
  (define gx#stx-cdr (lambda (_stx2226_) (cdr (gx#syntax-e _stx2226_))))
  (define gx#stx-length
    (lambda (_stx2189_)
      ((letrec ((_lp2191_
                 (lambda (_rest2193_ _n2194_)
                   (let ((_g21952203_ (gx#stx-e _rest2193_)))
                     (let ((_E21982207_
                            (lambda ()
                              (error '"No clause matching" _g21952203_))))
                       (let ((_else21972211_ (lambda () _n2194_)))
                         (let ((_K21992216_
                                (lambda (_rest2214_)
                                  (_lp2191_ _rest2214_ (fx1+ _n2194_)))))
                           (if (##pair? _g21952203_)
                               (let ((_hd22002219_ (##car _g21952203_))
                                     (_tl22012221_ (##cdr _g21952203_)))
                                 (let ((_rest2224_ _tl22012221_))
                                   (_K21992216_ _rest2224_)))
                               (_else21972211_)))))))))
         _lp2191_)
       _stx2189_
       '0)))
  (define gx#stx-for-each
    (lambda _g2560_
      (let ((_g2559_ (length _g2560_)))
        (cond ((fx= _g2559_ 2)
               (apply (lambda (_f2182_ _stx2183_)
                        (gx#stx-for-each1 _f2182_ _stx2183_))
                      _g2560_))
              ((fx= _g2559_ 3)
               (apply (lambda (_f2185_ _xstx2186_ _ystx2187_)
                        (gx#stx-for-each2 _f2185_ _xstx2186_ _ystx2187_))
                      _g2560_))
              (else (error "No clause matching arguments" _g2560_))))))
  (define gx#stx-for-each1
    (lambda (_f2132_ _stx2133_)
      ((letrec ((_lp2135_
                 (lambda (_rest2137_)
                   (let ((_g21382148_ (gx#syntax-e _rest2137_)))
                     (let ((_E21422152_
                            (lambda ()
                              (error '"No clause matching" _g21382148_))))
                       (let ((_else21412156_ (lambda () (_f2132_ _rest2137_))))
                         (let ((_try-match21402164_
                                (lambda ()
                                  (let ((_K21432161_ (lambda () '#!void)))
                                    (if (##null? _g21382148_)
                                        (_K21432161_)
                                        (_else21412156_))))))
                           (let ((_K21442170_
                                  (lambda (_rest2167_ _hd2168_)
                                    (begin
                                      (_f2132_ _hd2168_)
                                      (_lp2135_ _rest2167_)))))
                             (if (##pair? _g21382148_)
                                 (let ((_hd21452173_ (##car _g21382148_))
                                       (_tl21462175_ (##cdr _g21382148_)))
                                   (let ((_hd2178_ _hd21452173_))
                                     (let ((_rest2180_ _tl21462175_))
                                       (_K21442170_ _rest2180_ _hd2178_))))
                                 (_try-match21402164_))))))))))
         _lp2135_)
       _stx2133_)))
  (define gx#stx-for-each2
    (lambda (_f2037_ _xstx2038_ _ystx2039_)
      ((letrec ((_lp2041_
                 (lambda (_xrest2043_ _yrest2044_)
                   (let ((_g20452055_ (gx#syntax-e _xrest2043_)))
                     (let ((_E20492059_
                            (lambda ()
                              (error '"No clause matching" _g20452055_))))
                       (let ((_else20482063_ (lambda () '#!void)))
                         (let ((_try-match20472086_
                                (lambda ()
                                  (let ((_K20502083_
                                         (lambda ()
                                           (let ((_yrest20672072_ _yrest2044_))
                                             (let ((_E20692076_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest20672072_))))
                                               (let ((_K20702080_
                                                      (lambda ()
                                                        (_f2037_ _xrest2043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest2044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest20672072_))
                                                     (_K20702080_)
                                                     (_E20692076_))))))))
                                    (if (not (null? _g20452055_))
                                        (_K20502083_)
                                        (_else20482063_))))))
                           (let ((_K20512120_
                                  (lambda (_xrest2089_ _xhd2090_)
                                    (let ((_g20912098_
                                           (gx#syntax-e _yrest2044_)))
                                      (let ((_E20932102_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g20912098_))))
                                        (let ((_K20942108_
                                               (lambda (_yrest2105_ _yhd2106_)
                                                 (begin
                                                   (_f2037_ _xhd2090_
                                                            _yhd2106_)
                                                   (_lp2041_
                                                    _xrest2089_
                                                    _yrest2105_)))))
                                          (if (##pair? _g20912098_)
                                              (let ((_hd20952111_
                                                     (##car _g20912098_))
                                                    (_tl20962113_
                                                     (##cdr _g20912098_)))
                                                (let ((_yhd2116_ _hd20952111_))
                                                  (let ((_yrest2118_
                                                         _tl20962113_))
                                                    (_K20942108_
                                                     _yrest2118_
                                                     _yhd2116_))))
                                              (_E20932102_))))))))
                             (if (##pair? _g20452055_)
                                 (let ((_hd20522123_ (##car _g20452055_))
                                       (_tl20532125_ (##cdr _g20452055_)))
                                   (let ((_xhd2128_ _hd20522123_))
                                     (let ((_xrest2130_ _tl20532125_))
                                       (_K20512120_ _xrest2130_ _xhd2128_))))
                                 (_try-match20472086_))))))))))
         _lp2041_)
       _xstx2038_
       _ystx2039_)))
  (define gx#stx-map
    (lambda _g2562_
      (let ((_g2561_ (length _g2562_)))
        (cond ((fx= _g2561_ 2)
               (apply (lambda (_f2030_ _stx2031_)
                        (gx#stx-map1 _f2030_ _stx2031_))
                      _g2562_))
              ((fx= _g2561_ 3)
               (apply (lambda (_f2033_ _xstx2034_ _ystx2035_)
                        (gx#stx-map2 _f2033_ _xstx2034_ _ystx2035_))
                      _g2562_))
              (else (error "No clause matching arguments" _g2562_))))))
  (define gx#stx-map1
    (lambda (_f1980_ _stx1981_)
      ((letrec ((_recur1983_
                 (lambda (_rest1985_)
                   (let ((_g19861996_ (gx#syntax-e _rest1985_)))
                     (let ((_E19902000_
                            (lambda ()
                              (error '"No clause matching" _g19861996_))))
                       (let ((_else19892004_ (lambda () (_f1980_ _rest1985_))))
                         (let ((_try-match19882012_
                                (lambda ()
                                  (let ((_K19912009_ (lambda () '())))
                                    (if (##null? _g19861996_)
                                        (_K19912009_)
                                        (_else19892004_))))))
                           (let ((_K19922018_
                                  (lambda (_rest2015_ _hd2016_)
                                    (cons (_f1980_ _hd2016_)
                                          (_recur1983_ _rest2015_)))))
                             (if (##pair? _g19861996_)
                                 (let ((_hd19932021_ (##car _g19861996_))
                                       (_tl19942023_ (##cdr _g19861996_)))
                                   (let ((_hd2026_ _hd19932021_))
                                     (let ((_rest2028_ _tl19942023_))
                                       (_K19922018_ _rest2028_ _hd2026_))))
                                 (_try-match19882012_))))))))))
         _recur1983_)
       _stx1981_)))
  (define gx#stx-map2
    (lambda (_f1885_ _xstx1886_ _ystx1887_)
      ((letrec ((_recur1889_
                 (lambda (_xrest1891_ _yrest1892_)
                   (let ((_g18931903_ (gx#syntax-e _xrest1891_)))
                     (let ((_E18971907_
                            (lambda ()
                              (error '"No clause matching" _g18931903_))))
                       (let ((_else18961911_ (lambda () '())))
                         (let ((_try-match18951934_
                                (lambda ()
                                  (let ((_K18981931_
                                         (lambda ()
                                           (let ((_yrest19151920_ _yrest1892_))
                                             (let ((_E19171924_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest19151920_))))
                                               (let ((_K19181928_
                                                      (lambda ()
                                                        (_f1885_ _xrest1891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest1892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest19151920_))
                                                     (_K19181928_)
                                                     (_E19171924_))))))))
                                    (if (not (null? _g18931903_))
                                        (_K18981931_)
                                        (_else18961911_))))))
                           (let ((_K18991968_
                                  (lambda (_xrest1937_ _xhd1938_)
                                    (let ((_g19391946_
                                           (gx#syntax-e _yrest1892_)))
                                      (let ((_E19411950_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g19391946_))))
                                        (let ((_K19421956_
                                               (lambda (_yrest1953_ _yhd1954_)
                                                 (cons (_f1885_ _xhd1938_
                                                                _yhd1954_)
                                                       (_recur1889_
                                                        _xrest1937_
                                                        _yrest1953_)))))
                                          (if (##pair? _g19391946_)
                                              (let ((_hd19431959_
                                                     (##car _g19391946_))
                                                    (_tl19441961_
                                                     (##cdr _g19391946_)))
                                                (let ((_yhd1964_ _hd19431959_))
                                                  (let ((_yrest1966_
                                                         _tl19441961_))
                                                    (_K19421956_
                                                     _yrest1966_
                                                     _yhd1964_))))
                                              (_E19411950_))))))))
                             (if (##pair? _g18931903_)
                                 (let ((_hd19001971_ (##car _g18931903_))
                                       (_tl19011973_ (##cdr _g18931903_)))
                                   (let ((_xhd1976_ _hd19001971_))
                                     (let ((_xrest1978_ _tl19011973_))
                                       (_K18991968_ _xrest1978_ _xhd1976_))))
                                 (_try-match18951934_))))))))))
         _recur1889_)
       _xstx1886_
       _ystx1887_)))
  (define gx#stx-andmap
    (lambda (_f1835_ _stx1836_)
      ((letrec ((_lp1838_
                 (lambda (_rest1840_)
                   (let ((_g18411851_ (gx#syntax-e _rest1840_)))
                     (let ((_E18451855_
                            (lambda ()
                              (error '"No clause matching" _g18411851_))))
                       (let ((_else18441859_ (lambda () (_f1835_ _rest1840_))))
                         (let ((_try-match18431867_
                                (lambda ()
                                  (let ((_K18461864_ (lambda () '#t)))
                                    (if (##null? _g18411851_)
                                        (_K18461864_)
                                        (_else18441859_))))))
                           (let ((_K18471873_
                                  (lambda (_rest1870_ _hd1871_)
                                    (if (_f1835_ _hd1871_)
                                        (_lp1838_ _rest1870_)
                                        '#f))))
                             (if (##pair? _g18411851_)
                                 (let ((_hd18481876_ (##car _g18411851_))
                                       (_tl18491878_ (##cdr _g18411851_)))
                                   (let ((_hd1881_ _hd18481876_))
                                     (let ((_rest1883_ _tl18491878_))
                                       (_K18471873_ _rest1883_ _hd1881_))))
                                 (_try-match18431867_))))))))))
         _lp1838_)
       _stx1836_)))
  (define gx#stx-ormap
    (lambda (_f1782_ _stx1783_)
      ((letrec ((_lp1785_
                 (lambda (_rest1787_)
                   (let ((_g17881798_ (gx#syntax-e _rest1787_)))
                     (let ((_E17921802_
                            (lambda ()
                              (error '"No clause matching" _g17881798_))))
                       (let ((_else17911806_ (lambda () (_f1782_ _rest1787_))))
                         (let ((_try-match17901814_
                                (lambda ()
                                  (let ((_K17931811_ (lambda () '#f)))
                                    (if (##null? _g17881798_)
                                        (_K17931811_)
                                        (_else17911806_))))))
                           (let ((_K17941823_
                                  (lambda (_rest1817_ _hd1818_)
                                    (let ((_$e1820_ (_f1782_ _hd1818_)))
                                      (if _$e1820_
                                          _$e1820_
                                          (_lp1785_ _rest1817_))))))
                             (if (##pair? _g17881798_)
                                 (let ((_hd17951826_ (##car _g17881798_))
                                       (_tl17961828_ (##cdr _g17881798_)))
                                   (let ((_hd1831_ _hd17951826_))
                                     (let ((_rest1833_ _tl17961828_))
                                       (_K17941823_ _rest1833_ _hd1831_))))
                                 (_try-match17901814_))))))))))
         _lp1785_)
       _stx1783_)))
  (define gx#stx-foldl
    (lambda (_f1730_ _iv1731_ _stx1732_)
      ((letrec ((_lp1734_
                 (lambda (_r1736_ _rest1737_)
                   (let ((_g17381748_ (gx#syntax-e _rest1737_)))
                     (let ((_E17421752_
                            (lambda ()
                              (error '"No clause matching" _g17381748_))))
                       (let ((_else17411756_
                              (lambda () (_f1730_ _rest1737_ _r1736_))))
                         (let ((_try-match17401764_
                                (lambda ()
                                  (let ((_K17431761_ (lambda () _r1736_)))
                                    (if (##null? _g17381748_)
                                        (_K17431761_)
                                        (_else17411756_))))))
                           (let ((_K17441770_
                                  (lambda (_rest1767_ _hd1768_)
                                    (_lp1734_
                                     (_f1730_ _hd1768_ _r1736_)
                                     _rest1767_))))
                             (if (##pair? _g17381748_)
                                 (let ((_hd17451773_ (##car _g17381748_))
                                       (_tl17461775_ (##cdr _g17381748_)))
                                   (let ((_hd1778_ _hd17451773_))
                                     (let ((_rest1780_ _tl17461775_))
                                       (_K17441770_ _rest1780_ _hd1778_))))
                                 (_try-match17401764_))))))))))
         _lp1734_)
       _iv1731_
       _stx1732_)))
  (define gx#stx-foldr
    (lambda (_f1679_ _iv1680_ _stx1681_)
      ((letrec ((_recur1683_
                 (lambda (_rest1685_)
                   (let ((_g16861696_ (gx#syntax-e _rest1685_)))
                     (let ((_E16901700_
                            (lambda ()
                              (error '"No clause matching" _g16861696_))))
                       (let ((_else16891704_
                              (lambda () (_f1679_ _rest1685_ _iv1680_))))
                         (let ((_try-match16881712_
                                (lambda ()
                                  (let ((_K16911709_ (lambda () _iv1680_)))
                                    (if (##null? _g16861696_)
                                        (_K16911709_)
                                        (_else16891704_))))))
                           (let ((_K16921718_
                                  (lambda (_rest1715_ _hd1716_)
                                    (_f1679_ _hd1716_
                                             (_recur1683_ _rest1715_)))))
                             (if (##pair? _g16861696_)
                                 (let ((_hd16931721_ (##car _g16861696_))
                                       (_tl16941723_ (##cdr _g16861696_)))
                                   (let ((_hd1726_ _hd16931721_))
                                     (let ((_rest1728_ _tl16941723_))
                                       (_K16921718_ _rest1728_ _hd1726_))))
                                 (_try-match16881712_))))))))))
         _recur1683_)
       _stx1681_)))
  (define gx#stx-reverse
    (lambda (_stx1677_) (gx#stx-foldl cons '() _stx1677_)))
  (define gx#stx-last
    (lambda (_stx1638_)
      ((letrec ((_lp1640_
                 (lambda (_rest1642_)
                   (let ((_g16431651_ (gx#syntax-e _rest1642_)))
                     (let ((_E16461655_
                            (lambda ()
                              (error '"No clause matching" _g16431651_))))
                       (let ((_else16451659_ (lambda () _rest1642_)))
                         (let ((_K16471665_
                                (lambda (_rest1662_ _hd1663_)
                                  (if (gx#stx-null? _rest1662_)
                                      _hd1663_
                                      (_lp1640_ _rest1662_)))))
                           (if (##pair? _g16431651_)
                               (let ((_hd16481668_ (##car _g16431651_))
                                     (_tl16491670_ (##cdr _g16431651_)))
                                 (let ((_hd1673_ _hd16481668_))
                                   (let ((_rest1675_ _tl16491670_))
                                     (_K16471665_ _rest1675_ _hd1673_))))
                               (_else16451659_)))))))))
         _lp1640_)
       _stx1638_)))
  (define gx#stx-last-pair
    (lambda (_stx1607_)
      ((letrec ((_lp1609_
                 (lambda (_hd1611_)
                   (let ((_g16121619_ (gx#syntax-e _hd1611_)))
                     (let ((_E16141623_
                            (lambda ()
                              (error '"No clause matching" _g16121619_))))
                       (let ((_K16151628_
                              (lambda (_rest1626_)
                                (if (gx#stx-pair? _rest1626_)
                                    (_lp1609_ _rest1626_)
                                    _hd1611_))))
                         (if (##pair? _g16121619_)
                             (let ((_hd16161631_ (##car _g16121619_))
                                   (_tl16171633_ (##cdr _g16121619_)))
                               (let ((_rest1636_ _tl16171633_))
                                 (_K16151628_ _rest1636_)))
                             (_E16141623_))))))))
         _lp1609_)
       _stx1607_)))
  (define gx#stx-list-tail
    (lambda (_stx1574_ _k1575_)
      ((letrec ((_lp1577_
                 (lambda (_rest1579_ _k1580_)
                   (if (fxpositive? _k1580_)
                       (let ((_g15811588_ (gx#syntax-e _rest1579_)))
                         (let ((_E15831592_
                                (lambda ()
                                  (error '"No clause matching" _g15811588_))))
                           (let ((_K15841597_
                                  (lambda (_rest1595_)
                                    (_lp1577_ _rest1595_ (fx1- _k1580_)))))
                             (if (##pair? _g15811588_)
                                 (let ((_hd15851600_ (##car _g15811588_))
                                       (_tl15861602_ (##cdr _g15811588_)))
                                   (let ((_rest1605_ _tl15861602_))
                                     (_K15841597_ _rest1605_)))
                                 (_E15831592_)))))
                       _rest1579_))))
         _lp1577_)
       _stx1574_
       _k1575_)))
  (define gx#stx-list-ref
    (lambda (_stx1571_ _k1572_)
      (gx#stx-car (gx#stx-list-tail _stx1571_ _k1572_))))
  (begin
    (define gx#stx-plist?__opt-lambda1479
      (lambda (_stx1481_ _key?1482_)
        ((letrec ((_lp1484_
                   (lambda (_rest1486_)
                     (let ((_g14871497_ (gx#stx-e _rest1486_)))
                       (let ((_E14911501_
                              (lambda ()
                                (error '"No clause matching" _g14871497_))))
                         (let ((_else14901505_ (lambda () '#f)))
                           (let ((_try-match14891513_
                                  (lambda ()
                                    (let ((_K14921510_ (lambda () '#t)))
                                      (if (##null? _g14871497_)
                                          (_K14921510_)
                                          (_else14901505_))))))
                             (let ((_K14931549_
                                    (lambda (_rest1516_ _hd1517_)
                                      (if (_key?1482_ _hd1517_)
                                          (let ((_g15181526_
                                                 (gx#stx-e _rest1516_)))
                                            (let ((_E15211530_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g15181526_))))
                                              (let ((_else15201534_
                                                     (lambda () '#f)))
                                                (let ((_K15221539_
                                                       (lambda (_rest1537_)
                                                         (_lp1484_
                                                          _rest1537_))))
                                                  (if (##pair? _g15181526_)
                                                      (let ((_hd15231542_
                                                             (##car _g15181526_))
                                                            (_tl15241544_
                                                             (##cdr _g15181526_)))
                                                        (let ((_rest1547_
                                                               _tl15241544_))
                                                          (_K15221539_
                                                           _rest1547_)))
                                                      (_else15201534_))))))
                                          '#f))))
                               (if (##pair? _g14871497_)
                                   (let ((_hd14941552_ (##car _g14871497_))
                                         (_tl14951554_ (##cdr _g14871497_)))
                                     (let ((_hd1557_ _hd14941552_))
                                       (let ((_rest1559_ _tl14951554_))
                                         (_K14931549_ _rest1559_ _hd1557_))))
                                   (_try-match14891513_))))))))))
           _lp1484_)
         _stx1481_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx1564_)
          (let ((_key?1566_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda1479 _stx1564_ _key?1566_))))
      (define gx#stx-plist?
        (lambda _g2564_
          (let ((_g2563_ (length _g2564_)))
            (cond ((fx= _g2563_ 1)
                   (apply (lambda (_stx1564_) (gx#stx-plist?__0 _stx1564_))
                          _g2564_))
                  ((fx= _g2563_ 2)
                   (apply (lambda (_stx1568_ _key?1569_)
                            (gx#stx-plist?__opt-lambda1479
                             _stx1568_
                             _key?1569_))
                          _g2564_))
                  (else (error "No clause matching arguments" _g2564_))))))))
  (begin
    (define gx#stx-getq__opt-lambda1397
      (lambda (_key1399_ _stx1400_ _key=?1401_)
        ((letrec ((_lp1403_
                   (lambda (_rest1405_)
                     (let ((_g14061414_ (gx#syntax-e _rest1405_)))
                       (let ((_E14091418_
                              (lambda ()
                                (error '"No clause matching" _g14061414_))))
                         (let ((_else14081422_ (lambda () '#f)))
                           (let ((_K14101456_
                                  (lambda (_rest1425_ _hd1426_)
                                    (let ((_g14271434_
                                           (gx#syntax-e _rest1425_)))
                                      (let ((_E14291438_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g14271434_))))
                                        (let ((_K14301444_
                                               (lambda (_rest1441_ _val1442_)
                                                 (if (_key=?1401_
                                                      _hd1426_
                                                      _key1399_)
                                                     _val1442_
                                                     (_lp1403_ _rest1441_)))))
                                          (if (##pair? _g14271434_)
                                              (let ((_hd14311447_
                                                     (##car _g14271434_))
                                                    (_tl14321449_
                                                     (##cdr _g14271434_)))
                                                (let ((_val1452_ _hd14311447_))
                                                  (let ((_rest1454_
                                                         _tl14321449_))
                                                    (_K14301444_
                                                     _rest1454_
                                                     _val1452_))))
                                              (_E14291438_))))))))
                             (if (##pair? _g14061414_)
                                 (let ((_hd14111459_ (##car _g14061414_))
                                       (_tl14121461_ (##cdr _g14061414_)))
                                   (let ((_hd1464_ _hd14111459_))
                                     (let ((_rest1466_ _tl14121461_))
                                       (_K14101456_ _rest1466_ _hd1464_))))
                                 (_else14081422_)))))))))
           _lp1403_)
         _stx1400_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key1471_ _stx1472_)
          (let ((_key=?1474_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda1397 _key1471_ _stx1472_ _key=?1474_))))
      (define gx#stx-getq
        (lambda _g2566_
          (let ((_g2565_ (length _g2566_)))
            (cond ((fx= _g2565_ 2)
                   (apply (lambda (_key1471_ _stx1472_)
                            (gx#stx-getq__0 _key1471_ _stx1472_))
                          _g2566_))
                  ((fx= _g2565_ 3)
                   (apply (lambda (_key1476_ _stx1477_ _key=?1478_)
                            (gx#stx-getq__opt-lambda1397
                             _key1476_
                             _stx1477_
                             _key=?1478_))
                          _g2566_))
                  (else (error "No clause matching arguments" _g2566_)))))))))
