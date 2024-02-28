(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709125254)
  (begin
    (define c4-linearize__%
      (lambda (_g61884_
               _get-precedence-list6155161557_
               _struct?6155261559_
               _eq6155361561_
               _get-name6155461563_
               _rhead61565_
               _supers61566_)
        (let* ((_get-precedence-list61568_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6155161557_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6155161557_))
               (_struct?61570_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6155261559_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6155261559_))
               (_eq61572_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6155361561_ absent-value))
                    eq?
                    _eq6155361561_))
               (_get-name61574_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6155461563_ absent-value))
                    identity
                    _get-name6155461563_)))
          (letrec* ((_pls61576_ (map _get-precedence-list61568_ _supers61566_))
                    (_sit61577_ '())
                    (_get-names61578_
                     (lambda (_lst61842_) (map _get-name61574_ _lst61842_)))
                    (_err61579_
                     (lambda _a61840_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61885 (reverse _rhead61565_)))
                                (declare (not safe))
                                (_get-names61578_ __tmp61885))
                              'precedence-lists:
                              (map _get-names61578_ _pls61576_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61578_ _sit61577_))
                              _a61840_)))
                    (_merge-sit!61580_
                     (lambda (_sit261830_)
                       (if (let () (declare (not safe)) (null? _sit261830_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61577_))
                               (set! _sit61577_ _sit261830_)
                               (let _loop61832_ ((_t161834_ _sit61577_)
                                                 (_t261835_ _sit261830_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161834_ _sit261830_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261835_ _sit61577_))
                                         (set! _sit61577_ _sit261830_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161834_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261835_)))
                                             (let ((__tmp61888
                                                    (let ((__tmp61891
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61578_
                                                              _sit61577_)))
                                                          (__tmp61889
                                                           (let ((__tmp61890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61578_ _sit261830_))))
                     (declare (not safe))
                     (cons __tmp61890 '()))))
              (declare (not safe))
              (cons __tmp61891 __tmp61889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61579_
                                                'single-inheritance-incompatibility:
                                                __tmp61888))
                                             (let ((__tmp61887 (cdr _t161834_))
                                                   (__tmp61886
                                                    (cdr _t261835_)))
                                               (declare (not safe))
                                               (_loop61832_
                                                __tmp61887
                                                __tmp61886))))))))))
                    (_rpls61581_
                     (map (lambda (_pl61825_)
                            (let ((_g61892_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61570_
                                      _pl61825_
                                      '()))))
                              (begin
                                (let ((_g61893_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61892_)
                                             (##vector-length _g61892_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61893_ 2)))
                                      (error "Context expects 2 values"
                                             _g61893_)))
                                (let ((_tl61827_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61892_ 0)))
                                      (_rh61828_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61892_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61580_ _tl61827_))
                                    _rh61828_)))))
                          _pls61576_))
                    (_unsitr-rpl61582_
                     (lambda (_rpl61771_)
                       (let _u61773_ ((_pl-rhead61775_ _rpl61771_)
                                      (_pl-tail61776_ '())
                                      (_sit-rhead61777_ (reverse _sit61577_))
                                      (_sit-tail61778_ '()))
                         (let* ((_pl-rhead6177961788_ _pl-rhead61775_)
                                (_E6178261792_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6177961788_)))))
                           (let ((_K6178661822_ (lambda () _pl-tail61776_))
                                 (_K6178361806_
                                  (lambda (_plrh61796_ _c61797_)
                                    (if (member _c61797_
                                                _sit-tail61778_
                                                _eq61572_)
                                        (let ((__tmp61904
                                               (let ((__tmp61905
                                                      (reverse _pl-rhead61775_)))
                                                 (declare (not safe))
                                                 (_get-names61578_
                                                  __tmp61905)))
                                              (__tmp61903
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61578_
                                                  _pl-tail61776_)))
                                              (__tmp61901
                                               (let ((__tmp61902
                                                      (reverse _sit-rhead61777_)))
                                                 (declare (not safe))
                                                 (_get-names61578_
                                                  __tmp61902)))
                                              (__tmp61900
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61578_
                                                  _sit-tail61778_)))
                                              (__tmp61899
                                               (_get-name61574_ _c61797_)))
                                          (declare (not safe))
                                          (_err61579_
                                           'precedence-list-head:
                                           __tmp61904
                                           'precedence-list-tail:
                                           __tmp61903
                                           'single-inheritance-head:
                                           __tmp61901
                                           'single-inheritance-tail:
                                           __tmp61900
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61899))
                                        (let ((_g61894_
                                               (let ((__tmp61896
                                                      (lambda (_g6179861800_)
                                                        (_eq61572_
                                                         _c61797_
                                                         _g6179861800_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61896
                                                  _sit-rhead61777_
                                                  _sit-tail61778_))))
                                          (begin
                                            (let ((_g61895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61894_)
                                                         (##vector-length
                                                          _g61894_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61895_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61895_)))
                                            (let ((_sit-rh261803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61894_
                                                      0)))
                                                  (_sit-tl261804_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61894_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261803_))
                                                  (let ((__tmp61898
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61773_
                                                     _plrh61796_
                                                     __tmp61898
                                                     '()
                                                     _sit-tl261804_))
                                                  (let ((__tmp61897
                                                         (cdr _sit-rh261803_)))
                                                    (declare (not safe))
                                                    (_u61773_
                                                     _plrh61796_
                                                     _pl-tail61776_
                                                     __tmp61897
                                                     _sit-tl261804_))))))))))
                             (let ((_try-match6178161818_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6177961788_))
                                          (let ((_tl6178561811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6177961788_)))
                                                (_hd6178461809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6177961788_))))
                                            (let ((_c61814_ _hd6178461809_)
                                                  (_plrh61816_ _tl6178561811_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6178361806_
                                                 _plrh61816_
                                                 _c61814_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6178261792_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6177961788_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6178661822_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6178161818_)))))))))
                    (_g61906_
                     (let ((_g61907_
                            (let ((__tmp61909 (reverse _supers61566_)))
                              (declare (not safe))
                              (append1! _rpls61581_ __tmp61909))))
                       #!void
                       _g61907_))
                    (_g61910_
                     (let ((_g61911_
                            (set! _pls61576_
                                  (map _unsitr-rpl61582_ _rpls61581_))))
                       #!void
                       _g61911_))
                    (_c3-select-next61583_
                     (lambda (_tails61721_)
                       (let ((_candidate?61727_
                              (lambda (_c61723_)
                                (let ((__tmp61913
                                       (lambda (_tail61725_)
                                         (let ((__tmp61914
                                                (member _c61723_
                                                        (cdr _tail61725_)
                                                        _eq61572_)))
                                           (declare (not safe))
                                           (not __tmp61914)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61913 _tails61721_)))))
                         (let _loop61729_ ((_ts61731_ _tails61721_))
                           (let* ((_ts6173261742_ _ts61731_)
                                  (_else6173461750_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61579_))))
                                  (_K6173661756_
                                   (lambda (_rts61753_ _c61754_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61727_ _c61754_))
                                         _c61754_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61729_ _rts61753_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6173261742_))
                                 (let ((_hd6173761759_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6173261742_)))
                                       (_tl6173861761_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6173261742_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6173761759_))
                                       (let* ((_hd6173961764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6173761759_)))
                                              (_c61767_ _hd6173961764_)
                                              (_rts61769_ _tl6173861761_))
                                         (declare (not safe))
                                         (_K6173661756_ _rts61769_ _c61767_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61579_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61579_))))))))
                    (_remove-next!61584_
                     (lambda (_next61666_ _tails61667_)
                       (let _loop61669_ ((_t61671_ _tails61667_))
                         (let* ((_t6167261683_ _t61671_)
                                (_E6167561687_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6167261683_)))))
                           (let ((_K6168161718_ (lambda () _tails61667_))
                                 (_K6167661695_
                                  (lambda (_more61691_ _tail61692_ _head61693_)
                                    (if (_eq61572_ _head61693_ _next61666_)
                                        (set-car! _t61671_ _tail61692_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61669_ _more61691_)))))
                             (let ((_try-match6167461714_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6167261683_))
                                          (let ((_tl6167861700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6167261683_)))
                                                (_hd6167761698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6167261683_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6167761698_))
                                                (let ((_tl6168061705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6167761698_)))
                                                      (_hd6167961703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6167761698_))))
                                                  (let ((_head61708_
                                                         _hd6167961703_)
                                                        (_tail61710_
                                                         _tl6168061705_)
                                                        (_more61712_
                                                         _tl6167861700_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6167661695_
                                                       _more61712_
                                                       _tail61710_
                                                       _head61708_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6167561687_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6167561687_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6167261683_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6168161718_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6167461714_)))))))))
                    (_precedence-list61585_
                     (let _c3loop61616_ ((_rhead61618_ _rhead61565_)
                                         (_tails61619_ _pls61576_))
                       (let* ((_tails61621_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61619_)))
                              (_tails6162261632_ _tails61621_)
                              (_else6162561643_
                               (lambda ()
                                 (let ((_next61640_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61583_
                                           _tails61621_))))
                                   (let ((__tmp61916
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61640_ _rhead61618_)))
                                         (__tmp61915
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61584_
                                             _next61640_
                                             _tails61621_))))
                                     (declare (not safe))
                                     (_c3loop61616_ __tmp61916 __tmp61915))))))
                         (let ((_K6163061663_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61618_ _sit61577_))))
                               (_K6162761649_
                                (lambda (_tail61647_)
                                  (let ((__tmp61917
                                         (append _tail61647_ _sit61577_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61618_
                                     __tmp61917)))))
                           (let ((_try-match6162461659_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6162261632_))
                                        (let ((_tl6162961654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6162261632_)))
                                              (_hd6162861652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6162261632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6162961654_))
                                              (let ((_tail61657_
                                                     _hd6162861652_))
                                                (declare (not safe))
                                                (_K6162761649_ _tail61657_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6162561643_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6162561643_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6162261632_))
                                 (let () (declare (not safe)) (_K6163061663_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6162461659_))))))))
                    (_super-struct61586_
                     (let* ((_sit6158761595_ _sit61577_)
                            (_else6158961603_ (lambda () '#f))
                            (_K6159161608_ (lambda (_s61606_) _s61606_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6158761595_))
                           (let* ((_hd6159261611_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6158761595_)))
                                  (_s61614_ _hd6159261611_))
                             (declare (not safe))
                             (_K6159161608_ _s61614_))
                           (let () (declare (not safe)) (_else6158961603_))))))
            (values _precedence-list61585_ _super-struct61586_)))))
    (define c4-linearize__@
      (lambda (_keys6155061847_ . _args61849_)
        (apply c4-linearize__%
               _keys6155061847_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6155061847_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6155061847_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6155061847_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6155061847_ 'get-name: absent-value))
               _args61849_)))
    (define c4-linearize
      (lambda _args6155561855_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6155561855_)))))
