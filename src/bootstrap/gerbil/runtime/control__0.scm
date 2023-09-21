(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1695292370)
  (begin
    (define make-promise
      (lambda (_thunk8504_)
        (let () (declare (not safe)) (##make-delay-promise _thunk8504_))))
    (define call-with-parameters
      (lambda (_thunk8452_ . _rest8453_)
        (let* ((_rest84548465_ _rest8453_)
               (_E84578469_
                (lambda () (error '"No clause matching" _rest84548465_))))
          (let ((_K84598485_
                 (lambda (_rest8480_ _val8481_ _param8482_)
                   (let ((__tmp8516
                          (if (let () (declare (not safe)) (null? _rest8480_))
                              _thunk8452_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk8452_
                                       _rest8480_)))))
                     (declare (not safe))
                     (##parameterize1 _param8482_ _val8481_ __tmp8516))))
                (_K84588474_ (lambda () (_thunk8452_))))
            (let ((_try-match84568477_
                   (lambda ()
                     (if (let () (declare (not safe)) (##null? _rest84548465_))
                         (let () (declare (not safe)) (_thunk8452_))
                         (let () (declare (not safe)) (_E84578469_))))))
              (if (let () (declare (not safe)) (##pair? _rest84548465_))
                  (let ((_tl84618490_
                         (let () (declare (not safe)) (##cdr _rest84548465_)))
                        (_hd84608488_
                         (let () (declare (not safe)) (##car _rest84548465_))))
                    (if (let () (declare (not safe)) (##pair? _tl84618490_))
                        (let ((_tl84638497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl84618490_)))
                              (_hd84628495_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl84618490_))))
                          (let ((_param8493_ _hd84608488_)
                                (_val8500_ _hd84628495_)
                                (_rest8502_ _tl84638497_))
                            (let ()
                              (declare (not safe))
                              (_K84598485_ _rest8502_ _val8500_ _param8493_))))
                        (let () (declare (not safe)) (_E84578469_))))
                  (let () (declare (not safe)) (_try-match84568477_))))))))
    (define with-unwind-protect
      (lambda (_K8445_ _fini8446_)
        (let* ((_once8448_ '#f)
               (__tmp8517
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _once8448_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _once8448_ '#t)))))
          (declare (not safe))
          (dynamic-wind __tmp8517 _K8445_ _fini8446_))))
    (define keyword-dispatch
      (lambda (_kwt8342_ _K8343_ . _all-args8344_)
        (if _kwt8342_
            (if (let () (declare (not safe)) (vector? _kwt8342_))
                '#!void
                (error '"expected vector" _kwt8342_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K8343_))
            '#!void
            (error '"expected procedure" _K8343_))
        (let ((_keys8346_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp8348_ ((_rest8350_ _all-args8344_)
                         (_args8351_ '#f)
                         (_tail8352_ '#f))
            (let* ((_rest83538361_ _rest8350_)
                   (_else83558369_
                    (lambda ()
                      (if _args8351_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail8352_ '()))
                            (let ((__tmp8518
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys8346_ _args8351_))))
                              (declare (not safe))
                              (##apply _K8343_ __tmp8518)))
                          (_K8343_ _keys8346_))))
                   (_K83578433_
                    (lambda (_hd-rest8372_ _hd8373_)
                      (if (let () (declare (not safe)) (keyword? _hd8373_))
                          (let* ((_hd-rest83748381_ _hd-rest8372_)
                                 (_E83768385_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest83748381_)))
                                 (_K83778393_
                                  (lambda (_rest8388_ _val8389_)
                                    (if _kwt8342_
                                        (let ((_pos8391_
                                               (let ((__tmp8522
                                                      (let ()
                                                        (declare (not safe))
                                                        (keyword-hash
                                                         _hd8373_)))
                                                     (__tmp8521
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt8342_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp8522
                                                  __tmp8521))))
                                          (if (let ((__tmp8523
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt8342_
                                                        _pos8391_))))
                                                (declare (not safe))
                                                (eq? _hd8373_ __tmp8523))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K8343_
                                                     _hd8373_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys8346_ _hd8373_))
                                        (error '"Duplicate keyword argument"
                                               _K8343_
                                               _hd8373_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys8346_
                                       _hd8373_
                                       _val8389_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8348_
                                       _rest8388_
                                       _args8351_
                                       _tail8352_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest83748381_))
                                (let ((_hd83788396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest83748381_)))
                                      (_tl83798398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest83748381_))))
                                  (let* ((_val8401_ _hd83788396_)
                                         (_rest8403_ _tl83798398_))
                                    (declare (not safe))
                                    (_K83778393_ _rest8403_ _val8401_)))
                                (let () (declare (not safe)) (_E83768385_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd8373_ '#!key))
                              (let* ((_hd-rest84048411_ _hd-rest8372_)
                                     (_E84068415_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest84048411_)))
                                     (_K84078421_
                                      (lambda (_rest8418_ _val8419_)
                                        (if _args8351_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail8352_
                                                 _hd-rest8372_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8348_
                                                 _rest8418_
                                                 _args8351_
                                                 _hd-rest8372_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp8348_
                                               _rest8418_
                                               _hd-rest8372_
                                               _hd-rest8372_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest84048411_))
                                    (let ((_hd84088424_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest84048411_)))
                                          (_tl84098426_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest84048411_))))
                                      (let* ((_val8429_ _hd84088424_)
                                             (_rest8431_ _tl84098426_))
                                        (declare (not safe))
                                        (_K84078421_ _rest8431_ _val8429_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E84068415_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd8373_ '#!rest))
                                  (if _args8351_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail8352_
                                           _hd-rest8372_))
                                        (let ((__tmp8520
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys8346_
                                                       _args8351_))))
                                          (declare (not safe))
                                          (##apply _K8343_ __tmp8520)))
                                      (let ((__tmp8519
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys8346_
                                                     _hd-rest8372_))))
                                        (declare (not safe))
                                        (##apply _K8343_ __tmp8519)))
                                  (if _args8351_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail8352_ _rest8350_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp8348_
                                           _hd-rest8372_
                                           _args8351_
                                           _rest8350_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp8348_
                                         _hd-rest8372_
                                         _rest8350_
                                         _rest8350_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest83538361_))
                  (let ((_hd83588436_
                         (let () (declare (not safe)) (##car _rest83538361_)))
                        (_tl83598438_
                         (let () (declare (not safe)) (##cdr _rest83538361_))))
                    (let* ((_hd8441_ _hd83588436_)
                           (_hd-rest8443_ _tl83598438_))
                      (declare (not safe))
                      (_K83578433_ _hd-rest8443_ _hd8441_)))
                  (let () (declare (not safe)) (_else83558369_))))))))
    (define keyword-rest
      (lambda (_kwt8333_ . _drop8334_)
        (let ((__tmp8524
               (lambda (_kw8336_)
                 (let ()
                   (declare (not safe))
                   (table-set! _kwt8333_ _kw8336_)))))
          (declare (not safe))
          (for-each __tmp8524 _drop8334_))
        (let ((__tmp8525
               (lambda (_k8338_ _v8339_ _r8340_)
                 (let ((__tmp8526
                        (let () (declare (not safe)) (cons _v8339_ _r8340_))))
                   (declare (not safe))
                   (cons _k8338_ __tmp8526)))))
          (declare (not safe))
          (hash-fold __tmp8525 '() _kwt8333_))))))
