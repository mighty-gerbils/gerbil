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
    (lambda _$args2544_
      (apply make-struct-instance gx#identifier-wrap::t _$args2544_)))
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
    (lambda _$args2541_
      (apply make-struct-instance gx#syntax-wrap::t _$args2541_)))
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
    (lambda _$args2538_
      (apply make-struct-instance gx#syntax-quote::t _$args2538_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (begin)
  (define gx#identifier? (lambda (_stx2536_) (symbol? (gx#stx-e _stx2536_))))
  (define gx#identifier-quote?
    (lambda (_stx2534_)
      (if (gx#syntax-quote? _stx2534_) (symbol? (AST-e _stx2534_)) '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx2529_)
      (let ((_$e2531_ (gx#syntax-quote? _stx2529_)))
        (if _$e2531_
            _$e2531_
            (if (AST? _stx2529_) (gx#sealed-syntax? (AST-e _stx2529_)) '#f)))))
  (define gx#syntax-e
    (lambda (_stx2525_)
      (let ((_stx2527_ (gx#stx-unwrap _stx2525_)))
        (if (AST? _stx2527_) (AST-e _stx2527_) _stx2527_))))
  (define gx#syntax->datum
    (lambda (_stx2523_)
      (if (AST? _stx2523_)
          (gx#syntax->datum (AST-e _stx2523_))
          (if (pair? _stx2523_)
              (cons (gx#syntax->datum (car _stx2523_))
                    (gx#syntax->datum (cdr _stx2523_)))
              (if (vector? _stx2523_)
                  (vector-map gx#syntax->datum _stx2523_)
                  (if (box? _stx2523_)
                      (box (gx#syntax->datum (unbox _stx2523_)))
                      _stx2523_))))))
  (define gx#datum->syntax
    (let ((_opt-lambda24912511_
           (lambda (_stx2493_ _datum2494_ _src2495_)
             (let ((_wrap-datum2497_
                    (lambda (_e2504_ _marks2505_)
                      ((letrec ((_recur2507_
                                 (lambda (_e2509_)
                                   (if (symbol? _e2509_)
                                       (gx#make-identifier-wrap
                                        _e2509_
                                        _src2495_
                                        _marks2505_)
                                       (if (pair? _e2509_)
                                           (cons (_recur2507_ (car _e2509_))
                                                 (_recur2507_ (cdr _e2509_)))
                                           (if (vector? _e2509_)
                                               (vector-map _recur2507_ _e2509_)
                                               (if (box? _e2509_)
                                                   (box (_recur2507_
                                                         (unbox _e2509_)))
                                                   _e2509_)))))))
                         _recur2507_)
                       _e2504_))))
               (let ((_wrap-outer2498_
                      (lambda (_e2502_)
                        (if (AST? _e2502_)
                            _e2502_
                            (make-AST _e2502_ _src2495_)))))
                 (if (AST? _datum2494_)
                     _datum2494_
                     (if (not _stx2493_)
                         (make-AST _datum2494_ _src2495_)
                         (if (gx#identifier? _stx2493_)
                             (let ((_stx2500_ (gx#stx-unwrap _stx2493_)))
                               (if (gx#identifier-quote? _stx2500_)
                                   (gx#make-syntax-quote
                                    _datum2494_
                                    _src2495_
                                    (gx#syntax-quote-context _stx2500_)
                                    (gx#syntax-quote-marks _stx2500_))
                                   (_wrap-outer2498_
                                    (_wrap-datum2497_
                                     _datum2494_
                                     (gx#identifier-wrap-marks _stx2500_)))))
                             (error '"Bad template syntax; expected identifier"
                                    _stx2493_)))))))))
      (lambda _g12490_
        (let ((_g12489_ (length _g12490_)))
          (cond ((fx= _g12489_ 2)
                 (apply (lambda (_stx2514_ _datum2515_)
                          (let ((_src2517_ '#f))
                            (_opt-lambda24912511_
                             _stx2514_
                             _datum2515_
                             _src2517_)))
                        _g12490_))
                ((fx= _g12489_ 3)
                 (apply (lambda (_stx2519_ _datum2520_ _src2521_)
                          (_opt-lambda24912511_
                           _stx2519_
                           _datum2520_
                           _src2521_))
                        _g12490_))
                (else (error "No clause matching arguments" _g12490_)))))))
  (define gx#stx-unwrap
    (let ((_opt-lambda24672482_
           (lambda (_stx2469_ _marks2470_)
             ((letrec ((_lp2472_
                        (lambda (_e2474_ _marks2475_ _src2476_)
                          (if (gx#syntax-wrap? _e2474_)
                              (_lp2472_
                               (AST-e _e2474_)
                               (gx#apply-mark
                                (gx#syntax-wrap-mark _e2474_)
                                _marks2475_)
                               (AST-source _e2474_))
                              (if (gx#identifier-wrap? _e2474_)
                                  (if (null? _marks2475_)
                                      _e2474_
                                      (gx#make-identifier-wrap
                                       (AST-e _e2474_)
                                       (AST-source _e2474_)
                                       (foldl gx#apply-mark
                                              (gx#identifier-wrap-marks
                                               _e2474_)
                                              _marks2475_)))
                                  (if (gx#syntax-quote? _e2474_)
                                      _e2474_
                                      (if (AST? _e2474_)
                                          (_lp2472_
                                           (AST-e _e2474_)
                                           _marks2475_
                                           (AST-source _e2474_))
                                          (if (symbol? _e2474_)
                                              (gx#make-identifier-wrap
                                               _e2474_
                                               _src2476_
                                               (reverse _marks2475_))
                                              (if (null? _marks2475_)
                                                  _e2474_
                                                  (if (pair? _e2474_)
                                                      (cons (gx#stx-wrap
                                                             (car _e2474_)
                                                             _marks2475_)
                                                            (gx#stx-wrap
                                                             (cdr _e2474_)
                                                             _marks2475_))
                                                      (if (vector? _e2474_)
                                                          (vector-map
                                                           (lambda (_g24772479_)
                                                             (gx#stx-wrap
                                                              _g24772479_
                                                              _marks2475_))
                                                           _e2474_)
                                                          (if (box? _e2474_)
                                                              (box (gx#stx-wrap
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (unbox _e2474_)
                            _marks2475_))
                      _e2474_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _lp2472_)
              _stx2469_
              _marks2470_
              (gx#stx-source _stx2469_)))))
      (lambda _g12492_
        (let ((_g12491_ (length _g12492_)))
          (cond ((fx= _g12491_ 1)
                 (apply (lambda (_stx2485_)
                          (let ((_marks2487_ '()))
                            (_opt-lambda24672482_ _stx2485_ _marks2487_)))
                        _g12492_))
                ((fx= _g12491_ 2)
                 (apply (lambda (_stx2489_ _marks2490_)
                          (_opt-lambda24672482_ _stx2489_ _marks2490_))
                        _g12492_))
                (else (error "No clause matching arguments" _g12492_)))))))
  (define gx#stx-wrap
    (lambda (_stx2462_ _marks2463_)
      (foldl (lambda (_mark2465_ _stx2466_)
               (gx#stx-apply-mark _stx2466_ _mark2465_))
             _stx2462_
             _marks2463_)))
  (define gx#stx-rewrap
    (lambda (_stx2456_ _marks2457_)
      (foldr (lambda (_mark2459_ _stx2460_)
               (gx#stx-apply-mark _stx2460_ _mark2459_))
             _stx2456_
             _marks2457_)))
  (define gx#stx-apply-mark
    (lambda (_stx2453_ _mark2454_)
      (if (gx#syntax-quote? _stx2453_)
          _stx2453_
          (if (if (gx#syntax-wrap? _stx2453_)
                  (eq? _mark2454_ (gx#syntax-wrap-mark _stx2453_))
                  '#f)
              (AST-e _stx2453_)
              (gx#make-syntax-wrap
               _stx2453_
               (gx#stx-source _stx2453_)
               _mark2454_)))))
  (define gx#apply-mark
    (lambda (_mark2417_ _marks2418_)
      (let ((_marks24192427_ _marks2418_))
        (let ((_E24222431_
               (lambda () (error '"No clause matching" _marks24192427_))))
          (let ((_else24212435_ (lambda () (cons _mark2417_ _marks2418_))))
            (let ((_K24232441_
                   (lambda (_rest2438_ _hd2439_)
                     (if (eq? _mark2417_ _hd2439_)
                         _rest2438_
                         (cons _mark2417_ _marks2418_)))))
              (if (##pair? _marks24192427_)
                  (let ((_hd24242444_ (##car _marks24192427_))
                        (_tl24252446_ (##cdr _marks24192427_)))
                    (let ((_hd2449_ _hd24242444_))
                      (let ((_rest2451_ _tl24252446_))
                        (_K24232441_ _rest2451_ _hd2449_))))
                  (_else24212435_))))))))
  (define gx#stx-e
    (lambda (_stx2415_)
      (if (AST? _stx2415_) (gx#stx-e (AST-e _stx2415_)) _stx2415_)))
  (define gx#stx-source
    (lambda (_stx2413_) (if (AST? _stx2413_) (AST-source _stx2413_) '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx2407_ _src2408_)
      (if (let ((_$e2410_ (AST? _stx2407_)))
            (if _$e2410_ _$e2410_ (not _src2408_)))
          _stx2407_
          (make-AST _stx2407_ _src2408_))))
  (define gx#stx-datum?
    (lambda (_stx2405_) (gx#self-quoting? (gx#stx-e _stx2405_))))
  (define gx#self-quoting?
    (lambda (_x2385_)
      (let ((_$e2387_ (boolean? _x2385_)))
        (if _$e2387_
            _$e2387_
            (let ((_$e2390_ (char? _x2385_)))
              (if _$e2390_
                  _$e2390_
                  (let ((_$e2393_ (number? _x2385_)))
                    (if _$e2393_
                        _$e2393_
                        (let ((_$e2396_ (keyword? _x2385_)))
                          (if _$e2396_
                              _$e2396_
                              (let ((_$e2399_ (string? _x2385_)))
                                (if _$e2399_
                                    _$e2399_
                                    (let ((_$e2402_ (void? _x2385_)))
                                      (if _$e2402_
                                          _$e2402_
                                          (dssl-object? _x2385_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e2383_) (boolean? (gx#stx-e _e2383_))))
  (define gx#stx-keyword? (lambda (_e2381_) (keyword? (gx#stx-e _e2381_))))
  (define gx#stx-char? (lambda (_e2379_) (char? (gx#stx-e _e2379_))))
  (define gx#stx-number? (lambda (_e2377_) (number? (gx#stx-e _e2377_))))
  (define gx#stx-fixnum? (lambda (_e2375_) (fixnum? (gx#stx-e _e2375_))))
  (define gx#stx-string? (lambda (_e2373_) (string? (gx#stx-e _e2373_))))
  (define gx#stx-null? (lambda (_e2371_) (null? (gx#stx-e _e2371_))))
  (define gx#stx-pair? (lambda (_e2369_) (pair? (gx#stx-e _e2369_))))
  (define gx#stx-list?
    (lambda (_e2329_)
      (let ((_g23302339_ (gx#stx-e _e2329_)))
        (let ((_E23332343_
               (lambda () (error '"No clause matching" _g23302339_))))
          (let ((_try-match23322354_
                 (lambda ()
                   (let ((_K23342349_
                          (lambda (_tail2347_) (null? _tail2347_))))
                     (let ((_tail2352_ _g23302339_))
                       (_K23342349_ _tail2352_))))))
            (let ((_K23352359_
                   (lambda (_rest2357_) (gx#stx-list? _rest2357_))))
              (if (##pair? _g23302339_)
                  (let ((_hd23362362_ (##car _g23302339_))
                        (_tl23372364_ (##cdr _g23302339_)))
                    (let ((_rest2367_ _tl23372364_)) (_K23352359_ _rest2367_)))
                  (_try-match23322354_))))))))
  (define gx#stx-pair/null?
    (lambda (_e2322_)
      (let ((_e2324_ (gx#stx-e _e2322_)))
        (let ((_$e2326_ (pair? _e2324_)))
          (if _$e2326_ _$e2326_ (null? _e2324_))))))
  (define gx#stx-vector? (lambda (_e2320_) (vector? (gx#stx-e _e2320_))))
  (define gx#stx-box? (lambda (_e2318_) (box? (gx#stx-e _e2318_))))
  (define gx#stx-eq?
    (lambda (_x2315_ _y2316_) (eq? (gx#stx-e _x2315_) (gx#stx-e _y2316_))))
  (define gx#stx-eqv?
    (lambda (_x2312_ _y2313_) (eqv? (gx#stx-e _x2312_) (gx#stx-e _y2313_))))
  (define gx#stx-equal?
    (lambda (_x2309_ _y2310_) (equal? (gx#stx-e _x2309_) (gx#stx-e _y2310_))))
  (define gx#stx-false? (lambda (_x2307_) (not (gx#stx-e _x2307_))))
  (define gx#stx-identifier
    (lambda (_template2304_ . _args2305_)
      (gx#datum->syntax
       _template2304_
       (apply make-symbol (map gx#stx-e _args2305_))
       (gx#stx-source _template2304_))))
  (define gx#stx-identifier-marks
    (lambda (_stx2300_)
      (let ((_stx2302_ (gx#stx-unwrap _stx2300_)))
        (if (gx#identifier-wrap? _stx2302_)
            (gx#identifier-wrap-marks _stx2302_)
            (gx#syntax-quote-marks _stx2302_)))))
  (define gx#stx-identifier-context
    (lambda (_stx2296_)
      (let ((_stx2298_ (gx#stx-unwrap _stx2296_)))
        (if (gx#identifier-quote? _stx2298_)
            (gx#syntax-quote-context _stx2298_)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx2251_)
      (let ((_g22522262_ (gx#stx-e _stx2251_)))
        (let ((_E22562266_
               (lambda () (error '"No clause matching" _g22522262_))))
          (let ((_else22552270_ (lambda () '#f)))
            (let ((_try-match22542278_
                   (lambda ()
                     (let ((_K22572275_ (lambda () '#t)))
                       (if (##null? _g22522262_)
                           (_K22572275_)
                           (_else22552270_))))))
              (let ((_K22582284_
                     (lambda (_rest2281_ _hd2282_)
                       (if (gx#identifier? _hd2282_)
                           (gx#identifier-list? _rest2281_)
                           '#f))))
                (if (##pair? _g22522262_)
                    (let ((_hd22592287_ (##car _g22522262_))
                          (_tl22602289_ (##cdr _g22522262_)))
                      (let ((_hd2292_ _hd22592287_))
                        (let ((_rest2294_ _tl22602289_))
                          (_K22582284_ _rest2294_ _hd2292_))))
                    (_try-match22542278_)))))))))
  (define gx#genident
    (let ((_opt-lambda22262236_
           (lambda (_e2228_ _src2229_)
             (gx#stx-wrap-source
              (gensym (let ((_e2231_ (gx#stx-e _e2228_)))
                        (if (interned-symbol? _e2231_) _e2231_ 'g)))
              (let ((_$e2233_ (gx#stx-source _e2228_)))
                (if _$e2233_ _$e2233_ _src2229_))))))
      (lambda _g12494_
        (let ((_g12493_ (length _g12494_)))
          (cond ((fx= _g12493_ 0)
                 (apply (lambda ()
                          (let ((_e2240_ 'g))
                            (let ((_src2242_ '#f))
                              (_opt-lambda22262236_ _e2240_ _src2242_))))
                        _g12494_))
                ((fx= _g12493_ 1)
                 (apply (lambda (_e2244_)
                          (let ((_src2246_ '#f))
                            (_opt-lambda22262236_ _e2244_ _src2246_)))
                        _g12494_))
                ((fx= _g12493_ 2)
                 (apply (lambda (_e2248_ _src2249_)
                          (_opt-lambda22262236_ _e2248_ _src2249_))
                        _g12494_))
                (else (error "No clause matching arguments" _g12494_)))))))
  (define gx#gentemps
    (lambda (_stx-lst2225_) (gx#stx-map gx#genident _stx-lst2225_)))
  (define gx#syntax->list (lambda (_stx2223_) (gx#stx-map values _stx2223_)))
  (define gx#stx-car (lambda (_stx2221_) (car (gx#syntax-e _stx2221_))))
  (define gx#stx-cdr (lambda (_stx2219_) (cdr (gx#syntax-e _stx2219_))))
  (define gx#stx-length
    (lambda (_stx2182_)
      ((letrec ((_lp2184_
                 (lambda (_rest2186_ _n2187_)
                   (let ((_g21882196_ (gx#stx-e _rest2186_)))
                     (let ((_E21912200_
                            (lambda ()
                              (error '"No clause matching" _g21882196_))))
                       (let ((_else21902204_ (lambda () _n2187_)))
                         (let ((_K21922209_
                                (lambda (_rest2207_)
                                  (_lp2184_ _rest2207_ (fx1+ _n2187_)))))
                           (if (##pair? _g21882196_)
                               (let ((_hd21932212_ (##car _g21882196_))
                                     (_tl21942214_ (##cdr _g21882196_)))
                                 (let ((_rest2217_ _tl21942214_))
                                   (_K21922209_ _rest2217_)))
                               (_else21902204_)))))))))
         _lp2184_)
       _stx2182_
       '0)))
  (define gx#stx-for-each
    (lambda _g12496_
      (let ((_g12495_ (length _g12496_)))
        (cond ((fx= _g12495_ 2)
               (apply (lambda (_f2175_ _stx2176_)
                        (gx#stx-for-each1 _f2175_ _stx2176_))
                      _g12496_))
              ((fx= _g12495_ 3)
               (apply (lambda (_f2178_ _xstx2179_ _ystx2180_)
                        (gx#stx-for-each2 _f2178_ _xstx2179_ _ystx2180_))
                      _g12496_))
              (else (error "No clause matching arguments" _g12496_))))))
  (define gx#stx-for-each1
    (lambda (_f2125_ _stx2126_)
      ((letrec ((_lp2128_
                 (lambda (_rest2130_)
                   (let ((_g21312141_ (gx#syntax-e _rest2130_)))
                     (let ((_E21352145_
                            (lambda ()
                              (error '"No clause matching" _g21312141_))))
                       (let ((_else21342149_ (lambda () (_f2125_ _rest2130_))))
                         (let ((_try-match21332157_
                                (lambda ()
                                  (let ((_K21362154_ (lambda () '#!void)))
                                    (if (##null? _g21312141_)
                                        (_K21362154_)
                                        (_else21342149_))))))
                           (let ((_K21372163_
                                  (lambda (_rest2160_ _hd2161_)
                                    (begin
                                      (_f2125_ _hd2161_)
                                      (_lp2128_ _rest2160_)))))
                             (if (##pair? _g21312141_)
                                 (let ((_hd21382166_ (##car _g21312141_))
                                       (_tl21392168_ (##cdr _g21312141_)))
                                   (let ((_hd2171_ _hd21382166_))
                                     (let ((_rest2173_ _tl21392168_))
                                       (_K21372163_ _rest2173_ _hd2171_))))
                                 (_try-match21332157_))))))))))
         _lp2128_)
       _stx2126_)))
  (define gx#stx-for-each2
    (lambda (_f2030_ _xstx2031_ _ystx2032_)
      ((letrec ((_lp2034_
                 (lambda (_xrest2036_ _yrest2037_)
                   (let ((_g20382048_ (gx#syntax-e _xrest2036_)))
                     (let ((_E20422052_
                            (lambda ()
                              (error '"No clause matching" _g20382048_))))
                       (let ((_else20412056_ (lambda () '#!void)))
                         (let ((_try-match20402079_
                                (lambda ()
                                  (let ((_K20432076_
                                         (lambda ()
                                           (let ((_yrest20602065_ _yrest2037_))
                                             (let ((_E20622069_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest20602065_))))
                                               (let ((_K20632073_
                                                      (lambda ()
                                                        (_f2030_ _xrest2036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest2037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest20602065_))
                                                     (_K20632073_)
                                                     (_E20622069_))))))))
                                    (if (not (null? _g20382048_))
                                        (_K20432076_)
                                        (_else20412056_))))))
                           (let ((_K20442113_
                                  (lambda (_xrest2082_ _xhd2083_)
                                    (let ((_g20842091_
                                           (gx#syntax-e _yrest2037_)))
                                      (let ((_E20862095_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g20842091_))))
                                        (let ((_K20872101_
                                               (lambda (_yrest2098_ _yhd2099_)
                                                 (begin
                                                   (_f2030_ _xhd2083_
                                                            _yhd2099_)
                                                   (_lp2034_
                                                    _xrest2082_
                                                    _yrest2098_)))))
                                          (if (##pair? _g20842091_)
                                              (let ((_hd20882104_
                                                     (##car _g20842091_))
                                                    (_tl20892106_
                                                     (##cdr _g20842091_)))
                                                (let ((_yhd2109_ _hd20882104_))
                                                  (let ((_yrest2111_
                                                         _tl20892106_))
                                                    (_K20872101_
                                                     _yrest2111_
                                                     _yhd2109_))))
                                              (_E20862095_))))))))
                             (if (##pair? _g20382048_)
                                 (let ((_hd20452116_ (##car _g20382048_))
                                       (_tl20462118_ (##cdr _g20382048_)))
                                   (let ((_xhd2121_ _hd20452116_))
                                     (let ((_xrest2123_ _tl20462118_))
                                       (_K20442113_ _xrest2123_ _xhd2121_))))
                                 (_try-match20402079_))))))))))
         _lp2034_)
       _xstx2031_
       _ystx2032_)))
  (define gx#stx-map
    (lambda _g12498_
      (let ((_g12497_ (length _g12498_)))
        (cond ((fx= _g12497_ 2)
               (apply (lambda (_f2023_ _stx2024_)
                        (gx#stx-map1 _f2023_ _stx2024_))
                      _g12498_))
              ((fx= _g12497_ 3)
               (apply (lambda (_f2026_ _xstx2027_ _ystx2028_)
                        (gx#stx-map2 _f2026_ _xstx2027_ _ystx2028_))
                      _g12498_))
              (else (error "No clause matching arguments" _g12498_))))))
  (define gx#stx-map1
    (lambda (_f1973_ _stx1974_)
      ((letrec ((_recur1976_
                 (lambda (_rest1978_)
                   (let ((_g19791989_ (gx#syntax-e _rest1978_)))
                     (let ((_E19831993_
                            (lambda ()
                              (error '"No clause matching" _g19791989_))))
                       (let ((_else19821997_ (lambda () (_f1973_ _rest1978_))))
                         (let ((_try-match19812005_
                                (lambda ()
                                  (let ((_K19842002_ (lambda () '())))
                                    (if (##null? _g19791989_)
                                        (_K19842002_)
                                        (_else19821997_))))))
                           (let ((_K19852011_
                                  (lambda (_rest2008_ _hd2009_)
                                    (cons (_f1973_ _hd2009_)
                                          (_recur1976_ _rest2008_)))))
                             (if (##pair? _g19791989_)
                                 (let ((_hd19862014_ (##car _g19791989_))
                                       (_tl19872016_ (##cdr _g19791989_)))
                                   (let ((_hd2019_ _hd19862014_))
                                     (let ((_rest2021_ _tl19872016_))
                                       (_K19852011_ _rest2021_ _hd2019_))))
                                 (_try-match19812005_))))))))))
         _recur1976_)
       _stx1974_)))
  (define gx#stx-map2
    (lambda (_f1878_ _xstx1879_ _ystx1880_)
      ((letrec ((_recur1882_
                 (lambda (_xrest1884_ _yrest1885_)
                   (let ((_g18861896_ (gx#syntax-e _xrest1884_)))
                     (let ((_E18901900_
                            (lambda ()
                              (error '"No clause matching" _g18861896_))))
                       (let ((_else18891904_ (lambda () '())))
                         (let ((_try-match18881927_
                                (lambda ()
                                  (let ((_K18911924_
                                         (lambda ()
                                           (let ((_yrest19081913_ _yrest1885_))
                                             (let ((_E19101917_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest19081913_))))
                                               (let ((_K19111921_
                                                      (lambda ()
                                                        (_f1878_ _xrest1884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest1885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest19081913_))
                                                     (_K19111921_)
                                                     (_E19101917_))))))))
                                    (if (not (null? _g18861896_))
                                        (_K18911924_)
                                        (_else18891904_))))))
                           (let ((_K18921961_
                                  (lambda (_xrest1930_ _xhd1931_)
                                    (let ((_g19321939_
                                           (gx#syntax-e _yrest1885_)))
                                      (let ((_E19341943_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g19321939_))))
                                        (let ((_K19351949_
                                               (lambda (_yrest1946_ _yhd1947_)
                                                 (cons (_f1878_ _xhd1931_
                                                                _yhd1947_)
                                                       (_recur1882_
                                                        _xrest1930_
                                                        _yrest1946_)))))
                                          (if (##pair? _g19321939_)
                                              (let ((_hd19361952_
                                                     (##car _g19321939_))
                                                    (_tl19371954_
                                                     (##cdr _g19321939_)))
                                                (let ((_yhd1957_ _hd19361952_))
                                                  (let ((_yrest1959_
                                                         _tl19371954_))
                                                    (_K19351949_
                                                     _yrest1959_
                                                     _yhd1957_))))
                                              (_E19341943_))))))))
                             (if (##pair? _g18861896_)
                                 (let ((_hd18931964_ (##car _g18861896_))
                                       (_tl18941966_ (##cdr _g18861896_)))
                                   (let ((_xhd1969_ _hd18931964_))
                                     (let ((_xrest1971_ _tl18941966_))
                                       (_K18921961_ _xrest1971_ _xhd1969_))))
                                 (_try-match18881927_))))))))))
         _recur1882_)
       _xstx1879_
       _ystx1880_)))
  (define gx#stx-andmap
    (lambda (_f1828_ _stx1829_)
      ((letrec ((_lp1831_
                 (lambda (_rest1833_)
                   (let ((_g18341844_ (gx#syntax-e _rest1833_)))
                     (let ((_E18381848_
                            (lambda ()
                              (error '"No clause matching" _g18341844_))))
                       (let ((_else18371852_ (lambda () (_f1828_ _rest1833_))))
                         (let ((_try-match18361860_
                                (lambda ()
                                  (let ((_K18391857_ (lambda () '#t)))
                                    (if (##null? _g18341844_)
                                        (_K18391857_)
                                        (_else18371852_))))))
                           (let ((_K18401866_
                                  (lambda (_rest1863_ _hd1864_)
                                    (if (_f1828_ _hd1864_)
                                        (_lp1831_ _rest1863_)
                                        '#f))))
                             (if (##pair? _g18341844_)
                                 (let ((_hd18411869_ (##car _g18341844_))
                                       (_tl18421871_ (##cdr _g18341844_)))
                                   (let ((_hd1874_ _hd18411869_))
                                     (let ((_rest1876_ _tl18421871_))
                                       (_K18401866_ _rest1876_ _hd1874_))))
                                 (_try-match18361860_))))))))))
         _lp1831_)
       _stx1829_)))
  (define gx#stx-ormap
    (lambda (_f1775_ _stx1776_)
      ((letrec ((_lp1778_
                 (lambda (_rest1780_)
                   (let ((_g17811791_ (gx#syntax-e _rest1780_)))
                     (let ((_E17851795_
                            (lambda ()
                              (error '"No clause matching" _g17811791_))))
                       (let ((_else17841799_ (lambda () (_f1775_ _rest1780_))))
                         (let ((_try-match17831807_
                                (lambda ()
                                  (let ((_K17861804_ (lambda () '#f)))
                                    (if (##null? _g17811791_)
                                        (_K17861804_)
                                        (_else17841799_))))))
                           (let ((_K17871816_
                                  (lambda (_rest1810_ _hd1811_)
                                    (let ((_$e1813_ (_f1775_ _hd1811_)))
                                      (if _$e1813_
                                          _$e1813_
                                          (_lp1778_ _rest1810_))))))
                             (if (##pair? _g17811791_)
                                 (let ((_hd17881819_ (##car _g17811791_))
                                       (_tl17891821_ (##cdr _g17811791_)))
                                   (let ((_hd1824_ _hd17881819_))
                                     (let ((_rest1826_ _tl17891821_))
                                       (_K17871816_ _rest1826_ _hd1824_))))
                                 (_try-match17831807_))))))))))
         _lp1778_)
       _stx1776_)))
  (define gx#stx-foldl
    (lambda (_f1723_ _iv1724_ _stx1725_)
      ((letrec ((_lp1727_
                 (lambda (_r1729_ _rest1730_)
                   (let ((_g17311741_ (gx#syntax-e _rest1730_)))
                     (let ((_E17351745_
                            (lambda ()
                              (error '"No clause matching" _g17311741_))))
                       (let ((_else17341749_
                              (lambda () (_f1723_ _rest1730_ _r1729_))))
                         (let ((_try-match17331757_
                                (lambda ()
                                  (let ((_K17361754_ (lambda () _r1729_)))
                                    (if (##null? _g17311741_)
                                        (_K17361754_)
                                        (_else17341749_))))))
                           (let ((_K17371763_
                                  (lambda (_rest1760_ _hd1761_)
                                    (_lp1727_
                                     (_f1723_ _hd1761_ _r1729_)
                                     _rest1760_))))
                             (if (##pair? _g17311741_)
                                 (let ((_hd17381766_ (##car _g17311741_))
                                       (_tl17391768_ (##cdr _g17311741_)))
                                   (let ((_hd1771_ _hd17381766_))
                                     (let ((_rest1773_ _tl17391768_))
                                       (_K17371763_ _rest1773_ _hd1771_))))
                                 (_try-match17331757_))))))))))
         _lp1727_)
       _iv1724_
       _stx1725_)))
  (define gx#stx-foldr
    (lambda (_f1672_ _iv1673_ _stx1674_)
      ((letrec ((_recur1676_
                 (lambda (_rest1678_)
                   (let ((_g16791689_ (gx#syntax-e _rest1678_)))
                     (let ((_E16831693_
                            (lambda ()
                              (error '"No clause matching" _g16791689_))))
                       (let ((_else16821697_
                              (lambda () (_f1672_ _rest1678_ _iv1673_))))
                         (let ((_try-match16811705_
                                (lambda ()
                                  (let ((_K16841702_ (lambda () _iv1673_)))
                                    (if (##null? _g16791689_)
                                        (_K16841702_)
                                        (_else16821697_))))))
                           (let ((_K16851711_
                                  (lambda (_rest1708_ _hd1709_)
                                    (_f1672_ _hd1709_
                                             (_recur1676_ _rest1708_)))))
                             (if (##pair? _g16791689_)
                                 (let ((_hd16861714_ (##car _g16791689_))
                                       (_tl16871716_ (##cdr _g16791689_)))
                                   (let ((_hd1719_ _hd16861714_))
                                     (let ((_rest1721_ _tl16871716_))
                                       (_K16851711_ _rest1721_ _hd1719_))))
                                 (_try-match16811705_))))))))))
         _recur1676_)
       _stx1674_)))
  (define gx#stx-reverse
    (lambda (_stx1670_) (gx#stx-foldl cons '() _stx1670_)))
  (define gx#stx-last
    (lambda (_stx1631_)
      ((letrec ((_lp1633_
                 (lambda (_rest1635_)
                   (let ((_g16361644_ (gx#syntax-e _rest1635_)))
                     (let ((_E16391648_
                            (lambda ()
                              (error '"No clause matching" _g16361644_))))
                       (let ((_else16381652_ (lambda () _rest1635_)))
                         (let ((_K16401658_
                                (lambda (_rest1655_ _hd1656_)
                                  (if (gx#stx-null? _rest1655_)
                                      _hd1656_
                                      (_lp1633_ _rest1655_)))))
                           (if (##pair? _g16361644_)
                               (let ((_hd16411661_ (##car _g16361644_))
                                     (_tl16421663_ (##cdr _g16361644_)))
                                 (let ((_hd1666_ _hd16411661_))
                                   (let ((_rest1668_ _tl16421663_))
                                     (_K16401658_ _rest1668_ _hd1666_))))
                               (_else16381652_)))))))))
         _lp1633_)
       _stx1631_)))
  (define gx#stx-last-pair
    (lambda (_stx1600_)
      ((letrec ((_lp1602_
                 (lambda (_hd1604_)
                   (let ((_g16051612_ (gx#syntax-e _hd1604_)))
                     (let ((_E16071616_
                            (lambda ()
                              (error '"No clause matching" _g16051612_))))
                       (let ((_K16081621_
                              (lambda (_rest1619_)
                                (if (gx#stx-pair? _rest1619_)
                                    (_lp1602_ _rest1619_)
                                    _hd1604_))))
                         (if (##pair? _g16051612_)
                             (let ((_hd16091624_ (##car _g16051612_))
                                   (_tl16101626_ (##cdr _g16051612_)))
                               (let ((_rest1629_ _tl16101626_))
                                 (_K16081621_ _rest1629_)))
                             (_E16071616_))))))))
         _lp1602_)
       _stx1600_)))
  (define gx#stx-list-tail
    (lambda (_stx1567_ _k1568_)
      ((letrec ((_lp1570_
                 (lambda (_rest1572_ _k1573_)
                   (if (fxpositive? _k1573_)
                       (let ((_g15741581_ (gx#syntax-e _rest1572_)))
                         (let ((_E15761585_
                                (lambda ()
                                  (error '"No clause matching" _g15741581_))))
                           (let ((_K15771590_
                                  (lambda (_rest1588_)
                                    (_lp1570_ _rest1588_ (fx1- _k1573_)))))
                             (if (##pair? _g15741581_)
                                 (let ((_hd15781593_ (##car _g15741581_))
                                       (_tl15791595_ (##cdr _g15741581_)))
                                   (let ((_rest1598_ _tl15791595_))
                                     (_K15771590_ _rest1598_)))
                                 (_E15761585_)))))
                       _rest1572_))))
         _lp1570_)
       _stx1567_
       _k1568_)))
  (define gx#stx-list-ref
    (lambda (_stx1564_ _k1565_)
      (gx#stx-car (gx#stx-list-tail _stx1564_ _k1565_))))
  (define gx#stx-plist?
    (let ((_opt-lambda14721554_
           (lambda (_stx1474_ _key?1475_)
             ((letrec ((_lp1477_
                        (lambda (_rest1479_)
                          (let ((_g14801490_ (gx#stx-e _rest1479_)))
                            (let ((_E14841494_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g14801490_))))
                              (let ((_else14831498_ (lambda () '#f)))
                                (let ((_try-match14821506_
                                       (lambda ()
                                         (let ((_K14851503_ (lambda () '#t)))
                                           (if (##null? _g14801490_)
                                               (_K14851503_)
                                               (_else14831498_))))))
                                  (let ((_K14861542_
                                         (lambda (_rest1509_ _hd1510_)
                                           (if (_key?1475_ _hd1510_)
                                               (let ((_g15111519_
                                                      (gx#stx-e _rest1509_)))
                                                 (let ((_E15141523_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g15111519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_else15131527_
                                                          (lambda () '#f)))
                                                     (let ((_K15151532_
                                                            (lambda (_rest1530_)
                                                              (_lp1477_
                                                               _rest1530_))))
                                                       (if (##pair? _g15111519_)
                                                           (let ((_hd15161535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _g15111519_))
                         (_tl15171537_ (##cdr _g15111519_)))
                     (let ((_rest1540_ _tl15171537_))
                       (_K15151532_ _rest1540_)))
                   (_else15131527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '#f))))
                                    (if (##pair? _g14801490_)
                                        (let ((_hd14871545_
                                               (##car _g14801490_))
                                              (_tl14881547_
                                               (##cdr _g14801490_)))
                                          (let ((_hd1550_ _hd14871545_))
                                            (let ((_rest1552_ _tl14881547_))
                                              (_K14861542_
                                               _rest1552_
                                               _hd1550_))))
                                        (_try-match14821506_))))))))))
                _lp1477_)
              _stx1474_))))
      (lambda _g12500_
        (let ((_g12499_ (length _g12500_)))
          (cond ((fx= _g12499_ 1)
                 (apply (lambda (_stx1557_)
                          (let ((_key?1559_ gx#stx-keyword?))
                            (_opt-lambda14721554_ _stx1557_ _key?1559_)))
                        _g12500_))
                ((fx= _g12499_ 2)
                 (apply (lambda (_stx1561_ _key?1562_)
                          (_opt-lambda14721554_ _stx1561_ _key?1562_))
                        _g12500_))
                (else (error "No clause matching arguments" _g12500_)))))))
  (define gx#stx-getq
    (let ((_opt-lambda13901461_
           (lambda (_key1392_ _stx1393_ _key=?1394_)
             ((letrec ((_lp1396_
                        (lambda (_rest1398_)
                          (let ((_g13991407_ (gx#syntax-e _rest1398_)))
                            (let ((_E14021411_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g13991407_))))
                              (let ((_else14011415_ (lambda () '#f)))
                                (let ((_K14031449_
                                       (lambda (_rest1418_ _hd1419_)
                                         (let ((_g14201427_
                                                (gx#syntax-e _rest1418_)))
                                           (let ((_E14221431_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _g14201427_))))
                                             (let ((_K14231437_
                                                    (lambda (_rest1434_
                                                             _val1435_)
                                                      (if (_key=?1394_
                                                           _hd1419_
                                                           _key1392_)
                                                          _val1435_
                                                          (_lp1396_
                                                           _rest1434_)))))
                                               (if (##pair? _g14201427_)
                                                   (let ((_hd14241440_
                                                          (##car _g14201427_))
                                                         (_tl14251442_
                                                          (##cdr _g14201427_)))
                                                     (let ((_val1445_
                                                            _hd14241440_))
                                                       (let ((_rest1447_
                                                              _tl14251442_))
                                                         (_K14231437_
                                                          _rest1447_
                                                          _val1445_))))
                                                   (_E14221431_))))))))
                                  (if (##pair? _g13991407_)
                                      (let ((_hd14041452_ (##car _g13991407_))
                                            (_tl14051454_ (##cdr _g13991407_)))
                                        (let ((_hd1457_ _hd14041452_))
                                          (let ((_rest1459_ _tl14051454_))
                                            (_K14031449_
                                             _rest1459_
                                             _hd1457_))))
                                      (_else14011415_)))))))))
                _lp1396_)
              _stx1393_))))
      (lambda _g12502_
        (let ((_g12501_ (length _g12502_)))
          (cond ((fx= _g12501_ 2)
                 (apply (lambda (_key1464_ _stx1465_)
                          (let ((_key=?1467_ gx#stx-eq?))
                            (_opt-lambda13901461_
                             _key1464_
                             _stx1465_
                             _key=?1467_)))
                        _g12502_))
                ((fx= _g12501_ 3)
                 (apply (lambda (_key1469_ _stx1470_ _key=?1471_)
                          (_opt-lambda13901461_
                           _key1469_
                           _stx1470_
                           _key=?1471_))
                        _g12502_))
                (else (error "No clause matching arguments" _g12502_))))))))
