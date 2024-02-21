(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708510100)
  (begin
    (define c4-linearize__%
      (lambda (_g61525_
               _get-precedence-list6119261198_
               _struct?6119361200_
               _eq6119461202_
               _get-name6119561204_
               _rhead61206_
               _supers61207_)
        (let* ((_get-precedence-list61209_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6119261198_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6119261198_))
               (_struct?61211_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6119361200_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6119361200_))
               (_eq61213_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6119461202_ absent-value))
                    eq?
                    _eq6119461202_))
               (_get-name61215_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6119561204_ absent-value))
                    identity
                    _get-name6119561204_)))
          (letrec* ((_pls61217_ (map _get-precedence-list61209_ _supers61207_))
                    (_sit61218_ '())
                    (_get-names61219_
                     (lambda (_lst61483_) (map _get-name61215_ _lst61483_)))
                    (_err61220_
                     (lambda _a61481_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61526 (reverse _rhead61206_)))
                                (declare (not safe))
                                (_get-names61219_ __tmp61526))
                              'precedence-lists:
                              (map _get-names61219_ _pls61217_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61219_ _sit61218_))
                              _a61481_)))
                    (_merge-sit!61221_
                     (lambda (_sit261471_)
                       (if (let () (declare (not safe)) (null? _sit261471_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61218_))
                               (set! _sit61218_ _sit261471_)
                               (let _loop61473_ ((_t161475_ _sit61218_)
                                                 (_t261476_ _sit261471_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161475_ _sit261471_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261476_ _sit61218_))
                                         (set! _sit61218_ _sit261471_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161475_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261476_)))
                                             (let ((__tmp61529
                                                    (let ((__tmp61532
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61219_
                                                              _sit61218_)))
                                                          (__tmp61530
                                                           (let ((__tmp61531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61219_ _sit261471_))))
                     (declare (not safe))
                     (cons __tmp61531 '()))))
              (declare (not safe))
              (cons __tmp61532 __tmp61530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61220_
                                                'single-inheritance-incompatibility:
                                                __tmp61529))
                                             (let ((__tmp61528 (cdr _t161475_))
                                                   (__tmp61527
                                                    (cdr _t261476_)))
                                               (declare (not safe))
                                               (_loop61473_
                                                __tmp61528
                                                __tmp61527))))))))))
                    (_rpls61222_
                     (map (lambda (_pl61466_)
                            (let ((_g61533_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61211_
                                      _pl61466_
                                      '()))))
                              (begin
                                (let ((_g61534_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61533_)
                                             (##vector-length _g61533_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61534_ 2)))
                                      (error "Context expects 2 values"
                                             _g61534_)))
                                (let ((_tl61468_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61533_ 0)))
                                      (_rh61469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61533_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61221_ _tl61468_))
                                    _rh61469_)))))
                          _pls61217_))
                    (_unsitr-rpl61223_
                     (lambda (_rpl61412_)
                       (let _u61414_ ((_pl-rhead61416_ _rpl61412_)
                                      (_pl-tail61417_ '())
                                      (_sit-rhead61418_ (reverse _sit61218_))
                                      (_sit-tail61419_ '()))
                         (let* ((_pl-rhead6142061429_ _pl-rhead61416_)
                                (_E6142361433_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6142061429_)))))
                           (let ((_K6142761463_ (lambda () _pl-tail61417_))
                                 (_K6142461447_
                                  (lambda (_plrh61437_ _c61438_)
                                    (if (member _c61438_
                                                _sit-tail61419_
                                                _eq61213_)
                                        (let ((__tmp61545
                                               (let ((__tmp61546
                                                      (reverse _pl-rhead61416_)))
                                                 (declare (not safe))
                                                 (_get-names61219_
                                                  __tmp61546)))
                                              (__tmp61544
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61219_
                                                  _pl-tail61417_)))
                                              (__tmp61542
                                               (let ((__tmp61543
                                                      (reverse _sit-rhead61418_)))
                                                 (declare (not safe))
                                                 (_get-names61219_
                                                  __tmp61543)))
                                              (__tmp61541
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61219_
                                                  _sit-tail61419_)))
                                              (__tmp61540
                                               (_get-name61215_ _c61438_)))
                                          (declare (not safe))
                                          (_err61220_
                                           'precedence-list-head:
                                           __tmp61545
                                           'precedence-list-tail:
                                           __tmp61544
                                           'single-inheritance-head:
                                           __tmp61542
                                           'single-inheritance-tail:
                                           __tmp61541
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61540))
                                        (let ((_g61535_
                                               (let ((__tmp61537
                                                      (lambda (_g6143961441_)
                                                        (_eq61213_
                                                         _c61438_
                                                         _g6143961441_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61537
                                                  _sit-rhead61418_
                                                  _sit-tail61419_))))
                                          (begin
                                            (let ((_g61536_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61535_)
                                                         (##vector-length
                                                          _g61535_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61536_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61536_)))
                                            (let ((_sit-rh261444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61535_
                                                      0)))
                                                  (_sit-tl261445_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61535_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261444_))
                                                  (let ((__tmp61539
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61414_
                                                     _plrh61437_
                                                     __tmp61539
                                                     '()
                                                     _sit-tl261445_))
                                                  (let ((__tmp61538
                                                         (cdr _sit-rh261444_)))
                                                    (declare (not safe))
                                                    (_u61414_
                                                     _plrh61437_
                                                     _pl-tail61417_
                                                     __tmp61538
                                                     _sit-tl261445_))))))))))
                             (let ((_try-match6142261459_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6142061429_))
                                          (let ((_tl6142661452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6142061429_)))
                                                (_hd6142561450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6142061429_))))
                                            (let ((_c61455_ _hd6142561450_)
                                                  (_plrh61457_ _tl6142661452_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6142461447_
                                                 _plrh61457_
                                                 _c61455_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6142361433_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6142061429_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6142761463_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6142261459_)))))))))
                    (_g61547_
                     (let ((_g61548_
                            (let ((__tmp61550 (reverse _supers61207_)))
                              (declare (not safe))
                              (append1! _rpls61222_ __tmp61550))))
                       #!void
                       _g61548_))
                    (_g61551_
                     (let ((_g61552_
                            (set! _pls61217_
                                  (map _unsitr-rpl61223_ _rpls61222_))))
                       #!void
                       _g61552_))
                    (_c3-select-next61224_
                     (lambda (_tails61362_)
                       (let ((_candidate?61368_
                              (lambda (_c61364_)
                                (let ((__tmp61554
                                       (lambda (_tail61366_)
                                         (let ((__tmp61555
                                                (member _c61364_
                                                        (cdr _tail61366_)
                                                        _eq61213_)))
                                           (declare (not safe))
                                           (not __tmp61555)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61554 _tails61362_)))))
                         (let _loop61370_ ((_ts61372_ _tails61362_))
                           (let* ((_ts6137361383_ _ts61372_)
                                  (_else6137561391_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61220_))))
                                  (_K6137761397_
                                   (lambda (_rts61394_ _c61395_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61368_ _c61395_))
                                         _c61395_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61370_ _rts61394_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6137361383_))
                                 (let ((_hd6137861400_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6137361383_)))
                                       (_tl6137961402_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6137361383_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6137861400_))
                                       (let* ((_hd6138061405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6137861400_)))
                                              (_c61408_ _hd6138061405_)
                                              (_rts61410_ _tl6137961402_))
                                         (declare (not safe))
                                         (_K6137761397_ _rts61410_ _c61408_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61220_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61220_))))))))
                    (_remove-next!61225_
                     (lambda (_next61307_ _tails61308_)
                       (let _loop61310_ ((_t61312_ _tails61308_))
                         (let* ((_t6131361324_ _t61312_)
                                (_E6131661328_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6131361324_)))))
                           (let ((_K6132261359_ (lambda () _tails61308_))
                                 (_K6131761336_
                                  (lambda (_more61332_ _tail61333_ _head61334_)
                                    (if (_eq61213_ _head61334_ _next61307_)
                                        (set-car! _t61312_ _tail61333_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61310_ _more61332_)))))
                             (let ((_try-match6131561355_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6131361324_))
                                          (let ((_tl6131961341_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6131361324_)))
                                                (_hd6131861339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6131361324_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6131861339_))
                                                (let ((_tl6132161346_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6131861339_)))
                                                      (_hd6132061344_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6131861339_))))
                                                  (let ((_head61349_
                                                         _hd6132061344_)
                                                        (_tail61351_
                                                         _tl6132161346_)
                                                        (_more61353_
                                                         _tl6131961341_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6131761336_
                                                       _more61353_
                                                       _tail61351_
                                                       _head61349_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6131661328_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6131661328_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6131361324_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6132261359_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6131561355_)))))))))
                    (_precedence-list61226_
                     (let _c3loop61257_ ((_rhead61259_ _rhead61206_)
                                         (_tails61260_ _pls61217_))
                       (let* ((_tails61262_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61260_)))
                              (_tails6126361273_ _tails61262_)
                              (_else6126661284_
                               (lambda ()
                                 (let ((_next61281_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61224_
                                           _tails61262_))))
                                   (let ((__tmp61557
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61281_ _rhead61259_)))
                                         (__tmp61556
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61225_
                                             _next61281_
                                             _tails61262_))))
                                     (declare (not safe))
                                     (_c3loop61257_ __tmp61557 __tmp61556))))))
                         (let ((_K6127161304_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61259_ _sit61218_))))
                               (_K6126861290_
                                (lambda (_tail61288_)
                                  (let ((__tmp61558
                                         (append _tail61288_ _sit61218_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61259_
                                     __tmp61558)))))
                           (let ((_try-match6126561300_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6126361273_))
                                        (let ((_tl6127061295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6126361273_)))
                                              (_hd6126961293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6126361273_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6127061295_))
                                              (let ((_tail61298_
                                                     _hd6126961293_))
                                                (declare (not safe))
                                                (_K6126861290_ _tail61298_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6126661284_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6126661284_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6126361273_))
                                 (let () (declare (not safe)) (_K6127161304_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6126561300_))))))))
                    (_super-struct61227_
                     (let* ((_sit6122861236_ _sit61218_)
                            (_else6123061244_ (lambda () '#f))
                            (_K6123261249_ (lambda (_s61247_) _s61247_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6122861236_))
                           (let* ((_hd6123361252_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6122861236_)))
                                  (_s61255_ _hd6123361252_))
                             (declare (not safe))
                             (_K6123261249_ _s61255_))
                           (let () (declare (not safe)) (_else6123061244_))))))
            (values _precedence-list61226_ _super-struct61227_)))))
    (define c4-linearize__@
      (lambda (_keys6119161488_ . _args61490_)
        (apply c4-linearize__%
               _keys6119161488_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6119161488_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6119161488_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6119161488_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6119161488_ 'get-name: absent-value))
               _args61490_)))
    (define c4-linearize
      (lambda _args6119661496_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6119661496_)))))
