(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1701931848)
  (begin
    (define c3-linearize__%
      (lambda (_rhead9312_
               _supers9313_
               _get-precedence-list9314_
               _eqpred9315_
               _get-name9316_)
        (let ((_tails9318_ (map _get-precedence-list9314_ _supers9313_)))
          (let () (declare (not safe)) (append1! _tails9318_ _supers9313_))
          (let ()
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead9312_
             _tails9318_
             _eqpred9315_
             _get-name9316_)))))
    (define c3-linearize__0
      (lambda (_rhead9323_ _supers9324_ _get-precedence-list9325_)
        (let* ((_eqpred9327_ eqv?) (_get-name9329_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead9323_
           _supers9324_
           _get-precedence-list9325_
           _eqpred9327_
           _get-name9329_))))
    (define c3-linearize__1
      (lambda (_rhead9331_ _supers9332_ _get-precedence-list9333_ _eqpred9334_)
        (let ((_get-name9336_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead9331_
           _supers9332_
           _get-precedence-list9333_
           _eqpred9334_
           _get-name9336_))))
    (define c3-linearize
      (lambda _g9393_
        (let ((_g9392_ (let () (declare (not safe)) (##length _g9393_))))
          (cond ((let () (declare (not safe)) (##fx= _g9392_ 3))
                 (apply (lambda (_rhead9323_
                                 _supers9324_
                                 _get-precedence-list9325_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead9323_
                             _supers9324_
                             _get-precedence-list9325_)))
                        _g9393_))
                ((let () (declare (not safe)) (##fx= _g9392_ 4))
                 (apply (lambda (_rhead9331_
                                 _supers9332_
                                 _get-precedence-list9333_
                                 _eqpred9334_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead9331_
                             _supers9332_
                             _get-precedence-list9333_
                             _eqpred9334_)))
                        _g9393_))
                ((let () (declare (not safe)) (##fx= _g9392_ 5))
                 (apply (lambda (_rhead9338_
                                 _supers9339_
                                 _get-precedence-list9340_
                                 _eqpred9341_
                                 _get-name9342_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead9338_
                             _supers9339_
                             _get-precedence-list9340_
                             _eqpred9341_
                             _get-name9342_)))
                        _g9393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g9393_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead9228_ _tails9229_ _eqpred9230_ _get-name9231_)
        (let _loop9233_ ((_rhead9235_ _rhead9228_) (_tails9236_ _tails9229_))
          (let* ((_tails9238_
                  (let () (declare (not safe)) (remove-nulls! _tails9236_)))
                 (_tails92399249_ _tails9238_)
                 (_else92429267_
                  (lambda ()
                    (let* ((_err9262_
                            (lambda ()
                              (error '"Inconsistent precedence graph"
                                     'head:
                                     (map _get-name9231_ (reverse _rhead9235_))
                                     'tails:
                                     (map (lambda (_g92579259_)
                                            (map _get-name9231_ _g92579259_))
                                          _tails9238_))))
                           (_next9264_
                            (let ()
                              (declare (not safe))
                              (c3-select-next
                               _tails9238_
                               _eqpred9230_
                               _err9262_))))
                      (let ((__tmp9395
                             (let ()
                               (declare (not safe))
                               (cons _next9264_ _rhead9235_)))
                            (__tmp9394
                             (let ()
                               (declare (not safe))
                               (remove-next!__%
                                _next9264_
                                _tails9238_
                                _eqpred9230_))))
                        (declare (not safe))
                        (_loop9233_ __tmp9395 __tmp9394))))))
            (let ((_K92479287_ (lambda () (reverse _rhead9235_)))
                  (_K92449273_
                   (lambda (_tail9271_)
                     (let ()
                       (declare (not safe))
                       (append-reverse _rhead9235_ _tail9271_)))))
              (let ((_try-match92419283_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tails92399249_))
                           (let ((_tl92469278_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tails92399249_)))
                                 (_hd92459276_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tails92399249_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl92469278_))
                                 (let ((_tail9281_ _hd92459276_))
                                   (declare (not safe))
                                   (_K92449273_ _tail9281_))
                                 (let ()
                                   (declare (not safe))
                                   (_else92429267_))))
                           (let () (declare (not safe)) (_else92429267_))))))
                (if (let () (declare (not safe)) (##null? _tails92399249_))
                    (let () (declare (not safe)) (_K92479287_))
                    (let () (declare (not safe)) (_try-match92419283_)))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead9293_ _tails9294_)
        (let* ((_eqpred9296_ eqv?) (_get-name9298_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead9293_
           _tails9294_
           _eqpred9296_
           _get-name9298_))))
    (define c3-linearize-loop__1
      (lambda (_rhead9300_ _tails9301_ _eqpred9302_)
        (let ((_get-name9304_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead9300_
           _tails9301_
           _eqpred9302_
           _get-name9304_))))
    (define c3-linearize-loop
      (lambda _g9397_
        (let ((_g9396_ (let () (declare (not safe)) (##length _g9397_))))
          (cond ((let () (declare (not safe)) (##fx= _g9396_ 2))
                 (apply (lambda (_rhead9293_ _tails9294_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead9293_ _tails9294_)))
                        _g9397_))
                ((let () (declare (not safe)) (##fx= _g9396_ 3))
                 (apply (lambda (_rhead9300_ _tails9301_ _eqpred9302_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead9300_
                             _tails9301_
                             _eqpred9302_)))
                        _g9397_))
                ((let () (declare (not safe)) (##fx= _g9396_ 4))
                 (apply (lambda (_rhead9306_
                                 _tails9307_
                                 _eqpred9308_
                                 _get-name9309_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead9306_
                             _tails9307_
                             _eqpred9308_
                             _get-name9309_)))
                        _g9397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g9397_))))))
    (define c3-select-next
      (lambda (_tails9175_ _eqpred9176_ _err9177_)
        (let ((_candidate?9183_
               (lambda (_c9179_)
                 (let ((__tmp9398
                        (lambda (_tail9181_)
                          (let ((__tmp9399
                                 (member _c9179_
                                         (cdr _tail9181_)
                                         _eqpred9176_)))
                            (declare (not safe))
                            (not __tmp9399)))))
                   (declare (not safe))
                   (andmap1 __tmp9398 _tails9175_)))))
          (let _loop9185_ ((_ts9187_ _tails9175_))
            (let* ((_ts91889198_ _ts9187_)
                   (_else91909206_ (lambda () (_err9177_)))
                   (_K91929212_
                    (lambda (_rts9209_ _c9210_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?9183_ _c9210_))
                          _c9210_
                          (let ()
                            (declare (not safe))
                            (_loop9185_ _rts9209_))))))
              (if (let () (declare (not safe)) (##pair? _ts91889198_))
                  (let ((_hd91939215_
                         (let () (declare (not safe)) (##car _ts91889198_)))
                        (_tl91949217_
                         (let () (declare (not safe)) (##cdr _ts91889198_))))
                    (if (let () (declare (not safe)) (##pair? _hd91939215_))
                        (let* ((_hd91959220_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd91939215_)))
                               (_c9223_ _hd91959220_)
                               (_rts9225_ _tl91949217_))
                          (declare (not safe))
                          (_K91929212_ _rts9225_ _c9223_))
                        (let () (declare (not safe)) (_err9177_))))
                  (let () (declare (not safe)) (_err9177_))))))))
    (define remove-next!__%
      (lambda (_next9107_ _tails9108_ _eqpred9109_)
        (let _loop9111_ ((_t9113_ _tails9108_))
          (let* ((_t91149125_ _t9113_)
                 (_E91179129_
                  (lambda () (error '"No clause matching" _t91149125_))))
            (let ((_K91239160_ (lambda () _tails9108_))
                  (_K91189137_
                   (lambda (_more9133_ _tail9134_ _head9135_)
                     (if (_eqpred9109_ _head9135_ _next9107_)
                         (set-car! _t9113_ _tail9134_)
                         '#!void)
                     (let () (declare (not safe)) (_loop9111_ _more9133_)))))
              (let ((_try-match91169156_
                     (lambda ()
                       (if (let () (declare (not safe)) (##pair? _t91149125_))
                           (let ((_tl91209142_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _t91149125_)))
                                 (_hd91199140_
                                  (let ()
                                    (declare (not safe))
                                    (##car _t91149125_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _hd91199140_))
                                 (let ((_tl91229147_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _hd91199140_)))
                                       (_hd91219145_
                                        (let ()
                                          (declare (not safe))
                                          (##car _hd91199140_))))
                                   (let ((_head9150_ _hd91219145_)
                                         (_tail9152_ _tl91229147_)
                                         (_more9154_ _tl91209142_))
                                     (let ()
                                       (declare (not safe))
                                       (_K91189137_
                                        _more9154_
                                        _tail9152_
                                        _head9150_))))
                                 (let () (declare (not safe)) (_E91179129_))))
                           (let () (declare (not safe)) (_E91179129_))))))
                (if (let () (declare (not safe)) (##null? _t91149125_))
                    (let () (declare (not safe)) (_K91239160_))
                    (let () (declare (not safe)) (_try-match91169156_)))))))))
    (define remove-next!__0
      (lambda (_next9166_ _tails9167_)
        (let ((_eqpred9169_ eqv?))
          (declare (not safe))
          (remove-next!__% _next9166_ _tails9167_ _eqpred9169_))))
    (define remove-next!
      (lambda _g9401_
        (let ((_g9400_ (let () (declare (not safe)) (##length _g9401_))))
          (cond ((let () (declare (not safe)) (##fx= _g9400_ 2))
                 (apply (lambda (_next9166_ _tails9167_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__0 _next9166_ _tails9167_)))
                        _g9401_))
                ((let () (declare (not safe)) (##fx= _g9400_ 3))
                 (apply (lambda (_next9171_ _tails9172_ _eqpred9173_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__%
                             _next9171_
                             _tails9172_
                             _eqpred9173_)))
                        _g9401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next!
                  _g9401_))))))
    (define remove-nulls!
      (lambda (_l8993_)
        (let* ((_l89949007_ _l8993_)
               (_E89989011_
                (lambda () (error '"No clause matching" _l89949007_))))
          (let ((_K90039096_
                 (lambda (_r9094_)
                   (let () (declare (not safe)) (remove-nulls! _r9094_))))
                (_K90009083_
                 (lambda (_r9023_)
                   (let _loop9025_ ((_l9027_ _l8993_) (_r9028_ _r9023_))
                     (let* ((_r90299042_ _r9028_)
                            (_E90339046_
                             (lambda ()
                               (error '"No clause matching" _r90299042_))))
                       (let ((_K90389073_
                              (lambda (_rr9071_)
                                (set-cdr!
                                 _l9027_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr9071_)))))
                             (_K90359060_
                              (lambda (_rr9058_)
                                (let ()
                                  (declare (not safe))
                                  (_loop9025_ _r9028_ _rr9058_))))
                             (_K90349051_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r90299042_))
                             (let ((_tl90409078_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r90299042_)))
                                   (_hd90399076_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r90299042_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd90399076_))
                                   (let ((_rr9081_ _tl90409078_))
                                     (declare (not safe))
                                     (_K90389073_ _rr9081_))
                                   (let ((_rr9066_ _tl90409078_))
                                     (declare (not safe))
                                     (_K90359060_ _rr9066_))))
                             '#!void))))
                   _l8993_))
                (_K89999016_ (lambda () _l8993_)))
            (if (let () (declare (not safe)) (##pair? _l89949007_))
                (let ((_tl90059101_
                       (let () (declare (not safe)) (##cdr _l89949007_)))
                      (_hd90049099_
                       (let () (declare (not safe)) (##car _l89949007_))))
                  (if (let () (declare (not safe)) (##null? _hd90049099_))
                      (let ((_r9104_ _tl90059101_))
                        (declare (not safe))
                        (remove-nulls! _r9104_))
                      (let ((_r9089_ _tl90059101_))
                        (declare (not safe))
                        (_K90009083_ _r9089_))))
                (let () (declare (not safe)) (_K89999016_)))))))
    (define append1!
      (lambda (_l8988_ _x8989_)
        (let ((_l28991_ (let () (declare (not safe)) (cons _x8989_ '()))))
          (if (let () (declare (not safe)) (pair? _l8988_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l8988_))
               _l28991_)
              _l28991_))))
    (define append-reverse
      (lambda (_rev-head8947_ _tail8948_)
        (let* ((_rev-head89498958_ _rev-head8947_)
               (_E89528962_
                (lambda () (error '"No clause matching" _rev-head89498958_))))
          (let ((_K89548976_
                 (lambda (_tl8973_ _hd8974_)
                   (let ((__tmp9402
                          (let ()
                            (declare (not safe))
                            (cons _hd8974_ _tail8948_))))
                     (declare (not safe))
                     (append-reverse _tl8973_ __tmp9402))))
                (_K89538967_ (lambda () _tail8948_)))
            (let ((_try-match89518970_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rev-head89498958_))
                         (let () (declare (not safe)) (_K89538967_))
                         (let () (declare (not safe)) (_E89528962_))))))
              (if (let () (declare (not safe)) (##pair? _rev-head89498958_))
                  (let ((_tl89568981_
                         (let ()
                           (declare (not safe))
                           (##cdr _rev-head89498958_)))
                        (_hd89558979_
                         (let ()
                           (declare (not safe))
                           (##car _rev-head89498958_))))
                    (let ((_hd8984_ _hd89558979_) (_tl8986_ _tl89568981_))
                      (let ()
                        (declare (not safe))
                        (_K89548976_ _tl8986_ _hd8984_))))
                  (let () (declare (not safe)) (_try-match89518970_))))))))))
