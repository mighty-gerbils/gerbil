(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709111635)
  (begin
    (define c4-linearize__%
      (lambda (_g61529_
               _get-precedence-list6119661202_
               _struct?6119761204_
               _eq6119861206_
               _get-name6119961208_
               _rhead61210_
               _supers61211_)
        (let* ((_get-precedence-list61213_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6119661202_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6119661202_))
               (_struct?61215_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6119761204_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6119761204_))
               (_eq61217_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6119861206_ absent-value))
                    eq?
                    _eq6119861206_))
               (_get-name61219_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6119961208_ absent-value))
                    identity
                    _get-name6119961208_)))
          (letrec* ((_pls61221_ (map _get-precedence-list61213_ _supers61211_))
                    (_sit61222_ '())
                    (_get-names61223_
                     (lambda (_lst61487_) (map _get-name61219_ _lst61487_)))
                    (_err61224_
                     (lambda _a61485_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61530 (reverse _rhead61210_)))
                                (declare (not safe))
                                (_get-names61223_ __tmp61530))
                              'precedence-lists:
                              (map _get-names61223_ _pls61221_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61223_ _sit61222_))
                              _a61485_)))
                    (_merge-sit!61225_
                     (lambda (_sit261475_)
                       (if (let () (declare (not safe)) (null? _sit261475_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61222_))
                               (set! _sit61222_ _sit261475_)
                               (let _loop61477_ ((_t161479_ _sit61222_)
                                                 (_t261480_ _sit261475_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161479_ _sit261475_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261480_ _sit61222_))
                                         (set! _sit61222_ _sit261475_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161479_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261480_)))
                                             (let ((__tmp61533
                                                    (let ((__tmp61536
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61223_
                                                              _sit61222_)))
                                                          (__tmp61534
                                                           (let ((__tmp61535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61223_ _sit261475_))))
                     (declare (not safe))
                     (cons __tmp61535 '()))))
              (declare (not safe))
              (cons __tmp61536 __tmp61534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61224_
                                                'single-inheritance-incompatibility:
                                                __tmp61533))
                                             (let ((__tmp61532 (cdr _t161479_))
                                                   (__tmp61531
                                                    (cdr _t261480_)))
                                               (declare (not safe))
                                               (_loop61477_
                                                __tmp61532
                                                __tmp61531))))))))))
                    (_rpls61226_
                     (map (lambda (_pl61470_)
                            (let ((_g61537_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61215_
                                      _pl61470_
                                      '()))))
                              (begin
                                (let ((_g61538_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61537_)
                                             (##vector-length _g61537_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61538_ 2)))
                                      (error "Context expects 2 values"
                                             _g61538_)))
                                (let ((_tl61472_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61537_ 0)))
                                      (_rh61473_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61537_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61225_ _tl61472_))
                                    _rh61473_)))))
                          _pls61221_))
                    (_unsitr-rpl61227_
                     (lambda (_rpl61416_)
                       (let _u61418_ ((_pl-rhead61420_ _rpl61416_)
                                      (_pl-tail61421_ '())
                                      (_sit-rhead61422_ (reverse _sit61222_))
                                      (_sit-tail61423_ '()))
                         (let* ((_pl-rhead6142461433_ _pl-rhead61420_)
                                (_E6142761437_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6142461433_)))))
                           (let ((_K6143161467_ (lambda () _pl-tail61421_))
                                 (_K6142861451_
                                  (lambda (_plrh61441_ _c61442_)
                                    (if (member _c61442_
                                                _sit-tail61423_
                                                _eq61217_)
                                        (let ((__tmp61549
                                               (let ((__tmp61550
                                                      (reverse _pl-rhead61420_)))
                                                 (declare (not safe))
                                                 (_get-names61223_
                                                  __tmp61550)))
                                              (__tmp61548
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61223_
                                                  _pl-tail61421_)))
                                              (__tmp61546
                                               (let ((__tmp61547
                                                      (reverse _sit-rhead61422_)))
                                                 (declare (not safe))
                                                 (_get-names61223_
                                                  __tmp61547)))
                                              (__tmp61545
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61223_
                                                  _sit-tail61423_)))
                                              (__tmp61544
                                               (_get-name61219_ _c61442_)))
                                          (declare (not safe))
                                          (_err61224_
                                           'precedence-list-head:
                                           __tmp61549
                                           'precedence-list-tail:
                                           __tmp61548
                                           'single-inheritance-head:
                                           __tmp61546
                                           'single-inheritance-tail:
                                           __tmp61545
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61544))
                                        (let ((_g61539_
                                               (let ((__tmp61541
                                                      (lambda (_g6144361445_)
                                                        (_eq61217_
                                                         _c61442_
                                                         _g6144361445_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61541
                                                  _sit-rhead61422_
                                                  _sit-tail61423_))))
                                          (begin
                                            (let ((_g61540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61539_)
                                                         (##vector-length
                                                          _g61539_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61540_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61540_)))
                                            (let ((_sit-rh261448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61539_
                                                      0)))
                                                  (_sit-tl261449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61539_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261448_))
                                                  (let ((__tmp61543
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61418_
                                                     _plrh61441_
                                                     __tmp61543
                                                     '()
                                                     _sit-tl261449_))
                                                  (let ((__tmp61542
                                                         (cdr _sit-rh261448_)))
                                                    (declare (not safe))
                                                    (_u61418_
                                                     _plrh61441_
                                                     _pl-tail61421_
                                                     __tmp61542
                                                     _sit-tl261449_))))))))))
                             (let ((_try-match6142661463_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6142461433_))
                                          (let ((_tl6143061456_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6142461433_)))
                                                (_hd6142961454_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6142461433_))))
                                            (let ((_c61459_ _hd6142961454_)
                                                  (_plrh61461_ _tl6143061456_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6142861451_
                                                 _plrh61461_
                                                 _c61459_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6142761437_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6142461433_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6143161467_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6142661463_)))))))))
                    (_g61551_
                     (let ((_g61552_
                            (let ((__tmp61554 (reverse _supers61211_)))
                              (declare (not safe))
                              (append1! _rpls61226_ __tmp61554))))
                       #!void
                       _g61552_))
                    (_g61555_
                     (let ((_g61556_
                            (set! _pls61221_
                                  (map _unsitr-rpl61227_ _rpls61226_))))
                       #!void
                       _g61556_))
                    (_c3-select-next61228_
                     (lambda (_tails61366_)
                       (let ((_candidate?61372_
                              (lambda (_c61368_)
                                (let ((__tmp61558
                                       (lambda (_tail61370_)
                                         (let ((__tmp61559
                                                (member _c61368_
                                                        (cdr _tail61370_)
                                                        _eq61217_)))
                                           (declare (not safe))
                                           (not __tmp61559)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61558 _tails61366_)))))
                         (let _loop61374_ ((_ts61376_ _tails61366_))
                           (let* ((_ts6137761387_ _ts61376_)
                                  (_else6137961395_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61224_))))
                                  (_K6138161401_
                                   (lambda (_rts61398_ _c61399_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61372_ _c61399_))
                                         _c61399_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61374_ _rts61398_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6137761387_))
                                 (let ((_hd6138261404_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6137761387_)))
                                       (_tl6138361406_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6137761387_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6138261404_))
                                       (let* ((_hd6138461409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6138261404_)))
                                              (_c61412_ _hd6138461409_)
                                              (_rts61414_ _tl6138361406_))
                                         (declare (not safe))
                                         (_K6138161401_ _rts61414_ _c61412_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61224_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61224_))))))))
                    (_remove-next!61229_
                     (lambda (_next61311_ _tails61312_)
                       (let _loop61314_ ((_t61316_ _tails61312_))
                         (let* ((_t6131761328_ _t61316_)
                                (_E6132061332_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6131761328_)))))
                           (let ((_K6132661363_ (lambda () _tails61312_))
                                 (_K6132161340_
                                  (lambda (_more61336_ _tail61337_ _head61338_)
                                    (if (_eq61217_ _head61338_ _next61311_)
                                        (set-car! _t61316_ _tail61337_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61314_ _more61336_)))))
                             (let ((_try-match6131961359_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6131761328_))
                                          (let ((_tl6132361345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6131761328_)))
                                                (_hd6132261343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6131761328_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6132261343_))
                                                (let ((_tl6132561350_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6132261343_)))
                                                      (_hd6132461348_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6132261343_))))
                                                  (let ((_head61353_
                                                         _hd6132461348_)
                                                        (_tail61355_
                                                         _tl6132561350_)
                                                        (_more61357_
                                                         _tl6132361345_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6132161340_
                                                       _more61357_
                                                       _tail61355_
                                                       _head61353_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6132061332_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6132061332_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6131761328_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6132661363_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6131961359_)))))))))
                    (_precedence-list61230_
                     (let _c3loop61261_ ((_rhead61263_ _rhead61210_)
                                         (_tails61264_ _pls61221_))
                       (let* ((_tails61266_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61264_)))
                              (_tails6126761277_ _tails61266_)
                              (_else6127061288_
                               (lambda ()
                                 (let ((_next61285_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61228_
                                           _tails61266_))))
                                   (let ((__tmp61561
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61285_ _rhead61263_)))
                                         (__tmp61560
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61229_
                                             _next61285_
                                             _tails61266_))))
                                     (declare (not safe))
                                     (_c3loop61261_ __tmp61561 __tmp61560))))))
                         (let ((_K6127561308_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61263_ _sit61222_))))
                               (_K6127261294_
                                (lambda (_tail61292_)
                                  (let ((__tmp61562
                                         (append _tail61292_ _sit61222_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61263_
                                     __tmp61562)))))
                           (let ((_try-match6126961304_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6126761277_))
                                        (let ((_tl6127461299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6126761277_)))
                                              (_hd6127361297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6126761277_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6127461299_))
                                              (let ((_tail61302_
                                                     _hd6127361297_))
                                                (declare (not safe))
                                                (_K6127261294_ _tail61302_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6127061288_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6127061288_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6126761277_))
                                 (let () (declare (not safe)) (_K6127561308_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6126961304_))))))))
                    (_super-struct61231_
                     (let* ((_sit6123261240_ _sit61222_)
                            (_else6123461248_ (lambda () '#f))
                            (_K6123661253_ (lambda (_s61251_) _s61251_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6123261240_))
                           (let* ((_hd6123761256_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6123261240_)))
                                  (_s61259_ _hd6123761256_))
                             (declare (not safe))
                             (_K6123661253_ _s61259_))
                           (let () (declare (not safe)) (_else6123461248_))))))
            (values _precedence-list61230_ _super-struct61231_)))))
    (define c4-linearize__@
      (lambda (_keys6119561492_ . _args61494_)
        (apply c4-linearize__%
               _keys6119561492_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6119561492_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6119561492_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6119561492_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6119561492_ 'get-name: absent-value))
               _args61494_)))
    (define c4-linearize
      (lambda _args6120061500_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6120061500_)))))
