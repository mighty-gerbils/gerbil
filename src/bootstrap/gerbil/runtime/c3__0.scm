(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709213449)
  (begin
    (define c4-linearize__%
      (lambda (_g61904_
               _get-precedence-list6157161577_
               _struct?6157261579_
               _eq6157361581_
               _get-name6157461583_
               _rhead61585_
               _supers61586_)
        (let* ((_get-precedence-list61588_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6157161577_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6157161577_))
               (_struct?61590_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6157261579_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6157261579_))
               (_eq61592_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6157361581_ absent-value))
                    eq?
                    _eq6157361581_))
               (_get-name61594_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6157461583_ absent-value))
                    identity
                    _get-name6157461583_)))
          (letrec* ((_pls61596_ (map _get-precedence-list61588_ _supers61586_))
                    (_sit61597_ '())
                    (_get-names61598_
                     (lambda (_lst61862_) (map _get-name61594_ _lst61862_)))
                    (_err61599_
                     (lambda _a61860_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61905 (reverse _rhead61585_)))
                                (declare (not safe))
                                (_get-names61598_ __tmp61905))
                              'precedence-lists:
                              (map _get-names61598_ _pls61596_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61598_ _sit61597_))
                              _a61860_)))
                    (_merge-sit!61600_
                     (lambda (_sit261850_)
                       (if (let () (declare (not safe)) (null? _sit261850_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61597_))
                               (set! _sit61597_ _sit261850_)
                               (let _loop61852_ ((_t161854_ _sit61597_)
                                                 (_t261855_ _sit261850_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161854_ _sit261850_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261855_ _sit61597_))
                                         (set! _sit61597_ _sit261850_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161854_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261855_)))
                                             (let ((__tmp61908
                                                    (let ((__tmp61911
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61598_
                                                              _sit61597_)))
                                                          (__tmp61909
                                                           (let ((__tmp61910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61598_ _sit261850_))))
                     (declare (not safe))
                     (cons __tmp61910 '()))))
              (declare (not safe))
              (cons __tmp61911 __tmp61909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61599_
                                                'single-inheritance-incompatibility:
                                                __tmp61908))
                                             (let ((__tmp61907 (cdr _t161854_))
                                                   (__tmp61906
                                                    (cdr _t261855_)))
                                               (declare (not safe))
                                               (_loop61852_
                                                __tmp61907
                                                __tmp61906))))))))))
                    (_rpls61601_
                     (map (lambda (_pl61845_)
                            (let ((_g61912_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61590_
                                      _pl61845_
                                      '()))))
                              (begin
                                (let ((_g61913_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61912_)
                                             (##vector-length _g61912_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61913_ 2)))
                                      (error "Context expects 2 values"
                                             _g61913_)))
                                (let ((_tl61847_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61912_ 0)))
                                      (_rh61848_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61912_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61600_ _tl61847_))
                                    _rh61848_)))))
                          _pls61596_))
                    (_unsitr-rpl61602_
                     (lambda (_rpl61791_)
                       (let _u61793_ ((_pl-rhead61795_ _rpl61791_)
                                      (_pl-tail61796_ '())
                                      (_sit-rhead61797_ (reverse _sit61597_))
                                      (_sit-tail61798_ '()))
                         (let* ((_pl-rhead6179961808_ _pl-rhead61795_)
                                (_E6180261812_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6179961808_)))))
                           (let ((_K6180661842_ (lambda () _pl-tail61796_))
                                 (_K6180361826_
                                  (lambda (_plrh61816_ _c61817_)
                                    (if (member _c61817_
                                                _sit-tail61798_
                                                _eq61592_)
                                        (let ((__tmp61924
                                               (let ((__tmp61925
                                                      (reverse _pl-rhead61795_)))
                                                 (declare (not safe))
                                                 (_get-names61598_
                                                  __tmp61925)))
                                              (__tmp61923
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61598_
                                                  _pl-tail61796_)))
                                              (__tmp61921
                                               (let ((__tmp61922
                                                      (reverse _sit-rhead61797_)))
                                                 (declare (not safe))
                                                 (_get-names61598_
                                                  __tmp61922)))
                                              (__tmp61920
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61598_
                                                  _sit-tail61798_)))
                                              (__tmp61919
                                               (_get-name61594_ _c61817_)))
                                          (declare (not safe))
                                          (_err61599_
                                           'precedence-list-head:
                                           __tmp61924
                                           'precedence-list-tail:
                                           __tmp61923
                                           'single-inheritance-head:
                                           __tmp61921
                                           'single-inheritance-tail:
                                           __tmp61920
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61919))
                                        (let ((_g61914_
                                               (let ((__tmp61916
                                                      (lambda (_g6181861820_)
                                                        (_eq61592_
                                                         _c61817_
                                                         _g6181861820_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61916
                                                  _sit-rhead61797_
                                                  _sit-tail61798_))))
                                          (begin
                                            (let ((_g61915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61914_)
                                                         (##vector-length
                                                          _g61914_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61915_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61915_)))
                                            (let ((_sit-rh261823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61914_
                                                      0)))
                                                  (_sit-tl261824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61914_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261823_))
                                                  (let ((__tmp61918
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61793_
                                                     _plrh61816_
                                                     __tmp61918
                                                     '()
                                                     _sit-tl261824_))
                                                  (let ((__tmp61917
                                                         (cdr _sit-rh261823_)))
                                                    (declare (not safe))
                                                    (_u61793_
                                                     _plrh61816_
                                                     _pl-tail61796_
                                                     __tmp61917
                                                     _sit-tl261824_))))))))))
                             (let ((_try-match6180161838_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6179961808_))
                                          (let ((_tl6180561831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6179961808_)))
                                                (_hd6180461829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6179961808_))))
                                            (let ((_c61834_ _hd6180461829_)
                                                  (_plrh61836_ _tl6180561831_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6180361826_
                                                 _plrh61836_
                                                 _c61834_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6180261812_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6179961808_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6180661842_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6180161838_)))))))))
                    (_g61926_
                     (let ((_g61927_
                            (let ((__tmp61929 (reverse _supers61586_)))
                              (declare (not safe))
                              (append1! _rpls61601_ __tmp61929))))
                       #!void
                       _g61927_))
                    (_g61930_
                     (let ((_g61931_
                            (set! _pls61596_
                                  (map _unsitr-rpl61602_ _rpls61601_))))
                       #!void
                       _g61931_))
                    (_c3-select-next61603_
                     (lambda (_tails61741_)
                       (let ((_candidate?61747_
                              (lambda (_c61743_)
                                (let ((__tmp61933
                                       (lambda (_tail61745_)
                                         (let ((__tmp61934
                                                (member _c61743_
                                                        (cdr _tail61745_)
                                                        _eq61592_)))
                                           (declare (not safe))
                                           (not __tmp61934)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61933 _tails61741_)))))
                         (let _loop61749_ ((_ts61751_ _tails61741_))
                           (let* ((_ts6175261762_ _ts61751_)
                                  (_else6175461770_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61599_))))
                                  (_K6175661776_
                                   (lambda (_rts61773_ _c61774_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61747_ _c61774_))
                                         _c61774_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61749_ _rts61773_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6175261762_))
                                 (let ((_hd6175761779_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6175261762_)))
                                       (_tl6175861781_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6175261762_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6175761779_))
                                       (let* ((_hd6175961784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6175761779_)))
                                              (_c61787_ _hd6175961784_)
                                              (_rts61789_ _tl6175861781_))
                                         (declare (not safe))
                                         (_K6175661776_ _rts61789_ _c61787_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61599_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61599_))))))))
                    (_remove-next!61604_
                     (lambda (_next61686_ _tails61687_)
                       (let _loop61689_ ((_t61691_ _tails61687_))
                         (let* ((_t6169261703_ _t61691_)
                                (_E6169561707_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6169261703_)))))
                           (let ((_K6170161738_ (lambda () _tails61687_))
                                 (_K6169661715_
                                  (lambda (_more61711_ _tail61712_ _head61713_)
                                    (if (_eq61592_ _head61713_ _next61686_)
                                        (set-car! _t61691_ _tail61712_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61689_ _more61711_)))))
                             (let ((_try-match6169461734_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6169261703_))
                                          (let ((_tl6169861720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6169261703_)))
                                                (_hd6169761718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6169261703_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6169761718_))
                                                (let ((_tl6170061725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6169761718_)))
                                                      (_hd6169961723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6169761718_))))
                                                  (let ((_head61728_
                                                         _hd6169961723_)
                                                        (_tail61730_
                                                         _tl6170061725_)
                                                        (_more61732_
                                                         _tl6169861720_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6169661715_
                                                       _more61732_
                                                       _tail61730_
                                                       _head61728_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6169561707_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6169561707_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6169261703_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6170161738_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6169461734_)))))))))
                    (_precedence-list61605_
                     (let _c3loop61636_ ((_rhead61638_ _rhead61585_)
                                         (_tails61639_ _pls61596_))
                       (let* ((_tails61641_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61639_)))
                              (_tails6164261652_ _tails61641_)
                              (_else6164561663_
                               (lambda ()
                                 (let ((_next61660_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61603_
                                           _tails61641_))))
                                   (let ((__tmp61936
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61660_ _rhead61638_)))
                                         (__tmp61935
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61604_
                                             _next61660_
                                             _tails61641_))))
                                     (declare (not safe))
                                     (_c3loop61636_ __tmp61936 __tmp61935))))))
                         (let ((_K6165061683_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61638_ _sit61597_))))
                               (_K6164761669_
                                (lambda (_tail61667_)
                                  (let ((__tmp61937
                                         (append _tail61667_ _sit61597_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61638_
                                     __tmp61937)))))
                           (let ((_try-match6164461679_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6164261652_))
                                        (let ((_tl6164961674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6164261652_)))
                                              (_hd6164861672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6164261652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6164961674_))
                                              (let ((_tail61677_
                                                     _hd6164861672_))
                                                (declare (not safe))
                                                (_K6164761669_ _tail61677_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6164561663_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6164561663_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6164261652_))
                                 (let () (declare (not safe)) (_K6165061683_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6164461679_))))))))
                    (_super-struct61606_
                     (let* ((_sit6160761615_ _sit61597_)
                            (_else6160961623_ (lambda () '#f))
                            (_K6161161628_ (lambda (_s61626_) _s61626_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6160761615_))
                           (let* ((_hd6161261631_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6160761615_)))
                                  (_s61634_ _hd6161261631_))
                             (declare (not safe))
                             (_K6161161628_ _s61634_))
                           (let () (declare (not safe)) (_else6160961623_))))))
            (values _precedence-list61605_ _super-struct61606_)))))
    (define c4-linearize__@
      (lambda (_keys6157061867_ . _args61869_)
        (apply c4-linearize__%
               _keys6157061867_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6157061867_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6157061867_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6157061867_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6157061867_ 'get-name: absent-value))
               _args61869_)))
    (define c4-linearize
      (lambda _args6157561875_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6157561875_)))))
