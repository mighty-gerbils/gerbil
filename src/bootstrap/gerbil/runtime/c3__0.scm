(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707847726)
  (begin
    (define c4-linearize__%
      (lambda (_g83841_
               _get-precedence-list7894078946_
               _struct?7894178948_
               _eq7894278950_
               _get-name7894378952_
               _rhead78954_
               _supers78955_)
        (let* ((_get-precedence-list78957_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7894078946_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7894078946_))
               (_struct?78959_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7894178948_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7894178948_))
               (_eq78961_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7894278950_ absent-value))
                    eq?
                    _eq7894278950_))
               (_get-name78963_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7894378952_ absent-value))
                    identity
                    _get-name7894378952_)))
          (letrec* ((_pls78965_ (map _get-precedence-list78957_ _supers78955_))
                    (_sit78966_ '())
                    (_get-names78967_
                     (lambda (_lst79231_) (map _get-name78963_ _lst79231_)))
                    (_err78968_
                     (lambda _a79229_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83842 (reverse _rhead78954_)))
                                (declare (not safe))
                                (_get-names78967_ __tmp83842))
                              'precedence-lists:
                              (map _get-names78967_ _pls78965_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78967_ _sit78966_))
                              _a79229_)))
                    (_merge-sit!78969_
                     (lambda (_sit279219_)
                       (if (let () (declare (not safe)) (null? _sit279219_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78966_))
                               (set! _sit78966_ _sit279219_)
                               (let _loop79221_ ((_t179223_ _sit78966_)
                                                 (_t279224_ _sit279219_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t179223_ _sit279219_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t279224_ _sit78966_))
                                         (set! _sit78966_ _sit279219_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t179223_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t279224_)))
                                             (let ((__tmp83845
                                                    (let ((__tmp83848
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78967_
                                                              _sit78966_)))
                                                          (__tmp83846
                                                           (let ((__tmp83847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78967_ _sit279219_))))
                     (declare (not safe))
                     (cons __tmp83847 '()))))
              (declare (not safe))
              (cons __tmp83848 __tmp83846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78968_
                                                'single-inheritance-incompatibility:
                                                __tmp83845))
                                             (let ((__tmp83844 (cdr _t179223_))
                                                   (__tmp83843
                                                    (cdr _t279224_)))
                                               (declare (not safe))
                                               (_loop79221_
                                                __tmp83844
                                                __tmp83843))))))))))
                    (_rpls78970_
                     (map (lambda (_pl79214_)
                            (let ((_g83849_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78959_
                                      _pl79214_
                                      '()))))
                              (begin
                                (let ((_g83850_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83849_)
                                             (##vector-length _g83849_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83850_ 2)))
                                      (error "Context expects 2 values"
                                             _g83850_)))
                                (let ((_tl79216_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83849_ 0)))
                                      (_rh79217_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83849_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78969_ _tl79216_))
                                    _rh79217_)))))
                          _pls78965_))
                    (_unsitr-rpl78971_
                     (lambda (_rpl79160_)
                       (let _u79162_ ((_pl-rhead79164_ _rpl79160_)
                                      (_pl-tail79165_ '())
                                      (_sit-rhead79166_ (reverse _sit78966_))
                                      (_sit-tail79167_ '()))
                         (let* ((_pl-rhead7916879177_ _pl-rhead79164_)
                                (_E7917179181_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7916879177_))))
                           (let ((_K7917579211_ (lambda () _pl-tail79165_))
                                 (_K7917279195_
                                  (lambda (_plrh79185_ _c79186_)
                                    (if (member _c79186_
                                                _sit-tail79167_
                                                _eq78961_)
                                        (let ((__tmp83861
                                               (let ((__tmp83862
                                                      (reverse _pl-rhead79164_)))
                                                 (declare (not safe))
                                                 (_get-names78967_
                                                  __tmp83862)))
                                              (__tmp83860
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78967_
                                                  _pl-tail79165_)))
                                              (__tmp83858
                                               (let ((__tmp83859
                                                      (reverse _sit-rhead79166_)))
                                                 (declare (not safe))
                                                 (_get-names78967_
                                                  __tmp83859)))
                                              (__tmp83857
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78967_
                                                  _sit-tail79167_)))
                                              (__tmp83856
                                               (_get-name78963_ _c79186_)))
                                          (declare (not safe))
                                          (_err78968_
                                           'precedence-list-head:
                                           __tmp83861
                                           'precedence-list-tail:
                                           __tmp83860
                                           'single-inheritance-head:
                                           __tmp83858
                                           'single-inheritance-tail:
                                           __tmp83857
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83856))
                                        (let ((_g83851_
                                               (let ((__tmp83853
                                                      (lambda (_g7918779189_)
                                                        (_eq78961_
                                                         _c79186_
                                                         _g7918779189_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83853
                                                  _sit-rhead79166_
                                                  _sit-tail79167_))))
                                          (begin
                                            (let ((_g83852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83851_)
                                                         (##vector-length
                                                          _g83851_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83852_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83852_)))
                                            (let ((_sit-rh279192_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83851_
                                                      0)))
                                                  (_sit-tl279193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83851_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh279192_))
                                                  (let ((__tmp83855
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c79186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail79165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u79162_
                                                     _plrh79185_
                                                     __tmp83855
                                                     '()
                                                     _sit-tl279193_))
                                                  (let ((__tmp83854
                                                         (cdr _sit-rh279192_)))
                                                    (declare (not safe))
                                                    (_u79162_
                                                     _plrh79185_
                                                     _pl-tail79165_
                                                     __tmp83854
                                                     _sit-tl279193_))))))))))
                             (let ((_try-match7917079207_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7916879177_))
                                          (let ((_tl7917479200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7916879177_)))
                                                (_hd7917379198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7916879177_))))
                                            (let ((_c79203_ _hd7917379198_)
                                                  (_plrh79205_ _tl7917479200_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7917279195_
                                                 _plrh79205_
                                                 _c79203_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7917179181_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7916879177_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7917579211_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7917079207_)))))))))
                    (_g83863_
                     (let ((_g83864_
                            (let ((__tmp83866 (reverse _supers78955_)))
                              (declare (not safe))
                              (append1! _rpls78970_ __tmp83866))))
                       #!void
                       _g83864_))
                    (_g83867_
                     (let ((_g83868_
                            (set! _pls78965_
                                  (map _unsitr-rpl78971_ _rpls78970_))))
                       #!void
                       _g83868_))
                    (_c3-select-next78972_
                     (lambda (_tails79110_)
                       (let ((_candidate?79116_
                              (lambda (_c79112_)
                                (let ((__tmp83870
                                       (lambda (_tail79114_)
                                         (let ((__tmp83871
                                                (member _c79112_
                                                        (cdr _tail79114_)
                                                        _eq78961_)))
                                           (declare (not safe))
                                           (not __tmp83871)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83870 _tails79110_)))))
                         (let _loop79118_ ((_ts79120_ _tails79110_))
                           (let* ((_ts7912179131_ _ts79120_)
                                  (_else7912379139_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78968_))))
                                  (_K7912579145_
                                   (lambda (_rts79142_ _c79143_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?79116_ _c79143_))
                                         _c79143_
                                         (let ()
                                           (declare (not safe))
                                           (_loop79118_ _rts79142_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7912179131_))
                                 (let ((_hd7912679148_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7912179131_)))
                                       (_tl7912779150_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7912179131_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7912679148_))
                                       (let* ((_hd7912879153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7912679148_)))
                                              (_c79156_ _hd7912879153_)
                                              (_rts79158_ _tl7912779150_))
                                         (declare (not safe))
                                         (_K7912579145_ _rts79158_ _c79156_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78968_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78968_))))))))
                    (_remove-next!78973_
                     (lambda (_next79055_ _tails79056_)
                       (let _loop79058_ ((_t79060_ _tails79056_))
                         (let* ((_t7906179072_ _t79060_)
                                (_E7906479076_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7906179072_))))
                           (let ((_K7907079107_ (lambda () _tails79056_))
                                 (_K7906579084_
                                  (lambda (_more79080_ _tail79081_ _head79082_)
                                    (if (_eq78961_ _head79082_ _next79055_)
                                        (set-car! _t79060_ _tail79081_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop79058_ _more79080_)))))
                             (let ((_try-match7906379103_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7906179072_))
                                          (let ((_tl7906779089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7906179072_)))
                                                (_hd7906679087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7906179072_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7906679087_))
                                                (let ((_tl7906979094_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7906679087_)))
                                                      (_hd7906879092_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7906679087_))))
                                                  (let ((_head79097_
                                                         _hd7906879092_)
                                                        (_tail79099_
                                                         _tl7906979094_)
                                                        (_more79101_
                                                         _tl7906779089_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7906579084_
                                                       _more79101_
                                                       _tail79099_
                                                       _head79097_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7906479076_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7906479076_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7906179072_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7907079107_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7906379103_)))))))))
                    (_precedence-list78974_
                     (let _c3loop79005_ ((_rhead79007_ _rhead78954_)
                                         (_tails79008_ _pls78965_))
                       (let* ((_tails79010_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails79008_)))
                              (_tails7901179021_ _tails79010_)
                              (_else7901479032_
                               (lambda ()
                                 (let ((_next79029_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78972_
                                           _tails79010_))))
                                   (let ((__tmp83873
                                          (let ()
                                            (declare (not safe))
                                            (cons _next79029_ _rhead79007_)))
                                         (__tmp83872
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78973_
                                             _next79029_
                                             _tails79010_))))
                                     (declare (not safe))
                                     (_c3loop79005_ __tmp83873 __tmp83872))))))
                         (let ((_K7901979052_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead79007_ _sit78966_))))
                               (_K7901679038_
                                (lambda (_tail79036_)
                                  (let ((__tmp83874
                                         (append _tail79036_ _sit78966_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead79007_
                                     __tmp83874)))))
                           (let ((_try-match7901379048_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7901179021_))
                                        (let ((_tl7901879043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7901179021_)))
                                              (_hd7901779041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7901179021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7901879043_))
                                              (let ((_tail79046_
                                                     _hd7901779041_))
                                                (declare (not safe))
                                                (_K7901679038_ _tail79046_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7901479032_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7901479032_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7901179021_))
                                 (let () (declare (not safe)) (_K7901979052_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7901379048_))))))))
                    (_super-struct78975_
                     (let* ((_sit7897678984_ _sit78966_)
                            (_else7897878992_ (lambda () '#f))
                            (_K7898078997_ (lambda (_s78995_) _s78995_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7897678984_))
                           (let* ((_hd7898179000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7897678984_)))
                                  (_s79003_ _hd7898179000_))
                             (declare (not safe))
                             (_K7898078997_ _s79003_))
                           (let () (declare (not safe)) (_else7897878992_))))))
            (values _precedence-list78974_ _super-struct78975_)))))
    (define c4-linearize__@
      (lambda (_keys7893979236_ . _args79238_)
        (apply c4-linearize__%
               _keys7893979236_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7893979236_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7893979236_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7893979236_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7893979236_ 'get-name: absent-value))
               _args79238_)))
    (define c4-linearize
      (lambda _args7894479244_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7894479244_)))))
