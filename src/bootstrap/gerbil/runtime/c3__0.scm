(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708451991)
  (begin
    (define c4-linearize__%
      (lambda (_g58783_
               _get-precedence-list5845058456_
               _struct?5845158458_
               _eq5845258460_
               _get-name5845358462_
               _rhead58464_
               _supers58465_)
        (let* ((_get-precedence-list58467_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list5845058456_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list5845058456_))
               (_struct?58469_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?5845158458_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?5845158458_))
               (_eq58471_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq5845258460_ absent-value))
                    eq?
                    _eq5845258460_))
               (_get-name58473_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name5845358462_ absent-value))
                    identity
                    _get-name5845358462_)))
          (letrec* ((_pls58475_ (map _get-precedence-list58467_ _supers58465_))
                    (_sit58476_ '())
                    (_get-names58477_
                     (lambda (_lst58741_) (map _get-name58473_ _lst58741_)))
                    (_err58478_
                     (lambda _a58739_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp58784 (reverse _rhead58464_)))
                                (declare (not safe))
                                (_get-names58477_ __tmp58784))
                              'precedence-lists:
                              (map _get-names58477_ _pls58475_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names58477_ _sit58476_))
                              _a58739_)))
                    (_merge-sit!58479_
                     (lambda (_sit258729_)
                       (if (let () (declare (not safe)) (null? _sit258729_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit58476_))
                               (set! _sit58476_ _sit258729_)
                               (let _loop58731_ ((_t158733_ _sit58476_)
                                                 (_t258734_ _sit258729_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t158733_ _sit258729_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t258734_ _sit58476_))
                                         (set! _sit58476_ _sit258729_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t158733_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t258734_)))
                                             (let ((__tmp58785
                                                    (let ((__tmp58788
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names58477_
                                                              _sit58476_)))
                                                          (__tmp58786
                                                           (let ((__tmp58787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names58477_ _sit258729_))))
                     (declare (not safe))
                     (cons __tmp58787 '()))))
              (declare (not safe))
              (cons __tmp58788 __tmp58786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err58478_
                                                'single-inheritance-incompatibility:
                                                __tmp58785))
                                             (let ((__tmp58790 (cdr _t158733_))
                                                   (__tmp58789
                                                    (cdr _t258734_)))
                                               (declare (not safe))
                                               (_loop58731_
                                                __tmp58790
                                                __tmp58789))))))))))
                    (_rpls58480_
                     (map (lambda (_pl58724_)
                            (let ((_g58791_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?58469_
                                      _pl58724_
                                      '()))))
                              (begin
                                (let ((_g58792_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g58791_)
                                             (##vector-length _g58791_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g58792_ 2)))
                                      (error "Context expects 2 values"
                                             _g58792_)))
                                (let ((_tl58726_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g58791_ 0)))
                                      (_rh58727_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g58791_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!58479_ _tl58726_))
                                    _rh58727_)))))
                          _pls58475_))
                    (_unsitr-rpl58481_
                     (lambda (_rpl58670_)
                       (let _u58672_ ((_pl-rhead58674_ _rpl58670_)
                                      (_pl-tail58675_ '())
                                      (_sit-rhead58676_ (reverse _sit58476_))
                                      (_sit-tail58677_ '()))
                         (let* ((_pl-rhead5867858687_ _pl-rhead58674_)
                                (_E5868158691_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead5867858687_))))
                           (let ((_K5868558721_ (lambda () _pl-tail58675_))
                                 (_K5868258705_
                                  (lambda (_plrh58695_ _c58696_)
                                    (if (member _c58696_
                                                _sit-tail58677_
                                                _eq58471_)
                                        (let ((__tmp58798
                                               (let ((__tmp58799
                                                      (reverse _pl-rhead58674_)))
                                                 (declare (not safe))
                                                 (_get-names58477_
                                                  __tmp58799)))
                                              (__tmp58797
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names58477_
                                                  _pl-tail58675_)))
                                              (__tmp58795
                                               (let ((__tmp58796
                                                      (reverse _sit-rhead58676_)))
                                                 (declare (not safe))
                                                 (_get-names58477_
                                                  __tmp58796)))
                                              (__tmp58794
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names58477_
                                                  _sit-tail58677_)))
                                              (__tmp58793
                                               (_get-name58473_ _c58696_)))
                                          (declare (not safe))
                                          (_err58478_
                                           'precedence-list-head:
                                           __tmp58798
                                           'precedence-list-tail:
                                           __tmp58797
                                           'single-inheritance-head:
                                           __tmp58795
                                           'single-inheritance-tail:
                                           __tmp58794
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp58793))
                                        (let ((_g58800_
                                               (let ((__tmp58802
                                                      (lambda (_g5869758699_)
                                                        (_eq58471_
                                                         _c58696_
                                                         _g5869758699_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp58802
                                                  _sit-rhead58676_
                                                  _sit-tail58677_))))
                                          (begin
                                            (let ((_g58801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g58800_)
                                                         (##vector-length
                                                          _g58800_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g58801_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g58801_)))
                                            (let ((_sit-rh258702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g58800_
                                                      0)))
                                                  (_sit-tl258703_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g58800_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh258702_))
                                                  (let ((__tmp58803
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c58696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail58675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u58672_
                                                     _plrh58695_
                                                     __tmp58803
                                                     '()
                                                     _sit-tl258703_))
                                                  (let ((__tmp58804
                                                         (cdr _sit-rh258702_)))
                                                    (declare (not safe))
                                                    (_u58672_
                                                     _plrh58695_
                                                     _pl-tail58675_
                                                     __tmp58804
                                                     _sit-tl258703_))))))))))
                             (let ((_try-match5868058717_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead5867858687_))
                                          (let ((_tl5868458710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead5867858687_)))
                                                (_hd5868358708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead5867858687_))))
                                            (let ((_c58713_ _hd5868358708_)
                                                  (_plrh58715_ _tl5868458710_))
                                              (let ()
                                                (declare (not safe))
                                                (_K5868258705_
                                                 _plrh58715_
                                                 _c58713_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5868158691_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead5867858687_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5868558721_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5868058717_)))))))))
                    (_g58805_
                     (let ((_g58806_
                            (let ((__tmp58808 (reverse _supers58465_)))
                              (declare (not safe))
                              (append1! _rpls58480_ __tmp58808))))
                       #!void
                       _g58806_))
                    (_g58809_
                     (let ((_g58810_
                            (set! _pls58475_
                                  (map _unsitr-rpl58481_ _rpls58480_))))
                       #!void
                       _g58810_))
                    (_c3-select-next58482_
                     (lambda (_tails58620_)
                       (let ((_candidate?58626_
                              (lambda (_c58622_)
                                (let ((__tmp58812
                                       (lambda (_tail58624_)
                                         (let ((__tmp58813
                                                (member _c58622_
                                                        (cdr _tail58624_)
                                                        _eq58471_)))
                                           (declare (not safe))
                                           (not __tmp58813)))))
                                  (declare (not safe))
                                  (andmap1 __tmp58812 _tails58620_)))))
                         (let _loop58628_ ((_ts58630_ _tails58620_))
                           (let* ((_ts5863158641_ _ts58630_)
                                  (_else5863358649_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err58478_))))
                                  (_K5863558655_
                                   (lambda (_rts58652_ _c58653_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?58626_ _c58653_))
                                         _c58653_
                                         (let ()
                                           (declare (not safe))
                                           (_loop58628_ _rts58652_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts5863158641_))
                                 (let ((_hd5863658658_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts5863158641_)))
                                       (_tl5863758660_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts5863158641_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd5863658658_))
                                       (let* ((_hd5863858663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd5863658658_)))
                                              (_c58666_ _hd5863858663_)
                                              (_rts58668_ _tl5863758660_))
                                         (declare (not safe))
                                         (_K5863558655_ _rts58668_ _c58666_))
                                       (let ()
                                         (declare (not safe))
                                         (_err58478_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err58478_))))))))
                    (_remove-next!58483_
                     (lambda (_next58565_ _tails58566_)
                       (let _loop58568_ ((_t58570_ _tails58566_))
                         (let* ((_t5857158582_ _t58570_)
                                (_E5857458586_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t5857158582_))))
                           (let ((_K5858058617_ (lambda () _tails58566_))
                                 (_K5857558594_
                                  (lambda (_more58590_ _tail58591_ _head58592_)
                                    (if (_eq58471_ _head58592_ _next58565_)
                                        (set-car! _t58570_ _tail58591_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop58568_ _more58590_)))))
                             (let ((_try-match5857358613_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t5857158582_))
                                          (let ((_tl5857758599_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t5857158582_)))
                                                (_hd5857658597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t5857158582_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd5857658597_))
                                                (let ((_tl5857958604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd5857658597_)))
                                                      (_hd5857858602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd5857658597_))))
                                                  (let ((_head58607_
                                                         _hd5857858602_)
                                                        (_tail58609_
                                                         _tl5857958604_)
                                                        (_more58611_
                                                         _tl5857758599_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K5857558594_
                                                       _more58611_
                                                       _tail58609_
                                                       _head58607_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E5857458586_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E5857458586_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t5857158582_))
                                   (let ()
                                     (declare (not safe))
                                     (_K5858058617_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match5857358613_)))))))))
                    (_precedence-list58484_
                     (let _c3loop58515_ ((_rhead58517_ _rhead58464_)
                                         (_tails58518_ _pls58475_))
                       (let* ((_tails58520_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails58518_)))
                              (_tails5852158531_ _tails58520_)
                              (_else5852458542_
                               (lambda ()
                                 (let ((_next58539_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next58482_
                                           _tails58520_))))
                                   (let ((__tmp58815
                                          (let ()
                                            (declare (not safe))
                                            (cons _next58539_ _rhead58517_)))
                                         (__tmp58814
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!58483_
                                             _next58539_
                                             _tails58520_))))
                                     (declare (not safe))
                                     (_c3loop58515_ __tmp58815 __tmp58814))))))
                         (let ((_K5852958562_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead58517_ _sit58476_))))
                               (_K5852658548_
                                (lambda (_tail58546_)
                                  (let ((__tmp58816
                                         (append _tail58546_ _sit58476_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead58517_
                                     __tmp58816)))))
                           (let ((_try-match5852358558_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails5852158531_))
                                        (let ((_tl5852858553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails5852158531_)))
                                              (_hd5852758551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails5852158531_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl5852858553_))
                                              (let ((_tail58556_
                                                     _hd5852758551_))
                                                (declare (not safe))
                                                (_K5852658548_ _tail58556_))
                                              (let ()
                                                (declare (not safe))
                                                (_else5852458542_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else5852458542_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails5852158531_))
                                 (let () (declare (not safe)) (_K5852958562_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match5852358558_))))))))
                    (_super-struct58485_
                     (let* ((_sit5848658494_ _sit58476_)
                            (_else5848858502_ (lambda () '#f))
                            (_K5849058507_ (lambda (_s58505_) _s58505_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit5848658494_))
                           (let* ((_hd5849158510_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit5848658494_)))
                                  (_s58513_ _hd5849158510_))
                             (declare (not safe))
                             (_K5849058507_ _s58513_))
                           (let () (declare (not safe)) (_else5848858502_))))))
            (values _precedence-list58484_ _super-struct58485_)))))
    (define c4-linearize__@
      (lambda (_keys5844958746_ . _args58748_)
        (apply c4-linearize__%
               _keys5844958746_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys5844958746_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5844958746_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5844958746_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys5844958746_ 'get-name: absent-value))
               _args58748_)))
    (define c4-linearize
      (lambda _args5845458754_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args5845458754_)))))
