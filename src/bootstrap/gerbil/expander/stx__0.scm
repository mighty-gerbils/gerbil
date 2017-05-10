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
    (lambda _$args2610_
      (apply make-struct-instance gx#identifier-wrap::t _$args2610_)))
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
    (lambda _$args2607_
      (apply make-struct-instance gx#syntax-wrap::t _$args2607_)))
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
    (lambda _$args2604_
      (apply make-struct-instance gx#syntax-quote::t _$args2604_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx2602_) (symbol? (gx#stx-e _stx2602_))))
  (define gx#identifier-quote?
    (lambda (_stx2600_)
      (if (##structure-direct-instance-of? _stx2600_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx2600_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx2595_)
      (let ((_$e2597_
             (##structure-direct-instance-of? _stx2595_ 'gx#syntax-quote::t)))
        (if _$e2597_
            _$e2597_
            (if (##structure-instance-of? _stx2595_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx2595_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx2591_)
      (let ((_stx2593_ (gx#stx-unwrap__0 _stx2591_)))
        (if (##structure-instance-of? _stx2593_ 'gerbil#AST::t)
            (##structure-ref _stx2593_ '1 AST::t '#f)
            _stx2593_))))
  (define gx#syntax->datum
    (lambda (_stx2589_)
      (if (##structure-instance-of? _stx2589_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx2589_ '1 AST::t '#f))
          (if (pair? _stx2589_)
              (cons (gx#syntax->datum (car _stx2589_))
                    (gx#syntax->datum (cdr _stx2589_)))
              (if (vector? _stx2589_)
                  (vector-map gx#syntax->datum _stx2589_)
                  (if (box? _stx2589_)
                      (box (gx#syntax->datum (unbox _stx2589_)))
                      _stx2589_))))))
  (begin
    (define gx#datum->syntax__opt-lambda2557
      (lambda (_stx2559_ _datum2560_ _src2561_)
        (let ((_wrap-datum2563_
               (lambda (_e2570_ _marks2571_)
                 ((letrec ((_recur2573_
                            (lambda (_e2575_)
                              (if (symbol? _e2575_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e2575_
                                   _src2561_
                                   _marks2571_)
                                  (if (pair? _e2575_)
                                      (cons (_recur2573_ (car _e2575_))
                                            (_recur2573_ (cdr _e2575_)))
                                      (if (vector? _e2575_)
                                          (vector-map _recur2573_ _e2575_)
                                          (if (box? _e2575_)
                                              (box (_recur2573_
                                                    (unbox _e2575_)))
                                              _e2575_)))))))
                    _recur2573_)
                  _e2570_))))
          (let ((_wrap-outer2564_
                 (lambda (_e2568_)
                   (if (##structure-instance-of? _e2568_ 'gerbil#AST::t)
                       _e2568_
                       (##structure AST::t _e2568_ _src2561_)))))
            (if (##structure-instance-of? _datum2560_ 'gerbil#AST::t)
                _datum2560_
                (if (not _stx2559_)
                    (##structure AST::t _datum2560_ _src2561_)
                    (if (gx#identifier? _stx2559_)
                        (let ((_stx2566_ (gx#stx-unwrap__0 _stx2559_)))
                          (if (gx#identifier-quote? _stx2566_)
                              (##structure
                               gx#syntax-quote::t
                               _datum2560_
                               _src2561_
                               (##structure-ref
                                _stx2566_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx2566_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer2564_
                               (_wrap-datum2563_
                                _datum2560_
                                (##structure-ref
                                 _stx2566_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx2559_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx2580_ _datum2581_)
          (let ((_src2583_ '#f))
            (gx#datum->syntax__opt-lambda2557
             _stx2580_
             _datum2581_
             _src2583_))))
      (define gx#datum->syntax
        (lambda _g2613_
          (let ((_g2612_ (length _g2613_)))
            (cond ((fx= _g2612_ 2)
                   (apply (lambda (_stx2580_ _datum2581_)
                            (gx#datum->syntax__0 _stx2580_ _datum2581_))
                          _g2613_))
                  ((fx= _g2612_ 3)
                   (apply (lambda (_stx2585_ _datum2586_ _src2587_)
                            (gx#datum->syntax__opt-lambda2557
                             _stx2585_
                             _datum2586_
                             _src2587_))
                          _g2613_))
                  (else (error "No clause matching arguments" _g2613_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda2533
      (lambda (_stx2535_ _marks2536_)
        ((letrec ((_lp2538_
                   (lambda (_e2540_ _marks2541_ _src2542_)
                     (if (##structure-direct-instance-of?
                          _e2540_
                          'gx#syntax-wrap::t)
                         (_lp2538_
                          (##structure-ref _e2540_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e2540_ '3 gx#syntax-wrap::t '#f)
                           _marks2541_)
                          (##structure-ref _e2540_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e2540_
                              'gx#identifier-wrap::t)
                             (if (null? _marks2541_)
                                 _e2540_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e2540_ '1 AST::t '#f)
                                  (##structure-ref _e2540_ '2 AST::t '#f)
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e2540_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks2541_)))
                             (if (##structure-direct-instance-of?
                                  _e2540_
                                  'gx#syntax-quote::t)
                                 _e2540_
                                 (if (##structure-instance-of?
                                      _e2540_
                                      'gerbil#AST::t)
                                     (_lp2538_
                                      (##structure-ref _e2540_ '1 AST::t '#f)
                                      _marks2541_
                                      (##structure-ref _e2540_ '2 AST::t '#f))
                                     (if (symbol? _e2540_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e2540_
                                          _src2542_
                                          (reverse _marks2541_))
                                         (if (null? _marks2541_)
                                             _e2540_
                                             (if (pair? _e2540_)
                                                 (cons (gx#stx-wrap
                                                        (car _e2540_)
                                                        _marks2541_)
                                                       (gx#stx-wrap
                                                        (cdr _e2540_)
                                                        _marks2541_))
                                                 (if (vector? _e2540_)
                                                     (vector-map
                                                      (lambda (_g25432545_)
                                                        (gx#stx-wrap
                                                         _g25432545_
                                                         _marks2541_))
                                                      _e2540_)
                                                     (if (box? _e2540_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e2540_)
                                                               _marks2541_))
                                                         _e2540_))))))))))))
           _lp2538_)
         _stx2535_
         _marks2536_
         (gx#stx-source _stx2535_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx2551_)
          (let ((_marks2553_ '()))
            (gx#stx-unwrap__opt-lambda2533 _stx2551_ _marks2553_))))
      (define gx#stx-unwrap
        (lambda _g2615_
          (let ((_g2614_ (length _g2615_)))
            (cond ((fx= _g2614_ 1)
                   (apply (lambda (_stx2551_) (gx#stx-unwrap__0 _stx2551_))
                          _g2615_))
                  ((fx= _g2614_ 2)
                   (apply (lambda (_stx2555_ _marks2556_)
                            (gx#stx-unwrap__opt-lambda2533
                             _stx2555_
                             _marks2556_))
                          _g2615_))
                  (else (error "No clause matching arguments" _g2615_))))))))
  (define gx#stx-wrap
    (lambda (_stx2528_ _marks2529_)
      (foldl (lambda (_mark2531_ _stx2532_)
               (gx#stx-apply-mark _stx2532_ _mark2531_))
             _stx2528_
             _marks2529_)))
  (define gx#stx-rewrap
    (lambda (_stx2522_ _marks2523_)
      (foldr (lambda (_mark2525_ _stx2526_)
               (gx#stx-apply-mark _stx2526_ _mark2525_))
             _stx2522_
             _marks2523_)))
  (define gx#stx-apply-mark
    (lambda (_stx2519_ _mark2520_)
      (if (##structure-direct-instance-of? _stx2519_ 'gx#syntax-quote::t)
          _stx2519_
          (if (if (##structure-direct-instance-of?
                   _stx2519_
                   'gx#syntax-wrap::t)
                  (eq? _mark2520_
                       (##structure-ref _stx2519_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx2519_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx2519_
               (gx#stx-source _stx2519_)
               _mark2520_)))))
  (define gx#apply-mark
    (lambda (_mark2483_ _marks2484_)
      (let ((_marks24852493_ _marks2484_))
        (let ((_E24882497_
               (lambda () (error '"No clause matching" _marks24852493_))))
          (let ((_else24872501_ (lambda () (cons _mark2483_ _marks2484_))))
            (let ((_K24892507_
                   (lambda (_rest2504_ _hd2505_)
                     (if (eq? _mark2483_ _hd2505_)
                         _rest2504_
                         (cons _mark2483_ _marks2484_)))))
              (if (##pair? _marks24852493_)
                  (let ((_hd24902510_ (##car _marks24852493_))
                        (_tl24912512_ (##cdr _marks24852493_)))
                    (let ((_hd2515_ _hd24902510_))
                      (let ((_rest2517_ _tl24912512_))
                        (_K24892507_ _rest2517_ _hd2515_))))
                  (_else24872501_))))))))
  (define gx#stx-e
    (lambda (_stx2481_)
      (if (##structure-instance-of? _stx2481_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx2481_ '1 AST::t '#f))
          _stx2481_)))
  (define gx#stx-source
    (lambda (_stx2479_)
      (if (##structure-instance-of? _stx2479_ 'gerbil#AST::t)
          (##structure-ref _stx2479_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx2473_ _src2474_)
      (if (let ((_$e2476_ (##structure-instance-of? _stx2473_ 'gerbil#AST::t)))
            (if _$e2476_ _$e2476_ (not _src2474_)))
          _stx2473_
          (##structure AST::t _stx2473_ _src2474_))))
  (define gx#stx-datum?
    (lambda (_stx2471_) (gx#self-quoting? (gx#stx-e _stx2471_))))
  (define gx#self-quoting?
    (lambda (_x2451_)
      (let ((_$e2453_ (boolean? _x2451_)))
        (if _$e2453_
            _$e2453_
            (let ((_$e2456_ (char? _x2451_)))
              (if _$e2456_
                  _$e2456_
                  (let ((_$e2459_ (number? _x2451_)))
                    (if _$e2459_
                        _$e2459_
                        (let ((_$e2462_ (keyword? _x2451_)))
                          (if _$e2462_
                              _$e2462_
                              (let ((_$e2465_ (string? _x2451_)))
                                (if _$e2465_
                                    _$e2465_
                                    (let ((_$e2468_ (void? _x2451_)))
                                      (if _$e2468_
                                          _$e2468_
                                          (dssl-object? _x2451_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e2449_) (boolean? (gx#stx-e _e2449_))))
  (define gx#stx-keyword? (lambda (_e2447_) (keyword? (gx#stx-e _e2447_))))
  (define gx#stx-char? (lambda (_e2445_) (char? (gx#stx-e _e2445_))))
  (define gx#stx-number? (lambda (_e2443_) (number? (gx#stx-e _e2443_))))
  (define gx#stx-fixnum? (lambda (_e2441_) (fixnum? (gx#stx-e _e2441_))))
  (define gx#stx-string? (lambda (_e2439_) (string? (gx#stx-e _e2439_))))
  (define gx#stx-null? (lambda (_e2437_) (null? (gx#stx-e _e2437_))))
  (define gx#stx-pair? (lambda (_e2435_) (pair? (gx#stx-e _e2435_))))
  (define gx#stx-list?
    (lambda (_e2395_)
      (let ((_g23962405_ (gx#stx-e _e2395_)))
        (let ((_E23992409_
               (lambda () (error '"No clause matching" _g23962405_))))
          (let ((_try-match23982420_
                 (lambda ()
                   (let ((_K24002415_
                          (lambda (_tail2413_) (null? _tail2413_))))
                     (let ((_tail2418_ _g23962405_))
                       (_K24002415_ _tail2418_))))))
            (let ((_K24012425_
                   (lambda (_rest2423_) (gx#stx-list? _rest2423_))))
              (if (##pair? _g23962405_)
                  (let ((_hd24022428_ (##car _g23962405_))
                        (_tl24032430_ (##cdr _g23962405_)))
                    (let ((_rest2433_ _tl24032430_)) (_K24012425_ _rest2433_)))
                  (_try-match23982420_))))))))
  (define gx#stx-pair/null?
    (lambda (_e2388_)
      (let ((_e2390_ (gx#stx-e _e2388_)))
        (let ((_$e2392_ (pair? _e2390_)))
          (if _$e2392_ _$e2392_ (null? _e2390_))))))
  (define gx#stx-vector? (lambda (_e2386_) (vector? (gx#stx-e _e2386_))))
  (define gx#stx-box? (lambda (_e2384_) (box? (gx#stx-e _e2384_))))
  (define gx#stx-eq?
    (lambda (_x2381_ _y2382_) (eq? (gx#stx-e _x2381_) (gx#stx-e _y2382_))))
  (define gx#stx-eqv?
    (lambda (_x2378_ _y2379_) (eqv? (gx#stx-e _x2378_) (gx#stx-e _y2379_))))
  (define gx#stx-equal?
    (lambda (_x2375_ _y2376_) (equal? (gx#stx-e _x2375_) (gx#stx-e _y2376_))))
  (define gx#stx-false? (lambda (_x2373_) (not (gx#stx-e _x2373_))))
  (define gx#stx-identifier
    (lambda (_template2370_ . _args2371_)
      (gx#datum->syntax__opt-lambda2557
       _template2370_
       (apply make-symbol (map gx#stx-e _args2371_))
       (gx#stx-source _template2370_))))
  (define gx#stx-identifier-marks
    (lambda (_stx2366_)
      (let ((_stx2368_ (gx#stx-unwrap__0 _stx2366_)))
        (if (##structure-direct-instance-of? _stx2368_ 'gx#identifier-wrap::t)
            (##structure-ref _stx2368_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx2368_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx2362_)
      (let ((_stx2364_ (gx#stx-unwrap__0 _stx2362_)))
        (if (gx#identifier-quote? _stx2364_)
            (##structure-ref _stx2364_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx2317_)
      (let ((_g23182328_ (gx#stx-e _stx2317_)))
        (let ((_E23222332_
               (lambda () (error '"No clause matching" _g23182328_))))
          (let ((_else23212336_ (lambda () '#f)))
            (let ((_try-match23202344_
                   (lambda ()
                     (let ((_K23232341_ (lambda () '#t)))
                       (if (##null? _g23182328_)
                           (_K23232341_)
                           (_else23212336_))))))
              (let ((_K23242350_
                     (lambda (_rest2347_ _hd2348_)
                       (if (gx#identifier? _hd2348_)
                           (gx#identifier-list? _rest2347_)
                           '#f))))
                (if (##pair? _g23182328_)
                    (let ((_hd23252353_ (##car _g23182328_))
                          (_tl23262355_ (##cdr _g23182328_)))
                      (let ((_hd2358_ _hd23252353_))
                        (let ((_rest2360_ _tl23262355_))
                          (_K23242350_ _rest2360_ _hd2358_))))
                    (_try-match23202344_)))))))))
  (begin
    (define gx#genident__opt-lambda2292
      (lambda (_e2294_ _src2295_)
        (gx#stx-wrap-source
         (gensym (let ((_e2297_ (gx#stx-e _e2294_)))
                   (if (interned-symbol? _e2297_) _e2297_ 'g)))
         (let ((_$e2299_ (gx#stx-source _e2294_)))
           (if _$e2299_ _$e2299_ _src2295_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e2306_ 'g))
            (let ((_src2308_ '#f))
              (gx#genident__opt-lambda2292 _e2306_ _src2308_)))))
      (define gx#genident__1
        (lambda (_e2310_)
          (let ((_src2312_ '#f))
            (gx#genident__opt-lambda2292 _e2310_ _src2312_))))
      (define gx#genident
        (lambda _g2617_
          (let ((_g2616_ (length _g2617_)))
            (cond ((fx= _g2616_ 0)
                   (apply (lambda () (gx#genident__0)) _g2617_))
                  ((fx= _g2616_ 1)
                   (apply (lambda (_e2310_) (gx#genident__1 _e2310_)) _g2617_))
                  ((fx= _g2616_ 2)
                   (apply (lambda (_e2314_ _src2315_)
                            (gx#genident__opt-lambda2292 _e2314_ _src2315_))
                          _g2617_))
                  (else (error "No clause matching arguments" _g2617_))))))))
  (define gx#gentemps
    (lambda (_stx-lst2291_) (gx#stx-map1 gx#genident _stx-lst2291_)))
  (define gx#syntax->list (lambda (_stx2289_) (gx#stx-map1 values _stx2289_)))
  (define gx#stx-car (lambda (_stx2287_) (car (gx#syntax-e _stx2287_))))
  (define gx#stx-cdr (lambda (_stx2285_) (cdr (gx#syntax-e _stx2285_))))
  (define gx#stx-length
    (lambda (_stx2248_)
      ((letrec ((_lp2250_
                 (lambda (_rest2252_ _n2253_)
                   (let ((_g22542262_ (gx#stx-e _rest2252_)))
                     (let ((_E22572266_
                            (lambda ()
                              (error '"No clause matching" _g22542262_))))
                       (let ((_else22562270_ (lambda () _n2253_)))
                         (let ((_K22582275_
                                (lambda (_rest2273_)
                                  (_lp2250_ _rest2273_ (fx1+ _n2253_)))))
                           (if (##pair? _g22542262_)
                               (let ((_hd22592278_ (##car _g22542262_))
                                     (_tl22602280_ (##cdr _g22542262_)))
                                 (let ((_rest2283_ _tl22602280_))
                                   (_K22582275_ _rest2283_)))
                               (_else22562270_)))))))))
         _lp2250_)
       _stx2248_
       '0)))
  (define gx#stx-for-each
    (lambda _g2619_
      (let ((_g2618_ (length _g2619_)))
        (cond ((fx= _g2618_ 2)
               (apply (lambda (_f2241_ _stx2242_)
                        (gx#stx-for-each1 _f2241_ _stx2242_))
                      _g2619_))
              ((fx= _g2618_ 3)
               (apply (lambda (_f2244_ _xstx2245_ _ystx2246_)
                        (gx#stx-for-each2 _f2244_ _xstx2245_ _ystx2246_))
                      _g2619_))
              (else (error "No clause matching arguments" _g2619_))))))
  (define gx#stx-for-each1
    (lambda (_f2191_ _stx2192_)
      ((letrec ((_lp2194_
                 (lambda (_rest2196_)
                   (let ((_g21972207_ (gx#syntax-e _rest2196_)))
                     (let ((_E22012211_
                            (lambda ()
                              (error '"No clause matching" _g21972207_))))
                       (let ((_else22002215_ (lambda () (_f2191_ _rest2196_))))
                         (let ((_try-match21992223_
                                (lambda ()
                                  (let ((_K22022220_ (lambda () '#!void)))
                                    (if (##null? _g21972207_)
                                        (_K22022220_)
                                        (_else22002215_))))))
                           (let ((_K22032229_
                                  (lambda (_rest2226_ _hd2227_)
                                    (begin
                                      (_f2191_ _hd2227_)
                                      (_lp2194_ _rest2226_)))))
                             (if (##pair? _g21972207_)
                                 (let ((_hd22042232_ (##car _g21972207_))
                                       (_tl22052234_ (##cdr _g21972207_)))
                                   (let ((_hd2237_ _hd22042232_))
                                     (let ((_rest2239_ _tl22052234_))
                                       (_K22032229_ _rest2239_ _hd2237_))))
                                 (_try-match21992223_))))))))))
         _lp2194_)
       _stx2192_)))
  (define gx#stx-for-each2
    (lambda (_f2096_ _xstx2097_ _ystx2098_)
      ((letrec ((_lp2100_
                 (lambda (_xrest2102_ _yrest2103_)
                   (let ((_g21042114_ (gx#syntax-e _xrest2102_)))
                     (let ((_E21082118_
                            (lambda ()
                              (error '"No clause matching" _g21042114_))))
                       (let ((_else21072122_ (lambda () '#!void)))
                         (let ((_try-match21062145_
                                (lambda ()
                                  (let ((_K21092142_
                                         (lambda ()
                                           (let ((_yrest21262131_ _yrest2103_))
                                             (let ((_E21282135_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest21262131_))))
                                               (let ((_K21292139_
                                                      (lambda ()
                                                        (_f2096_ _xrest2102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest2103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest21262131_))
                                                     (_K21292139_)
                                                     (_E21282135_))))))))
                                    (if (not (null? _g21042114_))
                                        (_K21092142_)
                                        (_else21072122_))))))
                           (let ((_K21102179_
                                  (lambda (_xrest2148_ _xhd2149_)
                                    (let ((_g21502157_
                                           (gx#syntax-e _yrest2103_)))
                                      (let ((_E21522161_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g21502157_))))
                                        (let ((_K21532167_
                                               (lambda (_yrest2164_ _yhd2165_)
                                                 (begin
                                                   (_f2096_ _xhd2149_
                                                            _yhd2165_)
                                                   (_lp2100_
                                                    _xrest2148_
                                                    _yrest2164_)))))
                                          (if (##pair? _g21502157_)
                                              (let ((_hd21542170_
                                                     (##car _g21502157_))
                                                    (_tl21552172_
                                                     (##cdr _g21502157_)))
                                                (let ((_yhd2175_ _hd21542170_))
                                                  (let ((_yrest2177_
                                                         _tl21552172_))
                                                    (_K21532167_
                                                     _yrest2177_
                                                     _yhd2175_))))
                                              (_E21522161_))))))))
                             (if (##pair? _g21042114_)
                                 (let ((_hd21112182_ (##car _g21042114_))
                                       (_tl21122184_ (##cdr _g21042114_)))
                                   (let ((_xhd2187_ _hd21112182_))
                                     (let ((_xrest2189_ _tl21122184_))
                                       (_K21102179_ _xrest2189_ _xhd2187_))))
                                 (_try-match21062145_))))))))))
         _lp2100_)
       _xstx2097_
       _ystx2098_)))
  (define gx#stx-map
    (lambda _g2621_
      (let ((_g2620_ (length _g2621_)))
        (cond ((fx= _g2620_ 2)
               (apply (lambda (_f2089_ _stx2090_)
                        (gx#stx-map1 _f2089_ _stx2090_))
                      _g2621_))
              ((fx= _g2620_ 3)
               (apply (lambda (_f2092_ _xstx2093_ _ystx2094_)
                        (gx#stx-map2 _f2092_ _xstx2093_ _ystx2094_))
                      _g2621_))
              (else (error "No clause matching arguments" _g2621_))))))
  (define gx#stx-map1
    (lambda (_f2039_ _stx2040_)
      ((letrec ((_recur2042_
                 (lambda (_rest2044_)
                   (let ((_g20452055_ (gx#syntax-e _rest2044_)))
                     (let ((_E20492059_
                            (lambda ()
                              (error '"No clause matching" _g20452055_))))
                       (let ((_else20482063_ (lambda () (_f2039_ _rest2044_))))
                         (let ((_try-match20472071_
                                (lambda ()
                                  (let ((_K20502068_ (lambda () '())))
                                    (if (##null? _g20452055_)
                                        (_K20502068_)
                                        (_else20482063_))))))
                           (let ((_K20512077_
                                  (lambda (_rest2074_ _hd2075_)
                                    (cons (_f2039_ _hd2075_)
                                          (_recur2042_ _rest2074_)))))
                             (if (##pair? _g20452055_)
                                 (let ((_hd20522080_ (##car _g20452055_))
                                       (_tl20532082_ (##cdr _g20452055_)))
                                   (let ((_hd2085_ _hd20522080_))
                                     (let ((_rest2087_ _tl20532082_))
                                       (_K20512077_ _rest2087_ _hd2085_))))
                                 (_try-match20472071_))))))))))
         _recur2042_)
       _stx2040_)))
  (define gx#stx-map2
    (lambda (_f1944_ _xstx1945_ _ystx1946_)
      ((letrec ((_recur1948_
                 (lambda (_xrest1950_ _yrest1951_)
                   (let ((_g19521962_ (gx#syntax-e _xrest1950_)))
                     (let ((_E19561966_
                            (lambda ()
                              (error '"No clause matching" _g19521962_))))
                       (let ((_else19551970_ (lambda () '())))
                         (let ((_try-match19541993_
                                (lambda ()
                                  (let ((_K19571990_
                                         (lambda ()
                                           (let ((_yrest19741979_ _yrest1951_))
                                             (let ((_E19761983_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest19741979_))))
                                               (let ((_K19771987_
                                                      (lambda ()
                                                        (_f1944_ _xrest1950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest1951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest19741979_))
                                                     (_K19771987_)
                                                     (_E19761983_))))))))
                                    (if (not (null? _g19521962_))
                                        (_K19571990_)
                                        (_else19551970_))))))
                           (let ((_K19582027_
                                  (lambda (_xrest1996_ _xhd1997_)
                                    (let ((_g19982005_
                                           (gx#syntax-e _yrest1951_)))
                                      (let ((_E20002009_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g19982005_))))
                                        (let ((_K20012015_
                                               (lambda (_yrest2012_ _yhd2013_)
                                                 (cons (_f1944_ _xhd1997_
                                                                _yhd2013_)
                                                       (_recur1948_
                                                        _xrest1996_
                                                        _yrest2012_)))))
                                          (if (##pair? _g19982005_)
                                              (let ((_hd20022018_
                                                     (##car _g19982005_))
                                                    (_tl20032020_
                                                     (##cdr _g19982005_)))
                                                (let ((_yhd2023_ _hd20022018_))
                                                  (let ((_yrest2025_
                                                         _tl20032020_))
                                                    (_K20012015_
                                                     _yrest2025_
                                                     _yhd2023_))))
                                              (_E20002009_))))))))
                             (if (##pair? _g19521962_)
                                 (let ((_hd19592030_ (##car _g19521962_))
                                       (_tl19602032_ (##cdr _g19521962_)))
                                   (let ((_xhd2035_ _hd19592030_))
                                     (let ((_xrest2037_ _tl19602032_))
                                       (_K19582027_ _xrest2037_ _xhd2035_))))
                                 (_try-match19541993_))))))))))
         _recur1948_)
       _xstx1945_
       _ystx1946_)))
  (define gx#stx-andmap
    (lambda (_f1894_ _stx1895_)
      ((letrec ((_lp1897_
                 (lambda (_rest1899_)
                   (let ((_g19001910_ (gx#syntax-e _rest1899_)))
                     (let ((_E19041914_
                            (lambda ()
                              (error '"No clause matching" _g19001910_))))
                       (let ((_else19031918_ (lambda () (_f1894_ _rest1899_))))
                         (let ((_try-match19021926_
                                (lambda ()
                                  (let ((_K19051923_ (lambda () '#t)))
                                    (if (##null? _g19001910_)
                                        (_K19051923_)
                                        (_else19031918_))))))
                           (let ((_K19061932_
                                  (lambda (_rest1929_ _hd1930_)
                                    (if (_f1894_ _hd1930_)
                                        (_lp1897_ _rest1929_)
                                        '#f))))
                             (if (##pair? _g19001910_)
                                 (let ((_hd19071935_ (##car _g19001910_))
                                       (_tl19081937_ (##cdr _g19001910_)))
                                   (let ((_hd1940_ _hd19071935_))
                                     (let ((_rest1942_ _tl19081937_))
                                       (_K19061932_ _rest1942_ _hd1940_))))
                                 (_try-match19021926_))))))))))
         _lp1897_)
       _stx1895_)))
  (define gx#stx-ormap
    (lambda (_f1841_ _stx1842_)
      ((letrec ((_lp1844_
                 (lambda (_rest1846_)
                   (let ((_g18471857_ (gx#syntax-e _rest1846_)))
                     (let ((_E18511861_
                            (lambda ()
                              (error '"No clause matching" _g18471857_))))
                       (let ((_else18501865_ (lambda () (_f1841_ _rest1846_))))
                         (let ((_try-match18491873_
                                (lambda ()
                                  (let ((_K18521870_ (lambda () '#f)))
                                    (if (##null? _g18471857_)
                                        (_K18521870_)
                                        (_else18501865_))))))
                           (let ((_K18531882_
                                  (lambda (_rest1876_ _hd1877_)
                                    (let ((_$e1879_ (_f1841_ _hd1877_)))
                                      (if _$e1879_
                                          _$e1879_
                                          (_lp1844_ _rest1876_))))))
                             (if (##pair? _g18471857_)
                                 (let ((_hd18541885_ (##car _g18471857_))
                                       (_tl18551887_ (##cdr _g18471857_)))
                                   (let ((_hd1890_ _hd18541885_))
                                     (let ((_rest1892_ _tl18551887_))
                                       (_K18531882_ _rest1892_ _hd1890_))))
                                 (_try-match18491873_))))))))))
         _lp1844_)
       _stx1842_)))
  (define gx#stx-foldl
    (lambda (_f1789_ _iv1790_ _stx1791_)
      ((letrec ((_lp1793_
                 (lambda (_r1795_ _rest1796_)
                   (let ((_g17971807_ (gx#syntax-e _rest1796_)))
                     (let ((_E18011811_
                            (lambda ()
                              (error '"No clause matching" _g17971807_))))
                       (let ((_else18001815_
                              (lambda () (_f1789_ _rest1796_ _r1795_))))
                         (let ((_try-match17991823_
                                (lambda ()
                                  (let ((_K18021820_ (lambda () _r1795_)))
                                    (if (##null? _g17971807_)
                                        (_K18021820_)
                                        (_else18001815_))))))
                           (let ((_K18031829_
                                  (lambda (_rest1826_ _hd1827_)
                                    (_lp1793_
                                     (_f1789_ _hd1827_ _r1795_)
                                     _rest1826_))))
                             (if (##pair? _g17971807_)
                                 (let ((_hd18041832_ (##car _g17971807_))
                                       (_tl18051834_ (##cdr _g17971807_)))
                                   (let ((_hd1837_ _hd18041832_))
                                     (let ((_rest1839_ _tl18051834_))
                                       (_K18031829_ _rest1839_ _hd1837_))))
                                 (_try-match17991823_))))))))))
         _lp1793_)
       _iv1790_
       _stx1791_)))
  (define gx#stx-foldr
    (lambda (_f1738_ _iv1739_ _stx1740_)
      ((letrec ((_recur1742_
                 (lambda (_rest1744_)
                   (let ((_g17451755_ (gx#syntax-e _rest1744_)))
                     (let ((_E17491759_
                            (lambda ()
                              (error '"No clause matching" _g17451755_))))
                       (let ((_else17481763_
                              (lambda () (_f1738_ _rest1744_ _iv1739_))))
                         (let ((_try-match17471771_
                                (lambda ()
                                  (let ((_K17501768_ (lambda () _iv1739_)))
                                    (if (##null? _g17451755_)
                                        (_K17501768_)
                                        (_else17481763_))))))
                           (let ((_K17511777_
                                  (lambda (_rest1774_ _hd1775_)
                                    (_f1738_ _hd1775_
                                             (_recur1742_ _rest1774_)))))
                             (if (##pair? _g17451755_)
                                 (let ((_hd17521780_ (##car _g17451755_))
                                       (_tl17531782_ (##cdr _g17451755_)))
                                   (let ((_hd1785_ _hd17521780_))
                                     (let ((_rest1787_ _tl17531782_))
                                       (_K17511777_ _rest1787_ _hd1785_))))
                                 (_try-match17471771_))))))))))
         _recur1742_)
       _stx1740_)))
  (define gx#stx-reverse
    (lambda (_stx1736_) (gx#stx-foldl cons '() _stx1736_)))
  (define gx#stx-last
    (lambda (_stx1697_)
      ((letrec ((_lp1699_
                 (lambda (_rest1701_)
                   (let ((_g17021710_ (gx#syntax-e _rest1701_)))
                     (let ((_E17051714_
                            (lambda ()
                              (error '"No clause matching" _g17021710_))))
                       (let ((_else17041718_ (lambda () _rest1701_)))
                         (let ((_K17061724_
                                (lambda (_rest1721_ _hd1722_)
                                  (if (gx#stx-null? _rest1721_)
                                      _hd1722_
                                      (_lp1699_ _rest1721_)))))
                           (if (##pair? _g17021710_)
                               (let ((_hd17071727_ (##car _g17021710_))
                                     (_tl17081729_ (##cdr _g17021710_)))
                                 (let ((_hd1732_ _hd17071727_))
                                   (let ((_rest1734_ _tl17081729_))
                                     (_K17061724_ _rest1734_ _hd1732_))))
                               (_else17041718_)))))))))
         _lp1699_)
       _stx1697_)))
  (define gx#stx-last-pair
    (lambda (_stx1666_)
      ((letrec ((_lp1668_
                 (lambda (_hd1670_)
                   (let ((_g16711678_ (gx#syntax-e _hd1670_)))
                     (let ((_E16731682_
                            (lambda ()
                              (error '"No clause matching" _g16711678_))))
                       (let ((_K16741687_
                              (lambda (_rest1685_)
                                (if (gx#stx-pair? _rest1685_)
                                    (_lp1668_ _rest1685_)
                                    _hd1670_))))
                         (if (##pair? _g16711678_)
                             (let ((_hd16751690_ (##car _g16711678_))
                                   (_tl16761692_ (##cdr _g16711678_)))
                               (let ((_rest1695_ _tl16761692_))
                                 (_K16741687_ _rest1695_)))
                             (_E16731682_))))))))
         _lp1668_)
       _stx1666_)))
  (define gx#stx-list-tail
    (lambda (_stx1633_ _k1634_)
      ((letrec ((_lp1636_
                 (lambda (_rest1638_ _k1639_)
                   (if (fxpositive? _k1639_)
                       (let ((_g16401647_ (gx#syntax-e _rest1638_)))
                         (let ((_E16421651_
                                (lambda ()
                                  (error '"No clause matching" _g16401647_))))
                           (let ((_K16431656_
                                  (lambda (_rest1654_)
                                    (_lp1636_ _rest1654_ (fx1- _k1639_)))))
                             (if (##pair? _g16401647_)
                                 (let ((_hd16441659_ (##car _g16401647_))
                                       (_tl16451661_ (##cdr _g16401647_)))
                                   (let ((_rest1664_ _tl16451661_))
                                     (_K16431656_ _rest1664_)))
                                 (_E16421651_)))))
                       _rest1638_))))
         _lp1636_)
       _stx1633_
       _k1634_)))
  (define gx#stx-list-ref
    (lambda (_stx1630_ _k1631_)
      (gx#stx-car (gx#stx-list-tail _stx1630_ _k1631_))))
  (begin
    (define gx#stx-plist?__opt-lambda1538
      (lambda (_stx1540_ _key?1541_)
        ((letrec ((_lp1543_
                   (lambda (_rest1545_)
                     (let ((_g15461556_ (gx#stx-e _rest1545_)))
                       (let ((_E15501560_
                              (lambda ()
                                (error '"No clause matching" _g15461556_))))
                         (let ((_else15491564_ (lambda () '#f)))
                           (let ((_try-match15481572_
                                  (lambda ()
                                    (let ((_K15511569_ (lambda () '#t)))
                                      (if (##null? _g15461556_)
                                          (_K15511569_)
                                          (_else15491564_))))))
                             (let ((_K15521608_
                                    (lambda (_rest1575_ _hd1576_)
                                      (if (_key?1541_ _hd1576_)
                                          (let ((_g15771585_
                                                 (gx#stx-e _rest1575_)))
                                            (let ((_E15801589_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g15771585_))))
                                              (let ((_else15791593_
                                                     (lambda () '#f)))
                                                (let ((_K15811598_
                                                       (lambda (_rest1596_)
                                                         (_lp1543_
                                                          _rest1596_))))
                                                  (if (##pair? _g15771585_)
                                                      (let ((_hd15821601_
                                                             (##car _g15771585_))
                                                            (_tl15831603_
                                                             (##cdr _g15771585_)))
                                                        (let ((_rest1606_
                                                               _tl15831603_))
                                                          (_K15811598_
                                                           _rest1606_)))
                                                      (_else15791593_))))))
                                          '#f))))
                               (if (##pair? _g15461556_)
                                   (let ((_hd15531611_ (##car _g15461556_))
                                         (_tl15541613_ (##cdr _g15461556_)))
                                     (let ((_hd1616_ _hd15531611_))
                                       (let ((_rest1618_ _tl15541613_))
                                         (_K15521608_ _rest1618_ _hd1616_))))
                                   (_try-match15481572_))))))))))
           _lp1543_)
         _stx1540_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx1623_)
          (let ((_key?1625_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda1538 _stx1623_ _key?1625_))))
      (define gx#stx-plist?
        (lambda _g2623_
          (let ((_g2622_ (length _g2623_)))
            (cond ((fx= _g2622_ 1)
                   (apply (lambda (_stx1623_) (gx#stx-plist?__0 _stx1623_))
                          _g2623_))
                  ((fx= _g2622_ 2)
                   (apply (lambda (_stx1627_ _key?1628_)
                            (gx#stx-plist?__opt-lambda1538
                             _stx1627_
                             _key?1628_))
                          _g2623_))
                  (else (error "No clause matching arguments" _g2623_))))))))
  (begin
    (define gx#stx-getq__opt-lambda1456
      (lambda (_key1458_ _stx1459_ _key=?1460_)
        ((letrec ((_lp1462_
                   (lambda (_rest1464_)
                     (let ((_g14651473_ (gx#syntax-e _rest1464_)))
                       (let ((_E14681477_
                              (lambda ()
                                (error '"No clause matching" _g14651473_))))
                         (let ((_else14671481_ (lambda () '#f)))
                           (let ((_K14691515_
                                  (lambda (_rest1484_ _hd1485_)
                                    (let ((_g14861493_
                                           (gx#syntax-e _rest1484_)))
                                      (let ((_E14881497_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g14861493_))))
                                        (let ((_K14891503_
                                               (lambda (_rest1500_ _val1501_)
                                                 (if (_key=?1460_
                                                      _hd1485_
                                                      _key1458_)
                                                     _val1501_
                                                     (_lp1462_ _rest1500_)))))
                                          (if (##pair? _g14861493_)
                                              (let ((_hd14901506_
                                                     (##car _g14861493_))
                                                    (_tl14911508_
                                                     (##cdr _g14861493_)))
                                                (let ((_val1511_ _hd14901506_))
                                                  (let ((_rest1513_
                                                         _tl14911508_))
                                                    (_K14891503_
                                                     _rest1513_
                                                     _val1511_))))
                                              (_E14881497_))))))))
                             (if (##pair? _g14651473_)
                                 (let ((_hd14701518_ (##car _g14651473_))
                                       (_tl14711520_ (##cdr _g14651473_)))
                                   (let ((_hd1523_ _hd14701518_))
                                     (let ((_rest1525_ _tl14711520_))
                                       (_K14691515_ _rest1525_ _hd1523_))))
                                 (_else14671481_)))))))))
           _lp1462_)
         _stx1459_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key1530_ _stx1531_)
          (let ((_key=?1533_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda1456 _key1530_ _stx1531_ _key=?1533_))))
      (define gx#stx-getq
        (lambda _g2625_
          (let ((_g2624_ (length _g2625_)))
            (cond ((fx= _g2624_ 2)
                   (apply (lambda (_key1530_ _stx1531_)
                            (gx#stx-getq__0 _key1530_ _stx1531_))
                          _g2625_))
                  ((fx= _g2624_ 3)
                   (apply (lambda (_key1535_ _stx1536_ _key=?1537_)
                            (gx#stx-getq__opt-lambda1456
                             _key1535_
                             _stx1536_
                             _key=?1537_))
                          _g2625_))
                  (else (error "No clause matching arguments" _g2625_)))))))))
