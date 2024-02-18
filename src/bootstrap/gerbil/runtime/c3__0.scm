(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708280331)
  (begin
    (define c4-linearize__%
      (lambda (_g83347_
               _get-precedence-list7894778953_
               _struct?7894878955_
               _eq7894978957_
               _get-name7895078959_
               _rhead78961_
               _supers78962_)
        (let* ((_get-precedence-list78964_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7894778953_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7894778953_))
               (_struct?78966_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7894878955_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7894878955_))
               (_eq78968_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7894978957_ absent-value))
                    eq?
                    _eq7894978957_))
               (_get-name78970_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7895078959_ absent-value))
                    identity
                    _get-name7895078959_)))
          (letrec* ((_pls78972_ (map _get-precedence-list78964_ _supers78962_))
                    (_sit78973_ '())
                    (_get-names78974_
                     (lambda (_lst79238_) (map _get-name78970_ _lst79238_)))
                    (_err78975_
                     (lambda _a79236_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83348 (reverse _rhead78961_)))
                                (declare (not safe))
                                (_get-names78974_ __tmp83348))
                              'precedence-lists:
                              (map _get-names78974_ _pls78972_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78974_ _sit78973_))
                              _a79236_)))
                    (_merge-sit!78976_
                     (lambda (_sit279226_)
                       (if (let () (declare (not safe)) (null? _sit279226_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78973_))
                               (set! _sit78973_ _sit279226_)
                               (let _loop79228_ ((_t179230_ _sit78973_)
                                                 (_t279231_ _sit279226_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t179230_ _sit279226_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t279231_ _sit78973_))
                                         (set! _sit78973_ _sit279226_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t179230_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t279231_)))
                                             (let ((__tmp83351
                                                    (let ((__tmp83354
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78974_
                                                              _sit78973_)))
                                                          (__tmp83352
                                                           (let ((__tmp83353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78974_ _sit279226_))))
                     (declare (not safe))
                     (cons __tmp83353 '()))))
              (declare (not safe))
              (cons __tmp83354 __tmp83352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78975_
                                                'single-inheritance-incompatibility:
                                                __tmp83351))
                                             (let ((__tmp83350 (cdr _t179230_))
                                                   (__tmp83349
                                                    (cdr _t279231_)))
                                               (declare (not safe))
                                               (_loop79228_
                                                __tmp83350
                                                __tmp83349))))))))))
                    (_rpls78977_
                     (map (lambda (_pl79221_)
                            (let ((_g83355_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78966_
                                      _pl79221_
                                      '()))))
                              (begin
                                (let ((_g83356_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83355_)
                                             (##vector-length _g83355_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83356_ 2)))
                                      (error "Context expects 2 values"
                                             _g83356_)))
                                (let ((_tl79223_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83355_ 0)))
                                      (_rh79224_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83355_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78976_ _tl79223_))
                                    _rh79224_)))))
                          _pls78972_))
                    (_unsitr-rpl78978_
                     (lambda (_rpl79167_)
                       (let _u79169_ ((_pl-rhead79171_ _rpl79167_)
                                      (_pl-tail79172_ '())
                                      (_sit-rhead79173_ (reverse _sit78973_))
                                      (_sit-tail79174_ '()))
                         (let* ((_pl-rhead7917579184_ _pl-rhead79171_)
                                (_E7917879188_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7917579184_))))
                           (let ((_K7918279218_ (lambda () _pl-tail79172_))
                                 (_K7917979202_
                                  (lambda (_plrh79192_ _c79193_)
                                    (if (member _c79193_
                                                _sit-tail79174_
                                                _eq78968_)
                                        (let ((__tmp83367
                                               (let ((__tmp83368
                                                      (reverse _pl-rhead79171_)))
                                                 (declare (not safe))
                                                 (_get-names78974_
                                                  __tmp83368)))
                                              (__tmp83366
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78974_
                                                  _pl-tail79172_)))
                                              (__tmp83364
                                               (let ((__tmp83365
                                                      (reverse _sit-rhead79173_)))
                                                 (declare (not safe))
                                                 (_get-names78974_
                                                  __tmp83365)))
                                              (__tmp83363
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78974_
                                                  _sit-tail79174_)))
                                              (__tmp83362
                                               (_get-name78970_ _c79193_)))
                                          (declare (not safe))
                                          (_err78975_
                                           'precedence-list-head:
                                           __tmp83367
                                           'precedence-list-tail:
                                           __tmp83366
                                           'single-inheritance-head:
                                           __tmp83364
                                           'single-inheritance-tail:
                                           __tmp83363
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83362))
                                        (let ((_g83357_
                                               (let ((__tmp83359
                                                      (lambda (_g7919479196_)
                                                        (_eq78968_
                                                         _c79193_
                                                         _g7919479196_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83359
                                                  _sit-rhead79173_
                                                  _sit-tail79174_))))
                                          (begin
                                            (let ((_g83358_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83357_)
                                                         (##vector-length
                                                          _g83357_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83358_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83358_)))
                                            (let ((_sit-rh279199_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83357_
                                                      0)))
                                                  (_sit-tl279200_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83357_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh279199_))
                                                  (let ((__tmp83361
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c79193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail79172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u79169_
                                                     _plrh79192_
                                                     __tmp83361
                                                     '()
                                                     _sit-tl279200_))
                                                  (let ((__tmp83360
                                                         (cdr _sit-rh279199_)))
                                                    (declare (not safe))
                                                    (_u79169_
                                                     _plrh79192_
                                                     _pl-tail79172_
                                                     __tmp83360
                                                     _sit-tl279200_))))))))))
                             (let ((_try-match7917779214_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7917579184_))
                                          (let ((_tl7918179207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7917579184_)))
                                                (_hd7918079205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7917579184_))))
                                            (let ((_c79210_ _hd7918079205_)
                                                  (_plrh79212_ _tl7918179207_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7917979202_
                                                 _plrh79212_
                                                 _c79210_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7917879188_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7917579184_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7918279218_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7917779214_)))))))))
                    (_g83369_
                     (let ((_g83370_
                            (let ((__tmp83372 (reverse _supers78962_)))
                              (declare (not safe))
                              (append1! _rpls78977_ __tmp83372))))
                       #!void
                       _g83370_))
                    (_g83373_
                     (let ((_g83374_
                            (set! _pls78972_
                                  (map _unsitr-rpl78978_ _rpls78977_))))
                       #!void
                       _g83374_))
                    (_c3-select-next78979_
                     (lambda (_tails79117_)
                       (let ((_candidate?79123_
                              (lambda (_c79119_)
                                (let ((__tmp83376
                                       (lambda (_tail79121_)
                                         (let ((__tmp83377
                                                (member _c79119_
                                                        (cdr _tail79121_)
                                                        _eq78968_)))
                                           (declare (not safe))
                                           (not __tmp83377)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83376 _tails79117_)))))
                         (let _loop79125_ ((_ts79127_ _tails79117_))
                           (let* ((_ts7912879138_ _ts79127_)
                                  (_else7913079146_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78975_))))
                                  (_K7913279152_
                                   (lambda (_rts79149_ _c79150_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?79123_ _c79150_))
                                         _c79150_
                                         (let ()
                                           (declare (not safe))
                                           (_loop79125_ _rts79149_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7912879138_))
                                 (let ((_hd7913379155_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7912879138_)))
                                       (_tl7913479157_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7912879138_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7913379155_))
                                       (let* ((_hd7913579160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7913379155_)))
                                              (_c79163_ _hd7913579160_)
                                              (_rts79165_ _tl7913479157_))
                                         (declare (not safe))
                                         (_K7913279152_ _rts79165_ _c79163_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78975_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78975_))))))))
                    (_remove-next!78980_
                     (lambda (_next79062_ _tails79063_)
                       (let _loop79065_ ((_t79067_ _tails79063_))
                         (let* ((_t7906879079_ _t79067_)
                                (_E7907179083_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7906879079_))))
                           (let ((_K7907779114_ (lambda () _tails79063_))
                                 (_K7907279091_
                                  (lambda (_more79087_ _tail79088_ _head79089_)
                                    (if (_eq78968_ _head79089_ _next79062_)
                                        (set-car! _t79067_ _tail79088_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop79065_ _more79087_)))))
                             (let ((_try-match7907079110_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7906879079_))
                                          (let ((_tl7907479096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7906879079_)))
                                                (_hd7907379094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7906879079_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7907379094_))
                                                (let ((_tl7907679101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7907379094_)))
                                                      (_hd7907579099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7907379094_))))
                                                  (let ((_head79104_
                                                         _hd7907579099_)
                                                        (_tail79106_
                                                         _tl7907679101_)
                                                        (_more79108_
                                                         _tl7907479096_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7907279091_
                                                       _more79108_
                                                       _tail79106_
                                                       _head79104_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7907179083_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7907179083_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7906879079_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7907779114_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7907079110_)))))))))
                    (_precedence-list78981_
                     (let _c3loop79012_ ((_rhead79014_ _rhead78961_)
                                         (_tails79015_ _pls78972_))
                       (let* ((_tails79017_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails79015_)))
                              (_tails7901879028_ _tails79017_)
                              (_else7902179039_
                               (lambda ()
                                 (let ((_next79036_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78979_
                                           _tails79017_))))
                                   (let ((__tmp83379
                                          (let ()
                                            (declare (not safe))
                                            (cons _next79036_ _rhead79014_)))
                                         (__tmp83378
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78980_
                                             _next79036_
                                             _tails79017_))))
                                     (declare (not safe))
                                     (_c3loop79012_ __tmp83379 __tmp83378))))))
                         (let ((_K7902679059_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead79014_ _sit78973_))))
                               (_K7902379045_
                                (lambda (_tail79043_)
                                  (let ((__tmp83380
                                         (append _tail79043_ _sit78973_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead79014_
                                     __tmp83380)))))
                           (let ((_try-match7902079055_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7901879028_))
                                        (let ((_tl7902579050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7901879028_)))
                                              (_hd7902479048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7901879028_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7902579050_))
                                              (let ((_tail79053_
                                                     _hd7902479048_))
                                                (declare (not safe))
                                                (_K7902379045_ _tail79053_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7902179039_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7902179039_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7901879028_))
                                 (let () (declare (not safe)) (_K7902679059_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7902079055_))))))))
                    (_super-struct78982_
                     (let* ((_sit7898378991_ _sit78973_)
                            (_else7898578999_ (lambda () '#f))
                            (_K7898779004_ (lambda (_s79002_) _s79002_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7898378991_))
                           (let* ((_hd7898879007_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7898378991_)))
                                  (_s79010_ _hd7898879007_))
                             (declare (not safe))
                             (_K7898779004_ _s79010_))
                           (let () (declare (not safe)) (_else7898578999_))))))
            (values _precedence-list78981_ _super-struct78982_)))))
    (define c4-linearize__@
      (lambda (_keys7894679243_ . _args79245_)
        (apply c4-linearize__%
               _keys7894679243_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7894679243_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894679243_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894679243_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7894679243_ 'get-name: absent-value))
               _args79245_)))
    (define c4-linearize
      (lambda _args7895179251_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7895179251_)))))
