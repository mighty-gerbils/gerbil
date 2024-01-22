(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1705947033)
  (begin
    (define c3-linearize__%
      (lambda (_rhead9181_
               _supers9182_
               _get-precedence-list9183_
               _eqpred9184_
               _get-name9185_)
        (let ((_tails9187_ (map _get-precedence-list9183_ _supers9182_)))
          (let () (declare (not safe)) (append1! _tails9187_ _supers9182_))
          (let ()
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead9181_
             _tails9187_
             _eqpred9184_
             _get-name9185_)))))
    (define c3-linearize__0
      (lambda (_rhead9192_ _supers9193_ _get-precedence-list9194_)
        (let* ((_eqpred9196_ eq?) (_get-name9198_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead9192_
           _supers9193_
           _get-precedence-list9194_
           _eqpred9196_
           _get-name9198_))))
    (define c3-linearize__1
      (lambda (_rhead9200_ _supers9201_ _get-precedence-list9202_ _eqpred9203_)
        (let ((_get-name9205_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead9200_
           _supers9201_
           _get-precedence-list9202_
           _eqpred9203_
           _get-name9205_))))
    (define c3-linearize
      (lambda _g9233_
        (let ((_g9232_ (let () (declare (not safe)) (##length _g9233_))))
          (cond ((let () (declare (not safe)) (##fx= _g9232_ 3))
                 (apply (lambda (_rhead9192_
                                 _supers9193_
                                 _get-precedence-list9194_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead9192_
                             _supers9193_
                             _get-precedence-list9194_)))
                        _g9233_))
                ((let () (declare (not safe)) (##fx= _g9232_ 4))
                 (apply (lambda (_rhead9200_
                                 _supers9201_
                                 _get-precedence-list9202_
                                 _eqpred9203_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead9200_
                             _supers9201_
                             _get-precedence-list9202_
                             _eqpred9203_)))
                        _g9233_))
                ((let () (declare (not safe)) (##fx= _g9232_ 5))
                 (apply (lambda (_rhead9207_
                                 _supers9208_
                                 _get-precedence-list9209_
                                 _eqpred9210_
                                 _get-name9211_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead9207_
                             _supers9208_
                             _get-precedence-list9209_
                             _eqpred9210_
                             _get-name9211_)))
                        _g9233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g9233_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead9097_ _tails9098_ _eqpred9099_ _get-name9100_)
        (let _loop9102_ ((_rhead9104_ _rhead9097_) (_tails9105_ _tails9098_))
          (let* ((_tails9107_
                  (let () (declare (not safe)) (remove-nulls! _tails9105_)))
                 (_tails91089118_ _tails9107_)
                 (_else91119136_
                  (lambda ()
                    (let* ((_err9131_
                            (lambda ()
                              (error '"Inconsistent precedence graph"
                                     'head:
                                     (map _get-name9100_ (reverse _rhead9104_))
                                     'tails:
                                     (map (lambda (_g91269128_)
                                            (map _get-name9100_ _g91269128_))
                                          _tails9107_))))
                           (_next9133_
                            (let ()
                              (declare (not safe))
                              (c3-select-next
                               _tails9107_
                               _eqpred9099_
                               _err9131_))))
                      (let ((__tmp9235
                             (let ()
                               (declare (not safe))
                               (cons _next9133_ _rhead9104_)))
                            (__tmp9234
                             (let ()
                               (declare (not safe))
                               (remove-next!__%
                                _next9133_
                                _tails9107_
                                _eqpred9099_))))
                        (declare (not safe))
                        (_loop9102_ __tmp9235 __tmp9234))))))
            (let ((_K91169156_ (lambda () (reverse _rhead9104_)))
                  (_K91139142_
                   (lambda (_tail9140_)
                     (let ()
                       (declare (not safe))
                       (append-reverse _rhead9104_ _tail9140_)))))
              (let ((_try-match91109152_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tails91089118_))
                           (let ((_tl91159147_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tails91089118_)))
                                 (_hd91149145_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tails91089118_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl91159147_))
                                 (let ((_tail9150_ _hd91149145_))
                                   (declare (not safe))
                                   (_K91139142_ _tail9150_))
                                 (let ()
                                   (declare (not safe))
                                   (_else91119136_))))
                           (let () (declare (not safe)) (_else91119136_))))))
                (if (let () (declare (not safe)) (##null? _tails91089118_))
                    (let () (declare (not safe)) (_K91169156_))
                    (let () (declare (not safe)) (_try-match91109152_)))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead9162_ _tails9163_)
        (let* ((_eqpred9165_ eq?) (_get-name9167_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead9162_
           _tails9163_
           _eqpred9165_
           _get-name9167_))))
    (define c3-linearize-loop__1
      (lambda (_rhead9169_ _tails9170_ _eqpred9171_)
        (let ((_get-name9173_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead9169_
           _tails9170_
           _eqpred9171_
           _get-name9173_))))
    (define c3-linearize-loop
      (lambda _g9237_
        (let ((_g9236_ (let () (declare (not safe)) (##length _g9237_))))
          (cond ((let () (declare (not safe)) (##fx= _g9236_ 2))
                 (apply (lambda (_rhead9162_ _tails9163_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead9162_ _tails9163_)))
                        _g9237_))
                ((let () (declare (not safe)) (##fx= _g9236_ 3))
                 (apply (lambda (_rhead9169_ _tails9170_ _eqpred9171_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead9169_
                             _tails9170_
                             _eqpred9171_)))
                        _g9237_))
                ((let () (declare (not safe)) (##fx= _g9236_ 4))
                 (apply (lambda (_rhead9175_
                                 _tails9176_
                                 _eqpred9177_
                                 _get-name9178_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead9175_
                             _tails9176_
                             _eqpred9177_
                             _get-name9178_)))
                        _g9237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g9237_))))))
    (define c3-select-next
      (lambda (_tails9044_ _eqpred9045_ _err9046_)
        (let ((_candidate?9052_
               (lambda (_c9048_)
                 (let ((__tmp9238
                        (lambda (_tail9050_)
                          (let ((__tmp9239
                                 (member _c9048_
                                         (cdr _tail9050_)
                                         _eqpred9045_)))
                            (declare (not safe))
                            (not __tmp9239)))))
                   (declare (not safe))
                   (andmap1 __tmp9238 _tails9044_)))))
          (let _loop9054_ ((_ts9056_ _tails9044_))
            (let* ((_ts90579067_ _ts9056_)
                   (_else90599075_ (lambda () (_err9046_)))
                   (_K90619081_
                    (lambda (_rts9078_ _c9079_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?9052_ _c9079_))
                          _c9079_
                          (let ()
                            (declare (not safe))
                            (_loop9054_ _rts9078_))))))
              (if (let () (declare (not safe)) (##pair? _ts90579067_))
                  (let ((_hd90629084_
                         (let () (declare (not safe)) (##car _ts90579067_)))
                        (_tl90639086_
                         (let () (declare (not safe)) (##cdr _ts90579067_))))
                    (if (let () (declare (not safe)) (##pair? _hd90629084_))
                        (let* ((_hd90649089_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd90629084_)))
                               (_c9092_ _hd90649089_)
                               (_rts9094_ _tl90639086_))
                          (declare (not safe))
                          (_K90619081_ _rts9094_ _c9092_))
                        (let () (declare (not safe)) (_err9046_))))
                  (let () (declare (not safe)) (_err9046_))))))))
    (define remove-next!__%
      (lambda (_next8976_ _tails8977_ _eqpred8978_)
        (let _loop8980_ ((_t8982_ _tails8977_))
          (let* ((_t89838994_ _t8982_)
                 (_E89868998_
                  (lambda () (error '"No clause matching" _t89838994_))))
            (let ((_K89929029_ (lambda () _tails8977_))
                  (_K89879006_
                   (lambda (_more9002_ _tail9003_ _head9004_)
                     (if (_eqpred8978_ _head9004_ _next8976_)
                         (set-car! _t8982_ _tail9003_)
                         '#!void)
                     (let () (declare (not safe)) (_loop8980_ _more9002_)))))
              (let ((_try-match89859025_
                     (lambda ()
                       (if (let () (declare (not safe)) (##pair? _t89838994_))
                           (let ((_tl89899011_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _t89838994_)))
                                 (_hd89889009_
                                  (let ()
                                    (declare (not safe))
                                    (##car _t89838994_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _hd89889009_))
                                 (let ((_tl89919016_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _hd89889009_)))
                                       (_hd89909014_
                                        (let ()
                                          (declare (not safe))
                                          (##car _hd89889009_))))
                                   (let ((_head9019_ _hd89909014_)
                                         (_tail9021_ _tl89919016_)
                                         (_more9023_ _tl89899011_))
                                     (let ()
                                       (declare (not safe))
                                       (_K89879006_
                                        _more9023_
                                        _tail9021_
                                        _head9019_))))
                                 (let () (declare (not safe)) (_E89868998_))))
                           (let () (declare (not safe)) (_E89868998_))))))
                (if (let () (declare (not safe)) (##null? _t89838994_))
                    (let () (declare (not safe)) (_K89929029_))
                    (let () (declare (not safe)) (_try-match89859025_)))))))))
    (define remove-next!__0
      (lambda (_next9035_ _tails9036_)
        (let ((_eqpred9038_ eq?))
          (declare (not safe))
          (remove-next!__% _next9035_ _tails9036_ _eqpred9038_))))
    (define remove-next!
      (lambda _g9241_
        (let ((_g9240_ (let () (declare (not safe)) (##length _g9241_))))
          (cond ((let () (declare (not safe)) (##fx= _g9240_ 2))
                 (apply (lambda (_next9035_ _tails9036_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__0 _next9035_ _tails9036_)))
                        _g9241_))
                ((let () (declare (not safe)) (##fx= _g9240_ 3))
                 (apply (lambda (_next9040_ _tails9041_ _eqpred9042_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__%
                             _next9040_
                             _tails9041_
                             _eqpred9042_)))
                        _g9241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next!
                  _g9241_))))))))
