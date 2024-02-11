(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707610212)
  (begin
    (define c4-linearize__%
      (lambda (_g83319_
               _get-precedence-list7851978525_
               _single-inheritance?7852078527_
               _eqpred7852178529_
               _get-name7852278531_
               _rhead78533_
               _supers78534_)
        (let* ((_get-precedence-list78536_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7851978525_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7851978525_))
               (_single-inheritance?78538_
                (if (let ()
                      (declare (not safe))
                      (eq? _single-inheritance?7852078527_ absent-value))
                    (error '"Missing required keyword argument"
                           'single-inheritance?:)
                    _single-inheritance?7852078527_))
               (_eqpred78540_
                (if (let ()
                      (declare (not safe))
                      (eq? _eqpred7852178529_ absent-value))
                    eq?
                    _eqpred7852178529_))
               (_get-name78542_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7852278531_ absent-value))
                    identity
                    _get-name7852278531_)))
          (letrec* ((_pls78544_ (map _get-precedence-list78536_ _supers78534_))
                    (_sit78545_ '())
                    (_get-names78546_
                     (lambda (_g7880678808_)
                       (map _get-name78542_ _g7880678808_)))
                    (_err78547_
                     (lambda _a78805_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83320 (reverse _rhead78533_)))
                                (declare (not safe))
                                (_get-names78546_ __tmp83320))
                              'precedence-lists:
                              (map _get-names78546_ _pls78544_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78546_ _sit78545_))
                              _a78805_)))
                    (_merge-sit!78548_
                     (lambda (_sit278798_)
                       (if (let () (declare (not safe)) (null? _sit278798_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78545_))
                               (set! _sit78545_ _sit278798_)
                               (let _loop78800_ ((_t178802_ _sit78545_)
                                                 (_t278803_ _sit278798_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178802_ _sit278798_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278803_ _sit78545_))
                                         (set! _sit78545_ _sit278798_)
                                         (if (let ()
                                               (declare (not safe))
                                               (null? _t178802_))
                                             (let ()
                                               (declare (not safe))
                                               (_err78547_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (null? _t278803_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_err78547_))
                                                 (let ((__tmp83322
                                                        (cdr _t178802_))
                                                       (__tmp83321
                                                        (cdr _t278803_)))
                                                   (declare (not safe))
                                                   (_loop78800_
                                                    __tmp83322
                                                    __tmp83321)))))))))))
                    (_rpls78549_
                     (map (lambda (_pl78793_)
                            (let ((_g83323_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _single-inheritance?78538_
                                      _pl78793_
                                      '()))))
                              (begin
                                (let ((_g83324_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83323_)
                                             (##vector-length _g83323_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83324_ 2)))
                                      (error "Context expects 2 values"
                                             _g83324_)))
                                (let ((_tl78795_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83323_ 0)))
                                      (_rh78796_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83323_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78548_ _tl78795_))
                                    _rh78796_)))))
                          _pls78544_))
                    (_unsitr-rpl78550_
                     (lambda (_rpl78739_)
                       (let _u78741_ ((_pl-rhead78743_ _rpl78739_)
                                      (_pl-tail78744_ '())
                                      (_sit-rhead78745_ (reverse _sit78545_))
                                      (_sit-tail78746_ '()))
                         (let* ((_pl-rhead7874778756_ _pl-rhead78743_)
                                (_E7875078760_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7874778756_))))
                           (let ((_K7875478790_ (lambda () _pl-tail78744_))
                                 (_K7875178774_
                                  (lambda (_plrh78764_ _c78765_)
                                    (if (member _c78765_ _sit-tail78746_)
                                        (let ((__tmp83330
                                               (reverse _pl-rhead78743_)))
                                          (declare (not safe))
                                          (_err78547_
                                           'precedence-list-head:
                                           __tmp83330
                                           'precedence-list-tail:
                                           _pl-tail78744_
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           _c78765_))
                                        (let ((_g83325_
                                               (let ((__tmp83327
                                                      (lambda (_g7876678768_)
                                                        (_eqpred78540_
                                                         _c78765_
                                                         _g7876678768_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83327
                                                  _sit-rhead78745_
                                                  _sit-tail78746_))))
                                          (begin
                                            (let ((_g83326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83325_)
                                                         (##vector-length
                                                          _g83325_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83326_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83326_)))
                                            (let ((_sit-rh278771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83325_
                                                      0)))
                                                  (_sit-tl278772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83325_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278771_))
                                                  (let ((__tmp83329
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78741_
                                                     _plrh78764_
                                                     __tmp83329
                                                     '()
                                                     _sit-tl278772_))
                                                  (let ((__tmp83328
                                                         (cdr _sit-rh278771_)))
                                                    (declare (not safe))
                                                    (_u78741_
                                                     _plrh78764_
                                                     _pl-tail78744_
                                                     __tmp83328
                                                     _sit-tl278772_))))))))))
                             (let ((_try-match7874978786_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7874778756_))
                                          (let ((_tl7875378779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7874778756_)))
                                                (_hd7875278777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7874778756_))))
                                            (let ((_c78782_ _hd7875278777_)
                                                  (_plrh78784_ _tl7875378779_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7875178774_
                                                 _plrh78784_
                                                 _c78782_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7875078760_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7874778756_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7875478790_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7874978786_)))))))))
                    (_g83331_
                     (let ((_g83332_
                            (let ((__tmp83334 (reverse _supers78534_)))
                              (declare (not safe))
                              (append1! _rpls78549_ __tmp83334))))
                       #!void
                       _g83332_))
                    (_g83335_
                     (let ((_g83336_
                            (set! _pls78544_
                                  (map _unsitr-rpl78550_ _rpls78549_))))
                       #!void
                       _g83336_))
                    (_c3-select-next78551_
                     (lambda (_tails78689_)
                       (let ((_candidate?78695_
                              (lambda (_c78691_)
                                (let ((__tmp83338
                                       (lambda (_tail78693_)
                                         (let ((__tmp83339
                                                (member _c78691_
                                                        (cdr _tail78693_)
                                                        _eqpred78540_)))
                                           (declare (not safe))
                                           (not __tmp83339)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83338 _tails78689_)))))
                         (let _loop78697_ ((_ts78699_ _tails78689_))
                           (let* ((_ts7870078710_ _ts78699_)
                                  (_else7870278718_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78547_))))
                                  (_K7870478724_
                                   (lambda (_rts78721_ _c78722_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78695_ _c78722_))
                                         _c78722_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78697_ _rts78721_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7870078710_))
                                 (let ((_hd7870578727_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7870078710_)))
                                       (_tl7870678729_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7870078710_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7870578727_))
                                       (let* ((_hd7870778732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7870578727_)))
                                              (_c78735_ _hd7870778732_)
                                              (_rts78737_ _tl7870678729_))
                                         (declare (not safe))
                                         (_K7870478724_ _rts78737_ _c78735_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78547_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78547_))))))))
                    (_remove-next!78552_
                     (lambda (_next78634_ _tails78635_)
                       (let _loop78637_ ((_t78639_ _tails78635_))
                         (let* ((_t7864078651_ _t78639_)
                                (_E7864378655_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7864078651_))))
                           (let ((_K7864978686_ (lambda () _tails78635_))
                                 (_K7864478663_
                                  (lambda (_more78659_ _tail78660_ _head78661_)
                                    (if (_eqpred78540_ _head78661_ _next78634_)
                                        (set-car! _t78639_ _tail78660_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78637_ _more78659_)))))
                             (let ((_try-match7864278682_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7864078651_))
                                          (let ((_tl7864678668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7864078651_)))
                                                (_hd7864578666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7864078651_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7864578666_))
                                                (let ((_tl7864878673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7864578666_)))
                                                      (_hd7864778671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7864578666_))))
                                                  (let ((_head78676_
                                                         _hd7864778671_)
                                                        (_tail78678_
                                                         _tl7864878673_)
                                                        (_more78680_
                                                         _tl7864678668_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7864478663_
                                                       _more78680_
                                                       _tail78678_
                                                       _head78676_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7864378655_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7864378655_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7864078651_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7864978686_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7864278682_)))))))))
                    (_precedence-list78553_
                     (let _c3loop78584_ ((_rhead78586_ _rhead78533_)
                                         (_tails78587_ _pls78544_))
                       (let* ((_tails78589_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78587_)))
                              (_tails7859078600_ _tails78589_)
                              (_else7859378611_
                               (lambda ()
                                 (let ((_next78608_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78551_
                                           _tails78589_))))
                                   (let ((__tmp83341
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78608_ _rhead78586_)))
                                         (__tmp83340
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78552_
                                             _next78608_
                                             _tails78589_))))
                                     (declare (not safe))
                                     (_c3loop78584_ __tmp83341 __tmp83340))))))
                         (let ((_K7859878631_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78586_ _sit78545_))))
                               (_K7859578617_
                                (lambda (_tail78615_)
                                  (let ((__tmp83342
                                         (append _tail78615_ _sit78545_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78586_
                                     __tmp83342)))))
                           (let ((_try-match7859278627_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7859078600_))
                                        (let ((_tl7859778622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7859078600_)))
                                              (_hd7859678620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7859078600_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7859778622_))
                                              (let ((_tail78625_
                                                     _hd7859678620_))
                                                (declare (not safe))
                                                (_K7859578617_ _tail78625_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7859378611_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7859378611_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7859078600_))
                                 (let () (declare (not safe)) (_K7859878631_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7859278627_))))))))
                    (_super-struct78554_
                     (let* ((_sit7855578563_ _sit78545_)
                            (_else7855778571_ (lambda () '#f))
                            (_K7855978576_ (lambda (_s78574_) _s78574_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7855578563_))
                           (let* ((_hd7856078579_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7855578563_)))
                                  (_s78582_ _hd7856078579_))
                             (declare (not safe))
                             (_K7855978576_ _s78582_))
                           (let () (declare (not safe)) (_else7855778571_))))))
            (values _precedence-list78553_ _super-struct78554_)))))
    (define c4-linearize__@
      (lambda (_keys7851878814_ . _args78816_)
        (apply c4-linearize__%
               _keys7851878814_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7851878814_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7851878814_
                  'single-inheritance?:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7851878814_ 'eqpred: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7851878814_ 'get-name: absent-value))
               _args78816_)))
    (define c4-linearize
      (lambda _args7852378822_
        (apply keyword-dispatch
               '#(eqpred:
                  get-name:
                  #f
                  get-precedence-list:
                  #f
                  single-inheritance?:)
               c4-linearize__@
               _args7852378822_)))
    (define c3-linearize__%__%
      (lambda (__7845578458_
               _single-inheritance?7845378460_
               _rhead78462_
               _supers78463_
               _get-precedence-list78464_
               _eqpred78465_
               _get-name78466_)
        (let ((_single-inheritance?78468_
               (if (let ()
                     (declare (not safe))
                     (eq? _single-inheritance?7845378460_ absent-value))
                   false
                   _single-inheritance?7845378460_)))
          (letrec* ((_g83343_
                     (let ((_g83344_
                            (let ()
                              (declare (not safe))
                              (c4-linearize__%
                               '#f
                               _get-precedence-list78464_
                               _single-inheritance?78468_
                               _eqpred78465_
                               _get-name78466_
                               _rhead78462_
                               _supers78463_))))
                       (let ((_g83345_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g83344_)
                                    (##vector-length _g83344_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g83345_ 2)))
                             (error "Context expects 2 values" _g83345_)))
                       _g83344_))
                    (_precedence-list78470_
                     (let () (declare (not safe)) (##vector-ref _g83343_ 0)))
                    (_super-struct78471_
                     (let () (declare (not safe)) (##vector-ref _g83343_ 1))))
            _precedence-list78470_))))
    (define c3-linearize__%__0
      (lambda (__7845578476_
               _single-inheritance?7845378477_
               _rhead78478_
               _supers78479_
               _get-precedence-list78480_)
        (let* ((_eqpred78482_ eq?) (_get-name78484_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7845578476_
           _single-inheritance?7845378477_
           _rhead78478_
           _supers78479_
           _get-precedence-list78480_
           _eqpred78482_
           _get-name78484_))))
    (define c3-linearize__%__1
      (lambda (__7845578486_
               _single-inheritance?7845378487_
               _rhead78488_
               _supers78489_
               _get-precedence-list78490_
               _eqpred78491_)
        (let ((_get-name78493_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7845578486_
           _single-inheritance?7845378487_
           _rhead78488_
           _supers78489_
           _get-precedence-list78490_
           _eqpred78491_
           _get-name78493_))))
    (define c3-linearize__%
      (lambda _g83347_
        (let ((_g83346_ (let () (declare (not safe)) (##length _g83347_))))
          (cond ((let () (declare (not safe)) (##fx= _g83346_ 5))
                 (apply (lambda (__7845578476_
                                 _single-inheritance?7845378477_
                                 _rhead78478_
                                 _supers78479_
                                 _get-precedence-list78480_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__0
                             __7845578476_
                             _single-inheritance?7845378477_
                             _rhead78478_
                             _supers78479_
                             _get-precedence-list78480_)))
                        _g83347_))
                ((let () (declare (not safe)) (##fx= _g83346_ 6))
                 (apply (lambda (__7845578486_
                                 _single-inheritance?7845378487_
                                 _rhead78488_
                                 _supers78489_
                                 _get-precedence-list78490_
                                 _eqpred78491_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__1
                             __7845578486_
                             _single-inheritance?7845378487_
                             _rhead78488_
                             _supers78489_
                             _get-precedence-list78490_
                             _eqpred78491_)))
                        _g83347_))
                ((let () (declare (not safe)) (##fx= _g83346_ 7))
                 (apply (lambda (__7845578495_
                                 _single-inheritance?7845378496_
                                 _rhead78497_
                                 _supers78498_
                                 _get-precedence-list78499_
                                 _eqpred78500_
                                 _get-name78501_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__%
                             __7845578495_
                             _single-inheritance?7845378496_
                             _rhead78497_
                             _supers78498_
                             _get-precedence-list78499_
                             _eqpred78500_
                             _get-name78501_)))
                        _g83347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize__%
                  _g83347_))))))
    (define c3-linearize__@
      (lambda (_keys7845278506_ . _args78508_)
        (apply c3-linearize__%
               _keys7845278506_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7845278506_
                  'single-inheritance?:
                  absent-value))
               _args78508_)))
    (define c3-linearize
      (lambda _args7845478514_
        (apply keyword-dispatch
               '#(single-inheritance?:)
               c3-linearize__@
               _args7845478514_)))))
