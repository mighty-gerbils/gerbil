(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707674929)
  (begin
    (define c4-linearize__%
      (lambda (_g83625_
               _get-precedence-list7872478730_
               _struct?7872578732_
               _eq7872678734_
               _get-name7872778736_
               _rhead78738_
               _supers78739_)
        (let* ((_get-precedence-list78741_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7872478730_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7872478730_))
               (_struct?78743_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7872578732_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7872578732_))
               (_eq78745_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7872678734_ absent-value))
                    eq?
                    _eq7872678734_))
               (_get-name78747_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7872778736_ absent-value))
                    identity
                    _get-name7872778736_)))
          (letrec* ((_pls78749_ (map _get-precedence-list78741_ _supers78739_))
                    (_sit78750_ '())
                    (_get-names78751_
                     (lambda (_lst79015_) (map _get-name78747_ _lst79015_)))
                    (_err78752_
                     (lambda _a79013_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83626 (reverse _rhead78738_)))
                                (declare (not safe))
                                (_get-names78751_ __tmp83626))
                              'precedence-lists:
                              (map _get-names78751_ _pls78749_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78751_ _sit78750_))
                              _a79013_)))
                    (_merge-sit!78753_
                     (lambda (_sit279003_)
                       (if (let () (declare (not safe)) (null? _sit279003_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78750_))
                               (set! _sit78750_ _sit279003_)
                               (let _loop79005_ ((_t179007_ _sit78750_)
                                                 (_t279008_ _sit279003_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t179007_ _sit279003_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t279008_ _sit78750_))
                                         (set! _sit78750_ _sit279003_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t179007_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t279008_)))
                                             (let ((__tmp83629
                                                    (let ((__tmp83632
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78751_
                                                              _sit78750_)))
                                                          (__tmp83630
                                                           (let ((__tmp83631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78751_ _sit279003_))))
                     (declare (not safe))
                     (cons __tmp83631 '()))))
              (declare (not safe))
              (cons __tmp83632 __tmp83630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78752_
                                                'single-inheritance-incompatibility:
                                                __tmp83629))
                                             (let ((__tmp83628 (cdr _t179007_))
                                                   (__tmp83627
                                                    (cdr _t279008_)))
                                               (declare (not safe))
                                               (_loop79005_
                                                __tmp83628
                                                __tmp83627))))))))))
                    (_rpls78754_
                     (map (lambda (_pl78998_)
                            (let ((_g83633_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78743_
                                      _pl78998_
                                      '()))))
                              (begin
                                (let ((_g83634_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83633_)
                                             (##vector-length _g83633_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83634_ 2)))
                                      (error "Context expects 2 values"
                                             _g83634_)))
                                (let ((_tl79000_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83633_ 0)))
                                      (_rh79001_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83633_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78753_ _tl79000_))
                                    _rh79001_)))))
                          _pls78749_))
                    (_unsitr-rpl78755_
                     (lambda (_rpl78944_)
                       (let _u78946_ ((_pl-rhead78948_ _rpl78944_)
                                      (_pl-tail78949_ '())
                                      (_sit-rhead78950_ (reverse _sit78750_))
                                      (_sit-tail78951_ '()))
                         (let* ((_pl-rhead7895278961_ _pl-rhead78948_)
                                (_E7895578965_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7895278961_))))
                           (let ((_K7895978995_ (lambda () _pl-tail78949_))
                                 (_K7895678979_
                                  (lambda (_plrh78969_ _c78970_)
                                    (if (member _c78970_
                                                _sit-tail78951_
                                                _eq78745_)
                                        (let ((__tmp83645
                                               (let ((__tmp83646
                                                      (reverse _pl-rhead78948_)))
                                                 (declare (not safe))
                                                 (_get-names78751_
                                                  __tmp83646)))
                                              (__tmp83644
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78751_
                                                  _pl-tail78949_)))
                                              (__tmp83642
                                               (let ((__tmp83643
                                                      (reverse _sit-rhead78950_)))
                                                 (declare (not safe))
                                                 (_get-names78751_
                                                  __tmp83643)))
                                              (__tmp83641
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78751_
                                                  _sit-tail78951_)))
                                              (__tmp83640
                                               (_get-name78747_ _c78970_)))
                                          (declare (not safe))
                                          (_err78752_
                                           'precedence-list-head:
                                           __tmp83645
                                           'precedence-list-tail:
                                           __tmp83644
                                           'single-inheritance-head:
                                           __tmp83642
                                           'single-inheritance-tail:
                                           __tmp83641
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83640))
                                        (let ((_g83635_
                                               (let ((__tmp83637
                                                      (lambda (_g7897178973_)
                                                        (_eq78745_
                                                         _c78970_
                                                         _g7897178973_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83637
                                                  _sit-rhead78950_
                                                  _sit-tail78951_))))
                                          (begin
                                            (let ((_g83636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83635_)
                                                         (##vector-length
                                                          _g83635_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83636_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83636_)))
                                            (let ((_sit-rh278976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83635_
                                                      0)))
                                                  (_sit-tl278977_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83635_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278976_))
                                                  (let ((__tmp83639
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78946_
                                                     _plrh78969_
                                                     __tmp83639
                                                     '()
                                                     _sit-tl278977_))
                                                  (let ((__tmp83638
                                                         (cdr _sit-rh278976_)))
                                                    (declare (not safe))
                                                    (_u78946_
                                                     _plrh78969_
                                                     _pl-tail78949_
                                                     __tmp83638
                                                     _sit-tl278977_))))))))))
                             (let ((_try-match7895478991_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7895278961_))
                                          (let ((_tl7895878984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7895278961_)))
                                                (_hd7895778982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7895278961_))))
                                            (let ((_c78987_ _hd7895778982_)
                                                  (_plrh78989_ _tl7895878984_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7895678979_
                                                 _plrh78989_
                                                 _c78987_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7895578965_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7895278961_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7895978995_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7895478991_)))))))))
                    (_g83647_
                     (let ((_g83648_
                            (let ((__tmp83650 (reverse _supers78739_)))
                              (declare (not safe))
                              (append1! _rpls78754_ __tmp83650))))
                       #!void
                       _g83648_))
                    (_g83651_
                     (let ((_g83652_
                            (set! _pls78749_
                                  (map _unsitr-rpl78755_ _rpls78754_))))
                       #!void
                       _g83652_))
                    (_c3-select-next78756_
                     (lambda (_tails78894_)
                       (let ((_candidate?78900_
                              (lambda (_c78896_)
                                (let ((__tmp83654
                                       (lambda (_tail78898_)
                                         (let ((__tmp83655
                                                (member _c78896_
                                                        (cdr _tail78898_)
                                                        _eq78745_)))
                                           (declare (not safe))
                                           (not __tmp83655)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83654 _tails78894_)))))
                         (let _loop78902_ ((_ts78904_ _tails78894_))
                           (let* ((_ts7890578915_ _ts78904_)
                                  (_else7890778923_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78752_))))
                                  (_K7890978929_
                                   (lambda (_rts78926_ _c78927_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78900_ _c78927_))
                                         _c78927_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78902_ _rts78926_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7890578915_))
                                 (let ((_hd7891078932_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7890578915_)))
                                       (_tl7891178934_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7890578915_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7891078932_))
                                       (let* ((_hd7891278937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7891078932_)))
                                              (_c78940_ _hd7891278937_)
                                              (_rts78942_ _tl7891178934_))
                                         (declare (not safe))
                                         (_K7890978929_ _rts78942_ _c78940_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78752_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78752_))))))))
                    (_remove-next!78757_
                     (lambda (_next78839_ _tails78840_)
                       (let _loop78842_ ((_t78844_ _tails78840_))
                         (let* ((_t7884578856_ _t78844_)
                                (_E7884878860_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7884578856_))))
                           (let ((_K7885478891_ (lambda () _tails78840_))
                                 (_K7884978868_
                                  (lambda (_more78864_ _tail78865_ _head78866_)
                                    (if (_eq78745_ _head78866_ _next78839_)
                                        (set-car! _t78844_ _tail78865_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78842_ _more78864_)))))
                             (let ((_try-match7884778887_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7884578856_))
                                          (let ((_tl7885178873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7884578856_)))
                                                (_hd7885078871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7884578856_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7885078871_))
                                                (let ((_tl7885378878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7885078871_)))
                                                      (_hd7885278876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7885078871_))))
                                                  (let ((_head78881_
                                                         _hd7885278876_)
                                                        (_tail78883_
                                                         _tl7885378878_)
                                                        (_more78885_
                                                         _tl7885178873_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7884978868_
                                                       _more78885_
                                                       _tail78883_
                                                       _head78881_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7884878860_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7884878860_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7884578856_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7885478891_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7884778887_)))))))))
                    (_precedence-list78758_
                     (let _c3loop78789_ ((_rhead78791_ _rhead78738_)
                                         (_tails78792_ _pls78749_))
                       (let* ((_tails78794_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78792_)))
                              (_tails7879578805_ _tails78794_)
                              (_else7879878816_
                               (lambda ()
                                 (let ((_next78813_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78756_
                                           _tails78794_))))
                                   (let ((__tmp83657
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78813_ _rhead78791_)))
                                         (__tmp83656
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78757_
                                             _next78813_
                                             _tails78794_))))
                                     (declare (not safe))
                                     (_c3loop78789_ __tmp83657 __tmp83656))))))
                         (let ((_K7880378836_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78791_ _sit78750_))))
                               (_K7880078822_
                                (lambda (_tail78820_)
                                  (let ((__tmp83658
                                         (append _tail78820_ _sit78750_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78791_
                                     __tmp83658)))))
                           (let ((_try-match7879778832_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7879578805_))
                                        (let ((_tl7880278827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7879578805_)))
                                              (_hd7880178825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7879578805_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7880278827_))
                                              (let ((_tail78830_
                                                     _hd7880178825_))
                                                (declare (not safe))
                                                (_K7880078822_ _tail78830_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7879878816_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7879878816_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7879578805_))
                                 (let () (declare (not safe)) (_K7880378836_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7879778832_))))))))
                    (_super-struct78759_
                     (let* ((_sit7876078768_ _sit78750_)
                            (_else7876278776_ (lambda () '#f))
                            (_K7876478781_ (lambda (_s78779_) _s78779_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7876078768_))
                           (let* ((_hd7876578784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7876078768_)))
                                  (_s78787_ _hd7876578784_))
                             (declare (not safe))
                             (_K7876478781_ _s78787_))
                           (let () (declare (not safe)) (_else7876278776_))))))
            (values _precedence-list78758_ _super-struct78759_)))))
    (define c4-linearize__@
      (lambda (_keys7872379020_ . _args79022_)
        (apply c4-linearize__%
               _keys7872379020_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7872379020_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7872379020_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7872379020_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7872379020_ 'get-name: absent-value))
               _args79022_)))
    (define c4-linearize
      (lambda _args7872879028_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7872879028_)))))
