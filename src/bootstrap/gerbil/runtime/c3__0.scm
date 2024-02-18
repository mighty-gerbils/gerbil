(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708271165)
  (begin
    (define c4-linearize__%
      (lambda (_g83345_
               _get-precedence-list7894578951_
               _struct?7894678953_
               _eq7894778955_
               _get-name7894878957_
               _rhead78959_
               _supers78960_)
        (let* ((_get-precedence-list78962_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7894578951_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7894578951_))
               (_struct?78964_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7894678953_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7894678953_))
               (_eq78966_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7894778955_ absent-value))
                    eq?
                    _eq7894778955_))
               (_get-name78968_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7894878957_ absent-value))
                    identity
                    _get-name7894878957_)))
          (letrec* ((_pls78970_ (map _get-precedence-list78962_ _supers78960_))
                    (_sit78971_ '())
                    (_get-names78972_
                     (lambda (_lst79236_) (map _get-name78968_ _lst79236_)))
                    (_err78973_
                     (lambda _a79234_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83346 (reverse _rhead78959_)))
                                (declare (not safe))
                                (_get-names78972_ __tmp83346))
                              'precedence-lists:
                              (map _get-names78972_ _pls78970_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78972_ _sit78971_))
                              _a79234_)))
                    (_merge-sit!78974_
                     (lambda (_sit279224_)
                       (if (let () (declare (not safe)) (null? _sit279224_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78971_))
                               (set! _sit78971_ _sit279224_)
                               (let _loop79226_ ((_t179228_ _sit78971_)
                                                 (_t279229_ _sit279224_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t179228_ _sit279224_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t279229_ _sit78971_))
                                         (set! _sit78971_ _sit279224_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t179228_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t279229_)))
                                             (let ((__tmp83347
                                                    (let ((__tmp83350
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78972_
                                                              _sit78971_)))
                                                          (__tmp83348
                                                           (let ((__tmp83349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78972_ _sit279224_))))
                     (declare (not safe))
                     (cons __tmp83349 '()))))
              (declare (not safe))
              (cons __tmp83350 __tmp83348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78973_
                                                'single-inheritance-incompatibility:
                                                __tmp83347))
                                             (let ((__tmp83352 (cdr _t179228_))
                                                   (__tmp83351
                                                    (cdr _t279229_)))
                                               (declare (not safe))
                                               (_loop79226_
                                                __tmp83352
                                                __tmp83351))))))))))
                    (_rpls78975_
                     (map (lambda (_pl79219_)
                            (let ((_g83353_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78964_
                                      _pl79219_
                                      '()))))
                              (begin
                                (let ((_g83354_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83353_)
                                             (##vector-length _g83353_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83354_ 2)))
                                      (error "Context expects 2 values"
                                             _g83354_)))
                                (let ((_tl79221_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83353_ 0)))
                                      (_rh79222_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83353_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78974_ _tl79221_))
                                    _rh79222_)))))
                          _pls78970_))
                    (_unsitr-rpl78976_
                     (lambda (_rpl79165_)
                       (let _u79167_ ((_pl-rhead79169_ _rpl79165_)
                                      (_pl-tail79170_ '())
                                      (_sit-rhead79171_ (reverse _sit78971_))
                                      (_sit-tail79172_ '()))
                         (let* ((_pl-rhead7917379182_ _pl-rhead79169_)
                                (_E7917679186_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7917379182_))))
                           (let ((_K7918079216_ (lambda () _pl-tail79170_))
                                 (_K7917779200_
                                  (lambda (_plrh79190_ _c79191_)
                                    (if (member _c79191_
                                                _sit-tail79172_
                                                _eq78966_)
                                        (let ((__tmp83360
                                               (let ((__tmp83361
                                                      (reverse _pl-rhead79169_)))
                                                 (declare (not safe))
                                                 (_get-names78972_
                                                  __tmp83361)))
                                              (__tmp83359
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78972_
                                                  _pl-tail79170_)))
                                              (__tmp83357
                                               (let ((__tmp83358
                                                      (reverse _sit-rhead79171_)))
                                                 (declare (not safe))
                                                 (_get-names78972_
                                                  __tmp83358)))
                                              (__tmp83356
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78972_
                                                  _sit-tail79172_)))
                                              (__tmp83355
                                               (_get-name78968_ _c79191_)))
                                          (declare (not safe))
                                          (_err78973_
                                           'precedence-list-head:
                                           __tmp83360
                                           'precedence-list-tail:
                                           __tmp83359
                                           'single-inheritance-head:
                                           __tmp83357
                                           'single-inheritance-tail:
                                           __tmp83356
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83355))
                                        (let ((_g83362_
                                               (let ((__tmp83364
                                                      (lambda (_g7919279194_)
                                                        (_eq78966_
                                                         _c79191_
                                                         _g7919279194_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83364
                                                  _sit-rhead79171_
                                                  _sit-tail79172_))))
                                          (begin
                                            (let ((_g83363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83362_)
                                                         (##vector-length
                                                          _g83362_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83363_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83363_)))
                                            (let ((_sit-rh279197_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83362_
                                                      0)))
                                                  (_sit-tl279198_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83362_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh279197_))
                                                  (let ((__tmp83365
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c79191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail79170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u79167_
                                                     _plrh79190_
                                                     __tmp83365
                                                     '()
                                                     _sit-tl279198_))
                                                  (let ((__tmp83366
                                                         (cdr _sit-rh279197_)))
                                                    (declare (not safe))
                                                    (_u79167_
                                                     _plrh79190_
                                                     _pl-tail79170_
                                                     __tmp83366
                                                     _sit-tl279198_))))))))))
                             (let ((_try-match7917579212_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7917379182_))
                                          (let ((_tl7917979205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7917379182_)))
                                                (_hd7917879203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7917379182_))))
                                            (let ((_c79208_ _hd7917879203_)
                                                  (_plrh79210_ _tl7917979205_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7917779200_
                                                 _plrh79210_
                                                 _c79208_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7917679186_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7917379182_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7918079216_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7917579212_)))))))))
                    (_g83367_
                     (let ((_g83368_
                            (let ((__tmp83370 (reverse _supers78960_)))
                              (declare (not safe))
                              (append1! _rpls78975_ __tmp83370))))
                       #!void
                       _g83368_))
                    (_g83371_
                     (let ((_g83372_
                            (set! _pls78970_
                                  (map _unsitr-rpl78976_ _rpls78975_))))
                       #!void
                       _g83372_))
                    (_c3-select-next78977_
                     (lambda (_tails79115_)
                       (let ((_candidate?79121_
                              (lambda (_c79117_)
                                (let ((__tmp83374
                                       (lambda (_tail79119_)
                                         (let ((__tmp83375
                                                (member _c79117_
                                                        (cdr _tail79119_)
                                                        _eq78966_)))
                                           (declare (not safe))
                                           (not __tmp83375)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83374 _tails79115_)))))
                         (let _loop79123_ ((_ts79125_ _tails79115_))
                           (let* ((_ts7912679136_ _ts79125_)
                                  (_else7912879144_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78973_))))
                                  (_K7913079150_
                                   (lambda (_rts79147_ _c79148_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?79121_ _c79148_))
                                         _c79148_
                                         (let ()
                                           (declare (not safe))
                                           (_loop79123_ _rts79147_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7912679136_))
                                 (let ((_hd7913179153_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7912679136_)))
                                       (_tl7913279155_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7912679136_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7913179153_))
                                       (let* ((_hd7913379158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7913179153_)))
                                              (_c79161_ _hd7913379158_)
                                              (_rts79163_ _tl7913279155_))
                                         (declare (not safe))
                                         (_K7913079150_ _rts79163_ _c79161_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78973_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78973_))))))))
                    (_remove-next!78978_
                     (lambda (_next79060_ _tails79061_)
                       (let _loop79063_ ((_t79065_ _tails79061_))
                         (let* ((_t7906679077_ _t79065_)
                                (_E7906979081_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7906679077_))))
                           (let ((_K7907579112_ (lambda () _tails79061_))
                                 (_K7907079089_
                                  (lambda (_more79085_ _tail79086_ _head79087_)
                                    (if (_eq78966_ _head79087_ _next79060_)
                                        (set-car! _t79065_ _tail79086_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop79063_ _more79085_)))))
                             (let ((_try-match7906879108_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7906679077_))
                                          (let ((_tl7907279094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7906679077_)))
                                                (_hd7907179092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7906679077_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7907179092_))
                                                (let ((_tl7907479099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7907179092_)))
                                                      (_hd7907379097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7907179092_))))
                                                  (let ((_head79102_
                                                         _hd7907379097_)
                                                        (_tail79104_
                                                         _tl7907479099_)
                                                        (_more79106_
                                                         _tl7907279094_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7907079089_
                                                       _more79106_
                                                       _tail79104_
                                                       _head79102_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7906979081_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7906979081_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7906679077_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7907579112_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7906879108_)))))))))
                    (_precedence-list78979_
                     (let _c3loop79010_ ((_rhead79012_ _rhead78959_)
                                         (_tails79013_ _pls78970_))
                       (let* ((_tails79015_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails79013_)))
                              (_tails7901679026_ _tails79015_)
                              (_else7901979037_
                               (lambda ()
                                 (let ((_next79034_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78977_
                                           _tails79015_))))
                                   (let ((__tmp83377
                                          (let ()
                                            (declare (not safe))
                                            (cons _next79034_ _rhead79012_)))
                                         (__tmp83376
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78978_
                                             _next79034_
                                             _tails79015_))))
                                     (declare (not safe))
                                     (_c3loop79010_ __tmp83377 __tmp83376))))))
                         (let ((_K7902479057_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead79012_ _sit78971_))))
                               (_K7902179043_
                                (lambda (_tail79041_)
                                  (let ((__tmp83378
                                         (append _tail79041_ _sit78971_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead79012_
                                     __tmp83378)))))
                           (let ((_try-match7901879053_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7901679026_))
                                        (let ((_tl7902379048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7901679026_)))
                                              (_hd7902279046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7901679026_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7902379048_))
                                              (let ((_tail79051_
                                                     _hd7902279046_))
                                                (declare (not safe))
                                                (_K7902179043_ _tail79051_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7901979037_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7901979037_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7901679026_))
                                 (let () (declare (not safe)) (_K7902479057_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7901879053_))))))))
                    (_super-struct78980_
                     (let* ((_sit7898178989_ _sit78971_)
                            (_else7898378997_ (lambda () '#f))
                            (_K7898579002_ (lambda (_s79000_) _s79000_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7898178989_))
                           (let* ((_hd7898679005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7898178989_)))
                                  (_s79008_ _hd7898679005_))
                             (declare (not safe))
                             (_K7898579002_ _s79008_))
                           (let () (declare (not safe)) (_else7898378997_))))))
            (values _precedence-list78979_ _super-struct78980_)))))
    (define c4-linearize__@
      (lambda (_keys7894479241_ . _args79243_)
        (apply c4-linearize__%
               _keys7894479241_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7894479241_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894479241_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894479241_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894479241_ 'get-name: absent-value))
               _args79243_)))
    (define c4-linearize
      (lambda _args7894979249_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7894979249_)))))
