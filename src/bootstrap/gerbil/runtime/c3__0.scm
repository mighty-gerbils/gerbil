(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710617600)
  (begin
    (define c4-linearize__%
      (lambda (_g59596_
               _get-precedence-list5926359269_
               _struct?5926459271_
               _eq5926559273_
               _get-name5926659275_
               _rhead59277_
               _supers59278_)
        (let* ((_get-precedence-list59280_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list5926359269_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list5926359269_))
               (_struct?59282_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?5926459271_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?5926459271_))
               (_eq59284_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq5926559273_ absent-value))
                    eq?
                    _eq5926559273_))
               (_get-name59286_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name5926659275_ absent-value))
                    identity
                    _get-name5926659275_)))
          (letrec* ((_pls59288_ (map _get-precedence-list59280_ _supers59278_))
                    (_sit59289_ '())
                    (_get-names59290_
                     (lambda (_lst59554_) (map _get-name59286_ _lst59554_)))
                    (_err59291_
                     (lambda _a59552_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp59597 (reverse _rhead59277_)))
                                (declare (not safe))
                                (_get-names59290_ __tmp59597))
                              'precedence-lists:
                              (map _get-names59290_ _pls59288_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names59290_ _sit59289_))
                              _a59552_)))
                    (_merge-sit!59292_
                     (lambda (_sit259542_)
                       (if (let () (declare (not safe)) (null? _sit259542_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit59289_))
                               (set! _sit59289_ _sit259542_)
                               (let _loop59544_ ((_t159546_ _sit59289_)
                                                 (_t259547_ _sit259542_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t159546_ _sit259542_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t259547_ _sit59289_))
                                         (set! _sit59289_ _sit259542_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t159546_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t259547_)))
                                             (let ((__tmp59598
                                                    (let ((__tmp59601
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names59290_
                                                              _sit59289_)))
                                                          (__tmp59599
                                                           (let ((__tmp59600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names59290_ _sit259542_))))
                     (declare (not safe))
                     (cons __tmp59600 '()))))
              (declare (not safe))
              (cons __tmp59601 __tmp59599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err59291_
                                                'single-inheritance-incompatibility:
                                                __tmp59598))
                                             (let ((__tmp59603 (cdr _t159546_))
                                                   (__tmp59602
                                                    (cdr _t259547_)))
                                               (declare (not safe))
                                               (_loop59544_
                                                __tmp59603
                                                __tmp59602))))))))))
                    (_rpls59293_
                     (map (lambda (_pl59537_)
                            (let ((_g59604_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?59282_
                                      _pl59537_
                                      '()))))
                              (begin
                                (let ((_g59605_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g59604_)
                                             (##vector-length _g59604_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g59605_ 2)))
                                      (error "Context expects 2 values"
                                             _g59605_)))
                                (let ((_tl59539_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g59604_ 0)))
                                      (_rh59540_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g59604_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!59292_ _tl59539_))
                                    _rh59540_)))))
                          _pls59288_))
                    (_unsitr-rpl59294_
                     (lambda (_rpl59483_)
                       (let _u59485_ ((_pl-rhead59487_ _rpl59483_)
                                      (_pl-tail59488_ '())
                                      (_sit-rhead59489_ (reverse _sit59289_))
                                      (_sit-tail59490_ '()))
                         (let* ((_pl-rhead5949159500_ _pl-rhead59487_)
                                (_E5949459504_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead5949159500_))))
                           (let ((_K5949859534_ (lambda () _pl-tail59488_))
                                 (_K5949559518_
                                  (lambda (_plrh59508_ _c59509_)
                                    (if (member _c59509_
                                                _sit-tail59490_
                                                _eq59284_)
                                        (let ((__tmp59611
                                               (let ((__tmp59612
                                                      (reverse _pl-rhead59487_)))
                                                 (declare (not safe))
                                                 (_get-names59290_
                                                  __tmp59612)))
                                              (__tmp59610
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names59290_
                                                  _pl-tail59488_)))
                                              (__tmp59608
                                               (let ((__tmp59609
                                                      (reverse _sit-rhead59489_)))
                                                 (declare (not safe))
                                                 (_get-names59290_
                                                  __tmp59609)))
                                              (__tmp59607
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names59290_
                                                  _sit-tail59490_)))
                                              (__tmp59606
                                               (_get-name59286_ _c59509_)))
                                          (declare (not safe))
                                          (_err59291_
                                           'precedence-list-head:
                                           __tmp59611
                                           'precedence-list-tail:
                                           __tmp59610
                                           'single-inheritance-head:
                                           __tmp59608
                                           'single-inheritance-tail:
                                           __tmp59607
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp59606))
                                        (let ((_g59613_
                                               (let ((__tmp59615
                                                      (lambda (_g5951059512_)
                                                        (_eq59284_
                                                         _c59509_
                                                         _g5951059512_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp59615
                                                  _sit-rhead59489_
                                                  _sit-tail59490_))))
                                          (begin
                                            (let ((_g59614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g59613_)
                                                         (##vector-length
                                                          _g59613_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g59614_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g59614_)))
                                            (let ((_sit-rh259515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g59613_
                                                      0)))
                                                  (_sit-tl259516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g59613_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh259515_))
                                                  (let ((__tmp59616
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c59509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail59488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u59485_
                                                     _plrh59508_
                                                     __tmp59616
                                                     '()
                                                     _sit-tl259516_))
                                                  (let ((__tmp59617
                                                         (cdr _sit-rh259515_)))
                                                    (declare (not safe))
                                                    (_u59485_
                                                     _plrh59508_
                                                     _pl-tail59488_
                                                     __tmp59617
                                                     _sit-tl259516_))))))))))
                             (let ((_try-match5949359530_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead5949159500_))
                                          (let ((_tl5949759523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead5949159500_)))
                                                (_hd5949659521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead5949159500_))))
                                            (let ((_c59526_ _hd5949659521_)
                                                  (_plrh59528_ _tl5949759523_))
                                              (let ()
                                                (declare (not safe))
                                                (_K5949559518_
                                                 _plrh59528_
                                                 _c59526_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5949459504_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead5949159500_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5949859534_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5949359530_)))))))))
                    (_g59618_
                     (let ((_g59619_
                            (let ((__tmp59621 (reverse _supers59278_)))
                              (declare (not safe))
                              (append1! _rpls59293_ __tmp59621))))
                       #!void
                       _g59619_))
                    (_g59622_
                     (let ((_g59623_
                            (set! _pls59288_
                                  (map _unsitr-rpl59294_ _rpls59293_))))
                       #!void
                       _g59623_))
                    (_c3-select-next59295_
                     (lambda (_tails59433_)
                       (let ((_candidate?59439_
                              (lambda (_c59435_)
                                (let ((__tmp59625
                                       (lambda (_tail59437_)
                                         (let ((__tmp59626
                                                (member _c59435_
                                                        (cdr _tail59437_)
                                                        _eq59284_)))
                                           (declare (not safe))
                                           (not __tmp59626)))))
                                  (declare (not safe))
                                  (andmap1 __tmp59625 _tails59433_)))))
                         (let _loop59441_ ((_ts59443_ _tails59433_))
                           (let* ((_ts5944459454_ _ts59443_)
                                  (_else5944659462_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err59291_))))
                                  (_K5944859468_
                                   (lambda (_rts59465_ _c59466_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?59439_ _c59466_))
                                         _c59466_
                                         (let ()
                                           (declare (not safe))
                                           (_loop59441_ _rts59465_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts5944459454_))
                                 (let ((_hd5944959471_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts5944459454_)))
                                       (_tl5945059473_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts5944459454_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd5944959471_))
                                       (let* ((_hd5945159476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd5944959471_)))
                                              (_c59479_ _hd5945159476_)
                                              (_rts59481_ _tl5945059473_))
                                         (declare (not safe))
                                         (_K5944859468_ _rts59481_ _c59479_))
                                       (let ()
                                         (declare (not safe))
                                         (_err59291_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err59291_))))))))
                    (_remove-next!59296_
                     (lambda (_next59378_ _tails59379_)
                       (let _loop59381_ ((_t59383_ _tails59379_))
                         (let* ((_t5938459395_ _t59383_)
                                (_E5938759399_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t5938459395_))))
                           (let ((_K5939359430_ (lambda () _tails59379_))
                                 (_K5938859407_
                                  (lambda (_more59403_ _tail59404_ _head59405_)
                                    (if (_eq59284_ _head59405_ _next59378_)
                                        (set-car! _t59383_ _tail59404_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop59381_ _more59403_)))))
                             (let ((_try-match5938659426_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t5938459395_))
                                          (let ((_tl5939059412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t5938459395_)))
                                                (_hd5938959410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t5938459395_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd5938959410_))
                                                (let ((_tl5939259417_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd5938959410_)))
                                                      (_hd5939159415_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd5938959410_))))
                                                  (let ((_head59420_
                                                         _hd5939159415_)
                                                        (_tail59422_
                                                         _tl5939259417_)
                                                        (_more59424_
                                                         _tl5939059412_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K5938859407_
                                                       _more59424_
                                                       _tail59422_
                                                       _head59420_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E5938759399_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5938759399_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t5938459395_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5939359430_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5938659426_)))))))))
                    (_precedence-list59297_
                     (let _c3loop59328_ ((_rhead59330_ _rhead59277_)
                                         (_tails59331_ _pls59288_))
                       (let* ((_tails59333_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails59331_)))
                              (_tails5933459344_ _tails59333_)
                              (_else5933759355_
                               (lambda ()
                                 (let ((_next59352_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next59295_
                                           _tails59333_))))
                                   (let ((__tmp59628
                                          (let ()
                                            (declare (not safe))
                                            (cons _next59352_ _rhead59330_)))
                                         (__tmp59627
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!59296_
                                             _next59352_
                                             _tails59333_))))
                                     (declare (not safe))
                                     (_c3loop59328_ __tmp59628 __tmp59627))))))
                         (let ((_K5934259375_
                                (lambda ()
                                  (append-reverse _rhead59330_ _sit59289_)))
                               (_K5933959361_
                                (lambda (_tail59359_)
                                  (append-reverse
                                   _rhead59330_
                                   (append _tail59359_ _sit59289_)))))
                           (let ((_try-match5933659371_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails5933459344_))
                                        (let ((_tl5934159366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails5933459344_)))
                                              (_hd5934059364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails5933459344_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl5934159366_))
                                              (let ((_tail59369_
                                                     _hd5934059364_))
                                                (declare (not safe))
                                                (_K5933959361_ _tail59369_))
                                              (let ()
                                                (declare (not safe))
                                                (_else5933759355_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else5933759355_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails5933459344_))
                                 (let () (declare (not safe)) (_K5934259375_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match5933659371_))))))))
                    (_super-struct59298_
                     (let* ((_sit5929959307_ _sit59289_)
                            (_else5930159315_ (lambda () '#f))
                            (_K5930359320_ (lambda (_s59318_) _s59318_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit5929959307_))
                           (let* ((_hd5930459323_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit5929959307_)))
                                  (_s59326_ _hd5930459323_))
                             (declare (not safe))
                             (_K5930359320_ _s59326_))
                           (let () (declare (not safe)) (_else5930159315_))))))
            (values _precedence-list59297_ _super-struct59298_)))))
    (define c4-linearize__@
      (lambda (_keys5926259559_ . _args59561_)
        (apply c4-linearize__%
               _keys5926259559_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys5926259559_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5926259559_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5926259559_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5926259559_ 'get-name: absent-value))
               _args59561_)))
    (define c4-linearize
      (lambda _args5926759567_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args5926759567_)))))
