(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710064745)
  (begin
    (define c4-linearize__%
      (lambda (_g58855_
               _get-precedence-list5852258528_
               _struct?5852358530_
               _eq5852458532_
               _get-name5852558534_
               _rhead58536_
               _supers58537_)
        (let* ((_get-precedence-list58539_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list5852258528_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list5852258528_))
               (_struct?58541_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?5852358530_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?5852358530_))
               (_eq58543_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq5852458532_ absent-value))
                    eq?
                    _eq5852458532_))
               (_get-name58545_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name5852558534_ absent-value))
                    identity
                    _get-name5852558534_)))
          (letrec* ((_pls58547_ (map _get-precedence-list58539_ _supers58537_))
                    (_sit58548_ '())
                    (_get-names58549_
                     (lambda (_lst58813_) (map _get-name58545_ _lst58813_)))
                    (_err58550_
                     (lambda _a58811_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp58856 (reverse _rhead58536_)))
                                (declare (not safe))
                                (_get-names58549_ __tmp58856))
                              'precedence-lists:
                              (map _get-names58549_ _pls58547_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names58549_ _sit58548_))
                              _a58811_)))
                    (_merge-sit!58551_
                     (lambda (_sit258801_)
                       (if (let () (declare (not safe)) (null? _sit258801_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit58548_))
                               (set! _sit58548_ _sit258801_)
                               (let _loop58803_ ((_t158805_ _sit58548_)
                                                 (_t258806_ _sit258801_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t158805_ _sit258801_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t258806_ _sit58548_))
                                         (set! _sit58548_ _sit258801_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t158805_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t258806_)))
                                             (let ((__tmp58857
                                                    (let ((__tmp58860
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names58549_
                                                              _sit58548_)))
                                                          (__tmp58858
                                                           (let ((__tmp58859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names58549_ _sit258801_))))
                     (declare (not safe))
                     (cons __tmp58859 '()))))
              (declare (not safe))
              (cons __tmp58860 __tmp58858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err58550_
                                                'single-inheritance-incompatibility:
                                                __tmp58857))
                                             (let ((__tmp58862 (cdr _t158805_))
                                                   (__tmp58861
                                                    (cdr _t258806_)))
                                               (declare (not safe))
                                               (_loop58803_
                                                __tmp58862
                                                __tmp58861))))))))))
                    (_rpls58552_
                     (map (lambda (_pl58796_)
                            (let ((_g58863_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?58541_
                                      _pl58796_
                                      '()))))
                              (begin
                                (let ((_g58864_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g58863_)
                                             (##vector-length _g58863_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g58864_ 2)))
                                      (error "Context expects 2 values"
                                             _g58864_)))
                                (let ((_tl58798_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g58863_ 0)))
                                      (_rh58799_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g58863_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!58551_ _tl58798_))
                                    _rh58799_)))))
                          _pls58547_))
                    (_unsitr-rpl58553_
                     (lambda (_rpl58742_)
                       (let _u58744_ ((_pl-rhead58746_ _rpl58742_)
                                      (_pl-tail58747_ '())
                                      (_sit-rhead58748_ (reverse _sit58548_))
                                      (_sit-tail58749_ '()))
                         (let* ((_pl-rhead5875058759_ _pl-rhead58746_)
                                (_E5875358763_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead5875058759_))))
                           (let ((_K5875758793_ (lambda () _pl-tail58747_))
                                 (_K5875458777_
                                  (lambda (_plrh58767_ _c58768_)
                                    (if (member _c58768_
                                                _sit-tail58749_
                                                _eq58543_)
                                        (let ((__tmp58870
                                               (let ((__tmp58871
                                                      (reverse _pl-rhead58746_)))
                                                 (declare (not safe))
                                                 (_get-names58549_
                                                  __tmp58871)))
                                              (__tmp58869
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names58549_
                                                  _pl-tail58747_)))
                                              (__tmp58867
                                               (let ((__tmp58868
                                                      (reverse _sit-rhead58748_)))
                                                 (declare (not safe))
                                                 (_get-names58549_
                                                  __tmp58868)))
                                              (__tmp58866
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names58549_
                                                  _sit-tail58749_)))
                                              (__tmp58865
                                               (_get-name58545_ _c58768_)))
                                          (declare (not safe))
                                          (_err58550_
                                           'precedence-list-head:
                                           __tmp58870
                                           'precedence-list-tail:
                                           __tmp58869
                                           'single-inheritance-head:
                                           __tmp58867
                                           'single-inheritance-tail:
                                           __tmp58866
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp58865))
                                        (let ((_g58872_
                                               (let ((__tmp58874
                                                      (lambda (_g5876958771_)
                                                        (_eq58543_
                                                         _c58768_
                                                         _g5876958771_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp58874
                                                  _sit-rhead58748_
                                                  _sit-tail58749_))))
                                          (begin
                                            (let ((_g58873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g58872_)
                                                         (##vector-length
                                                          _g58872_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g58873_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g58873_)))
                                            (let ((_sit-rh258774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g58872_
                                                      0)))
                                                  (_sit-tl258775_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g58872_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh258774_))
                                                  (let ((__tmp58875
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c58768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail58747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u58744_
                                                     _plrh58767_
                                                     __tmp58875
                                                     '()
                                                     _sit-tl258775_))
                                                  (let ((__tmp58876
                                                         (cdr _sit-rh258774_)))
                                                    (declare (not safe))
                                                    (_u58744_
                                                     _plrh58767_
                                                     _pl-tail58747_
                                                     __tmp58876
                                                     _sit-tl258775_))))))))))
                             (let ((_try-match5875258789_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead5875058759_))
                                          (let ((_tl5875658782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead5875058759_)))
                                                (_hd5875558780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead5875058759_))))
                                            (let ((_c58785_ _hd5875558780_)
                                                  (_plrh58787_ _tl5875658782_))
                                              (let ()
                                                (declare (not safe))
                                                (_K5875458777_
                                                 _plrh58787_
                                                 _c58785_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5875358763_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead5875058759_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5875758793_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5875258789_)))))))))
                    (_g58877_
                     (let ((_g58878_
                            (let ((__tmp58880 (reverse _supers58537_)))
                              (declare (not safe))
                              (append1! _rpls58552_ __tmp58880))))
                       #!void
                       _g58878_))
                    (_g58881_
                     (let ((_g58882_
                            (set! _pls58547_
                                  (map _unsitr-rpl58553_ _rpls58552_))))
                       #!void
                       _g58882_))
                    (_c3-select-next58554_
                     (lambda (_tails58692_)
                       (let ((_candidate?58698_
                              (lambda (_c58694_)
                                (let ((__tmp58884
                                       (lambda (_tail58696_)
                                         (let ((__tmp58885
                                                (member _c58694_
                                                        (cdr _tail58696_)
                                                        _eq58543_)))
                                           (declare (not safe))
                                           (not __tmp58885)))))
                                  (declare (not safe))
                                  (andmap1 __tmp58884 _tails58692_)))))
                         (let _loop58700_ ((_ts58702_ _tails58692_))
                           (let* ((_ts5870358713_ _ts58702_)
                                  (_else5870558721_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err58550_))))
                                  (_K5870758727_
                                   (lambda (_rts58724_ _c58725_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?58698_ _c58725_))
                                         _c58725_
                                         (let ()
                                           (declare (not safe))
                                           (_loop58700_ _rts58724_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts5870358713_))
                                 (let ((_hd5870858730_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts5870358713_)))
                                       (_tl5870958732_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts5870358713_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd5870858730_))
                                       (let* ((_hd5871058735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd5870858730_)))
                                              (_c58738_ _hd5871058735_)
                                              (_rts58740_ _tl5870958732_))
                                         (declare (not safe))
                                         (_K5870758727_ _rts58740_ _c58738_))
                                       (let ()
                                         (declare (not safe))
                                         (_err58550_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err58550_))))))))
                    (_remove-next!58555_
                     (lambda (_next58637_ _tails58638_)
                       (let _loop58640_ ((_t58642_ _tails58638_))
                         (let* ((_t5864358654_ _t58642_)
                                (_E5864658658_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t5864358654_))))
                           (let ((_K5865258689_ (lambda () _tails58638_))
                                 (_K5864758666_
                                  (lambda (_more58662_ _tail58663_ _head58664_)
                                    (if (_eq58543_ _head58664_ _next58637_)
                                        (set-car! _t58642_ _tail58663_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop58640_ _more58662_)))))
                             (let ((_try-match5864558685_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t5864358654_))
                                          (let ((_tl5864958671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t5864358654_)))
                                                (_hd5864858669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t5864358654_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd5864858669_))
                                                (let ((_tl5865158676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd5864858669_)))
                                                      (_hd5865058674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd5864858669_))))
                                                  (let ((_head58679_
                                                         _hd5865058674_)
                                                        (_tail58681_
                                                         _tl5865158676_)
                                                        (_more58683_
                                                         _tl5864958671_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K5864758666_
                                                       _more58683_
                                                       _tail58681_
                                                       _head58679_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E5864658658_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5864658658_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t5864358654_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5865258689_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5864558685_)))))))))
                    (_precedence-list58556_
                     (let _c3loop58587_ ((_rhead58589_ _rhead58536_)
                                         (_tails58590_ _pls58547_))
                       (let* ((_tails58592_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails58590_)))
                              (_tails5859358603_ _tails58592_)
                              (_else5859658614_
                               (lambda ()
                                 (let ((_next58611_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next58554_
                                           _tails58592_))))
                                   (let ((__tmp58887
                                          (let ()
                                            (declare (not safe))
                                            (cons _next58611_ _rhead58589_)))
                                         (__tmp58886
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!58555_
                                             _next58611_
                                             _tails58592_))))
                                     (declare (not safe))
                                     (_c3loop58587_ __tmp58887 __tmp58886))))))
                         (let ((_K5860158634_
                                (lambda ()
                                  (append-reverse _rhead58589_ _sit58548_)))
                               (_K5859858620_
                                (lambda (_tail58618_)
                                  (append-reverse
                                   _rhead58589_
                                   (append _tail58618_ _sit58548_)))))
                           (let ((_try-match5859558630_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails5859358603_))
                                        (let ((_tl5860058625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails5859358603_)))
                                              (_hd5859958623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails5859358603_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl5860058625_))
                                              (let ((_tail58628_
                                                     _hd5859958623_))
                                                (declare (not safe))
                                                (_K5859858620_ _tail58628_))
                                              (let ()
                                                (declare (not safe))
                                                (_else5859658614_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else5859658614_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails5859358603_))
                                 (let () (declare (not safe)) (_K5860158634_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match5859558630_))))))))
                    (_super-struct58557_
                     (let* ((_sit5855858566_ _sit58548_)
                            (_else5856058574_ (lambda () '#f))
                            (_K5856258579_ (lambda (_s58577_) _s58577_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit5855858566_))
                           (let* ((_hd5856358582_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit5855858566_)))
                                  (_s58585_ _hd5856358582_))
                             (declare (not safe))
                             (_K5856258579_ _s58585_))
                           (let () (declare (not safe)) (_else5856058574_))))))
            (values _precedence-list58556_ _super-struct58557_)))))
    (define c4-linearize__@
      (lambda (_keys5852158818_ . _args58820_)
        (apply c4-linearize__%
               _keys5852158818_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys5852158818_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5852158818_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5852158818_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5852158818_ 'get-name: absent-value))
               _args58820_)))
    (define c4-linearize
      (lambda _args5852658826_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args5852658826_)))))
