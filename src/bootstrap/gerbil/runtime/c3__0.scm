(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707767842)
  (begin
    (define c4-linearize__%
      (lambda (_g83630_
               _get-precedence-list7872978735_
               _struct?7873078737_
               _eq7873178739_
               _get-name7873278741_
               _rhead78743_
               _supers78744_)
        (let* ((_get-precedence-list78746_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7872978735_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7872978735_))
               (_struct?78748_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7873078737_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7873078737_))
               (_eq78750_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7873178739_ absent-value))
                    eq?
                    _eq7873178739_))
               (_get-name78752_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7873278741_ absent-value))
                    identity
                    _get-name7873278741_)))
          (letrec* ((_pls78754_ (map _get-precedence-list78746_ _supers78744_))
                    (_sit78755_ '())
                    (_get-names78756_
                     (lambda (_lst79020_) (map _get-name78752_ _lst79020_)))
                    (_err78757_
                     (lambda _a79018_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83631 (reverse _rhead78743_)))
                                (declare (not safe))
                                (_get-names78756_ __tmp83631))
                              'precedence-lists:
                              (map _get-names78756_ _pls78754_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78756_ _sit78755_))
                              _a79018_)))
                    (_merge-sit!78758_
                     (lambda (_sit279008_)
                       (if (let () (declare (not safe)) (null? _sit279008_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78755_))
                               (set! _sit78755_ _sit279008_)
                               (let _loop79010_ ((_t179012_ _sit78755_)
                                                 (_t279013_ _sit279008_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t179012_ _sit279008_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t279013_ _sit78755_))
                                         (set! _sit78755_ _sit279008_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t179012_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t279013_)))
                                             (let ((__tmp83634
                                                    (let ((__tmp83637
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78756_
                                                              _sit78755_)))
                                                          (__tmp83635
                                                           (let ((__tmp83636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78756_ _sit279008_))))
                     (declare (not safe))
                     (cons __tmp83636 '()))))
              (declare (not safe))
              (cons __tmp83637 __tmp83635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78757_
                                                'single-inheritance-incompatibility:
                                                __tmp83634))
                                             (let ((__tmp83633 (cdr _t179012_))
                                                   (__tmp83632
                                                    (cdr _t279013_)))
                                               (declare (not safe))
                                               (_loop79010_
                                                __tmp83633
                                                __tmp83632))))))))))
                    (_rpls78759_
                     (map (lambda (_pl79003_)
                            (let ((_g83638_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78748_
                                      _pl79003_
                                      '()))))
                              (begin
                                (let ((_g83639_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83638_)
                                             (##vector-length _g83638_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83639_ 2)))
                                      (error "Context expects 2 values"
                                             _g83639_)))
                                (let ((_tl79005_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83638_ 0)))
                                      (_rh79006_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83638_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78758_ _tl79005_))
                                    _rh79006_)))))
                          _pls78754_))
                    (_unsitr-rpl78760_
                     (lambda (_rpl78949_)
                       (let _u78951_ ((_pl-rhead78953_ _rpl78949_)
                                      (_pl-tail78954_ '())
                                      (_sit-rhead78955_ (reverse _sit78755_))
                                      (_sit-tail78956_ '()))
                         (let* ((_pl-rhead7895778966_ _pl-rhead78953_)
                                (_E7896078970_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7895778966_))))
                           (let ((_K7896479000_ (lambda () _pl-tail78954_))
                                 (_K7896178984_
                                  (lambda (_plrh78974_ _c78975_)
                                    (if (member _c78975_
                                                _sit-tail78956_
                                                _eq78750_)
                                        (let ((__tmp83650
                                               (let ((__tmp83651
                                                      (reverse _pl-rhead78953_)))
                                                 (declare (not safe))
                                                 (_get-names78756_
                                                  __tmp83651)))
                                              (__tmp83649
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78756_
                                                  _pl-tail78954_)))
                                              (__tmp83647
                                               (let ((__tmp83648
                                                      (reverse _sit-rhead78955_)))
                                                 (declare (not safe))
                                                 (_get-names78756_
                                                  __tmp83648)))
                                              (__tmp83646
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78756_
                                                  _sit-tail78956_)))
                                              (__tmp83645
                                               (_get-name78752_ _c78975_)))
                                          (declare (not safe))
                                          (_err78757_
                                           'precedence-list-head:
                                           __tmp83650
                                           'precedence-list-tail:
                                           __tmp83649
                                           'single-inheritance-head:
                                           __tmp83647
                                           'single-inheritance-tail:
                                           __tmp83646
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83645))
                                        (let ((_g83640_
                                               (let ((__tmp83642
                                                      (lambda (_g7897678978_)
                                                        (_eq78750_
                                                         _c78975_
                                                         _g7897678978_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83642
                                                  _sit-rhead78955_
                                                  _sit-tail78956_))))
                                          (begin
                                            (let ((_g83641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83640_)
                                                         (##vector-length
                                                          _g83640_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83641_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83641_)))
                                            (let ((_sit-rh278981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83640_
                                                      0)))
                                                  (_sit-tl278982_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83640_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278981_))
                                                  (let ((__tmp83644
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78951_
                                                     _plrh78974_
                                                     __tmp83644
                                                     '()
                                                     _sit-tl278982_))
                                                  (let ((__tmp83643
                                                         (cdr _sit-rh278981_)))
                                                    (declare (not safe))
                                                    (_u78951_
                                                     _plrh78974_
                                                     _pl-tail78954_
                                                     __tmp83643
                                                     _sit-tl278982_))))))))))
                             (let ((_try-match7895978996_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7895778966_))
                                          (let ((_tl7896378989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7895778966_)))
                                                (_hd7896278987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7895778966_))))
                                            (let ((_c78992_ _hd7896278987_)
                                                  (_plrh78994_ _tl7896378989_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7896178984_
                                                 _plrh78994_
                                                 _c78992_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7896078970_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7895778966_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7896479000_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7895978996_)))))))))
                    (_g83652_
                     (let ((_g83653_
                            (let ((__tmp83655 (reverse _supers78744_)))
                              (declare (not safe))
                              (append1! _rpls78759_ __tmp83655))))
                       #!void
                       _g83653_))
                    (_g83656_
                     (let ((_g83657_
                            (set! _pls78754_
                                  (map _unsitr-rpl78760_ _rpls78759_))))
                       #!void
                       _g83657_))
                    (_c3-select-next78761_
                     (lambda (_tails78899_)
                       (let ((_candidate?78905_
                              (lambda (_c78901_)
                                (let ((__tmp83659
                                       (lambda (_tail78903_)
                                         (let ((__tmp83660
                                                (member _c78901_
                                                        (cdr _tail78903_)
                                                        _eq78750_)))
                                           (declare (not safe))
                                           (not __tmp83660)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83659 _tails78899_)))))
                         (let _loop78907_ ((_ts78909_ _tails78899_))
                           (let* ((_ts7891078920_ _ts78909_)
                                  (_else7891278928_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78757_))))
                                  (_K7891478934_
                                   (lambda (_rts78931_ _c78932_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78905_ _c78932_))
                                         _c78932_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78907_ _rts78931_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7891078920_))
                                 (let ((_hd7891578937_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7891078920_)))
                                       (_tl7891678939_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7891078920_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7891578937_))
                                       (let* ((_hd7891778942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7891578937_)))
                                              (_c78945_ _hd7891778942_)
                                              (_rts78947_ _tl7891678939_))
                                         (declare (not safe))
                                         (_K7891478934_ _rts78947_ _c78945_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78757_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78757_))))))))
                    (_remove-next!78762_
                     (lambda (_next78844_ _tails78845_)
                       (let _loop78847_ ((_t78849_ _tails78845_))
                         (let* ((_t7885078861_ _t78849_)
                                (_E7885378865_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7885078861_))))
                           (let ((_K7885978896_ (lambda () _tails78845_))
                                 (_K7885478873_
                                  (lambda (_more78869_ _tail78870_ _head78871_)
                                    (if (_eq78750_ _head78871_ _next78844_)
                                        (set-car! _t78849_ _tail78870_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78847_ _more78869_)))))
                             (let ((_try-match7885278892_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7885078861_))
                                          (let ((_tl7885678878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7885078861_)))
                                                (_hd7885578876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7885078861_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7885578876_))
                                                (let ((_tl7885878883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7885578876_)))
                                                      (_hd7885778881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7885578876_))))
                                                  (let ((_head78886_
                                                         _hd7885778881_)
                                                        (_tail78888_
                                                         _tl7885878883_)
                                                        (_more78890_
                                                         _tl7885678878_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7885478873_
                                                       _more78890_
                                                       _tail78888_
                                                       _head78886_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7885378865_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7885378865_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7885078861_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7885978896_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7885278892_)))))))))
                    (_precedence-list78763_
                     (let _c3loop78794_ ((_rhead78796_ _rhead78743_)
                                         (_tails78797_ _pls78754_))
                       (let* ((_tails78799_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78797_)))
                              (_tails7880078810_ _tails78799_)
                              (_else7880378821_
                               (lambda ()
                                 (let ((_next78818_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78761_
                                           _tails78799_))))
                                   (let ((__tmp83662
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78818_ _rhead78796_)))
                                         (__tmp83661
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78762_
                                             _next78818_
                                             _tails78799_))))
                                     (declare (not safe))
                                     (_c3loop78794_ __tmp83662 __tmp83661))))))
                         (let ((_K7880878841_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78796_ _sit78755_))))
                               (_K7880578827_
                                (lambda (_tail78825_)
                                  (let ((__tmp83663
                                         (append _tail78825_ _sit78755_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78796_
                                     __tmp83663)))))
                           (let ((_try-match7880278837_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7880078810_))
                                        (let ((_tl7880778832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7880078810_)))
                                              (_hd7880678830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7880078810_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7880778832_))
                                              (let ((_tail78835_
                                                     _hd7880678830_))
                                                (declare (not safe))
                                                (_K7880578827_ _tail78835_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7880378821_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7880378821_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7880078810_))
                                 (let () (declare (not safe)) (_K7880878841_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7880278837_))))))))
                    (_super-struct78764_
                     (let* ((_sit7876578773_ _sit78755_)
                            (_else7876778781_ (lambda () '#f))
                            (_K7876978786_ (lambda (_s78784_) _s78784_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7876578773_))
                           (let* ((_hd7877078789_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7876578773_)))
                                  (_s78792_ _hd7877078789_))
                             (declare (not safe))
                             (_K7876978786_ _s78792_))
                           (let () (declare (not safe)) (_else7876778781_))))))
            (values _precedence-list78763_ _super-struct78764_)))))
    (define c4-linearize__@
      (lambda (_keys7872879025_ . _args79027_)
        (apply c4-linearize__%
               _keys7872879025_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7872879025_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7872879025_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7872879025_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7872879025_ 'get-name: absent-value))
               _args79027_)))
    (define c4-linearize
      (lambda _args7873379033_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7873379033_)))))
