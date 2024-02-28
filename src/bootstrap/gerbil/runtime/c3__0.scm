(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709159706)
  (begin
    (define c4-linearize__%
      (lambda (_g61896_
               _get-precedence-list6156361569_
               _struct?6156461571_
               _eq6156561573_
               _get-name6156661575_
               _rhead61577_
               _supers61578_)
        (let* ((_get-precedence-list61580_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6156361569_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6156361569_))
               (_struct?61582_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6156461571_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6156461571_))
               (_eq61584_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6156561573_ absent-value))
                    eq?
                    _eq6156561573_))
               (_get-name61586_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6156661575_ absent-value))
                    identity
                    _get-name6156661575_)))
          (letrec* ((_pls61588_ (map _get-precedence-list61580_ _supers61578_))
                    (_sit61589_ '())
                    (_get-names61590_
                     (lambda (_lst61854_) (map _get-name61586_ _lst61854_)))
                    (_err61591_
                     (lambda _a61852_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61897 (reverse _rhead61577_)))
                                (declare (not safe))
                                (_get-names61590_ __tmp61897))
                              'precedence-lists:
                              (map _get-names61590_ _pls61588_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61590_ _sit61589_))
                              _a61852_)))
                    (_merge-sit!61592_
                     (lambda (_sit261842_)
                       (if (let () (declare (not safe)) (null? _sit261842_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61589_))
                               (set! _sit61589_ _sit261842_)
                               (let _loop61844_ ((_t161846_ _sit61589_)
                                                 (_t261847_ _sit261842_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161846_ _sit261842_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261847_ _sit61589_))
                                         (set! _sit61589_ _sit261842_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161846_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261847_)))
                                             (let ((__tmp61900
                                                    (let ((__tmp61903
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61590_
                                                              _sit61589_)))
                                                          (__tmp61901
                                                           (let ((__tmp61902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61590_ _sit261842_))))
                     (declare (not safe))
                     (cons __tmp61902 '()))))
              (declare (not safe))
              (cons __tmp61903 __tmp61901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61591_
                                                'single-inheritance-incompatibility:
                                                __tmp61900))
                                             (let ((__tmp61899 (cdr _t161846_))
                                                   (__tmp61898
                                                    (cdr _t261847_)))
                                               (declare (not safe))
                                               (_loop61844_
                                                __tmp61899
                                                __tmp61898))))))))))
                    (_rpls61593_
                     (map (lambda (_pl61837_)
                            (let ((_g61904_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61582_
                                      _pl61837_
                                      '()))))
                              (begin
                                (let ((_g61905_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61904_)
                                             (##vector-length _g61904_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61905_ 2)))
                                      (error "Context expects 2 values"
                                             _g61905_)))
                                (let ((_tl61839_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61904_ 0)))
                                      (_rh61840_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61904_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61592_ _tl61839_))
                                    _rh61840_)))))
                          _pls61588_))
                    (_unsitr-rpl61594_
                     (lambda (_rpl61783_)
                       (let _u61785_ ((_pl-rhead61787_ _rpl61783_)
                                      (_pl-tail61788_ '())
                                      (_sit-rhead61789_ (reverse _sit61589_))
                                      (_sit-tail61790_ '()))
                         (let* ((_pl-rhead6179161800_ _pl-rhead61787_)
                                (_E6179461804_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6179161800_)))))
                           (let ((_K6179861834_ (lambda () _pl-tail61788_))
                                 (_K6179561818_
                                  (lambda (_plrh61808_ _c61809_)
                                    (if (member _c61809_
                                                _sit-tail61790_
                                                _eq61584_)
                                        (let ((__tmp61916
                                               (let ((__tmp61917
                                                      (reverse _pl-rhead61787_)))
                                                 (declare (not safe))
                                                 (_get-names61590_
                                                  __tmp61917)))
                                              (__tmp61915
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61590_
                                                  _pl-tail61788_)))
                                              (__tmp61913
                                               (let ((__tmp61914
                                                      (reverse _sit-rhead61789_)))
                                                 (declare (not safe))
                                                 (_get-names61590_
                                                  __tmp61914)))
                                              (__tmp61912
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61590_
                                                  _sit-tail61790_)))
                                              (__tmp61911
                                               (_get-name61586_ _c61809_)))
                                          (declare (not safe))
                                          (_err61591_
                                           'precedence-list-head:
                                           __tmp61916
                                           'precedence-list-tail:
                                           __tmp61915
                                           'single-inheritance-head:
                                           __tmp61913
                                           'single-inheritance-tail:
                                           __tmp61912
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61911))
                                        (let ((_g61906_
                                               (let ((__tmp61908
                                                      (lambda (_g6181061812_)
                                                        (_eq61584_
                                                         _c61809_
                                                         _g6181061812_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61908
                                                  _sit-rhead61789_
                                                  _sit-tail61790_))))
                                          (begin
                                            (let ((_g61907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61906_)
                                                         (##vector-length
                                                          _g61906_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61907_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61907_)))
                                            (let ((_sit-rh261815_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61906_
                                                      0)))
                                                  (_sit-tl261816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61906_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261815_))
                                                  (let ((__tmp61910
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61785_
                                                     _plrh61808_
                                                     __tmp61910
                                                     '()
                                                     _sit-tl261816_))
                                                  (let ((__tmp61909
                                                         (cdr _sit-rh261815_)))
                                                    (declare (not safe))
                                                    (_u61785_
                                                     _plrh61808_
                                                     _pl-tail61788_
                                                     __tmp61909
                                                     _sit-tl261816_))))))))))
                             (let ((_try-match6179361830_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6179161800_))
                                          (let ((_tl6179761823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6179161800_)))
                                                (_hd6179661821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6179161800_))))
                                            (let ((_c61826_ _hd6179661821_)
                                                  (_plrh61828_ _tl6179761823_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6179561818_
                                                 _plrh61828_
                                                 _c61826_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6179461804_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6179161800_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6179861834_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6179361830_)))))))))
                    (_g61918_
                     (let ((_g61919_
                            (let ((__tmp61921 (reverse _supers61578_)))
                              (declare (not safe))
                              (append1! _rpls61593_ __tmp61921))))
                       #!void
                       _g61919_))
                    (_g61922_
                     (let ((_g61923_
                            (set! _pls61588_
                                  (map _unsitr-rpl61594_ _rpls61593_))))
                       #!void
                       _g61923_))
                    (_c3-select-next61595_
                     (lambda (_tails61733_)
                       (let ((_candidate?61739_
                              (lambda (_c61735_)
                                (let ((__tmp61925
                                       (lambda (_tail61737_)
                                         (let ((__tmp61926
                                                (member _c61735_
                                                        (cdr _tail61737_)
                                                        _eq61584_)))
                                           (declare (not safe))
                                           (not __tmp61926)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61925 _tails61733_)))))
                         (let _loop61741_ ((_ts61743_ _tails61733_))
                           (let* ((_ts6174461754_ _ts61743_)
                                  (_else6174661762_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61591_))))
                                  (_K6174861768_
                                   (lambda (_rts61765_ _c61766_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61739_ _c61766_))
                                         _c61766_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61741_ _rts61765_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6174461754_))
                                 (let ((_hd6174961771_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6174461754_)))
                                       (_tl6175061773_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6174461754_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6174961771_))
                                       (let* ((_hd6175161776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6174961771_)))
                                              (_c61779_ _hd6175161776_)
                                              (_rts61781_ _tl6175061773_))
                                         (declare (not safe))
                                         (_K6174861768_ _rts61781_ _c61779_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61591_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61591_))))))))
                    (_remove-next!61596_
                     (lambda (_next61678_ _tails61679_)
                       (let _loop61681_ ((_t61683_ _tails61679_))
                         (let* ((_t6168461695_ _t61683_)
                                (_E6168761699_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6168461695_)))))
                           (let ((_K6169361730_ (lambda () _tails61679_))
                                 (_K6168861707_
                                  (lambda (_more61703_ _tail61704_ _head61705_)
                                    (if (_eq61584_ _head61705_ _next61678_)
                                        (set-car! _t61683_ _tail61704_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61681_ _more61703_)))))
                             (let ((_try-match6168661726_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6168461695_))
                                          (let ((_tl6169061712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6168461695_)))
                                                (_hd6168961710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6168461695_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6168961710_))
                                                (let ((_tl6169261717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6168961710_)))
                                                      (_hd6169161715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6168961710_))))
                                                  (let ((_head61720_
                                                         _hd6169161715_)
                                                        (_tail61722_
                                                         _tl6169261717_)
                                                        (_more61724_
                                                         _tl6169061712_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6168861707_
                                                       _more61724_
                                                       _tail61722_
                                                       _head61720_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6168761699_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6168761699_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6168461695_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6169361730_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6168661726_)))))))))
                    (_precedence-list61597_
                     (let _c3loop61628_ ((_rhead61630_ _rhead61577_)
                                         (_tails61631_ _pls61588_))
                       (let* ((_tails61633_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61631_)))
                              (_tails6163461644_ _tails61633_)
                              (_else6163761655_
                               (lambda ()
                                 (let ((_next61652_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61595_
                                           _tails61633_))))
                                   (let ((__tmp61928
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61652_ _rhead61630_)))
                                         (__tmp61927
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61596_
                                             _next61652_
                                             _tails61633_))))
                                     (declare (not safe))
                                     (_c3loop61628_ __tmp61928 __tmp61927))))))
                         (let ((_K6164261675_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61630_ _sit61589_))))
                               (_K6163961661_
                                (lambda (_tail61659_)
                                  (let ((__tmp61929
                                         (append _tail61659_ _sit61589_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61630_
                                     __tmp61929)))))
                           (let ((_try-match6163661671_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6163461644_))
                                        (let ((_tl6164161666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6163461644_)))
                                              (_hd6164061664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6163461644_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6164161666_))
                                              (let ((_tail61669_
                                                     _hd6164061664_))
                                                (declare (not safe))
                                                (_K6163961661_ _tail61669_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6163761655_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6163761655_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6163461644_))
                                 (let () (declare (not safe)) (_K6164261675_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6163661671_))))))))
                    (_super-struct61598_
                     (let* ((_sit6159961607_ _sit61589_)
                            (_else6160161615_ (lambda () '#f))
                            (_K6160361620_ (lambda (_s61618_) _s61618_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6159961607_))
                           (let* ((_hd6160461623_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6159961607_)))
                                  (_s61626_ _hd6160461623_))
                             (declare (not safe))
                             (_K6160361620_ _s61626_))
                           (let () (declare (not safe)) (_else6160161615_))))))
            (values _precedence-list61597_ _super-struct61598_)))))
    (define c4-linearize__@
      (lambda (_keys6156261859_ . _args61861_)
        (apply c4-linearize__%
               _keys6156261859_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6156261859_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6156261859_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6156261859_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6156261859_ 'get-name: absent-value))
               _args61861_)))
    (define c4-linearize
      (lambda _args6156761867_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6156761867_)))))
