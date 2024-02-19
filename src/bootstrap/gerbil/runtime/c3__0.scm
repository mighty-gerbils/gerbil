(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708334572)
  (begin
    (define c4-linearize__%
      (lambda (_g83349_
               _get-precedence-list7894978955_
               _struct?7895078957_
               _eq7895178959_
               _get-name7895278961_
               _rhead78963_
               _supers78964_)
        (let* ((_get-precedence-list78966_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7894978955_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7894978955_))
               (_struct?78968_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7895078957_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7895078957_))
               (_eq78970_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7895178959_ absent-value))
                    eq?
                    _eq7895178959_))
               (_get-name78972_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7895278961_ absent-value))
                    identity
                    _get-name7895278961_)))
          (letrec* ((_pls78974_ (map _get-precedence-list78966_ _supers78964_))
                    (_sit78975_ '())
                    (_get-names78976_
                     (lambda (_lst79240_) (map _get-name78972_ _lst79240_)))
                    (_err78977_
                     (lambda _a79238_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83350 (reverse _rhead78963_)))
                                (declare (not safe))
                                (_get-names78976_ __tmp83350))
                              'precedence-lists:
                              (map _get-names78976_ _pls78974_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78976_ _sit78975_))
                              _a79238_)))
                    (_merge-sit!78978_
                     (lambda (_sit279228_)
                       (if (let () (declare (not safe)) (null? _sit279228_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78975_))
                               (set! _sit78975_ _sit279228_)
                               (let _loop79230_ ((_t179232_ _sit78975_)
                                                 (_t279233_ _sit279228_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t179232_ _sit279228_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t279233_ _sit78975_))
                                         (set! _sit78975_ _sit279228_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t179232_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t279233_)))
                                             (let ((__tmp83353
                                                    (let ((__tmp83356
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78976_
                                                              _sit78975_)))
                                                          (__tmp83354
                                                           (let ((__tmp83355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78976_ _sit279228_))))
                     (declare (not safe))
                     (cons __tmp83355 '()))))
              (declare (not safe))
              (cons __tmp83356 __tmp83354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78977_
                                                'single-inheritance-incompatibility:
                                                __tmp83353))
                                             (let ((__tmp83352 (cdr _t179232_))
                                                   (__tmp83351
                                                    (cdr _t279233_)))
                                               (declare (not safe))
                                               (_loop79230_
                                                __tmp83352
                                                __tmp83351))))))))))
                    (_rpls78979_
                     (map (lambda (_pl79223_)
                            (let ((_g83357_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78968_
                                      _pl79223_
                                      '()))))
                              (begin
                                (let ((_g83358_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83357_)
                                             (##vector-length _g83357_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83358_ 2)))
                                      (error "Context expects 2 values"
                                             _g83358_)))
                                (let ((_tl79225_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83357_ 0)))
                                      (_rh79226_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83357_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78978_ _tl79225_))
                                    _rh79226_)))))
                          _pls78974_))
                    (_unsitr-rpl78980_
                     (lambda (_rpl79169_)
                       (let _u79171_ ((_pl-rhead79173_ _rpl79169_)
                                      (_pl-tail79174_ '())
                                      (_sit-rhead79175_ (reverse _sit78975_))
                                      (_sit-tail79176_ '()))
                         (let* ((_pl-rhead7917779186_ _pl-rhead79173_)
                                (_E7918079190_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7917779186_))))
                           (let ((_K7918479220_ (lambda () _pl-tail79174_))
                                 (_K7918179204_
                                  (lambda (_plrh79194_ _c79195_)
                                    (if (member _c79195_
                                                _sit-tail79176_
                                                _eq78970_)
                                        (let ((__tmp83369
                                               (let ((__tmp83370
                                                      (reverse _pl-rhead79173_)))
                                                 (declare (not safe))
                                                 (_get-names78976_
                                                  __tmp83370)))
                                              (__tmp83368
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78976_
                                                  _pl-tail79174_)))
                                              (__tmp83366
                                               (let ((__tmp83367
                                                      (reverse _sit-rhead79175_)))
                                                 (declare (not safe))
                                                 (_get-names78976_
                                                  __tmp83367)))
                                              (__tmp83365
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78976_
                                                  _sit-tail79176_)))
                                              (__tmp83364
                                               (_get-name78972_ _c79195_)))
                                          (declare (not safe))
                                          (_err78977_
                                           'precedence-list-head:
                                           __tmp83369
                                           'precedence-list-tail:
                                           __tmp83368
                                           'single-inheritance-head:
                                           __tmp83366
                                           'single-inheritance-tail:
                                           __tmp83365
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83364))
                                        (let ((_g83359_
                                               (let ((__tmp83361
                                                      (lambda (_g7919679198_)
                                                        (_eq78970_
                                                         _c79195_
                                                         _g7919679198_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83361
                                                  _sit-rhead79175_
                                                  _sit-tail79176_))))
                                          (begin
                                            (let ((_g83360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83359_)
                                                         (##vector-length
                                                          _g83359_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83360_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83360_)))
                                            (let ((_sit-rh279201_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83359_
                                                      0)))
                                                  (_sit-tl279202_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83359_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh279201_))
                                                  (let ((__tmp83363
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c79195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail79174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u79171_
                                                     _plrh79194_
                                                     __tmp83363
                                                     '()
                                                     _sit-tl279202_))
                                                  (let ((__tmp83362
                                                         (cdr _sit-rh279201_)))
                                                    (declare (not safe))
                                                    (_u79171_
                                                     _plrh79194_
                                                     _pl-tail79174_
                                                     __tmp83362
                                                     _sit-tl279202_))))))))))
                             (let ((_try-match7917979216_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7917779186_))
                                          (let ((_tl7918379209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7917779186_)))
                                                (_hd7918279207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7917779186_))))
                                            (let ((_c79212_ _hd7918279207_)
                                                  (_plrh79214_ _tl7918379209_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7918179204_
                                                 _plrh79214_
                                                 _c79212_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7918079190_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7917779186_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7918479220_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7917979216_)))))))))
                    (_g83371_
                     (let ((_g83372_
                            (let ((__tmp83374 (reverse _supers78964_)))
                              (declare (not safe))
                              (append1! _rpls78979_ __tmp83374))))
                       #!void
                       _g83372_))
                    (_g83375_
                     (let ((_g83376_
                            (set! _pls78974_
                                  (map _unsitr-rpl78980_ _rpls78979_))))
                       #!void
                       _g83376_))
                    (_c3-select-next78981_
                     (lambda (_tails79119_)
                       (let ((_candidate?79125_
                              (lambda (_c79121_)
                                (let ((__tmp83378
                                       (lambda (_tail79123_)
                                         (let ((__tmp83379
                                                (member _c79121_
                                                        (cdr _tail79123_)
                                                        _eq78970_)))
                                           (declare (not safe))
                                           (not __tmp83379)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83378 _tails79119_)))))
                         (let _loop79127_ ((_ts79129_ _tails79119_))
                           (let* ((_ts7913079140_ _ts79129_)
                                  (_else7913279148_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78977_))))
                                  (_K7913479154_
                                   (lambda (_rts79151_ _c79152_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?79125_ _c79152_))
                                         _c79152_
                                         (let ()
                                           (declare (not safe))
                                           (_loop79127_ _rts79151_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7913079140_))
                                 (let ((_hd7913579157_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7913079140_)))
                                       (_tl7913679159_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7913079140_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7913579157_))
                                       (let* ((_hd7913779162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7913579157_)))
                                              (_c79165_ _hd7913779162_)
                                              (_rts79167_ _tl7913679159_))
                                         (declare (not safe))
                                         (_K7913479154_ _rts79167_ _c79165_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78977_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78977_))))))))
                    (_remove-next!78982_
                     (lambda (_next79064_ _tails79065_)
                       (let _loop79067_ ((_t79069_ _tails79065_))
                         (let* ((_t7907079081_ _t79069_)
                                (_E7907379085_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7907079081_))))
                           (let ((_K7907979116_ (lambda () _tails79065_))
                                 (_K7907479093_
                                  (lambda (_more79089_ _tail79090_ _head79091_)
                                    (if (_eq78970_ _head79091_ _next79064_)
                                        (set-car! _t79069_ _tail79090_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop79067_ _more79089_)))))
                             (let ((_try-match7907279112_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7907079081_))
                                          (let ((_tl7907679098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7907079081_)))
                                                (_hd7907579096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7907079081_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7907579096_))
                                                (let ((_tl7907879103_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7907579096_)))
                                                      (_hd7907779101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7907579096_))))
                                                  (let ((_head79106_
                                                         _hd7907779101_)
                                                        (_tail79108_
                                                         _tl7907879103_)
                                                        (_more79110_
                                                         _tl7907679098_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7907479093_
                                                       _more79110_
                                                       _tail79108_
                                                       _head79106_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7907379085_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7907379085_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7907079081_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7907979116_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7907279112_)))))))))
                    (_precedence-list78983_
                     (let _c3loop79014_ ((_rhead79016_ _rhead78963_)
                                         (_tails79017_ _pls78974_))
                       (let* ((_tails79019_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails79017_)))
                              (_tails7902079030_ _tails79019_)
                              (_else7902379041_
                               (lambda ()
                                 (let ((_next79038_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78981_
                                           _tails79019_))))
                                   (let ((__tmp83381
                                          (let ()
                                            (declare (not safe))
                                            (cons _next79038_ _rhead79016_)))
                                         (__tmp83380
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78982_
                                             _next79038_
                                             _tails79019_))))
                                     (declare (not safe))
                                     (_c3loop79014_ __tmp83381 __tmp83380))))))
                         (let ((_K7902879061_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead79016_ _sit78975_))))
                               (_K7902579047_
                                (lambda (_tail79045_)
                                  (let ((__tmp83382
                                         (append _tail79045_ _sit78975_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead79016_
                                     __tmp83382)))))
                           (let ((_try-match7902279057_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7902079030_))
                                        (let ((_tl7902779052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7902079030_)))
                                              (_hd7902679050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7902079030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7902779052_))
                                              (let ((_tail79055_
                                                     _hd7902679050_))
                                                (declare (not safe))
                                                (_K7902579047_ _tail79055_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7902379041_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7902379041_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7902079030_))
                                 (let () (declare (not safe)) (_K7902879061_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7902279057_))))))))
                    (_super-struct78984_
                     (let* ((_sit7898578993_ _sit78975_)
                            (_else7898779001_ (lambda () '#f))
                            (_K7898979006_ (lambda (_s79004_) _s79004_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7898578993_))
                           (let* ((_hd7899079009_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7898578993_)))
                                  (_s79012_ _hd7899079009_))
                             (declare (not safe))
                             (_K7898979006_ _s79012_))
                           (let () (declare (not safe)) (_else7898779001_))))))
            (values _precedence-list78983_ _super-struct78984_)))))
    (define c4-linearize__@
      (lambda (_keys7894879245_ . _args79247_)
        (apply c4-linearize__%
               _keys7894879245_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7894879245_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894879245_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894879245_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894879245_ 'get-name: absent-value))
               _args79247_)))
    (define c4-linearize
      (lambda _args7895379253_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7895379253_)))))
