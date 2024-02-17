(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708194417)
  (begin
    (define c4-linearize__%
      (lambda (_g82270_
               _get-precedence-list7787077876_
               _struct?7787177878_
               _eq7787277880_
               _get-name7787377882_
               _rhead77884_
               _supers77885_)
        (let* ((_get-precedence-list77887_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7787077876_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7787077876_))
               (_struct?77889_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7787177878_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7787177878_))
               (_eq77891_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7787277880_ absent-value))
                    eq?
                    _eq7787277880_))
               (_get-name77893_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7787377882_ absent-value))
                    identity
                    _get-name7787377882_)))
          (letrec* ((_pls77895_ (map _get-precedence-list77887_ _supers77885_))
                    (_sit77896_ '())
                    (_get-names77897_
                     (lambda (_lst78161_) (map _get-name77893_ _lst78161_)))
                    (_err77898_
                     (lambda _a78159_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82271 (reverse _rhead77884_)))
                                (declare (not safe))
                                (_get-names77897_ __tmp82271))
                              'precedence-lists:
                              (map _get-names77897_ _pls77895_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names77897_ _sit77896_))
                              _a78159_)))
                    (_merge-sit!77899_
                     (lambda (_sit278149_)
                       (if (let () (declare (not safe)) (null? _sit278149_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit77896_))
                               (set! _sit77896_ _sit278149_)
                               (let _loop78151_ ((_t178153_ _sit77896_)
                                                 (_t278154_ _sit278149_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178153_ _sit278149_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278154_ _sit77896_))
                                         (set! _sit77896_ _sit278149_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178153_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278154_)))
                                             (let ((__tmp82272
                                                    (let ((__tmp82275
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names77897_
                                                              _sit77896_)))
                                                          (__tmp82273
                                                           (let ((__tmp82274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names77897_ _sit278149_))))
                     (declare (not safe))
                     (cons __tmp82274 '()))))
              (declare (not safe))
              (cons __tmp82275 __tmp82273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err77898_
                                                'single-inheritance-incompatibility:
                                                __tmp82272))
                                             (let ((__tmp82277 (cdr _t178153_))
                                                   (__tmp82276
                                                    (cdr _t278154_)))
                                               (declare (not safe))
                                               (_loop78151_
                                                __tmp82277
                                                __tmp82276))))))))))
                    (_rpls77900_
                     (map (lambda (_pl78144_)
                            (let ((_g82278_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?77889_
                                      _pl78144_
                                      '()))))
                              (begin
                                (let ((_g82279_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82278_)
                                             (##vector-length _g82278_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g82279_ 2)))
                                      (error "Context expects 2 values"
                                             _g82279_)))
                                (let ((_tl78146_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82278_ 0)))
                                      (_rh78147_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82278_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!77899_ _tl78146_))
                                    _rh78147_)))))
                          _pls77895_))
                    (_unsitr-rpl77901_
                     (lambda (_rpl78090_)
                       (let _u78092_ ((_pl-rhead78094_ _rpl78090_)
                                      (_pl-tail78095_ '())
                                      (_sit-rhead78096_ (reverse _sit77896_))
                                      (_sit-tail78097_ '()))
                         (let* ((_pl-rhead7809878107_ _pl-rhead78094_)
                                (_E7810178111_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7809878107_))))
                           (let ((_K7810578141_ (lambda () _pl-tail78095_))
                                 (_K7810278125_
                                  (lambda (_plrh78115_ _c78116_)
                                    (if (member _c78116_
                                                _sit-tail78097_
                                                _eq77891_)
                                        (let ((__tmp82285
                                               (let ((__tmp82286
                                                      (reverse _pl-rhead78094_)))
                                                 (declare (not safe))
                                                 (_get-names77897_
                                                  __tmp82286)))
                                              (__tmp82284
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names77897_
                                                  _pl-tail78095_)))
                                              (__tmp82282
                                               (let ((__tmp82283
                                                      (reverse _sit-rhead78096_)))
                                                 (declare (not safe))
                                                 (_get-names77897_
                                                  __tmp82283)))
                                              (__tmp82281
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names77897_
                                                  _sit-tail78097_)))
                                              (__tmp82280
                                               (_get-name77893_ _c78116_)))
                                          (declare (not safe))
                                          (_err77898_
                                           'precedence-list-head:
                                           __tmp82285
                                           'precedence-list-tail:
                                           __tmp82284
                                           'single-inheritance-head:
                                           __tmp82282
                                           'single-inheritance-tail:
                                           __tmp82281
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp82280))
                                        (let ((_g82287_
                                               (let ((__tmp82289
                                                      (lambda (_g7811778119_)
                                                        (_eq77891_
                                                         _c78116_
                                                         _g7811778119_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp82289
                                                  _sit-rhead78096_
                                                  _sit-tail78097_))))
                                          (begin
                                            (let ((_g82288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g82287_)
                                                         (##vector-length
                                                          _g82287_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g82288_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g82288_)))
                                            (let ((_sit-rh278122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82287_
                                                      0)))
                                                  (_sit-tl278123_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82287_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278122_))
                                                  (let ((__tmp82290
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78092_
                                                     _plrh78115_
                                                     __tmp82290
                                                     '()
                                                     _sit-tl278123_))
                                                  (let ((__tmp82291
                                                         (cdr _sit-rh278122_)))
                                                    (declare (not safe))
                                                    (_u78092_
                                                     _plrh78115_
                                                     _pl-tail78095_
                                                     __tmp82291
                                                     _sit-tl278123_))))))))))
                             (let ((_try-match7810078137_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7809878107_))
                                          (let ((_tl7810478130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7809878107_)))
                                                (_hd7810378128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7809878107_))))
                                            (let ((_c78133_ _hd7810378128_)
                                                  (_plrh78135_ _tl7810478130_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7810278125_
                                                 _plrh78135_
                                                 _c78133_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7810178111_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7809878107_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7810578141_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7810078137_)))))))))
                    (_g82292_
                     (let ((_g82293_
                            (let ((__tmp82295 (reverse _supers77885_)))
                              (declare (not safe))
                              (append1! _rpls77900_ __tmp82295))))
                       #!void
                       _g82293_))
                    (_g82296_
                     (let ((_g82297_
                            (set! _pls77895_
                                  (map _unsitr-rpl77901_ _rpls77900_))))
                       #!void
                       _g82297_))
                    (_c3-select-next77902_
                     (lambda (_tails78040_)
                       (let ((_candidate?78046_
                              (lambda (_c78042_)
                                (let ((__tmp82299
                                       (lambda (_tail78044_)
                                         (let ((__tmp82300
                                                (member _c78042_
                                                        (cdr _tail78044_)
                                                        _eq77891_)))
                                           (declare (not safe))
                                           (not __tmp82300)))))
                                  (declare (not safe))
                                  (andmap1 __tmp82299 _tails78040_)))))
                         (let _loop78048_ ((_ts78050_ _tails78040_))
                           (let* ((_ts7805178061_ _ts78050_)
                                  (_else7805378069_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err77898_))))
                                  (_K7805578075_
                                   (lambda (_rts78072_ _c78073_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78046_ _c78073_))
                                         _c78073_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78048_ _rts78072_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7805178061_))
                                 (let ((_hd7805678078_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7805178061_)))
                                       (_tl7805778080_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7805178061_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7805678078_))
                                       (let* ((_hd7805878083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7805678078_)))
                                              (_c78086_ _hd7805878083_)
                                              (_rts78088_ _tl7805778080_))
                                         (declare (not safe))
                                         (_K7805578075_ _rts78088_ _c78086_))
                                       (let ()
                                         (declare (not safe))
                                         (_err77898_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err77898_))))))))
                    (_remove-next!77903_
                     (lambda (_next77985_ _tails77986_)
                       (let _loop77988_ ((_t77990_ _tails77986_))
                         (let* ((_t7799178002_ _t77990_)
                                (_E7799478006_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7799178002_))))
                           (let ((_K7800078037_ (lambda () _tails77986_))
                                 (_K7799578014_
                                  (lambda (_more78010_ _tail78011_ _head78012_)
                                    (if (_eq77891_ _head78012_ _next77985_)
                                        (set-car! _t77990_ _tail78011_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop77988_ _more78010_)))))
                             (let ((_try-match7799378033_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7799178002_))
                                          (let ((_tl7799778019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7799178002_)))
                                                (_hd7799678017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7799178002_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7799678017_))
                                                (let ((_tl7799978024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7799678017_)))
                                                      (_hd7799878022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7799678017_))))
                                                  (let ((_head78027_
                                                         _hd7799878022_)
                                                        (_tail78029_
                                                         _tl7799978024_)
                                                        (_more78031_
                                                         _tl7799778019_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7799578014_
                                                       _more78031_
                                                       _tail78029_
                                                       _head78027_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7799478006_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7799478006_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7799178002_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7800078037_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7799378033_)))))))))
                    (_precedence-list77904_
                     (let _c3loop77935_ ((_rhead77937_ _rhead77884_)
                                         (_tails77938_ _pls77895_))
                       (let* ((_tails77940_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails77938_)))
                              (_tails7794177951_ _tails77940_)
                              (_else7794477962_
                               (lambda ()
                                 (let ((_next77959_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next77902_
                                           _tails77940_))))
                                   (let ((__tmp82302
                                          (let ()
                                            (declare (not safe))
                                            (cons _next77959_ _rhead77937_)))
                                         (__tmp82301
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!77903_
                                             _next77959_
                                             _tails77940_))))
                                     (declare (not safe))
                                     (_c3loop77935_ __tmp82302 __tmp82301))))))
                         (let ((_K7794977982_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead77937_ _sit77896_))))
                               (_K7794677968_
                                (lambda (_tail77966_)
                                  (let ((__tmp82303
                                         (append _tail77966_ _sit77896_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead77937_
                                     __tmp82303)))))
                           (let ((_try-match7794377978_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7794177951_))
                                        (let ((_tl7794877973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7794177951_)))
                                              (_hd7794777971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7794177951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7794877973_))
                                              (let ((_tail77976_
                                                     _hd7794777971_))
                                                (declare (not safe))
                                                (_K7794677968_ _tail77976_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7794477962_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7794477962_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7794177951_))
                                 (let () (declare (not safe)) (_K7794977982_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7794377978_))))))))
                    (_super-struct77905_
                     (let* ((_sit7790677914_ _sit77896_)
                            (_else7790877922_ (lambda () '#f))
                            (_K7791077927_ (lambda (_s77925_) _s77925_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7790677914_))
                           (let* ((_hd7791177930_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7790677914_)))
                                  (_s77933_ _hd7791177930_))
                             (declare (not safe))
                             (_K7791077927_ _s77933_))
                           (let () (declare (not safe)) (_else7790877922_))))))
            (values _precedence-list77904_ _super-struct77905_)))))
    (define c4-linearize__@
      (lambda (_keys7786978166_ . _args78168_)
        (apply c4-linearize__%
               _keys7786978166_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7786978166_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7786978166_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7786978166_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7786978166_ 'get-name: absent-value))
               _args78168_)))
    (define c4-linearize
      (lambda _args7787478174_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7787478174_)))))
