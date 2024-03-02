(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709375797)
  (begin
    (define c4-linearize__%
      (lambda (_g61891_
               _get-precedence-list6155861564_
               _struct?6155961566_
               _eq6156061568_
               _get-name6156161570_
               _rhead61572_
               _supers61573_)
        (let* ((_get-precedence-list61575_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6155861564_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6155861564_))
               (_struct?61577_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6155961566_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6155961566_))
               (_eq61579_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6156061568_ absent-value))
                    eq?
                    _eq6156061568_))
               (_get-name61581_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6156161570_ absent-value))
                    identity
                    _get-name6156161570_)))
          (letrec* ((_pls61583_ (map _get-precedence-list61575_ _supers61573_))
                    (_sit61584_ '())
                    (_get-names61585_
                     (lambda (_lst61849_) (map _get-name61581_ _lst61849_)))
                    (_err61586_
                     (lambda _a61847_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61892 (reverse _rhead61572_)))
                                (declare (not safe))
                                (_get-names61585_ __tmp61892))
                              'precedence-lists:
                              (map _get-names61585_ _pls61583_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61585_ _sit61584_))
                              _a61847_)))
                    (_merge-sit!61587_
                     (lambda (_sit261837_)
                       (if (let () (declare (not safe)) (null? _sit261837_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61584_))
                               (set! _sit61584_ _sit261837_)
                               (let _loop61839_ ((_t161841_ _sit61584_)
                                                 (_t261842_ _sit261837_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161841_ _sit261837_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261842_ _sit61584_))
                                         (set! _sit61584_ _sit261837_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161841_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261842_)))
                                             (let ((__tmp61895
                                                    (let ((__tmp61898
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61585_
                                                              _sit61584_)))
                                                          (__tmp61896
                                                           (let ((__tmp61897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61585_ _sit261837_))))
                     (declare (not safe))
                     (cons __tmp61897 '()))))
              (declare (not safe))
              (cons __tmp61898 __tmp61896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61586_
                                                'single-inheritance-incompatibility:
                                                __tmp61895))
                                             (let ((__tmp61894 (cdr _t161841_))
                                                   (__tmp61893
                                                    (cdr _t261842_)))
                                               (declare (not safe))
                                               (_loop61839_
                                                __tmp61894
                                                __tmp61893))))))))))
                    (_rpls61588_
                     (map (lambda (_pl61832_)
                            (let ((_g61899_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61577_
                                      _pl61832_
                                      '()))))
                              (begin
                                (let ((_g61900_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61899_)
                                             (##vector-length _g61899_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61900_ 2)))
                                      (error "Context expects 2 values"
                                             _g61900_)))
                                (let ((_tl61834_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61899_ 0)))
                                      (_rh61835_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61899_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61587_ _tl61834_))
                                    _rh61835_)))))
                          _pls61583_))
                    (_unsitr-rpl61589_
                     (lambda (_rpl61778_)
                       (let _u61780_ ((_pl-rhead61782_ _rpl61778_)
                                      (_pl-tail61783_ '())
                                      (_sit-rhead61784_ (reverse _sit61584_))
                                      (_sit-tail61785_ '()))
                         (let* ((_pl-rhead6178661795_ _pl-rhead61782_)
                                (_E6178961799_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6178661795_)))))
                           (let ((_K6179361829_ (lambda () _pl-tail61783_))
                                 (_K6179061813_
                                  (lambda (_plrh61803_ _c61804_)
                                    (if (member _c61804_
                                                _sit-tail61785_
                                                _eq61579_)
                                        (let ((__tmp61911
                                               (let ((__tmp61912
                                                      (reverse _pl-rhead61782_)))
                                                 (declare (not safe))
                                                 (_get-names61585_
                                                  __tmp61912)))
                                              (__tmp61910
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61585_
                                                  _pl-tail61783_)))
                                              (__tmp61908
                                               (let ((__tmp61909
                                                      (reverse _sit-rhead61784_)))
                                                 (declare (not safe))
                                                 (_get-names61585_
                                                  __tmp61909)))
                                              (__tmp61907
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61585_
                                                  _sit-tail61785_)))
                                              (__tmp61906
                                               (_get-name61581_ _c61804_)))
                                          (declare (not safe))
                                          (_err61586_
                                           'precedence-list-head:
                                           __tmp61911
                                           'precedence-list-tail:
                                           __tmp61910
                                           'single-inheritance-head:
                                           __tmp61908
                                           'single-inheritance-tail:
                                           __tmp61907
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61906))
                                        (let ((_g61901_
                                               (let ((__tmp61903
                                                      (lambda (_g6180561807_)
                                                        (_eq61579_
                                                         _c61804_
                                                         _g6180561807_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61903
                                                  _sit-rhead61784_
                                                  _sit-tail61785_))))
                                          (begin
                                            (let ((_g61902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61901_)
                                                         (##vector-length
                                                          _g61901_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61902_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61902_)))
                                            (let ((_sit-rh261810_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61901_
                                                      0)))
                                                  (_sit-tl261811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61901_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261810_))
                                                  (let ((__tmp61905
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61780_
                                                     _plrh61803_
                                                     __tmp61905
                                                     '()
                                                     _sit-tl261811_))
                                                  (let ((__tmp61904
                                                         (cdr _sit-rh261810_)))
                                                    (declare (not safe))
                                                    (_u61780_
                                                     _plrh61803_
                                                     _pl-tail61783_
                                                     __tmp61904
                                                     _sit-tl261811_))))))))))
                             (let ((_try-match6178861825_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6178661795_))
                                          (let ((_tl6179261818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6178661795_)))
                                                (_hd6179161816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6178661795_))))
                                            (let ((_c61821_ _hd6179161816_)
                                                  (_plrh61823_ _tl6179261818_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6179061813_
                                                 _plrh61823_
                                                 _c61821_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6178961799_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6178661795_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6179361829_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6178861825_)))))))))
                    (_g61913_
                     (let ((_g61914_
                            (let ((__tmp61916 (reverse _supers61573_)))
                              (declare (not safe))
                              (append1! _rpls61588_ __tmp61916))))
                       #!void
                       _g61914_))
                    (_g61917_
                     (let ((_g61918_
                            (set! _pls61583_
                                  (map _unsitr-rpl61589_ _rpls61588_))))
                       #!void
                       _g61918_))
                    (_c3-select-next61590_
                     (lambda (_tails61728_)
                       (let ((_candidate?61734_
                              (lambda (_c61730_)
                                (let ((__tmp61920
                                       (lambda (_tail61732_)
                                         (let ((__tmp61921
                                                (member _c61730_
                                                        (cdr _tail61732_)
                                                        _eq61579_)))
                                           (declare (not safe))
                                           (not __tmp61921)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61920 _tails61728_)))))
                         (let _loop61736_ ((_ts61738_ _tails61728_))
                           (let* ((_ts6173961749_ _ts61738_)
                                  (_else6174161757_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61586_))))
                                  (_K6174361763_
                                   (lambda (_rts61760_ _c61761_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61734_ _c61761_))
                                         _c61761_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61736_ _rts61760_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6173961749_))
                                 (let ((_hd6174461766_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6173961749_)))
                                       (_tl6174561768_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6173961749_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6174461766_))
                                       (let* ((_hd6174661771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6174461766_)))
                                              (_c61774_ _hd6174661771_)
                                              (_rts61776_ _tl6174561768_))
                                         (declare (not safe))
                                         (_K6174361763_ _rts61776_ _c61774_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61586_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61586_))))))))
                    (_remove-next!61591_
                     (lambda (_next61673_ _tails61674_)
                       (let _loop61676_ ((_t61678_ _tails61674_))
                         (let* ((_t6167961690_ _t61678_)
                                (_E6168261694_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6167961690_)))))
                           (let ((_K6168861725_ (lambda () _tails61674_))
                                 (_K6168361702_
                                  (lambda (_more61698_ _tail61699_ _head61700_)
                                    (if (_eq61579_ _head61700_ _next61673_)
                                        (set-car! _t61678_ _tail61699_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61676_ _more61698_)))))
                             (let ((_try-match6168161721_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6167961690_))
                                          (let ((_tl6168561707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6167961690_)))
                                                (_hd6168461705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6167961690_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6168461705_))
                                                (let ((_tl6168761712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6168461705_)))
                                                      (_hd6168661710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6168461705_))))
                                                  (let ((_head61715_
                                                         _hd6168661710_)
                                                        (_tail61717_
                                                         _tl6168761712_)
                                                        (_more61719_
                                                         _tl6168561707_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6168361702_
                                                       _more61719_
                                                       _tail61717_
                                                       _head61715_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6168261694_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6168261694_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6167961690_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6168861725_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6168161721_)))))))))
                    (_precedence-list61592_
                     (let _c3loop61623_ ((_rhead61625_ _rhead61572_)
                                         (_tails61626_ _pls61583_))
                       (let* ((_tails61628_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61626_)))
                              (_tails6162961639_ _tails61628_)
                              (_else6163261650_
                               (lambda ()
                                 (let ((_next61647_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61590_
                                           _tails61628_))))
                                   (let ((__tmp61923
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61647_ _rhead61625_)))
                                         (__tmp61922
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61591_
                                             _next61647_
                                             _tails61628_))))
                                     (declare (not safe))
                                     (_c3loop61623_ __tmp61923 __tmp61922))))))
                         (let ((_K6163761670_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61625_ _sit61584_))))
                               (_K6163461656_
                                (lambda (_tail61654_)
                                  (let ((__tmp61924
                                         (append _tail61654_ _sit61584_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61625_
                                     __tmp61924)))))
                           (let ((_try-match6163161666_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6162961639_))
                                        (let ((_tl6163661661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6162961639_)))
                                              (_hd6163561659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6162961639_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6163661661_))
                                              (let ((_tail61664_
                                                     _hd6163561659_))
                                                (declare (not safe))
                                                (_K6163461656_ _tail61664_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6163261650_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6163261650_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6162961639_))
                                 (let () (declare (not safe)) (_K6163761670_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6163161666_))))))))
                    (_super-struct61593_
                     (let* ((_sit6159461602_ _sit61584_)
                            (_else6159661610_ (lambda () '#f))
                            (_K6159861615_ (lambda (_s61613_) _s61613_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6159461602_))
                           (let* ((_hd6159961618_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6159461602_)))
                                  (_s61621_ _hd6159961618_))
                             (declare (not safe))
                             (_K6159861615_ _s61621_))
                           (let () (declare (not safe)) (_else6159661610_))))))
            (values _precedence-list61592_ _super-struct61593_)))))
    (define c4-linearize__@
      (lambda (_keys6155761854_ . _args61856_)
        (apply c4-linearize__%
               _keys6155761854_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6155761854_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6155761854_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6155761854_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6155761854_ 'get-name: absent-value))
               _args61856_)))
    (define c4-linearize
      (lambda _args6156261862_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6156261862_)))))
