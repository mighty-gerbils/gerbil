(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709127355)
  (begin
    (define c4-linearize__%
      (lambda (_g61894_
               _get-precedence-list6156161567_
               _struct?6156261569_
               _eq6156361571_
               _get-name6156461573_
               _rhead61575_
               _supers61576_)
        (let* ((_get-precedence-list61578_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6156161567_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6156161567_))
               (_struct?61580_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6156261569_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6156261569_))
               (_eq61582_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6156361571_ absent-value))
                    eq?
                    _eq6156361571_))
               (_get-name61584_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6156461573_ absent-value))
                    identity
                    _get-name6156461573_)))
          (letrec* ((_pls61586_ (map _get-precedence-list61578_ _supers61576_))
                    (_sit61587_ '())
                    (_get-names61588_
                     (lambda (_lst61852_) (map _get-name61584_ _lst61852_)))
                    (_err61589_
                     (lambda _a61850_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61895 (reverse _rhead61575_)))
                                (declare (not safe))
                                (_get-names61588_ __tmp61895))
                              'precedence-lists:
                              (map _get-names61588_ _pls61586_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61588_ _sit61587_))
                              _a61850_)))
                    (_merge-sit!61590_
                     (lambda (_sit261840_)
                       (if (let () (declare (not safe)) (null? _sit261840_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61587_))
                               (set! _sit61587_ _sit261840_)
                               (let _loop61842_ ((_t161844_ _sit61587_)
                                                 (_t261845_ _sit261840_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161844_ _sit261840_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261845_ _sit61587_))
                                         (set! _sit61587_ _sit261840_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161844_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261845_)))
                                             (let ((__tmp61898
                                                    (let ((__tmp61901
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61588_
                                                              _sit61587_)))
                                                          (__tmp61899
                                                           (let ((__tmp61900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61588_ _sit261840_))))
                     (declare (not safe))
                     (cons __tmp61900 '()))))
              (declare (not safe))
              (cons __tmp61901 __tmp61899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61589_
                                                'single-inheritance-incompatibility:
                                                __tmp61898))
                                             (let ((__tmp61897 (cdr _t161844_))
                                                   (__tmp61896
                                                    (cdr _t261845_)))
                                               (declare (not safe))
                                               (_loop61842_
                                                __tmp61897
                                                __tmp61896))))))))))
                    (_rpls61591_
                     (map (lambda (_pl61835_)
                            (let ((_g61902_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61580_
                                      _pl61835_
                                      '()))))
                              (begin
                                (let ((_g61903_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61902_)
                                             (##vector-length _g61902_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61903_ 2)))
                                      (error "Context expects 2 values"
                                             _g61903_)))
                                (let ((_tl61837_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61902_ 0)))
                                      (_rh61838_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61902_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61590_ _tl61837_))
                                    _rh61838_)))))
                          _pls61586_))
                    (_unsitr-rpl61592_
                     (lambda (_rpl61781_)
                       (let _u61783_ ((_pl-rhead61785_ _rpl61781_)
                                      (_pl-tail61786_ '())
                                      (_sit-rhead61787_ (reverse _sit61587_))
                                      (_sit-tail61788_ '()))
                         (let* ((_pl-rhead6178961798_ _pl-rhead61785_)
                                (_E6179261802_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6178961798_)))))
                           (let ((_K6179661832_ (lambda () _pl-tail61786_))
                                 (_K6179361816_
                                  (lambda (_plrh61806_ _c61807_)
                                    (if (member _c61807_
                                                _sit-tail61788_
                                                _eq61582_)
                                        (let ((__tmp61914
                                               (let ((__tmp61915
                                                      (reverse _pl-rhead61785_)))
                                                 (declare (not safe))
                                                 (_get-names61588_
                                                  __tmp61915)))
                                              (__tmp61913
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61588_
                                                  _pl-tail61786_)))
                                              (__tmp61911
                                               (let ((__tmp61912
                                                      (reverse _sit-rhead61787_)))
                                                 (declare (not safe))
                                                 (_get-names61588_
                                                  __tmp61912)))
                                              (__tmp61910
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61588_
                                                  _sit-tail61788_)))
                                              (__tmp61909
                                               (_get-name61584_ _c61807_)))
                                          (declare (not safe))
                                          (_err61589_
                                           'precedence-list-head:
                                           __tmp61914
                                           'precedence-list-tail:
                                           __tmp61913
                                           'single-inheritance-head:
                                           __tmp61911
                                           'single-inheritance-tail:
                                           __tmp61910
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61909))
                                        (let ((_g61904_
                                               (let ((__tmp61906
                                                      (lambda (_g6180861810_)
                                                        (_eq61582_
                                                         _c61807_
                                                         _g6180861810_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61906
                                                  _sit-rhead61787_
                                                  _sit-tail61788_))))
                                          (begin
                                            (let ((_g61905_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61904_)
                                                         (##vector-length
                                                          _g61904_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61905_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61905_)))
                                            (let ((_sit-rh261813_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61904_
                                                      0)))
                                                  (_sit-tl261814_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61904_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261813_))
                                                  (let ((__tmp61908
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61783_
                                                     _plrh61806_
                                                     __tmp61908
                                                     '()
                                                     _sit-tl261814_))
                                                  (let ((__tmp61907
                                                         (cdr _sit-rh261813_)))
                                                    (declare (not safe))
                                                    (_u61783_
                                                     _plrh61806_
                                                     _pl-tail61786_
                                                     __tmp61907
                                                     _sit-tl261814_))))))))))
                             (let ((_try-match6179161828_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6178961798_))
                                          (let ((_tl6179561821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6178961798_)))
                                                (_hd6179461819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6178961798_))))
                                            (let ((_c61824_ _hd6179461819_)
                                                  (_plrh61826_ _tl6179561821_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6179361816_
                                                 _plrh61826_
                                                 _c61824_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6179261802_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6178961798_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6179661832_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6179161828_)))))))))
                    (_g61916_
                     (let ((_g61917_
                            (let ((__tmp61919 (reverse _supers61576_)))
                              (declare (not safe))
                              (append1! _rpls61591_ __tmp61919))))
                       #!void
                       _g61917_))
                    (_g61920_
                     (let ((_g61921_
                            (set! _pls61586_
                                  (map _unsitr-rpl61592_ _rpls61591_))))
                       #!void
                       _g61921_))
                    (_c3-select-next61593_
                     (lambda (_tails61731_)
                       (let ((_candidate?61737_
                              (lambda (_c61733_)
                                (let ((__tmp61923
                                       (lambda (_tail61735_)
                                         (let ((__tmp61924
                                                (member _c61733_
                                                        (cdr _tail61735_)
                                                        _eq61582_)))
                                           (declare (not safe))
                                           (not __tmp61924)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61923 _tails61731_)))))
                         (let _loop61739_ ((_ts61741_ _tails61731_))
                           (let* ((_ts6174261752_ _ts61741_)
                                  (_else6174461760_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61589_))))
                                  (_K6174661766_
                                   (lambda (_rts61763_ _c61764_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61737_ _c61764_))
                                         _c61764_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61739_ _rts61763_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6174261752_))
                                 (let ((_hd6174761769_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6174261752_)))
                                       (_tl6174861771_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6174261752_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6174761769_))
                                       (let* ((_hd6174961774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6174761769_)))
                                              (_c61777_ _hd6174961774_)
                                              (_rts61779_ _tl6174861771_))
                                         (declare (not safe))
                                         (_K6174661766_ _rts61779_ _c61777_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61589_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61589_))))))))
                    (_remove-next!61594_
                     (lambda (_next61676_ _tails61677_)
                       (let _loop61679_ ((_t61681_ _tails61677_))
                         (let* ((_t6168261693_ _t61681_)
                                (_E6168561697_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6168261693_)))))
                           (let ((_K6169161728_ (lambda () _tails61677_))
                                 (_K6168661705_
                                  (lambda (_more61701_ _tail61702_ _head61703_)
                                    (if (_eq61582_ _head61703_ _next61676_)
                                        (set-car! _t61681_ _tail61702_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61679_ _more61701_)))))
                             (let ((_try-match6168461724_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6168261693_))
                                          (let ((_tl6168861710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6168261693_)))
                                                (_hd6168761708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6168261693_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6168761708_))
                                                (let ((_tl6169061715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6168761708_)))
                                                      (_hd6168961713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6168761708_))))
                                                  (let ((_head61718_
                                                         _hd6168961713_)
                                                        (_tail61720_
                                                         _tl6169061715_)
                                                        (_more61722_
                                                         _tl6168861710_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6168661705_
                                                       _more61722_
                                                       _tail61720_
                                                       _head61718_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6168561697_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6168561697_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6168261693_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6169161728_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6168461724_)))))))))
                    (_precedence-list61595_
                     (let _c3loop61626_ ((_rhead61628_ _rhead61575_)
                                         (_tails61629_ _pls61586_))
                       (let* ((_tails61631_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61629_)))
                              (_tails6163261642_ _tails61631_)
                              (_else6163561653_
                               (lambda ()
                                 (let ((_next61650_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61593_
                                           _tails61631_))))
                                   (let ((__tmp61926
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61650_ _rhead61628_)))
                                         (__tmp61925
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61594_
                                             _next61650_
                                             _tails61631_))))
                                     (declare (not safe))
                                     (_c3loop61626_ __tmp61926 __tmp61925))))))
                         (let ((_K6164061673_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61628_ _sit61587_))))
                               (_K6163761659_
                                (lambda (_tail61657_)
                                  (let ((__tmp61927
                                         (append _tail61657_ _sit61587_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61628_
                                     __tmp61927)))))
                           (let ((_try-match6163461669_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6163261642_))
                                        (let ((_tl6163961664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6163261642_)))
                                              (_hd6163861662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6163261642_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6163961664_))
                                              (let ((_tail61667_
                                                     _hd6163861662_))
                                                (declare (not safe))
                                                (_K6163761659_ _tail61667_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6163561653_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6163561653_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6163261642_))
                                 (let () (declare (not safe)) (_K6164061673_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6163461669_))))))))
                    (_super-struct61596_
                     (let* ((_sit6159761605_ _sit61587_)
                            (_else6159961613_ (lambda () '#f))
                            (_K6160161618_ (lambda (_s61616_) _s61616_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6159761605_))
                           (let* ((_hd6160261621_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6159761605_)))
                                  (_s61624_ _hd6160261621_))
                             (declare (not safe))
                             (_K6160161618_ _s61624_))
                           (let () (declare (not safe)) (_else6159961613_))))))
            (values _precedence-list61595_ _super-struct61596_)))))
    (define c4-linearize__@
      (lambda (_keys6156061857_ . _args61859_)
        (apply c4-linearize__%
               _keys6156061857_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6156061857_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6156061857_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6156061857_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6156061857_ 'get-name: absent-value))
               _args61859_)))
    (define c4-linearize
      (lambda _args6156561865_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6156561865_)))))
