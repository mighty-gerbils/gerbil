(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708418154)
  (begin
    (define c4-linearize__%
      (lambda (_g61483_
               _get-precedence-list6115061156_
               _struct?6115161158_
               _eq6115261160_
               _get-name6115361162_
               _rhead61164_
               _supers61165_)
        (let* ((_get-precedence-list61167_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6115061156_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6115061156_))
               (_struct?61169_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6115161158_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6115161158_))
               (_eq61171_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6115261160_ absent-value))
                    eq?
                    _eq6115261160_))
               (_get-name61173_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6115361162_ absent-value))
                    identity
                    _get-name6115361162_)))
          (letrec* ((_pls61175_ (map _get-precedence-list61167_ _supers61165_))
                    (_sit61176_ '())
                    (_get-names61177_
                     (lambda (_lst61441_) (map _get-name61173_ _lst61441_)))
                    (_err61178_
                     (lambda _a61439_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61484 (reverse _rhead61164_)))
                                (declare (not safe))
                                (_get-names61177_ __tmp61484))
                              'precedence-lists:
                              (map _get-names61177_ _pls61175_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61177_ _sit61176_))
                              _a61439_)))
                    (_merge-sit!61179_
                     (lambda (_sit261429_)
                       (if (let () (declare (not safe)) (null? _sit261429_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61176_))
                               (set! _sit61176_ _sit261429_)
                               (let _loop61431_ ((_t161433_ _sit61176_)
                                                 (_t261434_ _sit261429_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161433_ _sit261429_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261434_ _sit61176_))
                                         (set! _sit61176_ _sit261429_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161433_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261434_)))
                                             (let ((__tmp61487
                                                    (let ((__tmp61490
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61177_
                                                              _sit61176_)))
                                                          (__tmp61488
                                                           (let ((__tmp61489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61177_ _sit261429_))))
                     (declare (not safe))
                     (cons __tmp61489 '()))))
              (declare (not safe))
              (cons __tmp61490 __tmp61488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61178_
                                                'single-inheritance-incompatibility:
                                                __tmp61487))
                                             (let ((__tmp61486 (cdr _t161433_))
                                                   (__tmp61485
                                                    (cdr _t261434_)))
                                               (declare (not safe))
                                               (_loop61431_
                                                __tmp61486
                                                __tmp61485))))))))))
                    (_rpls61180_
                     (map (lambda (_pl61424_)
                            (let ((_g61491_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61169_
                                      _pl61424_
                                      '()))))
                              (begin
                                (let ((_g61492_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61491_)
                                             (##vector-length _g61491_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61492_ 2)))
                                      (error "Context expects 2 values"
                                             _g61492_)))
                                (let ((_tl61426_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61491_ 0)))
                                      (_rh61427_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61491_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61179_ _tl61426_))
                                    _rh61427_)))))
                          _pls61175_))
                    (_unsitr-rpl61181_
                     (lambda (_rpl61370_)
                       (let _u61372_ ((_pl-rhead61374_ _rpl61370_)
                                      (_pl-tail61375_ '())
                                      (_sit-rhead61376_ (reverse _sit61176_))
                                      (_sit-tail61377_ '()))
                         (let* ((_pl-rhead6137861387_ _pl-rhead61374_)
                                (_E6138161391_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6137861387_)))))
                           (let ((_K6138561421_ (lambda () _pl-tail61375_))
                                 (_K6138261405_
                                  (lambda (_plrh61395_ _c61396_)
                                    (if (member _c61396_
                                                _sit-tail61377_
                                                _eq61171_)
                                        (let ((__tmp61503
                                               (let ((__tmp61504
                                                      (reverse _pl-rhead61374_)))
                                                 (declare (not safe))
                                                 (_get-names61177_
                                                  __tmp61504)))
                                              (__tmp61502
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61177_
                                                  _pl-tail61375_)))
                                              (__tmp61500
                                               (let ((__tmp61501
                                                      (reverse _sit-rhead61376_)))
                                                 (declare (not safe))
                                                 (_get-names61177_
                                                  __tmp61501)))
                                              (__tmp61499
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61177_
                                                  _sit-tail61377_)))
                                              (__tmp61498
                                               (_get-name61173_ _c61396_)))
                                          (declare (not safe))
                                          (_err61178_
                                           'precedence-list-head:
                                           __tmp61503
                                           'precedence-list-tail:
                                           __tmp61502
                                           'single-inheritance-head:
                                           __tmp61500
                                           'single-inheritance-tail:
                                           __tmp61499
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61498))
                                        (let ((_g61493_
                                               (let ((__tmp61495
                                                      (lambda (_g6139761399_)
                                                        (_eq61171_
                                                         _c61396_
                                                         _g6139761399_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61495
                                                  _sit-rhead61376_
                                                  _sit-tail61377_))))
                                          (begin
                                            (let ((_g61494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61493_)
                                                         (##vector-length
                                                          _g61493_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61494_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61494_)))
                                            (let ((_sit-rh261402_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61493_
                                                      0)))
                                                  (_sit-tl261403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61493_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261402_))
                                                  (let ((__tmp61497
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61372_
                                                     _plrh61395_
                                                     __tmp61497
                                                     '()
                                                     _sit-tl261403_))
                                                  (let ((__tmp61496
                                                         (cdr _sit-rh261402_)))
                                                    (declare (not safe))
                                                    (_u61372_
                                                     _plrh61395_
                                                     _pl-tail61375_
                                                     __tmp61496
                                                     _sit-tl261403_))))))))))
                             (let ((_try-match6138061417_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6137861387_))
                                          (let ((_tl6138461410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6137861387_)))
                                                (_hd6138361408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6137861387_))))
                                            (let ((_c61413_ _hd6138361408_)
                                                  (_plrh61415_ _tl6138461410_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6138261405_
                                                 _plrh61415_
                                                 _c61413_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6138161391_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6137861387_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6138561421_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6138061417_)))))))))
                    (_g61505_
                     (let ((_g61506_
                            (let ((__tmp61508 (reverse _supers61165_)))
                              (declare (not safe))
                              (append1! _rpls61180_ __tmp61508))))
                       #!void
                       _g61506_))
                    (_g61509_
                     (let ((_g61510_
                            (set! _pls61175_
                                  (map _unsitr-rpl61181_ _rpls61180_))))
                       #!void
                       _g61510_))
                    (_c3-select-next61182_
                     (lambda (_tails61320_)
                       (let ((_candidate?61326_
                              (lambda (_c61322_)
                                (let ((__tmp61512
                                       (lambda (_tail61324_)
                                         (let ((__tmp61513
                                                (member _c61322_
                                                        (cdr _tail61324_)
                                                        _eq61171_)))
                                           (declare (not safe))
                                           (not __tmp61513)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61512 _tails61320_)))))
                         (let _loop61328_ ((_ts61330_ _tails61320_))
                           (let* ((_ts6133161341_ _ts61330_)
                                  (_else6133361349_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61178_))))
                                  (_K6133561355_
                                   (lambda (_rts61352_ _c61353_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61326_ _c61353_))
                                         _c61353_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61328_ _rts61352_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6133161341_))
                                 (let ((_hd6133661358_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6133161341_)))
                                       (_tl6133761360_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6133161341_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6133661358_))
                                       (let* ((_hd6133861363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6133661358_)))
                                              (_c61366_ _hd6133861363_)
                                              (_rts61368_ _tl6133761360_))
                                         (declare (not safe))
                                         (_K6133561355_ _rts61368_ _c61366_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61178_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61178_))))))))
                    (_remove-next!61183_
                     (lambda (_next61265_ _tails61266_)
                       (let _loop61268_ ((_t61270_ _tails61266_))
                         (let* ((_t6127161282_ _t61270_)
                                (_E6127461286_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6127161282_)))))
                           (let ((_K6128061317_ (lambda () _tails61266_))
                                 (_K6127561294_
                                  (lambda (_more61290_ _tail61291_ _head61292_)
                                    (if (_eq61171_ _head61292_ _next61265_)
                                        (set-car! _t61270_ _tail61291_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61268_ _more61290_)))))
                             (let ((_try-match6127361313_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6127161282_))
                                          (let ((_tl6127761299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6127161282_)))
                                                (_hd6127661297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6127161282_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6127661297_))
                                                (let ((_tl6127961304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6127661297_)))
                                                      (_hd6127861302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6127661297_))))
                                                  (let ((_head61307_
                                                         _hd6127861302_)
                                                        (_tail61309_
                                                         _tl6127961304_)
                                                        (_more61311_
                                                         _tl6127761299_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6127561294_
                                                       _more61311_
                                                       _tail61309_
                                                       _head61307_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6127461286_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6127461286_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6127161282_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6128061317_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6127361313_)))))))))
                    (_precedence-list61184_
                     (let _c3loop61215_ ((_rhead61217_ _rhead61164_)
                                         (_tails61218_ _pls61175_))
                       (let* ((_tails61220_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61218_)))
                              (_tails6122161231_ _tails61220_)
                              (_else6122461242_
                               (lambda ()
                                 (let ((_next61239_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61182_
                                           _tails61220_))))
                                   (let ((__tmp61515
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61239_ _rhead61217_)))
                                         (__tmp61514
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61183_
                                             _next61239_
                                             _tails61220_))))
                                     (declare (not safe))
                                     (_c3loop61215_ __tmp61515 __tmp61514))))))
                         (let ((_K6122961262_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61217_ _sit61176_))))
                               (_K6122661248_
                                (lambda (_tail61246_)
                                  (let ((__tmp61516
                                         (append _tail61246_ _sit61176_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61217_
                                     __tmp61516)))))
                           (let ((_try-match6122361258_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6122161231_))
                                        (let ((_tl6122861253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6122161231_)))
                                              (_hd6122761251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6122161231_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6122861253_))
                                              (let ((_tail61256_
                                                     _hd6122761251_))
                                                (declare (not safe))
                                                (_K6122661248_ _tail61256_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6122461242_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6122461242_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6122161231_))
                                 (let () (declare (not safe)) (_K6122961262_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6122361258_))))))))
                    (_super-struct61185_
                     (let* ((_sit6118661194_ _sit61176_)
                            (_else6118861202_ (lambda () '#f))
                            (_K6119061207_ (lambda (_s61205_) _s61205_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6118661194_))
                           (let* ((_hd6119161210_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6118661194_)))
                                  (_s61213_ _hd6119161210_))
                             (declare (not safe))
                             (_K6119061207_ _s61213_))
                           (let () (declare (not safe)) (_else6118861202_))))))
            (values _precedence-list61184_ _super-struct61185_)))))
    (define c4-linearize__@
      (lambda (_keys6114961446_ . _args61448_)
        (apply c4-linearize__%
               _keys6114961446_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6114961446_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6114961446_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6114961446_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6114961446_ 'get-name: absent-value))
               _args61448_)))
    (define c4-linearize
      (lambda _args6115461454_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6115461454_)))))
