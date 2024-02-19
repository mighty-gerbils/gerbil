(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708337963)
  (begin
    (define c4-linearize__%
      (lambda (_g82518_
               _get-precedence-list7819978205_
               _struct?7820078207_
               _eq7820178209_
               _get-name7820278211_
               _rhead78213_
               _supers78214_)
        (let* ((_get-precedence-list78216_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7819978205_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7819978205_))
               (_struct?78218_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7820078207_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7820078207_))
               (_eq78220_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7820178209_ absent-value))
                    eq?
                    _eq7820178209_))
               (_get-name78222_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7820278211_ absent-value))
                    identity
                    _get-name7820278211_)))
          (letrec* ((_pls78224_ (map _get-precedence-list78216_ _supers78214_))
                    (_sit78225_ '())
                    (_get-names78226_
                     (lambda (_lst78490_) (map _get-name78222_ _lst78490_)))
                    (_err78227_
                     (lambda _a78488_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82519 (reverse _rhead78213_)))
                                (declare (not safe))
                                (_get-names78226_ __tmp82519))
                              'precedence-lists:
                              (map _get-names78226_ _pls78224_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78226_ _sit78225_))
                              _a78488_)))
                    (_merge-sit!78228_
                     (lambda (_sit278478_)
                       (if (let () (declare (not safe)) (null? _sit278478_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78225_))
                               (set! _sit78225_ _sit278478_)
                               (let _loop78480_ ((_t178482_ _sit78225_)
                                                 (_t278483_ _sit278478_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178482_ _sit278478_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278483_ _sit78225_))
                                         (set! _sit78225_ _sit278478_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178482_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278483_)))
                                             (let ((__tmp82522
                                                    (let ((__tmp82525
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78226_
                                                              _sit78225_)))
                                                          (__tmp82523
                                                           (let ((__tmp82524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78226_ _sit278478_))))
                     (declare (not safe))
                     (cons __tmp82524 '()))))
              (declare (not safe))
              (cons __tmp82525 __tmp82523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78227_
                                                'single-inheritance-incompatibility:
                                                __tmp82522))
                                             (let ((__tmp82521 (cdr _t178482_))
                                                   (__tmp82520
                                                    (cdr _t278483_)))
                                               (declare (not safe))
                                               (_loop78480_
                                                __tmp82521
                                                __tmp82520))))))))))
                    (_rpls78229_
                     (map (lambda (_pl78473_)
                            (let ((_g82526_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78218_
                                      _pl78473_
                                      '()))))
                              (begin
                                (let ((_g82527_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82526_)
                                             (##vector-length _g82526_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g82527_ 2)))
                                      (error "Context expects 2 values"
                                             _g82527_)))
                                (let ((_tl78475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82526_ 0)))
                                      (_rh78476_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82526_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78228_ _tl78475_))
                                    _rh78476_)))))
                          _pls78224_))
                    (_unsitr-rpl78230_
                     (lambda (_rpl78419_)
                       (let _u78421_ ((_pl-rhead78423_ _rpl78419_)
                                      (_pl-tail78424_ '())
                                      (_sit-rhead78425_ (reverse _sit78225_))
                                      (_sit-tail78426_ '()))
                         (let* ((_pl-rhead7842778436_ _pl-rhead78423_)
                                (_E7843078440_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7842778436_))))
                           (let ((_K7843478470_ (lambda () _pl-tail78424_))
                                 (_K7843178454_
                                  (lambda (_plrh78444_ _c78445_)
                                    (if (member _c78445_
                                                _sit-tail78426_
                                                _eq78220_)
                                        (let ((__tmp82538
                                               (let ((__tmp82539
                                                      (reverse _pl-rhead78423_)))
                                                 (declare (not safe))
                                                 (_get-names78226_
                                                  __tmp82539)))
                                              (__tmp82537
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78226_
                                                  _pl-tail78424_)))
                                              (__tmp82535
                                               (let ((__tmp82536
                                                      (reverse _sit-rhead78425_)))
                                                 (declare (not safe))
                                                 (_get-names78226_
                                                  __tmp82536)))
                                              (__tmp82534
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78226_
                                                  _sit-tail78426_)))
                                              (__tmp82533
                                               (_get-name78222_ _c78445_)))
                                          (declare (not safe))
                                          (_err78227_
                                           'precedence-list-head:
                                           __tmp82538
                                           'precedence-list-tail:
                                           __tmp82537
                                           'single-inheritance-head:
                                           __tmp82535
                                           'single-inheritance-tail:
                                           __tmp82534
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp82533))
                                        (let ((_g82528_
                                               (let ((__tmp82530
                                                      (lambda (_g7844678448_)
                                                        (_eq78220_
                                                         _c78445_
                                                         _g7844678448_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp82530
                                                  _sit-rhead78425_
                                                  _sit-tail78426_))))
                                          (begin
                                            (let ((_g82529_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g82528_)
                                                         (##vector-length
                                                          _g82528_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g82529_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g82529_)))
                                            (let ((_sit-rh278451_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82528_
                                                      0)))
                                                  (_sit-tl278452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82528_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278451_))
                                                  (let ((__tmp82532
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78421_
                                                     _plrh78444_
                                                     __tmp82532
                                                     '()
                                                     _sit-tl278452_))
                                                  (let ((__tmp82531
                                                         (cdr _sit-rh278451_)))
                                                    (declare (not safe))
                                                    (_u78421_
                                                     _plrh78444_
                                                     _pl-tail78424_
                                                     __tmp82531
                                                     _sit-tl278452_))))))))))
                             (let ((_try-match7842978466_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7842778436_))
                                          (let ((_tl7843378459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7842778436_)))
                                                (_hd7843278457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7842778436_))))
                                            (let ((_c78462_ _hd7843278457_)
                                                  (_plrh78464_ _tl7843378459_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7843178454_
                                                 _plrh78464_
                                                 _c78462_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7843078440_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7842778436_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7843478470_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7842978466_)))))))))
                    (_g82540_
                     (let ((_g82541_
                            (let ((__tmp82543 (reverse _supers78214_)))
                              (declare (not safe))
                              (append1! _rpls78229_ __tmp82543))))
                       #!void
                       _g82541_))
                    (_g82544_
                     (let ((_g82545_
                            (set! _pls78224_
                                  (map _unsitr-rpl78230_ _rpls78229_))))
                       #!void
                       _g82545_))
                    (_c3-select-next78231_
                     (lambda (_tails78369_)
                       (let ((_candidate?78375_
                              (lambda (_c78371_)
                                (let ((__tmp82547
                                       (lambda (_tail78373_)
                                         (let ((__tmp82548
                                                (member _c78371_
                                                        (cdr _tail78373_)
                                                        _eq78220_)))
                                           (declare (not safe))
                                           (not __tmp82548)))))
                                  (declare (not safe))
                                  (andmap1 __tmp82547 _tails78369_)))))
                         (let _loop78377_ ((_ts78379_ _tails78369_))
                           (let* ((_ts7838078390_ _ts78379_)
                                  (_else7838278398_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78227_))))
                                  (_K7838478404_
                                   (lambda (_rts78401_ _c78402_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78375_ _c78402_))
                                         _c78402_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78377_ _rts78401_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7838078390_))
                                 (let ((_hd7838578407_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7838078390_)))
                                       (_tl7838678409_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7838078390_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7838578407_))
                                       (let* ((_hd7838778412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7838578407_)))
                                              (_c78415_ _hd7838778412_)
                                              (_rts78417_ _tl7838678409_))
                                         (declare (not safe))
                                         (_K7838478404_ _rts78417_ _c78415_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78227_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78227_))))))))
                    (_remove-next!78232_
                     (lambda (_next78314_ _tails78315_)
                       (let _loop78317_ ((_t78319_ _tails78315_))
                         (let* ((_t7832078331_ _t78319_)
                                (_E7832378335_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7832078331_))))
                           (let ((_K7832978366_ (lambda () _tails78315_))
                                 (_K7832478343_
                                  (lambda (_more78339_ _tail78340_ _head78341_)
                                    (if (_eq78220_ _head78341_ _next78314_)
                                        (set-car! _t78319_ _tail78340_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78317_ _more78339_)))))
                             (let ((_try-match7832278362_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7832078331_))
                                          (let ((_tl7832678348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7832078331_)))
                                                (_hd7832578346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7832078331_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7832578346_))
                                                (let ((_tl7832878353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7832578346_)))
                                                      (_hd7832778351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7832578346_))))
                                                  (let ((_head78356_
                                                         _hd7832778351_)
                                                        (_tail78358_
                                                         _tl7832878353_)
                                                        (_more78360_
                                                         _tl7832678348_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7832478343_
                                                       _more78360_
                                                       _tail78358_
                                                       _head78356_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7832378335_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7832378335_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7832078331_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7832978366_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7832278362_)))))))))
                    (_precedence-list78233_
                     (let _c3loop78264_ ((_rhead78266_ _rhead78213_)
                                         (_tails78267_ _pls78224_))
                       (let* ((_tails78269_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78267_)))
                              (_tails7827078280_ _tails78269_)
                              (_else7827378291_
                               (lambda ()
                                 (let ((_next78288_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78231_
                                           _tails78269_))))
                                   (let ((__tmp82550
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78288_ _rhead78266_)))
                                         (__tmp82549
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78232_
                                             _next78288_
                                             _tails78269_))))
                                     (declare (not safe))
                                     (_c3loop78264_ __tmp82550 __tmp82549))))))
                         (let ((_K7827878311_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78266_ _sit78225_))))
                               (_K7827578297_
                                (lambda (_tail78295_)
                                  (let ((__tmp82551
                                         (append _tail78295_ _sit78225_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78266_
                                     __tmp82551)))))
                           (let ((_try-match7827278307_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7827078280_))
                                        (let ((_tl7827778302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7827078280_)))
                                              (_hd7827678300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7827078280_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7827778302_))
                                              (let ((_tail78305_
                                                     _hd7827678300_))
                                                (declare (not safe))
                                                (_K7827578297_ _tail78305_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7827378291_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7827378291_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7827078280_))
                                 (let () (declare (not safe)) (_K7827878311_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7827278307_))))))))
                    (_super-struct78234_
                     (let* ((_sit7823578243_ _sit78225_)
                            (_else7823778251_ (lambda () '#f))
                            (_K7823978256_ (lambda (_s78254_) _s78254_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7823578243_))
                           (let* ((_hd7824078259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7823578243_)))
                                  (_s78262_ _hd7824078259_))
                             (declare (not safe))
                             (_K7823978256_ _s78262_))
                           (let () (declare (not safe)) (_else7823778251_))))))
            (values _precedence-list78233_ _super-struct78234_)))))
    (define c4-linearize__@
      (lambda (_keys7819878495_ . _args78497_)
        (apply c4-linearize__%
               _keys7819878495_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7819878495_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7819878495_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7819878495_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7819878495_ 'get-name: absent-value))
               _args78497_)))
    (define c4-linearize
      (lambda _args7820378503_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7820378503_)))))
