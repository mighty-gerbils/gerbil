(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710833423)
  (begin
    (define c4-linearize__%
      (lambda (_g62595_
               _get-precedence-list6226262268_
               _struct?6226362270_
               _eq6226462272_
               _get-name6226562274_
               _rhead62276_
               _supers62277_)
        (let* ((_get-precedence-list62279_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6226262268_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6226262268_))
               (_struct?62281_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6226362270_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6226362270_))
               (_eq62283_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6226462272_ absent-value))
                    eq?
                    _eq6226462272_))
               (_get-name62285_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6226562274_ absent-value))
                    identity
                    _get-name6226562274_)))
          (letrec* ((_pls62287_ (map _get-precedence-list62279_ _supers62277_))
                    (_sit62288_ '())
                    (_get-names62289_
                     (lambda (_lst62553_) (map _get-name62285_ _lst62553_)))
                    (_err62290_
                     (lambda _a62551_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp62596 (reverse _rhead62276_)))
                                (declare (not safe))
                                (_get-names62289_ __tmp62596))
                              'precedence-lists:
                              (map _get-names62289_ _pls62287_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names62289_ _sit62288_))
                              _a62551_)))
                    (_merge-sit!62291_
                     (lambda (_sit262541_)
                       (if (let () (declare (not safe)) (null? _sit262541_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit62288_))
                               (set! _sit62288_ _sit262541_)
                               (let _loop62543_ ((_t162545_ _sit62288_)
                                                 (_t262546_ _sit262541_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t162545_ _sit262541_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t262546_ _sit62288_))
                                         (set! _sit62288_ _sit262541_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t162545_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t262546_)))
                                             (let ((__tmp62599
                                                    (let ((__tmp62602
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names62289_
                                                              _sit62288_)))
                                                          (__tmp62600
                                                           (let ((__tmp62601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names62289_ _sit262541_))))
                     (declare (not safe))
                     (cons __tmp62601 '()))))
              (declare (not safe))
              (cons __tmp62602 __tmp62600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err62290_
                                                'single-inheritance-incompatibility:
                                                __tmp62599))
                                             (let ((__tmp62598 (cdr _t162545_))
                                                   (__tmp62597
                                                    (cdr _t262546_)))
                                               (declare (not safe))
                                               (_loop62543_
                                                __tmp62598
                                                __tmp62597))))))))))
                    (_rpls62292_
                     (map (lambda (_pl62536_)
                            (let ((_g62603_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?62281_
                                      _pl62536_
                                      '()))))
                              (begin
                                (let ((_g62604_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g62603_)
                                             (##vector-length _g62603_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g62604_ 2)))
                                      (error "Context expects 2 values"
                                             _g62604_)))
                                (let ((_tl62538_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62603_ 0)))
                                      (_rh62539_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62603_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!62291_ _tl62538_))
                                    _rh62539_)))))
                          _pls62287_))
                    (_unsitr-rpl62293_
                     (lambda (_rpl62482_)
                       (let _u62484_ ((_pl-rhead62486_ _rpl62482_)
                                      (_pl-tail62487_ '())
                                      (_sit-rhead62488_ (reverse _sit62288_))
                                      (_sit-tail62489_ '()))
                         (let* ((_pl-rhead6249062499_ _pl-rhead62486_)
                                (_E6249362503_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6249062499_)))))
                           (let ((_K6249762533_ (lambda () _pl-tail62487_))
                                 (_K6249462517_
                                  (lambda (_plrh62507_ _c62508_)
                                    (if (member _c62508_
                                                _sit-tail62489_
                                                _eq62283_)
                                        (let ((__tmp62615
                                               (let ((__tmp62616
                                                      (reverse _pl-rhead62486_)))
                                                 (declare (not safe))
                                                 (_get-names62289_
                                                  __tmp62616)))
                                              (__tmp62614
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names62289_
                                                  _pl-tail62487_)))
                                              (__tmp62612
                                               (let ((__tmp62613
                                                      (reverse _sit-rhead62488_)))
                                                 (declare (not safe))
                                                 (_get-names62289_
                                                  __tmp62613)))
                                              (__tmp62611
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names62289_
                                                  _sit-tail62489_)))
                                              (__tmp62610
                                               (_get-name62285_ _c62508_)))
                                          (declare (not safe))
                                          (_err62290_
                                           'precedence-list-head:
                                           __tmp62615
                                           'precedence-list-tail:
                                           __tmp62614
                                           'single-inheritance-head:
                                           __tmp62612
                                           'single-inheritance-tail:
                                           __tmp62611
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp62610))
                                        (let ((_g62605_
                                               (let ((__tmp62607
                                                      (lambda (_g6250962511_)
                                                        (_eq62283_
                                                         _c62508_
                                                         _g6250962511_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp62607
                                                  _sit-rhead62488_
                                                  _sit-tail62489_))))
                                          (begin
                                            (let ((_g62606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g62605_)
                                                         (##vector-length
                                                          _g62605_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g62606_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g62606_)))
                                            (let ((_sit-rh262514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62605_
                                                      0)))
                                                  (_sit-tl262515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62605_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh262514_))
                                                  (let ((__tmp62609
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c62508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail62487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u62484_
                                                     _plrh62507_
                                                     __tmp62609
                                                     '()
                                                     _sit-tl262515_))
                                                  (let ((__tmp62608
                                                         (cdr _sit-rh262514_)))
                                                    (declare (not safe))
                                                    (_u62484_
                                                     _plrh62507_
                                                     _pl-tail62487_
                                                     __tmp62608
                                                     _sit-tl262515_))))))))))
                             (let ((_try-match6249262529_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6249062499_))
                                          (let ((_tl6249662522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6249062499_)))
                                                (_hd6249562520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6249062499_))))
                                            (let ((_c62525_ _hd6249562520_)
                                                  (_plrh62527_ _tl6249662522_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6249462517_
                                                 _plrh62527_
                                                 _c62525_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6249362503_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6249062499_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6249762533_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6249262529_)))))))))
                    (_g62617_
                     (let ((_g62618_
                            (let ((__tmp62620 (reverse _supers62277_)))
                              (declare (not safe))
                              (append1! _rpls62292_ __tmp62620))))
                       #!void
                       _g62618_))
                    (_g62621_
                     (let ((_g62622_
                            (set! _pls62287_
                                  (map _unsitr-rpl62293_ _rpls62292_))))
                       #!void
                       _g62622_))
                    (_c3-select-next62294_
                     (lambda (_tails62432_)
                       (let ((_candidate?62438_
                              (lambda (_c62434_)
                                (let ((__tmp62624
                                       (lambda (_tail62436_)
                                         (let ((__tmp62625
                                                (member _c62434_
                                                        (cdr _tail62436_)
                                                        _eq62283_)))
                                           (declare (not safe))
                                           (not __tmp62625)))))
                                  (declare (not safe))
                                  (andmap1 __tmp62624 _tails62432_)))))
                         (let _loop62440_ ((_ts62442_ _tails62432_))
                           (let* ((_ts6244362453_ _ts62442_)
                                  (_else6244562461_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err62290_))))
                                  (_K6244762467_
                                   (lambda (_rts62464_ _c62465_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?62438_ _c62465_))
                                         _c62465_
                                         (let ()
                                           (declare (not safe))
                                           (_loop62440_ _rts62464_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6244362453_))
                                 (let ((_hd6244862470_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6244362453_)))
                                       (_tl6244962472_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6244362453_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6244862470_))
                                       (let* ((_hd6245062475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6244862470_)))
                                              (_c62478_ _hd6245062475_)
                                              (_rts62480_ _tl6244962472_))
                                         (declare (not safe))
                                         (_K6244762467_ _rts62480_ _c62478_))
                                       (let ()
                                         (declare (not safe))
                                         (_err62290_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err62290_))))))))
                    (_remove-next!62295_
                     (lambda (_next62377_ _tails62378_)
                       (let _loop62380_ ((_t62382_ _tails62378_))
                         (let* ((_t6238362394_ _t62382_)
                                (_E6238662398_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6238362394_)))))
                           (let ((_K6239262429_ (lambda () _tails62378_))
                                 (_K6238762406_
                                  (lambda (_more62402_ _tail62403_ _head62404_)
                                    (if (_eq62283_ _head62404_ _next62377_)
                                        (set-car! _t62382_ _tail62403_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop62380_ _more62402_)))))
                             (let ((_try-match6238562425_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6238362394_))
                                          (let ((_tl6238962411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6238362394_)))
                                                (_hd6238862409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6238362394_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6238862409_))
                                                (let ((_tl6239162416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6238862409_)))
                                                      (_hd6239062414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6238862409_))))
                                                  (let ((_head62419_
                                                         _hd6239062414_)
                                                        (_tail62421_
                                                         _tl6239162416_)
                                                        (_more62423_
                                                         _tl6238962411_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6238762406_
                                                       _more62423_
                                                       _tail62421_
                                                       _head62419_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6238662398_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6238662398_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6238362394_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6239262429_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6238562425_)))))))))
                    (_precedence-list62296_
                     (let _c3loop62327_ ((_rhead62329_ _rhead62276_)
                                         (_tails62330_ _pls62287_))
                       (let* ((_tails62332_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails62330_)))
                              (_tails6233362343_ _tails62332_)
                              (_else6233662354_
                               (lambda ()
                                 (let ((_next62351_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next62294_
                                           _tails62332_))))
                                   (let ((__tmp62627
                                          (let ()
                                            (declare (not safe))
                                            (cons _next62351_ _rhead62329_)))
                                         (__tmp62626
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!62295_
                                             _next62351_
                                             _tails62332_))))
                                     (declare (not safe))
                                     (_c3loop62327_ __tmp62627 __tmp62626))))))
                         (let ((_K6234162374_
                                (lambda ()
                                  (append-reverse _rhead62329_ _sit62288_)))
                               (_K6233862360_
                                (lambda (_tail62358_)
                                  (append-reverse
                                   _rhead62329_
                                   (append _tail62358_ _sit62288_)))))
                           (let ((_try-match6233562370_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6233362343_))
                                        (let ((_tl6234062365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6233362343_)))
                                              (_hd6233962363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6233362343_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6234062365_))
                                              (let ((_tail62368_
                                                     _hd6233962363_))
                                                (declare (not safe))
                                                (_K6233862360_ _tail62368_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6233662354_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6233662354_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6233362343_))
                                 (let () (declare (not safe)) (_K6234162374_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6233562370_))))))))
                    (_super-struct62297_
                     (let* ((_sit6229862306_ _sit62288_)
                            (_else6230062314_ (lambda () '#f))
                            (_K6230262319_ (lambda (_s62317_) _s62317_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6229862306_))
                           (let* ((_hd6230362322_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6229862306_)))
                                  (_s62325_ _hd6230362322_))
                             (declare (not safe))
                             (_K6230262319_ _s62325_))
                           (let () (declare (not safe)) (_else6230062314_))))))
            (values _precedence-list62296_ _super-struct62297_)))))
    (define c4-linearize__@
      (lambda (_keys6226162558_ . _args62560_)
        (apply c4-linearize__%
               _keys6226162558_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6226162558_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6226162558_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6226162558_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6226162558_ 'get-name: absent-value))
               _args62560_)))
    (define c4-linearize
      (lambda _args6226662566_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6226662566_)))))
