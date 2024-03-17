(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710694201)
  (begin
    (define c4-linearize__%
      (lambda (_g59636_
               _get-precedence-list5930359309_
               _struct?5930459311_
               _eq5930559313_
               _get-name5930659315_
               _rhead59317_
               _supers59318_)
        (let* ((_get-precedence-list59320_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list5930359309_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list5930359309_))
               (_struct?59322_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?5930459311_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?5930459311_))
               (_eq59324_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq5930559313_ absent-value))
                    eq?
                    _eq5930559313_))
               (_get-name59326_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name5930659315_ absent-value))
                    identity
                    _get-name5930659315_)))
          (letrec* ((_pls59328_ (map _get-precedence-list59320_ _supers59318_))
                    (_sit59329_ '())
                    (_get-names59330_
                     (lambda (_lst59594_) (map _get-name59326_ _lst59594_)))
                    (_err59331_
                     (lambda _a59592_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp59637 (reverse _rhead59317_)))
                                (declare (not safe))
                                (_get-names59330_ __tmp59637))
                              'precedence-lists:
                              (map _get-names59330_ _pls59328_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names59330_ _sit59329_))
                              _a59592_)))
                    (_merge-sit!59332_
                     (lambda (_sit259582_)
                       (if (let () (declare (not safe)) (null? _sit259582_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit59329_))
                               (set! _sit59329_ _sit259582_)
                               (let _loop59584_ ((_t159586_ _sit59329_)
                                                 (_t259587_ _sit259582_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t159586_ _sit259582_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t259587_ _sit59329_))
                                         (set! _sit59329_ _sit259582_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t159586_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t259587_)))
                                             (let ((__tmp59638
                                                    (let ((__tmp59641
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names59330_
                                                              _sit59329_)))
                                                          (__tmp59639
                                                           (let ((__tmp59640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names59330_ _sit259582_))))
                     (declare (not safe))
                     (cons __tmp59640 '()))))
              (declare (not safe))
              (cons __tmp59641 __tmp59639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err59331_
                                                'single-inheritance-incompatibility:
                                                __tmp59638))
                                             (let ((__tmp59643 (cdr _t159586_))
                                                   (__tmp59642
                                                    (cdr _t259587_)))
                                               (declare (not safe))
                                               (_loop59584_
                                                __tmp59643
                                                __tmp59642))))))))))
                    (_rpls59333_
                     (map (lambda (_pl59577_)
                            (let ((_g59644_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?59322_
                                      _pl59577_
                                      '()))))
                              (begin
                                (let ((_g59645_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g59644_)
                                             (##vector-length _g59644_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g59645_ 2)))
                                      (error "Context expects 2 values"
                                             _g59645_)))
                                (let ((_tl59579_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g59644_ 0)))
                                      (_rh59580_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g59644_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!59332_ _tl59579_))
                                    _rh59580_)))))
                          _pls59328_))
                    (_unsitr-rpl59334_
                     (lambda (_rpl59523_)
                       (let _u59525_ ((_pl-rhead59527_ _rpl59523_)
                                      (_pl-tail59528_ '())
                                      (_sit-rhead59529_ (reverse _sit59329_))
                                      (_sit-tail59530_ '()))
                         (let* ((_pl-rhead5953159540_ _pl-rhead59527_)
                                (_E5953459544_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead5953159540_))))
                           (let ((_K5953859574_ (lambda () _pl-tail59528_))
                                 (_K5953559558_
                                  (lambda (_plrh59548_ _c59549_)
                                    (if (member _c59549_
                                                _sit-tail59530_
                                                _eq59324_)
                                        (let ((__tmp59651
                                               (let ((__tmp59652
                                                      (reverse _pl-rhead59527_)))
                                                 (declare (not safe))
                                                 (_get-names59330_
                                                  __tmp59652)))
                                              (__tmp59650
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names59330_
                                                  _pl-tail59528_)))
                                              (__tmp59648
                                               (let ((__tmp59649
                                                      (reverse _sit-rhead59529_)))
                                                 (declare (not safe))
                                                 (_get-names59330_
                                                  __tmp59649)))
                                              (__tmp59647
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names59330_
                                                  _sit-tail59530_)))
                                              (__tmp59646
                                               (_get-name59326_ _c59549_)))
                                          (declare (not safe))
                                          (_err59331_
                                           'precedence-list-head:
                                           __tmp59651
                                           'precedence-list-tail:
                                           __tmp59650
                                           'single-inheritance-head:
                                           __tmp59648
                                           'single-inheritance-tail:
                                           __tmp59647
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp59646))
                                        (let ((_g59653_
                                               (let ((__tmp59655
                                                      (lambda (_g5955059552_)
                                                        (_eq59324_
                                                         _c59549_
                                                         _g5955059552_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp59655
                                                  _sit-rhead59529_
                                                  _sit-tail59530_))))
                                          (begin
                                            (let ((_g59654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g59653_)
                                                         (##vector-length
                                                          _g59653_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g59654_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g59654_)))
                                            (let ((_sit-rh259555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g59653_
                                                      0)))
                                                  (_sit-tl259556_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g59653_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh259555_))
                                                  (let ((__tmp59656
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c59549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail59528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u59525_
                                                     _plrh59548_
                                                     __tmp59656
                                                     '()
                                                     _sit-tl259556_))
                                                  (let ((__tmp59657
                                                         (cdr _sit-rh259555_)))
                                                    (declare (not safe))
                                                    (_u59525_
                                                     _plrh59548_
                                                     _pl-tail59528_
                                                     __tmp59657
                                                     _sit-tl259556_))))))))))
                             (let ((_try-match5953359570_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead5953159540_))
                                          (let ((_tl5953759563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead5953159540_)))
                                                (_hd5953659561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead5953159540_))))
                                            (let ((_c59566_ _hd5953659561_)
                                                  (_plrh59568_ _tl5953759563_))
                                              (let ()
                                                (declare (not safe))
                                                (_K5953559558_
                                                 _plrh59568_
                                                 _c59566_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5953459544_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead5953159540_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5953859574_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5953359570_)))))))))
                    (_g59658_
                     (let ((_g59659_
                            (let ((__tmp59661 (reverse _supers59318_)))
                              (declare (not safe))
                              (append1! _rpls59333_ __tmp59661))))
                       #!void
                       _g59659_))
                    (_g59662_
                     (let ((_g59663_
                            (set! _pls59328_
                                  (map _unsitr-rpl59334_ _rpls59333_))))
                       #!void
                       _g59663_))
                    (_c3-select-next59335_
                     (lambda (_tails59473_)
                       (let ((_candidate?59479_
                              (lambda (_c59475_)
                                (let ((__tmp59665
                                       (lambda (_tail59477_)
                                         (let ((__tmp59666
                                                (member _c59475_
                                                        (cdr _tail59477_)
                                                        _eq59324_)))
                                           (declare (not safe))
                                           (not __tmp59666)))))
                                  (declare (not safe))
                                  (andmap1 __tmp59665 _tails59473_)))))
                         (let _loop59481_ ((_ts59483_ _tails59473_))
                           (let* ((_ts5948459494_ _ts59483_)
                                  (_else5948659502_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err59331_))))
                                  (_K5948859508_
                                   (lambda (_rts59505_ _c59506_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?59479_ _c59506_))
                                         _c59506_
                                         (let ()
                                           (declare (not safe))
                                           (_loop59481_ _rts59505_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts5948459494_))
                                 (let ((_hd5948959511_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts5948459494_)))
                                       (_tl5949059513_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts5948459494_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd5948959511_))
                                       (let* ((_hd5949159516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd5948959511_)))
                                              (_c59519_ _hd5949159516_)
                                              (_rts59521_ _tl5949059513_))
                                         (declare (not safe))
                                         (_K5948859508_ _rts59521_ _c59519_))
                                       (let ()
                                         (declare (not safe))
                                         (_err59331_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err59331_))))))))
                    (_remove-next!59336_
                     (lambda (_next59418_ _tails59419_)
                       (let _loop59421_ ((_t59423_ _tails59419_))
                         (let* ((_t5942459435_ _t59423_)
                                (_E5942759439_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t5942459435_))))
                           (let ((_K5943359470_ (lambda () _tails59419_))
                                 (_K5942859447_
                                  (lambda (_more59443_ _tail59444_ _head59445_)
                                    (if (_eq59324_ _head59445_ _next59418_)
                                        (set-car! _t59423_ _tail59444_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop59421_ _more59443_)))))
                             (let ((_try-match5942659466_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t5942459435_))
                                          (let ((_tl5943059452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t5942459435_)))
                                                (_hd5942959450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t5942459435_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd5942959450_))
                                                (let ((_tl5943259457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd5942959450_)))
                                                      (_hd5943159455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd5942959450_))))
                                                  (let ((_head59460_
                                                         _hd5943159455_)
                                                        (_tail59462_
                                                         _tl5943259457_)
                                                        (_more59464_
                                                         _tl5943059452_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K5942859447_
                                                       _more59464_
                                                       _tail59462_
                                                       _head59460_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E5942759439_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5942759439_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t5942459435_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5943359470_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5942659466_)))))))))
                    (_precedence-list59337_
                     (let _c3loop59368_ ((_rhead59370_ _rhead59317_)
                                         (_tails59371_ _pls59328_))
                       (let* ((_tails59373_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails59371_)))
                              (_tails5937459384_ _tails59373_)
                              (_else5937759395_
                               (lambda ()
                                 (let ((_next59392_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next59335_
                                           _tails59373_))))
                                   (let ((__tmp59668
                                          (let ()
                                            (declare (not safe))
                                            (cons _next59392_ _rhead59370_)))
                                         (__tmp59667
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!59336_
                                             _next59392_
                                             _tails59373_))))
                                     (declare (not safe))
                                     (_c3loop59368_ __tmp59668 __tmp59667))))))
                         (let ((_K5938259415_
                                (lambda ()
                                  (append-reverse _rhead59370_ _sit59329_)))
                               (_K5937959401_
                                (lambda (_tail59399_)
                                  (append-reverse
                                   _rhead59370_
                                   (append _tail59399_ _sit59329_)))))
                           (let ((_try-match5937659411_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails5937459384_))
                                        (let ((_tl5938159406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails5937459384_)))
                                              (_hd5938059404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails5937459384_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl5938159406_))
                                              (let ((_tail59409_
                                                     _hd5938059404_))
                                                (declare (not safe))
                                                (_K5937959401_ _tail59409_))
                                              (let ()
                                                (declare (not safe))
                                                (_else5937759395_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else5937759395_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails5937459384_))
                                 (let () (declare (not safe)) (_K5938259415_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match5937659411_))))))))
                    (_super-struct59338_
                     (let* ((_sit5933959347_ _sit59329_)
                            (_else5934159355_ (lambda () '#f))
                            (_K5934359360_ (lambda (_s59358_) _s59358_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit5933959347_))
                           (let* ((_hd5934459363_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit5933959347_)))
                                  (_s59366_ _hd5934459363_))
                             (declare (not safe))
                             (_K5934359360_ _s59366_))
                           (let () (declare (not safe)) (_else5934159355_))))))
            (values _precedence-list59337_ _super-struct59338_)))))
    (define c4-linearize__@
      (lambda (_keys5930259599_ . _args59601_)
        (apply c4-linearize__%
               _keys5930259599_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys5930259599_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5930259599_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5930259599_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5930259599_ 'get-name: absent-value))
               _args59601_)))
    (define c4-linearize
      (lambda _args5930759607_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args5930759607_)))))
