(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708210939)
  (begin
    (define c4-linearize__%
      (lambda (_g82442_
               _get-precedence-list7804278048_
               _struct?7804378050_
               _eq7804478052_
               _get-name7804578054_
               _rhead78056_
               _supers78057_)
        (let* ((_get-precedence-list78059_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7804278048_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7804278048_))
               (_struct?78061_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7804378050_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7804378050_))
               (_eq78063_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7804478052_ absent-value))
                    eq?
                    _eq7804478052_))
               (_get-name78065_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7804578054_ absent-value))
                    identity
                    _get-name7804578054_)))
          (letrec* ((_pls78067_ (map _get-precedence-list78059_ _supers78057_))
                    (_sit78068_ '())
                    (_get-names78069_
                     (lambda (_lst78333_) (map _get-name78065_ _lst78333_)))
                    (_err78070_
                     (lambda _a78331_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82443 (reverse _rhead78056_)))
                                (declare (not safe))
                                (_get-names78069_ __tmp82443))
                              'precedence-lists:
                              (map _get-names78069_ _pls78067_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78069_ _sit78068_))
                              _a78331_)))
                    (_merge-sit!78071_
                     (lambda (_sit278321_)
                       (if (let () (declare (not safe)) (null? _sit278321_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78068_))
                               (set! _sit78068_ _sit278321_)
                               (let _loop78323_ ((_t178325_ _sit78068_)
                                                 (_t278326_ _sit278321_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178325_ _sit278321_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278326_ _sit78068_))
                                         (set! _sit78068_ _sit278321_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178325_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278326_)))
                                             (let ((__tmp82446
                                                    (let ((__tmp82449
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78069_
                                                              _sit78068_)))
                                                          (__tmp82447
                                                           (let ((__tmp82448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78069_ _sit278321_))))
                     (declare (not safe))
                     (cons __tmp82448 '()))))
              (declare (not safe))
              (cons __tmp82449 __tmp82447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78070_
                                                'single-inheritance-incompatibility:
                                                __tmp82446))
                                             (let ((__tmp82445 (cdr _t178325_))
                                                   (__tmp82444
                                                    (cdr _t278326_)))
                                               (declare (not safe))
                                               (_loop78323_
                                                __tmp82445
                                                __tmp82444))))))))))
                    (_rpls78072_
                     (map (lambda (_pl78316_)
                            (let ((_g82450_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78061_
                                      _pl78316_
                                      '()))))
                              (begin
                                (let ((_g82451_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82450_)
                                             (##vector-length _g82450_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g82451_ 2)))
                                      (error "Context expects 2 values"
                                             _g82451_)))
                                (let ((_tl78318_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82450_ 0)))
                                      (_rh78319_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82450_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78071_ _tl78318_))
                                    _rh78319_)))))
                          _pls78067_))
                    (_unsitr-rpl78073_
                     (lambda (_rpl78262_)
                       (let _u78264_ ((_pl-rhead78266_ _rpl78262_)
                                      (_pl-tail78267_ '())
                                      (_sit-rhead78268_ (reverse _sit78068_))
                                      (_sit-tail78269_ '()))
                         (let* ((_pl-rhead7827078279_ _pl-rhead78266_)
                                (_E7827378283_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7827078279_))))
                           (let ((_K7827778313_ (lambda () _pl-tail78267_))
                                 (_K7827478297_
                                  (lambda (_plrh78287_ _c78288_)
                                    (if (member _c78288_
                                                _sit-tail78269_
                                                _eq78063_)
                                        (let ((__tmp82462
                                               (let ((__tmp82463
                                                      (reverse _pl-rhead78266_)))
                                                 (declare (not safe))
                                                 (_get-names78069_
                                                  __tmp82463)))
                                              (__tmp82461
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78069_
                                                  _pl-tail78267_)))
                                              (__tmp82459
                                               (let ((__tmp82460
                                                      (reverse _sit-rhead78268_)))
                                                 (declare (not safe))
                                                 (_get-names78069_
                                                  __tmp82460)))
                                              (__tmp82458
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78069_
                                                  _sit-tail78269_)))
                                              (__tmp82457
                                               (_get-name78065_ _c78288_)))
                                          (declare (not safe))
                                          (_err78070_
                                           'precedence-list-head:
                                           __tmp82462
                                           'precedence-list-tail:
                                           __tmp82461
                                           'single-inheritance-head:
                                           __tmp82459
                                           'single-inheritance-tail:
                                           __tmp82458
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp82457))
                                        (let ((_g82452_
                                               (let ((__tmp82454
                                                      (lambda (_g7828978291_)
                                                        (_eq78063_
                                                         _c78288_
                                                         _g7828978291_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp82454
                                                  _sit-rhead78268_
                                                  _sit-tail78269_))))
                                          (begin
                                            (let ((_g82453_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g82452_)
                                                         (##vector-length
                                                          _g82452_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g82453_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g82453_)))
                                            (let ((_sit-rh278294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82452_
                                                      0)))
                                                  (_sit-tl278295_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82452_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278294_))
                                                  (let ((__tmp82456
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78264_
                                                     _plrh78287_
                                                     __tmp82456
                                                     '()
                                                     _sit-tl278295_))
                                                  (let ((__tmp82455
                                                         (cdr _sit-rh278294_)))
                                                    (declare (not safe))
                                                    (_u78264_
                                                     _plrh78287_
                                                     _pl-tail78267_
                                                     __tmp82455
                                                     _sit-tl278295_))))))))))
                             (let ((_try-match7827278309_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7827078279_))
                                          (let ((_tl7827678302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7827078279_)))
                                                (_hd7827578300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7827078279_))))
                                            (let ((_c78305_ _hd7827578300_)
                                                  (_plrh78307_ _tl7827678302_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7827478297_
                                                 _plrh78307_
                                                 _c78305_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7827378283_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7827078279_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7827778313_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7827278309_)))))))))
                    (_g82464_
                     (let ((_g82465_
                            (let ((__tmp82467 (reverse _supers78057_)))
                              (declare (not safe))
                              (append1! _rpls78072_ __tmp82467))))
                       #!void
                       _g82465_))
                    (_g82468_
                     (let ((_g82469_
                            (set! _pls78067_
                                  (map _unsitr-rpl78073_ _rpls78072_))))
                       #!void
                       _g82469_))
                    (_c3-select-next78074_
                     (lambda (_tails78212_)
                       (let ((_candidate?78218_
                              (lambda (_c78214_)
                                (let ((__tmp82471
                                       (lambda (_tail78216_)
                                         (let ((__tmp82472
                                                (member _c78214_
                                                        (cdr _tail78216_)
                                                        _eq78063_)))
                                           (declare (not safe))
                                           (not __tmp82472)))))
                                  (declare (not safe))
                                  (andmap1 __tmp82471 _tails78212_)))))
                         (let _loop78220_ ((_ts78222_ _tails78212_))
                           (let* ((_ts7822378233_ _ts78222_)
                                  (_else7822578241_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78070_))))
                                  (_K7822778247_
                                   (lambda (_rts78244_ _c78245_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78218_ _c78245_))
                                         _c78245_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78220_ _rts78244_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7822378233_))
                                 (let ((_hd7822878250_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7822378233_)))
                                       (_tl7822978252_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7822378233_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7822878250_))
                                       (let* ((_hd7823078255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7822878250_)))
                                              (_c78258_ _hd7823078255_)
                                              (_rts78260_ _tl7822978252_))
                                         (declare (not safe))
                                         (_K7822778247_ _rts78260_ _c78258_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78070_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78070_))))))))
                    (_remove-next!78075_
                     (lambda (_next78157_ _tails78158_)
                       (let _loop78160_ ((_t78162_ _tails78158_))
                         (let* ((_t7816378174_ _t78162_)
                                (_E7816678178_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7816378174_))))
                           (let ((_K7817278209_ (lambda () _tails78158_))
                                 (_K7816778186_
                                  (lambda (_more78182_ _tail78183_ _head78184_)
                                    (if (_eq78063_ _head78184_ _next78157_)
                                        (set-car! _t78162_ _tail78183_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78160_ _more78182_)))))
                             (let ((_try-match7816578205_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7816378174_))
                                          (let ((_tl7816978191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7816378174_)))
                                                (_hd7816878189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7816378174_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7816878189_))
                                                (let ((_tl7817178196_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7816878189_)))
                                                      (_hd7817078194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7816878189_))))
                                                  (let ((_head78199_
                                                         _hd7817078194_)
                                                        (_tail78201_
                                                         _tl7817178196_)
                                                        (_more78203_
                                                         _tl7816978191_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7816778186_
                                                       _more78203_
                                                       _tail78201_
                                                       _head78199_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7816678178_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7816678178_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7816378174_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7817278209_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7816578205_)))))))))
                    (_precedence-list78076_
                     (let _c3loop78107_ ((_rhead78109_ _rhead78056_)
                                         (_tails78110_ _pls78067_))
                       (let* ((_tails78112_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78110_)))
                              (_tails7811378123_ _tails78112_)
                              (_else7811678134_
                               (lambda ()
                                 (let ((_next78131_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78074_
                                           _tails78112_))))
                                   (let ((__tmp82474
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78131_ _rhead78109_)))
                                         (__tmp82473
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78075_
                                             _next78131_
                                             _tails78112_))))
                                     (declare (not safe))
                                     (_c3loop78107_ __tmp82474 __tmp82473))))))
                         (let ((_K7812178154_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78109_ _sit78068_))))
                               (_K7811878140_
                                (lambda (_tail78138_)
                                  (let ((__tmp82475
                                         (append _tail78138_ _sit78068_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78109_
                                     __tmp82475)))))
                           (let ((_try-match7811578150_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7811378123_))
                                        (let ((_tl7812078145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7811378123_)))
                                              (_hd7811978143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7811378123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7812078145_))
                                              (let ((_tail78148_
                                                     _hd7811978143_))
                                                (declare (not safe))
                                                (_K7811878140_ _tail78148_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7811678134_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7811678134_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7811378123_))
                                 (let () (declare (not safe)) (_K7812178154_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7811578150_))))))))
                    (_super-struct78077_
                     (let* ((_sit7807878086_ _sit78068_)
                            (_else7808078094_ (lambda () '#f))
                            (_K7808278099_ (lambda (_s78097_) _s78097_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7807878086_))
                           (let* ((_hd7808378102_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7807878086_)))
                                  (_s78105_ _hd7808378102_))
                             (declare (not safe))
                             (_K7808278099_ _s78105_))
                           (let () (declare (not safe)) (_else7808078094_))))))
            (values _precedence-list78076_ _super-struct78077_)))))
    (define c4-linearize__@
      (lambda (_keys7804178338_ . _args78340_)
        (apply c4-linearize__%
               _keys7804178338_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7804178338_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7804178338_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7804178338_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7804178338_ 'get-name: absent-value))
               _args78340_)))
    (define c4-linearize
      (lambda _args7804678346_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7804678346_)))))
