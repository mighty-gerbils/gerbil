(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710237310)
  (begin
    (define c4-linearize__%
      (lambda (_g61477_
               _get-precedence-list6114461150_
               _struct?6114561152_
               _eq6114661154_
               _get-name6114761156_
               _rhead61158_
               _supers61159_)
        (let* ((_get-precedence-list61161_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6114461150_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6114461150_))
               (_struct?61163_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6114561152_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6114561152_))
               (_eq61165_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6114661154_ absent-value))
                    eq?
                    _eq6114661154_))
               (_get-name61167_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6114761156_ absent-value))
                    identity
                    _get-name6114761156_)))
          (letrec* ((_pls61169_ (map _get-precedence-list61161_ _supers61159_))
                    (_sit61170_ '())
                    (_get-names61171_
                     (lambda (_lst61435_) (map _get-name61167_ _lst61435_)))
                    (_err61172_
                     (lambda _a61433_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61478 (reverse _rhead61158_)))
                                (declare (not safe))
                                (_get-names61171_ __tmp61478))
                              'precedence-lists:
                              (map _get-names61171_ _pls61169_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61171_ _sit61170_))
                              _a61433_)))
                    (_merge-sit!61173_
                     (lambda (_sit261423_)
                       (if (let () (declare (not safe)) (null? _sit261423_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61170_))
                               (set! _sit61170_ _sit261423_)
                               (let _loop61425_ ((_t161427_ _sit61170_)
                                                 (_t261428_ _sit261423_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161427_ _sit261423_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261428_ _sit61170_))
                                         (set! _sit61170_ _sit261423_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161427_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261428_)))
                                             (let ((__tmp61481
                                                    (let ((__tmp61484
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61171_
                                                              _sit61170_)))
                                                          (__tmp61482
                                                           (let ((__tmp61483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61171_ _sit261423_))))
                     (declare (not safe))
                     (cons __tmp61483 '()))))
              (declare (not safe))
              (cons __tmp61484 __tmp61482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61172_
                                                'single-inheritance-incompatibility:
                                                __tmp61481))
                                             (let ((__tmp61480 (cdr _t161427_))
                                                   (__tmp61479
                                                    (cdr _t261428_)))
                                               (declare (not safe))
                                               (_loop61425_
                                                __tmp61480
                                                __tmp61479))))))))))
                    (_rpls61174_
                     (map (lambda (_pl61418_)
                            (let ((_g61485_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61163_
                                      _pl61418_
                                      '()))))
                              (begin
                                (let ((_g61486_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61485_)
                                             (##vector-length _g61485_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61486_ 2)))
                                      (error "Context expects 2 values"
                                             _g61486_)))
                                (let ((_tl61420_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61485_ 0)))
                                      (_rh61421_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61485_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61173_ _tl61420_))
                                    _rh61421_)))))
                          _pls61169_))
                    (_unsitr-rpl61175_
                     (lambda (_rpl61364_)
                       (let _u61366_ ((_pl-rhead61368_ _rpl61364_)
                                      (_pl-tail61369_ '())
                                      (_sit-rhead61370_ (reverse _sit61170_))
                                      (_sit-tail61371_ '()))
                         (let* ((_pl-rhead6137261381_ _pl-rhead61368_)
                                (_E6137561385_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6137261381_)))))
                           (let ((_K6137961415_ (lambda () _pl-tail61369_))
                                 (_K6137661399_
                                  (lambda (_plrh61389_ _c61390_)
                                    (if (member _c61390_
                                                _sit-tail61371_
                                                _eq61165_)
                                        (let ((__tmp61497
                                               (let ((__tmp61498
                                                      (reverse _pl-rhead61368_)))
                                                 (declare (not safe))
                                                 (_get-names61171_
                                                  __tmp61498)))
                                              (__tmp61496
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61171_
                                                  _pl-tail61369_)))
                                              (__tmp61494
                                               (let ((__tmp61495
                                                      (reverse _sit-rhead61370_)))
                                                 (declare (not safe))
                                                 (_get-names61171_
                                                  __tmp61495)))
                                              (__tmp61493
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61171_
                                                  _sit-tail61371_)))
                                              (__tmp61492
                                               (_get-name61167_ _c61390_)))
                                          (declare (not safe))
                                          (_err61172_
                                           'precedence-list-head:
                                           __tmp61497
                                           'precedence-list-tail:
                                           __tmp61496
                                           'single-inheritance-head:
                                           __tmp61494
                                           'single-inheritance-tail:
                                           __tmp61493
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61492))
                                        (let ((_g61487_
                                               (let ((__tmp61489
                                                      (lambda (_g6139161393_)
                                                        (_eq61165_
                                                         _c61390_
                                                         _g6139161393_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61489
                                                  _sit-rhead61370_
                                                  _sit-tail61371_))))
                                          (begin
                                            (let ((_g61488_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61487_)
                                                         (##vector-length
                                                          _g61487_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61488_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61488_)))
                                            (let ((_sit-rh261396_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61487_
                                                      0)))
                                                  (_sit-tl261397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61487_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261396_))
                                                  (let ((__tmp61491
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61366_
                                                     _plrh61389_
                                                     __tmp61491
                                                     '()
                                                     _sit-tl261397_))
                                                  (let ((__tmp61490
                                                         (cdr _sit-rh261396_)))
                                                    (declare (not safe))
                                                    (_u61366_
                                                     _plrh61389_
                                                     _pl-tail61369_
                                                     __tmp61490
                                                     _sit-tl261397_))))))))))
                             (let ((_try-match6137461411_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6137261381_))
                                          (let ((_tl6137861404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6137261381_)))
                                                (_hd6137761402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6137261381_))))
                                            (let ((_c61407_ _hd6137761402_)
                                                  (_plrh61409_ _tl6137861404_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6137661399_
                                                 _plrh61409_
                                                 _c61407_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6137561385_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6137261381_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6137961415_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6137461411_)))))))))
                    (_g61499_
                     (let ((_g61500_
                            (let ((__tmp61502 (reverse _supers61159_)))
                              (declare (not safe))
                              (append1! _rpls61174_ __tmp61502))))
                       #!void
                       _g61500_))
                    (_g61503_
                     (let ((_g61504_
                            (set! _pls61169_
                                  (map _unsitr-rpl61175_ _rpls61174_))))
                       #!void
                       _g61504_))
                    (_c3-select-next61176_
                     (lambda (_tails61314_)
                       (let ((_candidate?61320_
                              (lambda (_c61316_)
                                (let ((__tmp61506
                                       (lambda (_tail61318_)
                                         (let ((__tmp61507
                                                (member _c61316_
                                                        (cdr _tail61318_)
                                                        _eq61165_)))
                                           (declare (not safe))
                                           (not __tmp61507)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61506 _tails61314_)))))
                         (let _loop61322_ ((_ts61324_ _tails61314_))
                           (let* ((_ts6132561335_ _ts61324_)
                                  (_else6132761343_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61172_))))
                                  (_K6132961349_
                                   (lambda (_rts61346_ _c61347_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61320_ _c61347_))
                                         _c61347_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61322_ _rts61346_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6132561335_))
                                 (let ((_hd6133061352_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6132561335_)))
                                       (_tl6133161354_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6132561335_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6133061352_))
                                       (let* ((_hd6133261357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6133061352_)))
                                              (_c61360_ _hd6133261357_)
                                              (_rts61362_ _tl6133161354_))
                                         (declare (not safe))
                                         (_K6132961349_ _rts61362_ _c61360_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61172_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61172_))))))))
                    (_remove-next!61177_
                     (lambda (_next61259_ _tails61260_)
                       (let _loop61262_ ((_t61264_ _tails61260_))
                         (let* ((_t6126561276_ _t61264_)
                                (_E6126861280_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6126561276_)))))
                           (let ((_K6127461311_ (lambda () _tails61260_))
                                 (_K6126961288_
                                  (lambda (_more61284_ _tail61285_ _head61286_)
                                    (if (_eq61165_ _head61286_ _next61259_)
                                        (set-car! _t61264_ _tail61285_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61262_ _more61284_)))))
                             (let ((_try-match6126761307_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6126561276_))
                                          (let ((_tl6127161293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6126561276_)))
                                                (_hd6127061291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6126561276_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6127061291_))
                                                (let ((_tl6127361298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6127061291_)))
                                                      (_hd6127261296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6127061291_))))
                                                  (let ((_head61301_
                                                         _hd6127261296_)
                                                        (_tail61303_
                                                         _tl6127361298_)
                                                        (_more61305_
                                                         _tl6127161293_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6126961288_
                                                       _more61305_
                                                       _tail61303_
                                                       _head61301_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6126861280_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6126861280_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6126561276_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6127461311_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6126761307_)))))))))
                    (_precedence-list61178_
                     (let _c3loop61209_ ((_rhead61211_ _rhead61158_)
                                         (_tails61212_ _pls61169_))
                       (let* ((_tails61214_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61212_)))
                              (_tails6121561225_ _tails61214_)
                              (_else6121861236_
                               (lambda ()
                                 (let ((_next61233_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61176_
                                           _tails61214_))))
                                   (let ((__tmp61509
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61233_ _rhead61211_)))
                                         (__tmp61508
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61177_
                                             _next61233_
                                             _tails61214_))))
                                     (declare (not safe))
                                     (_c3loop61209_ __tmp61509 __tmp61508))))))
                         (let ((_K6122361256_
                                (lambda ()
                                  (append-reverse _rhead61211_ _sit61170_)))
                               (_K6122061242_
                                (lambda (_tail61240_)
                                  (append-reverse
                                   _rhead61211_
                                   (append _tail61240_ _sit61170_)))))
                           (let ((_try-match6121761252_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6121561225_))
                                        (let ((_tl6122261247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6121561225_)))
                                              (_hd6122161245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6121561225_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6122261247_))
                                              (let ((_tail61250_
                                                     _hd6122161245_))
                                                (declare (not safe))
                                                (_K6122061242_ _tail61250_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6121861236_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6121861236_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6121561225_))
                                 (let () (declare (not safe)) (_K6122361256_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6121761252_))))))))
                    (_super-struct61179_
                     (let* ((_sit6118061188_ _sit61170_)
                            (_else6118261196_ (lambda () '#f))
                            (_K6118461201_ (lambda (_s61199_) _s61199_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6118061188_))
                           (let* ((_hd6118561204_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6118061188_)))
                                  (_s61207_ _hd6118561204_))
                             (declare (not safe))
                             (_K6118461201_ _s61207_))
                           (let () (declare (not safe)) (_else6118261196_))))))
            (values _precedence-list61178_ _super-struct61179_)))))
    (define c4-linearize__@
      (lambda (_keys6114361440_ . _args61442_)
        (apply c4-linearize__%
               _keys6114361440_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6114361440_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6114361440_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6114361440_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6114361440_ 'get-name: absent-value))
               _args61442_)))
    (define c4-linearize
      (lambda _args6114861448_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6114861448_)))))
