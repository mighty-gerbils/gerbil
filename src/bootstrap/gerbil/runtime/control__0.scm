(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1695201399)
  (begin
    (define make-promise
      (lambda (_thunk2526_)
        (let () (declare (not safe)) (##make-delay-promise _thunk2526_))))
    (define call-with-parameters
      (lambda (_thunk2474_ . _rest2475_)
        (let* ((_rest24762487_ _rest2475_)
               (_E24792491_
                (lambda () (error '"No clause matching" _rest24762487_)))
               (_try-match24782499_
                (lambda ()
                  (let ((_K24802496_ (lambda () (_thunk2474_))))
                    (if (let () (declare (not safe)) (##null? _rest24762487_))
                        (_K24802496_)
                        (_E24792491_)))))
               (_K24812507_
                (lambda (_rest2502_ _val2503_ _param2504_)
                  (let ((__tmp2527
                         (if (null? _rest2502_)
                             _thunk2474_
                             (lambda ()
                               (apply call-with-parameters
                                      _thunk2474_
                                      _rest2502_)))))
                    (declare (not safe))
                    (##parameterize1 _param2504_ _val2503_ __tmp2527)))))
          (if (let () (declare (not safe)) (##pair? _rest24762487_))
              (let ((_hd24822510_
                     (let () (declare (not safe)) (##car _rest24762487_)))
                    (_tl24832512_
                     (let () (declare (not safe)) (##cdr _rest24762487_))))
                (let ((_param2515_ _hd24822510_))
                  (if (let () (declare (not safe)) (##pair? _tl24832512_))
                      (let ((_hd24842517_
                             (let ()
                               (declare (not safe))
                               (##car _tl24832512_)))
                            (_tl24852519_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl24832512_))))
                        (let* ((_val2522_ _hd24842517_)
                               (_rest2524_ _tl24852519_))
                          (_K24812507_ _rest2524_ _val2522_ _param2515_)))
                      (_try-match24782499_))))
              (_try-match24782499_)))))
    (define with-unwind-protect
      (lambda (_K2467_ _fini2468_)
        (let ((_once2470_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once2470_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once2470_ '#t)))
           _K2467_
           _fini2468_))))
    (define keyword-dispatch
      (lambda (_kwt2364_ _K2365_ . _all-args2366_)
        (if _kwt2364_
            (if (vector? _kwt2364_)
                '#!void
                (error '"expected vector" _kwt2364_))
            '#!void)
        (if (procedure? _K2365_) '#!void (error '"expected procedure" _K2365_))
        (let ((_keys2368_ (make-hash-table-eq 'hash: keyword-hash)))
          (let _lp2370_ ((_rest2372_ _all-args2366_)
                         (_args2373_ '#f)
                         (_tail2374_ '#f))
            (let* ((_rest23752383_ _rest2372_)
                   (_E23782387_
                    (lambda () (error '"No clause matching" _rest23752383_)))
                   (_else23772391_
                    (lambda ()
                      (if _args2373_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail2374_ '()))
                            (let ((__tmp2528 (cons _keys2368_ _args2373_)))
                              (declare (not safe))
                              (##apply _K2365_ __tmp2528)))
                          (_K2365_ _keys2368_))))
                   (_K23792455_
                    (lambda (_hd-rest2394_ _hd2395_)
                      (if (keyword? _hd2395_)
                          (let* ((_hd-rest23962403_ _hd-rest2394_)
                                 (_E23982407_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest23962403_)))
                                 (_K23992415_
                                  (lambda (_rest2410_ _val2411_)
                                    (if _kwt2364_
                                        (let ((_pos2413_
                                               (let ((__tmp2530
                                                      (keyword-hash _hd2395_))
                                                     (__tmp2529
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt2364_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp2530
                                                  __tmp2529))))
                                          (if (eq? _hd2395_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _kwt2364_
                                                      _pos2413_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K2365_
                                                     _hd2395_)))
                                        '#!void)
                                    (if (hash-key? _keys2368_ _hd2395_)
                                        (error '"Duplicate keyword argument"
                                               _K2365_
                                               _hd2395_)
                                        '#!void)
                                    (hash-put! _keys2368_ _hd2395_ _val2411_)
                                    (_lp2370_
                                     _rest2410_
                                     _args2373_
                                     _tail2374_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest23962403_))
                                (let ((_hd24002418_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest23962403_)))
                                      (_tl24012420_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest23962403_))))
                                  (let* ((_val2423_ _hd24002418_)
                                         (_rest2425_ _tl24012420_))
                                    (_K23992415_ _rest2425_ _val2423_)))
                                (_E23982407_)))
                          (if (eq? _hd2395_ '#!key)
                              (let* ((_hd-rest24262433_ _hd-rest2394_)
                                     (_E24282437_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest24262433_)))
                                     (_K24292443_
                                      (lambda (_rest2440_ _val2441_)
                                        (if _args2373_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail2374_
                                                 _hd-rest2394_))
                                              (_lp2370_
                                               _rest2440_
                                               _args2373_
                                               _hd-rest2394_))
                                            (_lp2370_
                                             _rest2440_
                                             _hd-rest2394_
                                             _hd-rest2394_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest24262433_))
                                    (let ((_hd24302446_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest24262433_)))
                                          (_tl24312448_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest24262433_))))
                                      (let* ((_val2451_ _hd24302446_)
                                             (_rest2453_ _tl24312448_))
                                        (_K24292443_ _rest2453_ _val2451_)))
                                    (_E24282437_)))
                              (if (eq? _hd2395_ '#!rest)
                                  (if _args2373_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail2374_
                                           _hd-rest2394_))
                                        (let ((__tmp2531
                                               (cons _keys2368_ _args2373_)))
                                          (declare (not safe))
                                          (##apply _K2365_ __tmp2531)))
                                      (let ((__tmp2532
                                             (cons _keys2368_ _hd-rest2394_)))
                                        (declare (not safe))
                                        (##apply _K2365_ __tmp2532)))
                                  (if _args2373_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail2374_ _rest2372_))
                                        (_lp2370_
                                         _hd-rest2394_
                                         _args2373_
                                         _rest2372_))
                                      (_lp2370_
                                       _hd-rest2394_
                                       _rest2372_
                                       _rest2372_))))))))
              (if (let () (declare (not safe)) (##pair? _rest23752383_))
                  (let ((_hd23802458_
                         (let () (declare (not safe)) (##car _rest23752383_)))
                        (_tl23812460_
                         (let () (declare (not safe)) (##cdr _rest23752383_))))
                    (let* ((_hd2463_ _hd23802458_)
                           (_hd-rest2465_ _tl23812460_))
                      (_K23792455_ _hd-rest2465_ _hd2463_)))
                  (_else23772391_)))))))
    (define keyword-rest
      (lambda (_kwt2355_ . _drop2356_)
        (for-each
         (lambda (_kw2358_) (hash-remove! _kwt2355_ _kw2358_))
         _drop2356_)
        (hash-fold
         (lambda (_k2360_ _v2361_ _r2362_) (cons* _k2360_ _v2361_ _r2362_))
         '()
         _kwt2355_)))))
