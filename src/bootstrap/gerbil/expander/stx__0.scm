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
    (lambda _$args2612_
      (apply make-struct-instance gx#identifier-wrap::t _$args2612_)))
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
    (lambda _$args2609_
      (apply make-struct-instance gx#syntax-wrap::t _$args2609_)))
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
    (lambda _$args2606_
      (apply make-struct-instance gx#syntax-quote::t _$args2606_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx2604_) (symbol? (gx#stx-e _stx2604_))))
  (define gx#identifier-quote?
    (lambda (_stx2602_)
      (if (##structure-direct-instance-of? _stx2602_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx2602_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx2597_)
      (let ((_$e2599_
             (##structure-direct-instance-of? _stx2597_ 'gx#syntax-quote::t)))
        (if _$e2599_
            _$e2599_
            (if (##structure-instance-of? _stx2597_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx2597_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx2593_)
      (let ((_stx2595_ (gx#stx-unwrap__0 _stx2593_)))
        (if (##structure-instance-of? _stx2595_ 'gerbil#AST::t)
            (##structure-ref _stx2595_ '1 AST::t '#f)
            _stx2595_))))
  (define gx#syntax->datum
    (lambda (_stx2591_)
      (if (##structure-instance-of? _stx2591_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx2591_ '1 AST::t '#f))
          (if (pair? _stx2591_)
              (cons (gx#syntax->datum (car _stx2591_))
                    (gx#syntax->datum (cdr _stx2591_)))
              (if (vector? _stx2591_)
                  (vector-map gx#syntax->datum _stx2591_)
                  (if (box? _stx2591_)
                      (box (gx#syntax->datum (unbox _stx2591_)))
                      _stx2591_))))))
  (begin
    (define gx#datum->syntax__opt-lambda2559
      (lambda (_stx2561_ _datum2562_ _src2563_)
        (let ((_wrap-datum2565_
               (lambda (_e2572_ _marks2573_)
                 ((letrec ((_recur2575_
                            (lambda (_e2577_)
                              (if (symbol? _e2577_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e2577_
                                   _src2563_
                                   _marks2573_)
                                  (if (pair? _e2577_)
                                      (cons (_recur2575_ (car _e2577_))
                                            (_recur2575_ (cdr _e2577_)))
                                      (if (vector? _e2577_)
                                          (vector-map _recur2575_ _e2577_)
                                          (if (box? _e2577_)
                                              (box (_recur2575_
                                                    (unbox _e2577_)))
                                              _e2577_)))))))
                    _recur2575_)
                  _e2572_))))
          (let ((_wrap-outer2566_
                 (lambda (_e2570_)
                   (if (##structure-instance-of? _e2570_ 'gerbil#AST::t)
                       _e2570_
                       (##structure AST::t _e2570_ _src2563_)))))
            (if (##structure-instance-of? _datum2562_ 'gerbil#AST::t)
                _datum2562_
                (if (not _stx2561_)
                    (##structure AST::t _datum2562_ _src2563_)
                    (if (gx#identifier? _stx2561_)
                        (let ((_stx2568_ (gx#stx-unwrap__0 _stx2561_)))
                          (if (gx#identifier-quote? _stx2568_)
                              (##structure
                               gx#syntax-quote::t
                               _datum2562_
                               _src2563_
                               (##structure-ref
                                _stx2568_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx2568_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer2566_
                               (_wrap-datum2565_
                                _datum2562_
                                (##structure-ref
                                 _stx2568_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx2561_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx2582_ _datum2583_)
          (let ((_src2585_ '#f))
            (gx#datum->syntax__opt-lambda2559
             _stx2582_
             _datum2583_
             _src2585_))))
      (define gx#datum->syntax
        (lambda _g2615_
          (let ((_g2614_ (length _g2615_)))
            (cond ((fx= _g2614_ 2) (apply gx#datum->syntax__0 _g2615_))
                  ((fx= _g2614_ 3)
                   (apply gx#datum->syntax__opt-lambda2559 _g2615_))
                  (else (error "No clause matching arguments" _g2615_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda2535
      (lambda (_stx2537_ _marks2538_)
        ((letrec ((_lp2540_
                   (lambda (_e2542_ _marks2543_ _src2544_)
                     (if (##structure-direct-instance-of?
                          _e2542_
                          'gx#syntax-wrap::t)
                         (_lp2540_
                          (##structure-ref _e2542_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e2542_ '3 gx#syntax-wrap::t '#f)
                           _marks2543_)
                          (##structure-ref _e2542_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e2542_
                              'gx#identifier-wrap::t)
                             (if (null? _marks2543_)
                                 _e2542_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e2542_ '1 AST::t '#f)
                                  (##structure-ref _e2542_ '2 AST::t '#f)
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e2542_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks2543_)))
                             (if (##structure-direct-instance-of?
                                  _e2542_
                                  'gx#syntax-quote::t)
                                 _e2542_
                                 (if (##structure-instance-of?
                                      _e2542_
                                      'gerbil#AST::t)
                                     (_lp2540_
                                      (##structure-ref _e2542_ '1 AST::t '#f)
                                      _marks2543_
                                      (##structure-ref _e2542_ '2 AST::t '#f))
                                     (if (symbol? _e2542_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e2542_
                                          _src2544_
                                          (reverse _marks2543_))
                                         (if (null? _marks2543_)
                                             _e2542_
                                             (if (pair? _e2542_)
                                                 (cons (gx#stx-wrap
                                                        (car _e2542_)
                                                        _marks2543_)
                                                       (gx#stx-wrap
                                                        (cdr _e2542_)
                                                        _marks2543_))
                                                 (if (vector? _e2542_)
                                                     (vector-map
                                                      (lambda (_g25452547_)
                                                        (gx#stx-wrap
                                                         _g25452547_
                                                         _marks2543_))
                                                      _e2542_)
                                                     (if (box? _e2542_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e2542_)
                                                               _marks2543_))
                                                         _e2542_))))))))))))
           _lp2540_)
         _stx2537_
         _marks2538_
         (gx#stx-source _stx2537_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx2553_)
          (let ((_marks2555_ '()))
            (gx#stx-unwrap__opt-lambda2535 _stx2553_ _marks2555_))))
      (define gx#stx-unwrap
        (lambda _g2617_
          (let ((_g2616_ (length _g2617_)))
            (cond ((fx= _g2616_ 1) (apply gx#stx-unwrap__0 _g2617_))
                  ((fx= _g2616_ 2)
                   (apply gx#stx-unwrap__opt-lambda2535 _g2617_))
                  (else (error "No clause matching arguments" _g2617_))))))))
  (define gx#stx-wrap
    (lambda (_stx2530_ _marks2531_)
      (foldl (lambda (_mark2533_ _stx2534_)
               (gx#stx-apply-mark _stx2534_ _mark2533_))
             _stx2530_
             _marks2531_)))
  (define gx#stx-rewrap
    (lambda (_stx2524_ _marks2525_)
      (foldr (lambda (_mark2527_ _stx2528_)
               (gx#stx-apply-mark _stx2528_ _mark2527_))
             _stx2524_
             _marks2525_)))
  (define gx#stx-apply-mark
    (lambda (_stx2521_ _mark2522_)
      (if (##structure-direct-instance-of? _stx2521_ 'gx#syntax-quote::t)
          _stx2521_
          (if (if (##structure-direct-instance-of?
                   _stx2521_
                   'gx#syntax-wrap::t)
                  (eq? _mark2522_
                       (##structure-ref _stx2521_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx2521_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx2521_
               (gx#stx-source _stx2521_)
               _mark2522_)))))
  (define gx#apply-mark
    (lambda (_mark2485_ _marks2486_)
      (let ((_marks24872495_ _marks2486_))
        (let ((_E24902499_
               (lambda () (error '"No clause matching" _marks24872495_))))
          (let ((_else24892503_ (lambda () (cons _mark2485_ _marks2486_))))
            (let ((_K24912509_
                   (lambda (_rest2506_ _hd2507_)
                     (if (eq? _mark2485_ _hd2507_)
                         _rest2506_
                         (cons _mark2485_ _marks2486_)))))
              (if (##pair? _marks24872495_)
                  (let ((_hd24922512_ (##car _marks24872495_))
                        (_tl24932514_ (##cdr _marks24872495_)))
                    (let ((_hd2517_ _hd24922512_))
                      (let ((_rest2519_ _tl24932514_))
                        (_K24912509_ _rest2519_ _hd2517_))))
                  (_else24892503_))))))))
  (define gx#stx-e
    (lambda (_stx2483_)
      (if (##structure-instance-of? _stx2483_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx2483_ '1 AST::t '#f))
          _stx2483_)))
  (define gx#stx-source
    (lambda (_stx2481_)
      (if (##structure-instance-of? _stx2481_ 'gerbil#AST::t)
          (##structure-ref _stx2481_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx2475_ _src2476_)
      (if (let ((_$e2478_ (##structure-instance-of? _stx2475_ 'gerbil#AST::t)))
            (if _$e2478_ _$e2478_ (not _src2476_)))
          _stx2475_
          (##structure AST::t _stx2475_ _src2476_))))
  (define gx#stx-datum?
    (lambda (_stx2473_) (gx#self-quoting? (gx#stx-e _stx2473_))))
  (define gx#self-quoting?
    (lambda (_x2453_)
      (let ((_$e2455_ (boolean? _x2453_)))
        (if _$e2455_
            _$e2455_
            (let ((_$e2458_ (char? _x2453_)))
              (if _$e2458_
                  _$e2458_
                  (let ((_$e2461_ (number? _x2453_)))
                    (if _$e2461_
                        _$e2461_
                        (let ((_$e2464_ (keyword? _x2453_)))
                          (if _$e2464_
                              _$e2464_
                              (let ((_$e2467_ (string? _x2453_)))
                                (if _$e2467_
                                    _$e2467_
                                    (let ((_$e2470_ (void? _x2453_)))
                                      (if _$e2470_
                                          _$e2470_
                                          (dssl-object? _x2453_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e2451_) (boolean? (gx#stx-e _e2451_))))
  (define gx#stx-keyword? (lambda (_e2449_) (keyword? (gx#stx-e _e2449_))))
  (define gx#stx-char? (lambda (_e2447_) (char? (gx#stx-e _e2447_))))
  (define gx#stx-number? (lambda (_e2445_) (number? (gx#stx-e _e2445_))))
  (define gx#stx-fixnum? (lambda (_e2443_) (fixnum? (gx#stx-e _e2443_))))
  (define gx#stx-string? (lambda (_e2441_) (string? (gx#stx-e _e2441_))))
  (define gx#stx-null? (lambda (_e2439_) (null? (gx#stx-e _e2439_))))
  (define gx#stx-pair? (lambda (_e2437_) (pair? (gx#stx-e _e2437_))))
  (define gx#stx-list?
    (lambda (_e2397_)
      (let ((_g23982407_ (gx#stx-e _e2397_)))
        (let ((_E24012411_
               (lambda () (error '"No clause matching" _g23982407_))))
          (let ((_try-match24002422_
                 (lambda ()
                   (let ((_K24022417_
                          (lambda (_tail2415_) (null? _tail2415_))))
                     (let ((_tail2420_ _g23982407_))
                       (_K24022417_ _tail2420_))))))
            (let ((_K24032427_
                   (lambda (_rest2425_) (gx#stx-list? _rest2425_))))
              (if (##pair? _g23982407_)
                  (let ((_hd24042430_ (##car _g23982407_))
                        (_tl24052432_ (##cdr _g23982407_)))
                    (let ((_rest2435_ _tl24052432_)) (_K24032427_ _rest2435_)))
                  (_try-match24002422_))))))))
  (define gx#stx-pair/null?
    (lambda (_e2390_)
      (let ((_e2392_ (gx#stx-e _e2390_)))
        (let ((_$e2394_ (pair? _e2392_)))
          (if _$e2394_ _$e2394_ (null? _e2392_))))))
  (define gx#stx-vector? (lambda (_e2388_) (vector? (gx#stx-e _e2388_))))
  (define gx#stx-box? (lambda (_e2386_) (box? (gx#stx-e _e2386_))))
  (define gx#stx-eq?
    (lambda (_x2383_ _y2384_) (eq? (gx#stx-e _x2383_) (gx#stx-e _y2384_))))
  (define gx#stx-eqv?
    (lambda (_x2380_ _y2381_) (eqv? (gx#stx-e _x2380_) (gx#stx-e _y2381_))))
  (define gx#stx-equal?
    (lambda (_x2377_ _y2378_) (equal? (gx#stx-e _x2377_) (gx#stx-e _y2378_))))
  (define gx#stx-false? (lambda (_x2375_) (not (gx#stx-e _x2375_))))
  (define gx#stx-identifier
    (lambda (_template2372_ . _args2373_)
      (gx#datum->syntax__opt-lambda2559
       _template2372_
       (apply make-symbol (map gx#stx-e _args2373_))
       (gx#stx-source _template2372_))))
  (define gx#stx-identifier-marks
    (lambda (_stx2368_)
      (let ((_stx2370_ (gx#stx-unwrap__0 _stx2368_)))
        (if (##structure-direct-instance-of? _stx2370_ 'gx#identifier-wrap::t)
            (##structure-ref _stx2370_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx2370_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx2364_)
      (let ((_stx2366_ (gx#stx-unwrap__0 _stx2364_)))
        (if (gx#identifier-quote? _stx2366_)
            (##structure-ref _stx2366_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx2319_)
      (let ((_g23202330_ (gx#stx-e _stx2319_)))
        (let ((_E23242334_
               (lambda () (error '"No clause matching" _g23202330_))))
          (let ((_else23232338_ (lambda () '#f)))
            (let ((_try-match23222346_
                   (lambda ()
                     (let ((_K23252343_ (lambda () '#t)))
                       (if (##null? _g23202330_)
                           (_K23252343_)
                           (_else23232338_))))))
              (let ((_K23262352_
                     (lambda (_rest2349_ _hd2350_)
                       (if (gx#identifier? _hd2350_)
                           (gx#identifier-list? _rest2349_)
                           '#f))))
                (if (##pair? _g23202330_)
                    (let ((_hd23272355_ (##car _g23202330_))
                          (_tl23282357_ (##cdr _g23202330_)))
                      (let ((_hd2360_ _hd23272355_))
                        (let ((_rest2362_ _tl23282357_))
                          (_K23262352_ _rest2362_ _hd2360_))))
                    (_try-match23222346_)))))))))
  (begin
    (define gx#genident__opt-lambda2294
      (lambda (_e2296_ _src2297_)
        (gx#stx-wrap-source
         (gensym (let ((_e2299_ (gx#stx-e _e2296_)))
                   (if (interned-symbol? _e2299_) _e2299_ 'g)))
         (let ((_$e2301_ (gx#stx-source _e2296_)))
           (if _$e2301_ _$e2301_ _src2297_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e2308_ 'g))
            (let ((_src2310_ '#f))
              (gx#genident__opt-lambda2294 _e2308_ _src2310_)))))
      (define gx#genident__1
        (lambda (_e2312_)
          (let ((_src2314_ '#f))
            (gx#genident__opt-lambda2294 _e2312_ _src2314_))))
      (define gx#genident
        (lambda _g2619_
          (let ((_g2618_ (length _g2619_)))
            (cond ((fx= _g2618_ 0) (apply gx#genident__0 _g2619_))
                  ((fx= _g2618_ 1) (apply gx#genident__1 _g2619_))
                  ((fx= _g2618_ 2) (apply gx#genident__opt-lambda2294 _g2619_))
                  (else (error "No clause matching arguments" _g2619_))))))))
  (define gx#gentemps
    (lambda (_stx-lst2293_) (gx#stx-map1 gx#genident _stx-lst2293_)))
  (define gx#syntax->list (lambda (_stx2291_) (gx#stx-map1 values _stx2291_)))
  (define gx#stx-car (lambda (_stx2289_) (car (gx#syntax-e _stx2289_))))
  (define gx#stx-cdr (lambda (_stx2287_) (cdr (gx#syntax-e _stx2287_))))
  (define gx#stx-length
    (lambda (_stx2250_)
      ((letrec ((_lp2252_
                 (lambda (_rest2254_ _n2255_)
                   (let ((_g22562264_ (gx#stx-e _rest2254_)))
                     (let ((_E22592268_
                            (lambda ()
                              (error '"No clause matching" _g22562264_))))
                       (let ((_else22582272_ (lambda () _n2255_)))
                         (let ((_K22602277_
                                (lambda (_rest2275_)
                                  (_lp2252_ _rest2275_ (fx1+ _n2255_)))))
                           (if (##pair? _g22562264_)
                               (let ((_hd22612280_ (##car _g22562264_))
                                     (_tl22622282_ (##cdr _g22562264_)))
                                 (let ((_rest2285_ _tl22622282_))
                                   (_K22602277_ _rest2285_)))
                               (_else22582272_)))))))))
         _lp2252_)
       _stx2250_
       '0)))
  (define gx#stx-for-each
    (lambda _g2621_
      (let ((_g2620_ (length _g2621_)))
        (cond ((fx= _g2620_ 2) (apply gx#stx-for-each1 _g2621_))
              ((fx= _g2620_ 3) (apply gx#stx-for-each2 _g2621_))
              (else (error "No clause matching arguments" _g2621_))))))
  (define gx#stx-for-each1
    (lambda (_f2193_ _stx2194_)
      ((letrec ((_lp2196_
                 (lambda (_rest2198_)
                   (let ((_g21992209_ (gx#syntax-e _rest2198_)))
                     (let ((_E22032213_
                            (lambda ()
                              (error '"No clause matching" _g21992209_))))
                       (let ((_else22022217_ (lambda () (_f2193_ _rest2198_))))
                         (let ((_try-match22012225_
                                (lambda ()
                                  (let ((_K22042222_ (lambda () '#!void)))
                                    (if (##null? _g21992209_)
                                        (_K22042222_)
                                        (_else22022217_))))))
                           (let ((_K22052231_
                                  (lambda (_rest2228_ _hd2229_)
                                    (begin
                                      (_f2193_ _hd2229_)
                                      (_lp2196_ _rest2228_)))))
                             (if (##pair? _g21992209_)
                                 (let ((_hd22062234_ (##car _g21992209_))
                                       (_tl22072236_ (##cdr _g21992209_)))
                                   (let ((_hd2239_ _hd22062234_))
                                     (let ((_rest2241_ _tl22072236_))
                                       (_K22052231_ _rest2241_ _hd2239_))))
                                 (_try-match22012225_))))))))))
         _lp2196_)
       _stx2194_)))
  (define gx#stx-for-each2
    (lambda (_f2098_ _xstx2099_ _ystx2100_)
      ((letrec ((_lp2102_
                 (lambda (_xrest2104_ _yrest2105_)
                   (let ((_g21062116_ (gx#syntax-e _xrest2104_)))
                     (let ((_E21102120_
                            (lambda ()
                              (error '"No clause matching" _g21062116_))))
                       (let ((_else21092124_ (lambda () '#!void)))
                         (let ((_try-match21082147_
                                (lambda ()
                                  (let ((_K21112144_
                                         (lambda ()
                                           (let ((_yrest21282133_ _yrest2105_))
                                             (let ((_E21302137_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest21282133_))))
                                               (let ((_K21312141_
                                                      (lambda ()
                                                        (_f2098_ _xrest2104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest2105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest21282133_))
                                                     (_K21312141_)
                                                     (_E21302137_))))))))
                                    (if (not (null? _g21062116_))
                                        (_K21112144_)
                                        (_else21092124_))))))
                           (let ((_K21122181_
                                  (lambda (_xrest2150_ _xhd2151_)
                                    (let ((_g21522159_
                                           (gx#syntax-e _yrest2105_)))
                                      (let ((_E21542163_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g21522159_))))
                                        (let ((_K21552169_
                                               (lambda (_yrest2166_ _yhd2167_)
                                                 (begin
                                                   (_f2098_ _xhd2151_
                                                            _yhd2167_)
                                                   (_lp2102_
                                                    _xrest2150_
                                                    _yrest2166_)))))
                                          (if (##pair? _g21522159_)
                                              (let ((_hd21562172_
                                                     (##car _g21522159_))
                                                    (_tl21572174_
                                                     (##cdr _g21522159_)))
                                                (let ((_yhd2177_ _hd21562172_))
                                                  (let ((_yrest2179_
                                                         _tl21572174_))
                                                    (_K21552169_
                                                     _yrest2179_
                                                     _yhd2177_))))
                                              (_E21542163_))))))))
                             (if (##pair? _g21062116_)
                                 (let ((_hd21132184_ (##car _g21062116_))
                                       (_tl21142186_ (##cdr _g21062116_)))
                                   (let ((_xhd2189_ _hd21132184_))
                                     (let ((_xrest2191_ _tl21142186_))
                                       (_K21122181_ _xrest2191_ _xhd2189_))))
                                 (_try-match21082147_))))))))))
         _lp2102_)
       _xstx2099_
       _ystx2100_)))
  (define gx#stx-map
    (lambda _g2623_
      (let ((_g2622_ (length _g2623_)))
        (cond ((fx= _g2622_ 2) (apply gx#stx-map1 _g2623_))
              ((fx= _g2622_ 3) (apply gx#stx-map2 _g2623_))
              (else (error "No clause matching arguments" _g2623_))))))
  (define gx#stx-map1
    (lambda (_f2041_ _stx2042_)
      ((letrec ((_recur2044_
                 (lambda (_rest2046_)
                   (let ((_g20472057_ (gx#syntax-e _rest2046_)))
                     (let ((_E20512061_
                            (lambda ()
                              (error '"No clause matching" _g20472057_))))
                       (let ((_else20502065_ (lambda () (_f2041_ _rest2046_))))
                         (let ((_try-match20492073_
                                (lambda ()
                                  (let ((_K20522070_ (lambda () '())))
                                    (if (##null? _g20472057_)
                                        (_K20522070_)
                                        (_else20502065_))))))
                           (let ((_K20532079_
                                  (lambda (_rest2076_ _hd2077_)
                                    (cons (_f2041_ _hd2077_)
                                          (_recur2044_ _rest2076_)))))
                             (if (##pair? _g20472057_)
                                 (let ((_hd20542082_ (##car _g20472057_))
                                       (_tl20552084_ (##cdr _g20472057_)))
                                   (let ((_hd2087_ _hd20542082_))
                                     (let ((_rest2089_ _tl20552084_))
                                       (_K20532079_ _rest2089_ _hd2087_))))
                                 (_try-match20492073_))))))))))
         _recur2044_)
       _stx2042_)))
  (define gx#stx-map2
    (lambda (_f1946_ _xstx1947_ _ystx1948_)
      ((letrec ((_recur1950_
                 (lambda (_xrest1952_ _yrest1953_)
                   (let ((_g19541964_ (gx#syntax-e _xrest1952_)))
                     (let ((_E19581968_
                            (lambda ()
                              (error '"No clause matching" _g19541964_))))
                       (let ((_else19571972_ (lambda () '())))
                         (let ((_try-match19561995_
                                (lambda ()
                                  (let ((_K19591992_
                                         (lambda ()
                                           (let ((_yrest19761981_ _yrest1953_))
                                             (let ((_E19781985_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest19761981_))))
                                               (let ((_K19791989_
                                                      (lambda ()
                                                        (_f1946_ _xrest1952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest1953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest19761981_))
                                                     (_K19791989_)
                                                     (_E19781985_))))))))
                                    (if (not (null? _g19541964_))
                                        (_K19591992_)
                                        (_else19571972_))))))
                           (let ((_K19602029_
                                  (lambda (_xrest1998_ _xhd1999_)
                                    (let ((_g20002007_
                                           (gx#syntax-e _yrest1953_)))
                                      (let ((_E20022011_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g20002007_))))
                                        (let ((_K20032017_
                                               (lambda (_yrest2014_ _yhd2015_)
                                                 (cons (_f1946_ _xhd1999_
                                                                _yhd2015_)
                                                       (_recur1950_
                                                        _xrest1998_
                                                        _yrest2014_)))))
                                          (if (##pair? _g20002007_)
                                              (let ((_hd20042020_
                                                     (##car _g20002007_))
                                                    (_tl20052022_
                                                     (##cdr _g20002007_)))
                                                (let ((_yhd2025_ _hd20042020_))
                                                  (let ((_yrest2027_
                                                         _tl20052022_))
                                                    (_K20032017_
                                                     _yrest2027_
                                                     _yhd2025_))))
                                              (_E20022011_))))))))
                             (if (##pair? _g19541964_)
                                 (let ((_hd19612032_ (##car _g19541964_))
                                       (_tl19622034_ (##cdr _g19541964_)))
                                   (let ((_xhd2037_ _hd19612032_))
                                     (let ((_xrest2039_ _tl19622034_))
                                       (_K19602029_ _xrest2039_ _xhd2037_))))
                                 (_try-match19561995_))))))))))
         _recur1950_)
       _xstx1947_
       _ystx1948_)))
  (define gx#stx-andmap
    (lambda (_f1896_ _stx1897_)
      ((letrec ((_lp1899_
                 (lambda (_rest1901_)
                   (let ((_g19021912_ (gx#syntax-e _rest1901_)))
                     (let ((_E19061916_
                            (lambda ()
                              (error '"No clause matching" _g19021912_))))
                       (let ((_else19051920_ (lambda () (_f1896_ _rest1901_))))
                         (let ((_try-match19041928_
                                (lambda ()
                                  (let ((_K19071925_ (lambda () '#t)))
                                    (if (##null? _g19021912_)
                                        (_K19071925_)
                                        (_else19051920_))))))
                           (let ((_K19081934_
                                  (lambda (_rest1931_ _hd1932_)
                                    (if (_f1896_ _hd1932_)
                                        (_lp1899_ _rest1931_)
                                        '#f))))
                             (if (##pair? _g19021912_)
                                 (let ((_hd19091937_ (##car _g19021912_))
                                       (_tl19101939_ (##cdr _g19021912_)))
                                   (let ((_hd1942_ _hd19091937_))
                                     (let ((_rest1944_ _tl19101939_))
                                       (_K19081934_ _rest1944_ _hd1942_))))
                                 (_try-match19041928_))))))))))
         _lp1899_)
       _stx1897_)))
  (define gx#stx-ormap
    (lambda (_f1843_ _stx1844_)
      ((letrec ((_lp1846_
                 (lambda (_rest1848_)
                   (let ((_g18491859_ (gx#syntax-e _rest1848_)))
                     (let ((_E18531863_
                            (lambda ()
                              (error '"No clause matching" _g18491859_))))
                       (let ((_else18521867_ (lambda () (_f1843_ _rest1848_))))
                         (let ((_try-match18511875_
                                (lambda ()
                                  (let ((_K18541872_ (lambda () '#f)))
                                    (if (##null? _g18491859_)
                                        (_K18541872_)
                                        (_else18521867_))))))
                           (let ((_K18551884_
                                  (lambda (_rest1878_ _hd1879_)
                                    (let ((_$e1881_ (_f1843_ _hd1879_)))
                                      (if _$e1881_
                                          _$e1881_
                                          (_lp1846_ _rest1878_))))))
                             (if (##pair? _g18491859_)
                                 (let ((_hd18561887_ (##car _g18491859_))
                                       (_tl18571889_ (##cdr _g18491859_)))
                                   (let ((_hd1892_ _hd18561887_))
                                     (let ((_rest1894_ _tl18571889_))
                                       (_K18551884_ _rest1894_ _hd1892_))))
                                 (_try-match18511875_))))))))))
         _lp1846_)
       _stx1844_)))
  (define gx#stx-foldl
    (lambda (_f1791_ _iv1792_ _stx1793_)
      ((letrec ((_lp1795_
                 (lambda (_r1797_ _rest1798_)
                   (let ((_g17991809_ (gx#syntax-e _rest1798_)))
                     (let ((_E18031813_
                            (lambda ()
                              (error '"No clause matching" _g17991809_))))
                       (let ((_else18021817_
                              (lambda () (_f1791_ _rest1798_ _r1797_))))
                         (let ((_try-match18011825_
                                (lambda ()
                                  (let ((_K18041822_ (lambda () _r1797_)))
                                    (if (##null? _g17991809_)
                                        (_K18041822_)
                                        (_else18021817_))))))
                           (let ((_K18051831_
                                  (lambda (_rest1828_ _hd1829_)
                                    (_lp1795_
                                     (_f1791_ _hd1829_ _r1797_)
                                     _rest1828_))))
                             (if (##pair? _g17991809_)
                                 (let ((_hd18061834_ (##car _g17991809_))
                                       (_tl18071836_ (##cdr _g17991809_)))
                                   (let ((_hd1839_ _hd18061834_))
                                     (let ((_rest1841_ _tl18071836_))
                                       (_K18051831_ _rest1841_ _hd1839_))))
                                 (_try-match18011825_))))))))))
         _lp1795_)
       _iv1792_
       _stx1793_)))
  (define gx#stx-foldr
    (lambda (_f1740_ _iv1741_ _stx1742_)
      ((letrec ((_recur1744_
                 (lambda (_rest1746_)
                   (let ((_g17471757_ (gx#syntax-e _rest1746_)))
                     (let ((_E17511761_
                            (lambda ()
                              (error '"No clause matching" _g17471757_))))
                       (let ((_else17501765_
                              (lambda () (_f1740_ _rest1746_ _iv1741_))))
                         (let ((_try-match17491773_
                                (lambda ()
                                  (let ((_K17521770_ (lambda () _iv1741_)))
                                    (if (##null? _g17471757_)
                                        (_K17521770_)
                                        (_else17501765_))))))
                           (let ((_K17531779_
                                  (lambda (_rest1776_ _hd1777_)
                                    (_f1740_ _hd1777_
                                             (_recur1744_ _rest1776_)))))
                             (if (##pair? _g17471757_)
                                 (let ((_hd17541782_ (##car _g17471757_))
                                       (_tl17551784_ (##cdr _g17471757_)))
                                   (let ((_hd1787_ _hd17541782_))
                                     (let ((_rest1789_ _tl17551784_))
                                       (_K17531779_ _rest1789_ _hd1787_))))
                                 (_try-match17491773_))))))))))
         _recur1744_)
       _stx1742_)))
  (define gx#stx-reverse
    (lambda (_stx1738_) (gx#stx-foldl cons '() _stx1738_)))
  (define gx#stx-last
    (lambda (_stx1699_)
      ((letrec ((_lp1701_
                 (lambda (_rest1703_)
                   (let ((_g17041712_ (gx#syntax-e _rest1703_)))
                     (let ((_E17071716_
                            (lambda ()
                              (error '"No clause matching" _g17041712_))))
                       (let ((_else17061720_ (lambda () _rest1703_)))
                         (let ((_K17081726_
                                (lambda (_rest1723_ _hd1724_)
                                  (if (gx#stx-null? _rest1723_)
                                      _hd1724_
                                      (_lp1701_ _rest1723_)))))
                           (if (##pair? _g17041712_)
                               (let ((_hd17091729_ (##car _g17041712_))
                                     (_tl17101731_ (##cdr _g17041712_)))
                                 (let ((_hd1734_ _hd17091729_))
                                   (let ((_rest1736_ _tl17101731_))
                                     (_K17081726_ _rest1736_ _hd1734_))))
                               (_else17061720_)))))))))
         _lp1701_)
       _stx1699_)))
  (define gx#stx-last-pair
    (lambda (_stx1668_)
      ((letrec ((_lp1670_
                 (lambda (_hd1672_)
                   (let ((_g16731680_ (gx#syntax-e _hd1672_)))
                     (let ((_E16751684_
                            (lambda ()
                              (error '"No clause matching" _g16731680_))))
                       (let ((_K16761689_
                              (lambda (_rest1687_)
                                (if (gx#stx-pair? _rest1687_)
                                    (_lp1670_ _rest1687_)
                                    _hd1672_))))
                         (if (##pair? _g16731680_)
                             (let ((_hd16771692_ (##car _g16731680_))
                                   (_tl16781694_ (##cdr _g16731680_)))
                               (let ((_rest1697_ _tl16781694_))
                                 (_K16761689_ _rest1697_)))
                             (_E16751684_))))))))
         _lp1670_)
       _stx1668_)))
  (define gx#stx-list-tail
    (lambda (_stx1635_ _k1636_)
      ((letrec ((_lp1638_
                 (lambda (_rest1640_ _k1641_)
                   (if (fxpositive? _k1641_)
                       (let ((_g16421649_ (gx#syntax-e _rest1640_)))
                         (let ((_E16441653_
                                (lambda ()
                                  (error '"No clause matching" _g16421649_))))
                           (let ((_K16451658_
                                  (lambda (_rest1656_)
                                    (_lp1638_ _rest1656_ (fx1- _k1641_)))))
                             (if (##pair? _g16421649_)
                                 (let ((_hd16461661_ (##car _g16421649_))
                                       (_tl16471663_ (##cdr _g16421649_)))
                                   (let ((_rest1666_ _tl16471663_))
                                     (_K16451658_ _rest1666_)))
                                 (_E16441653_)))))
                       _rest1640_))))
         _lp1638_)
       _stx1635_
       _k1636_)))
  (define gx#stx-list-ref
    (lambda (_stx1632_ _k1633_)
      (gx#stx-car (gx#stx-list-tail _stx1632_ _k1633_))))
  (begin
    (define gx#stx-plist?__opt-lambda1540
      (lambda (_stx1542_ _key?1543_)
        ((letrec ((_lp1545_
                   (lambda (_rest1547_)
                     (let ((_g15481558_ (gx#stx-e _rest1547_)))
                       (let ((_E15521562_
                              (lambda ()
                                (error '"No clause matching" _g15481558_))))
                         (let ((_else15511566_ (lambda () '#f)))
                           (let ((_try-match15501574_
                                  (lambda ()
                                    (let ((_K15531571_ (lambda () '#t)))
                                      (if (##null? _g15481558_)
                                          (_K15531571_)
                                          (_else15511566_))))))
                             (let ((_K15541610_
                                    (lambda (_rest1577_ _hd1578_)
                                      (if (_key?1543_ _hd1578_)
                                          (let ((_g15791587_
                                                 (gx#stx-e _rest1577_)))
                                            (let ((_E15821591_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g15791587_))))
                                              (let ((_else15811595_
                                                     (lambda () '#f)))
                                                (let ((_K15831600_
                                                       (lambda (_rest1598_)
                                                         (_lp1545_
                                                          _rest1598_))))
                                                  (if (##pair? _g15791587_)
                                                      (let ((_hd15841603_
                                                             (##car _g15791587_))
                                                            (_tl15851605_
                                                             (##cdr _g15791587_)))
                                                        (let ((_rest1608_
                                                               _tl15851605_))
                                                          (_K15831600_
                                                           _rest1608_)))
                                                      (_else15811595_))))))
                                          '#f))))
                               (if (##pair? _g15481558_)
                                   (let ((_hd15551613_ (##car _g15481558_))
                                         (_tl15561615_ (##cdr _g15481558_)))
                                     (let ((_hd1618_ _hd15551613_))
                                       (let ((_rest1620_ _tl15561615_))
                                         (_K15541610_ _rest1620_ _hd1618_))))
                                   (_try-match15501574_))))))))))
           _lp1545_)
         _stx1542_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx1625_)
          (let ((_key?1627_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda1540 _stx1625_ _key?1627_))))
      (define gx#stx-plist?
        (lambda _g2625_
          (let ((_g2624_ (length _g2625_)))
            (cond ((fx= _g2624_ 1) (apply gx#stx-plist?__0 _g2625_))
                  ((fx= _g2624_ 2)
                   (apply gx#stx-plist?__opt-lambda1540 _g2625_))
                  (else (error "No clause matching arguments" _g2625_))))))))
  (begin
    (define gx#stx-getq__opt-lambda1458
      (lambda (_key1460_ _stx1461_ _key=?1462_)
        ((letrec ((_lp1464_
                   (lambda (_rest1466_)
                     (let ((_g14671475_ (gx#syntax-e _rest1466_)))
                       (let ((_E14701479_
                              (lambda ()
                                (error '"No clause matching" _g14671475_))))
                         (let ((_else14691483_ (lambda () '#f)))
                           (let ((_K14711517_
                                  (lambda (_rest1486_ _hd1487_)
                                    (let ((_g14881495_
                                           (gx#syntax-e _rest1486_)))
                                      (let ((_E14901499_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g14881495_))))
                                        (let ((_K14911505_
                                               (lambda (_rest1502_ _val1503_)
                                                 (if (_key=?1462_
                                                      _hd1487_
                                                      _key1460_)
                                                     _val1503_
                                                     (_lp1464_ _rest1502_)))))
                                          (if (##pair? _g14881495_)
                                              (let ((_hd14921508_
                                                     (##car _g14881495_))
                                                    (_tl14931510_
                                                     (##cdr _g14881495_)))
                                                (let ((_val1513_ _hd14921508_))
                                                  (let ((_rest1515_
                                                         _tl14931510_))
                                                    (_K14911505_
                                                     _rest1515_
                                                     _val1513_))))
                                              (_E14901499_))))))))
                             (if (##pair? _g14671475_)
                                 (let ((_hd14721520_ (##car _g14671475_))
                                       (_tl14731522_ (##cdr _g14671475_)))
                                   (let ((_hd1525_ _hd14721520_))
                                     (let ((_rest1527_ _tl14731522_))
                                       (_K14711517_ _rest1527_ _hd1525_))))
                                 (_else14691483_)))))))))
           _lp1464_)
         _stx1461_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key1532_ _stx1533_)
          (let ((_key=?1535_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda1458 _key1532_ _stx1533_ _key=?1535_))))
      (define gx#stx-getq
        (lambda _g2627_
          (let ((_g2626_ (length _g2627_)))
            (cond ((fx= _g2626_ 2) (apply gx#stx-getq__0 _g2627_))
                  ((fx= _g2626_ 3) (apply gx#stx-getq__opt-lambda1458 _g2627_))
                  (else (error "No clause matching arguments" _g2627_)))))))))
