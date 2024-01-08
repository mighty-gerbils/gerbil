(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1704735467)
  (begin
    (define c3-linearize__%
      (lambda (_rhead9274_
               _supers9275_
               _get-precedence-list9276_
               _eqpred9277_
               _get-name9278_)
        (let ((_tails9280_ (map _get-precedence-list9276_ _supers9275_)))
          (let () (declare (not safe)) (append1! _tails9280_ _supers9275_))
          (let ()
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead9274_
             _tails9280_
             _eqpred9277_
             _get-name9278_)))))
    (define c3-linearize__0
      (lambda (_rhead9285_ _supers9286_ _get-precedence-list9287_)
        (let* ((_eqpred9289_ eq?) (_get-name9291_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead9285_
           _supers9286_
           _get-precedence-list9287_
           _eqpred9289_
           _get-name9291_))))
    (define c3-linearize__1
      (lambda (_rhead9293_ _supers9294_ _get-precedence-list9295_ _eqpred9296_)
        (let ((_get-name9298_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead9293_
           _supers9294_
           _get-precedence-list9295_
           _eqpred9296_
           _get-name9298_))))
    (define c3-linearize
      (lambda _g9348_
        (let ((_g9347_ (let () (declare (not safe)) (##length _g9348_))))
          (cond ((let () (declare (not safe)) (##fx= _g9347_ 3))
                 (apply (lambda (_rhead9285_
                                 _supers9286_
                                 _get-precedence-list9287_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead9285_
                             _supers9286_
                             _get-precedence-list9287_)))
                        _g9348_))
                ((let () (declare (not safe)) (##fx= _g9347_ 4))
                 (apply (lambda (_rhead9293_
                                 _supers9294_
                                 _get-precedence-list9295_
                                 _eqpred9296_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead9293_
                             _supers9294_
                             _get-precedence-list9295_
                             _eqpred9296_)))
                        _g9348_))
                ((let () (declare (not safe)) (##fx= _g9347_ 5))
                 (apply (lambda (_rhead9300_
                                 _supers9301_
                                 _get-precedence-list9302_
                                 _eqpred9303_
                                 _get-name9304_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead9300_
                             _supers9301_
                             _get-precedence-list9302_
                             _eqpred9303_
                             _get-name9304_)))
                        _g9348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g9348_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead9190_ _tails9191_ _eqpred9192_ _get-name9193_)
        (let _loop9195_ ((_rhead9197_ _rhead9190_) (_tails9198_ _tails9191_))
          (let* ((_tails9200_
                  (let () (declare (not safe)) (remove-nulls! _tails9198_)))
                 (_tails92019211_ _tails9200_)
                 (_else92049229_
                  (lambda ()
                    (let* ((_err9224_
                            (lambda ()
                              (error '"Inconsistent precedence graph"
                                     'head:
                                     (map _get-name9193_ (reverse _rhead9197_))
                                     'tails:
                                     (map (lambda (_g92199221_)
                                            (map _get-name9193_ _g92199221_))
                                          _tails9200_))))
                           (_next9226_
                            (let ()
                              (declare (not safe))
                              (c3-select-next
                               _tails9200_
                               _eqpred9192_
                               _err9224_))))
                      (let ((__tmp9350
                             (let ()
                               (declare (not safe))
                               (cons _next9226_ _rhead9197_)))
                            (__tmp9349
                             (let ()
                               (declare (not safe))
                               (remove-next!__%
                                _next9226_
                                _tails9200_
                                _eqpred9192_))))
                        (declare (not safe))
                        (_loop9195_ __tmp9350 __tmp9349))))))
            (let ((_K92099249_ (lambda () (reverse _rhead9197_)))
                  (_K92069235_
                   (lambda (_tail9233_)
                     (let ()
                       (declare (not safe))
                       (append-reverse _rhead9197_ _tail9233_)))))
              (let ((_try-match92039245_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tails92019211_))
                           (let ((_tl92089240_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tails92019211_)))
                                 (_hd92079238_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tails92019211_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl92089240_))
                                 (let ((_tail9243_ _hd92079238_))
                                   (declare (not safe))
                                   (_K92069235_ _tail9243_))
                                 (let ()
                                   (declare (not safe))
                                   (_else92049229_))))
                           (let () (declare (not safe)) (_else92049229_))))))
                (if (let () (declare (not safe)) (##null? _tails92019211_))
                    (let () (declare (not safe)) (_K92099249_))
                    (let () (declare (not safe)) (_try-match92039245_)))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead9255_ _tails9256_)
        (let* ((_eqpred9258_ eq?) (_get-name9260_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead9255_
           _tails9256_
           _eqpred9258_
           _get-name9260_))))
    (define c3-linearize-loop__1
      (lambda (_rhead9262_ _tails9263_ _eqpred9264_)
        (let ((_get-name9266_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead9262_
           _tails9263_
           _eqpred9264_
           _get-name9266_))))
    (define c3-linearize-loop
      (lambda _g9352_
        (let ((_g9351_ (let () (declare (not safe)) (##length _g9352_))))
          (cond ((let () (declare (not safe)) (##fx= _g9351_ 2))
                 (apply (lambda (_rhead9255_ _tails9256_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead9255_ _tails9256_)))
                        _g9352_))
                ((let () (declare (not safe)) (##fx= _g9351_ 3))
                 (apply (lambda (_rhead9262_ _tails9263_ _eqpred9264_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead9262_
                             _tails9263_
                             _eqpred9264_)))
                        _g9352_))
                ((let () (declare (not safe)) (##fx= _g9351_ 4))
                 (apply (lambda (_rhead9268_
                                 _tails9269_
                                 _eqpred9270_
                                 _get-name9271_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead9268_
                             _tails9269_
                             _eqpred9270_
                             _get-name9271_)))
                        _g9352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g9352_))))))
    (define c3-select-next
      (lambda (_tails9137_ _eqpred9138_ _err9139_)
        (let ((_candidate?9145_
               (lambda (_c9141_)
                 (let ((__tmp9353
                        (lambda (_tail9143_)
                          (let ((__tmp9354
                                 (member _c9141_
                                         (cdr _tail9143_)
                                         _eqpred9138_)))
                            (declare (not safe))
                            (not __tmp9354)))))
                   (declare (not safe))
                   (andmap1 __tmp9353 _tails9137_)))))
          (let _loop9147_ ((_ts9149_ _tails9137_))
            (let* ((_ts91509160_ _ts9149_)
                   (_else91529168_ (lambda () (_err9139_)))
                   (_K91549174_
                    (lambda (_rts9171_ _c9172_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?9145_ _c9172_))
                          _c9172_
                          (let ()
                            (declare (not safe))
                            (_loop9147_ _rts9171_))))))
              (if (let () (declare (not safe)) (##pair? _ts91509160_))
                  (let ((_hd91559177_
                         (let () (declare (not safe)) (##car _ts91509160_)))
                        (_tl91569179_
                         (let () (declare (not safe)) (##cdr _ts91509160_))))
                    (if (let () (declare (not safe)) (##pair? _hd91559177_))
                        (let* ((_hd91579182_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd91559177_)))
                               (_c9185_ _hd91579182_)
                               (_rts9187_ _tl91569179_))
                          (declare (not safe))
                          (_K91549174_ _rts9187_ _c9185_))
                        (let () (declare (not safe)) (_err9139_))))
                  (let () (declare (not safe)) (_err9139_))))))))
    (define remove-next!__%
      (lambda (_next9069_ _tails9070_ _eqpred9071_)
        (let _loop9073_ ((_t9075_ _tails9070_))
          (let* ((_t90769087_ _t9075_)
                 (_E90799091_
                  (lambda () (error '"No clause matching" _t90769087_))))
            (let ((_K90859122_ (lambda () _tails9070_))
                  (_K90809099_
                   (lambda (_more9095_ _tail9096_ _head9097_)
                     (if (_eqpred9071_ _head9097_ _next9069_)
                         (set-car! _t9075_ _tail9096_)
                         '#!void)
                     (let () (declare (not safe)) (_loop9073_ _more9095_)))))
              (let ((_try-match90789118_
                     (lambda ()
                       (if (let () (declare (not safe)) (##pair? _t90769087_))
                           (let ((_tl90829104_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _t90769087_)))
                                 (_hd90819102_
                                  (let ()
                                    (declare (not safe))
                                    (##car _t90769087_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _hd90819102_))
                                 (let ((_tl90849109_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _hd90819102_)))
                                       (_hd90839107_
                                        (let ()
                                          (declare (not safe))
                                          (##car _hd90819102_))))
                                   (let ((_head9112_ _hd90839107_)
                                         (_tail9114_ _tl90849109_)
                                         (_more9116_ _tl90829104_))
                                     (let ()
                                       (declare (not safe))
                                       (_K90809099_
                                        _more9116_
                                        _tail9114_
                                        _head9112_))))
                                 (let () (declare (not safe)) (_E90799091_))))
                           (let () (declare (not safe)) (_E90799091_))))))
                (if (let () (declare (not safe)) (##null? _t90769087_))
                    (let () (declare (not safe)) (_K90859122_))
                    (let () (declare (not safe)) (_try-match90789118_)))))))))
    (define remove-next!__0
      (lambda (_next9128_ _tails9129_)
        (let ((_eqpred9131_ eq?))
          (declare (not safe))
          (remove-next!__% _next9128_ _tails9129_ _eqpred9131_))))
    (define remove-next!
      (lambda _g9356_
        (let ((_g9355_ (let () (declare (not safe)) (##length _g9356_))))
          (cond ((let () (declare (not safe)) (##fx= _g9355_ 2))
                 (apply (lambda (_next9128_ _tails9129_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__0 _next9128_ _tails9129_)))
                        _g9356_))
                ((let () (declare (not safe)) (##fx= _g9355_ 3))
                 (apply (lambda (_next9133_ _tails9134_ _eqpred9135_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__%
                             _next9133_
                             _tails9134_
                             _eqpred9135_)))
                        _g9356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next!
                  _g9356_))))))
    (define remove-nulls!
      (lambda (_l8955_)
        (let* ((_l89568969_ _l8955_)
               (_E89608973_
                (lambda () (error '"No clause matching" _l89568969_))))
          (let ((_K89659058_
                 (lambda (_r9056_)
                   (let () (declare (not safe)) (remove-nulls! _r9056_))))
                (_K89629045_
                 (lambda (_r8985_)
                   (let _loop8987_ ((_l8989_ _l8955_) (_r8990_ _r8985_))
                     (let* ((_r89919004_ _r8990_)
                            (_E89959008_
                             (lambda ()
                               (error '"No clause matching" _r89919004_))))
                       (let ((_K90009035_
                              (lambda (_rr9033_)
                                (set-cdr!
                                 _l8989_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr9033_)))))
                             (_K89979022_
                              (lambda (_rr9020_)
                                (let ()
                                  (declare (not safe))
                                  (_loop8987_ _r8990_ _rr9020_))))
                             (_K89969013_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r89919004_))
                             (let ((_tl90029040_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r89919004_)))
                                   (_hd90019038_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r89919004_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd90019038_))
                                   (let ((_rr9043_ _tl90029040_))
                                     (declare (not safe))
                                     (_K90009035_ _rr9043_))
                                   (let ((_rr9028_ _tl90029040_))
                                     (declare (not safe))
                                     (_K89979022_ _rr9028_))))
                             '#!void))))
                   _l8955_))
                (_K89618978_ (lambda () _l8955_)))
            (if (let () (declare (not safe)) (##pair? _l89568969_))
                (let ((_tl89679063_
                       (let () (declare (not safe)) (##cdr _l89568969_)))
                      (_hd89669061_
                       (let () (declare (not safe)) (##car _l89568969_))))
                  (if (let () (declare (not safe)) (##null? _hd89669061_))
                      (let ((_r9066_ _tl89679063_))
                        (declare (not safe))
                        (remove-nulls! _r9066_))
                      (let ((_r9051_ _tl89679063_))
                        (declare (not safe))
                        (_K89629045_ _r9051_))))
                (let () (declare (not safe)) (_K89618978_)))))))
    (define append1!
      (lambda (_l8950_ _x8951_)
        (let ((_l28953_ (let () (declare (not safe)) (cons _x8951_ '()))))
          (if (let () (declare (not safe)) (pair? _l8950_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l8950_))
               _l28953_)
              _l28953_))))
    (define append-reverse
      (lambda (_rev-head8947_ _tail8948_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail8948_ _rev-head8947_))))))
