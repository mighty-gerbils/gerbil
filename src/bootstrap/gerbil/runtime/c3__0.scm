(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707618263)
  (begin
    (define c4-linearize__%
      (lambda (_g83320_
               _get-precedence-list7852078526_
               _single-inheritance?7852178528_
               _eqpred7852278530_
               _get-name7852378532_
               _rhead78534_
               _supers78535_)
        (let* ((_get-precedence-list78537_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7852078526_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7852078526_))
               (_single-inheritance?78539_
                (if (let ()
                      (declare (not safe))
                      (eq? _single-inheritance?7852178528_ absent-value))
                    (error '"Missing required keyword argument"
                           'single-inheritance?:)
                    _single-inheritance?7852178528_))
               (_eqpred78541_
                (if (let ()
                      (declare (not safe))
                      (eq? _eqpred7852278530_ absent-value))
                    eq?
                    _eqpred7852278530_))
               (_get-name78543_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7852378532_ absent-value))
                    identity
                    _get-name7852378532_)))
          (letrec* ((_pls78545_ (map _get-precedence-list78537_ _supers78535_))
                    (_sit78546_ '())
                    (_get-names78547_
                     (lambda (_g7880778809_)
                       (map _get-name78543_ _g7880778809_)))
                    (_err78548_
                     (lambda _a78806_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83321 (reverse _rhead78534_)))
                                (declare (not safe))
                                (_get-names78547_ __tmp83321))
                              'precedence-lists:
                              (map _get-names78547_ _pls78545_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78547_ _sit78546_))
                              _a78806_)))
                    (_merge-sit!78549_
                     (lambda (_sit278799_)
                       (if (let () (declare (not safe)) (null? _sit278799_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78546_))
                               (set! _sit78546_ _sit278799_)
                               (let _loop78801_ ((_t178803_ _sit78546_)
                                                 (_t278804_ _sit278799_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178803_ _sit278799_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278804_ _sit78546_))
                                         (set! _sit78546_ _sit278799_)
                                         (if (let ()
                                               (declare (not safe))
                                               (null? _t178803_))
                                             (let ()
                                               (declare (not safe))
                                               (_err78548_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (null? _t278804_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_err78548_))
                                                 (let ((__tmp83323
                                                        (cdr _t178803_))
                                                       (__tmp83322
                                                        (cdr _t278804_)))
                                                   (declare (not safe))
                                                   (_loop78801_
                                                    __tmp83323
                                                    __tmp83322)))))))))))
                    (_rpls78550_
                     (map (lambda (_pl78794_)
                            (let ((_g83324_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _single-inheritance?78539_
                                      _pl78794_
                                      '()))))
                              (begin
                                (let ((_g83325_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83324_)
                                             (##vector-length _g83324_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83325_ 2)))
                                      (error "Context expects 2 values"
                                             _g83325_)))
                                (let ((_tl78796_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83324_ 0)))
                                      (_rh78797_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83324_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78549_ _tl78796_))
                                    _rh78797_)))))
                          _pls78545_))
                    (_unsitr-rpl78551_
                     (lambda (_rpl78740_)
                       (let _u78742_ ((_pl-rhead78744_ _rpl78740_)
                                      (_pl-tail78745_ '())
                                      (_sit-rhead78746_ (reverse _sit78546_))
                                      (_sit-tail78747_ '()))
                         (let* ((_pl-rhead7874878757_ _pl-rhead78744_)
                                (_E7875178761_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7874878757_))))
                           (let ((_K7875578791_ (lambda () _pl-tail78745_))
                                 (_K7875278775_
                                  (lambda (_plrh78765_ _c78766_)
                                    (if (member _c78766_
                                                _sit-tail78747_
                                                _eqpred78541_)
                                        (let ((__tmp83336
                                               (let ((__tmp83337
                                                      (reverse _pl-rhead78744_)))
                                                 (declare (not safe))
                                                 (_get-names78547_
                                                  __tmp83337)))
                                              (__tmp83335
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78547_
                                                  _pl-tail78745_)))
                                              (__tmp83333
                                               (let ((__tmp83334
                                                      (reverse _sit-rhead78746_)))
                                                 (declare (not safe))
                                                 (_get-names78547_
                                                  __tmp83334)))
                                              (__tmp83332
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78547_
                                                  _sit-tail78747_)))
                                              (__tmp83331
                                               (_get-name78543_ _c78766_)))
                                          (declare (not safe))
                                          (_err78548_
                                           'precedence-list-head:
                                           __tmp83336
                                           'precedence-list-tail:
                                           __tmp83335
                                           'single-inheritance-head:
                                           __tmp83333
                                           'single-inheritance-tail:
                                           __tmp83332
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83331))
                                        (let ((_g83326_
                                               (let ((__tmp83328
                                                      (lambda (_g7876778769_)
                                                        (_eqpred78541_
                                                         _c78766_
                                                         _g7876778769_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83328
                                                  _sit-rhead78746_
                                                  _sit-tail78747_))))
                                          (begin
                                            (let ((_g83327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83326_)
                                                         (##vector-length
                                                          _g83326_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83327_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83327_)))
                                            (let ((_sit-rh278772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83326_
                                                      0)))
                                                  (_sit-tl278773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83326_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278772_))
                                                  (let ((__tmp83330
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78742_
                                                     _plrh78765_
                                                     __tmp83330
                                                     '()
                                                     _sit-tl278773_))
                                                  (let ((__tmp83329
                                                         (cdr _sit-rh278772_)))
                                                    (declare (not safe))
                                                    (_u78742_
                                                     _plrh78765_
                                                     _pl-tail78745_
                                                     __tmp83329
                                                     _sit-tl278773_))))))))))
                             (let ((_try-match7875078787_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7874878757_))
                                          (let ((_tl7875478780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7874878757_)))
                                                (_hd7875378778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7874878757_))))
                                            (let ((_c78783_ _hd7875378778_)
                                                  (_plrh78785_ _tl7875478780_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7875278775_
                                                 _plrh78785_
                                                 _c78783_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7875178761_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7874878757_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7875578791_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7875078787_)))))))))
                    (_g83338_
                     (let ((_g83339_
                            (let ((__tmp83341 (reverse _supers78535_)))
                              (declare (not safe))
                              (append1! _rpls78550_ __tmp83341))))
                       #!void
                       _g83339_))
                    (_g83342_
                     (let ((_g83343_
                            (set! _pls78545_
                                  (map _unsitr-rpl78551_ _rpls78550_))))
                       #!void
                       _g83343_))
                    (_c3-select-next78552_
                     (lambda (_tails78690_)
                       (let ((_candidate?78696_
                              (lambda (_c78692_)
                                (let ((__tmp83345
                                       (lambda (_tail78694_)
                                         (let ((__tmp83346
                                                (member _c78692_
                                                        (cdr _tail78694_)
                                                        _eqpred78541_)))
                                           (declare (not safe))
                                           (not __tmp83346)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83345 _tails78690_)))))
                         (let _loop78698_ ((_ts78700_ _tails78690_))
                           (let* ((_ts7870178711_ _ts78700_)
                                  (_else7870378719_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78548_))))
                                  (_K7870578725_
                                   (lambda (_rts78722_ _c78723_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78696_ _c78723_))
                                         _c78723_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78698_ _rts78722_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7870178711_))
                                 (let ((_hd7870678728_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7870178711_)))
                                       (_tl7870778730_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7870178711_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7870678728_))
                                       (let* ((_hd7870878733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7870678728_)))
                                              (_c78736_ _hd7870878733_)
                                              (_rts78738_ _tl7870778730_))
                                         (declare (not safe))
                                         (_K7870578725_ _rts78738_ _c78736_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78548_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78548_))))))))
                    (_remove-next!78553_
                     (lambda (_next78635_ _tails78636_)
                       (let _loop78638_ ((_t78640_ _tails78636_))
                         (let* ((_t7864178652_ _t78640_)
                                (_E7864478656_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7864178652_))))
                           (let ((_K7865078687_ (lambda () _tails78636_))
                                 (_K7864578664_
                                  (lambda (_more78660_ _tail78661_ _head78662_)
                                    (if (_eqpred78541_ _head78662_ _next78635_)
                                        (set-car! _t78640_ _tail78661_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78638_ _more78660_)))))
                             (let ((_try-match7864378683_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7864178652_))
                                          (let ((_tl7864778669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7864178652_)))
                                                (_hd7864678667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7864178652_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7864678667_))
                                                (let ((_tl7864978674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7864678667_)))
                                                      (_hd7864878672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7864678667_))))
                                                  (let ((_head78677_
                                                         _hd7864878672_)
                                                        (_tail78679_
                                                         _tl7864978674_)
                                                        (_more78681_
                                                         _tl7864778669_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7864578664_
                                                       _more78681_
                                                       _tail78679_
                                                       _head78677_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7864478656_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7864478656_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7864178652_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7865078687_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7864378683_)))))))))
                    (_precedence-list78554_
                     (let _c3loop78585_ ((_rhead78587_ _rhead78534_)
                                         (_tails78588_ _pls78545_))
                       (let* ((_tails78590_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78588_)))
                              (_tails7859178601_ _tails78590_)
                              (_else7859478612_
                               (lambda ()
                                 (let ((_next78609_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78552_
                                           _tails78590_))))
                                   (let ((__tmp83348
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78609_ _rhead78587_)))
                                         (__tmp83347
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78553_
                                             _next78609_
                                             _tails78590_))))
                                     (declare (not safe))
                                     (_c3loop78585_ __tmp83348 __tmp83347))))))
                         (let ((_K7859978632_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78587_ _sit78546_))))
                               (_K7859678618_
                                (lambda (_tail78616_)
                                  (let ((__tmp83349
                                         (append _tail78616_ _sit78546_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78587_
                                     __tmp83349)))))
                           (let ((_try-match7859378628_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7859178601_))
                                        (let ((_tl7859878623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7859178601_)))
                                              (_hd7859778621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7859178601_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7859878623_))
                                              (let ((_tail78626_
                                                     _hd7859778621_))
                                                (declare (not safe))
                                                (_K7859678618_ _tail78626_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7859478612_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7859478612_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7859178601_))
                                 (let () (declare (not safe)) (_K7859978632_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7859378628_))))))))
                    (_super-struct78555_
                     (let* ((_sit7855678564_ _sit78546_)
                            (_else7855878572_ (lambda () '#f))
                            (_K7856078577_ (lambda (_s78575_) _s78575_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7855678564_))
                           (let* ((_hd7856178580_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7855678564_)))
                                  (_s78583_ _hd7856178580_))
                             (declare (not safe))
                             (_K7856078577_ _s78583_))
                           (let () (declare (not safe)) (_else7855878572_))))))
            (values _precedence-list78554_ _super-struct78555_)))))
    (define c4-linearize__@
      (lambda (_keys7851978815_ . _args78817_)
        (apply c4-linearize__%
               _keys7851978815_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7851978815_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7851978815_
                  'single-inheritance?:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7851978815_ 'eqpred: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7851978815_ 'get-name: absent-value))
               _args78817_)))
    (define c4-linearize
      (lambda _args7852478823_
        (apply keyword-dispatch
               '#(eqpred:
                  get-name:
                  #f
                  get-precedence-list:
                  #f
                  single-inheritance?:)
               c4-linearize__@
               _args7852478823_)))
    (define c3-linearize__%__%
      (lambda (__7845678459_
               _single-inheritance?7845478461_
               _rhead78463_
               _supers78464_
               _get-precedence-list78465_
               _eqpred78466_
               _get-name78467_)
        (let ((_single-inheritance?78469_
               (if (let ()
                     (declare (not safe))
                     (eq? _single-inheritance?7845478461_ absent-value))
                   false
                   _single-inheritance?7845478461_)))
          (letrec* ((_g83350_
                     (let ((_g83351_
                            (let ()
                              (declare (not safe))
                              (c4-linearize__%
                               '#f
                               _get-precedence-list78465_
                               _single-inheritance?78469_
                               _eqpred78466_
                               _get-name78467_
                               _rhead78463_
                               _supers78464_))))
                       (let ((_g83352_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g83351_)
                                    (##vector-length _g83351_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g83352_ 2)))
                             (error "Context expects 2 values" _g83352_)))
                       _g83351_))
                    (_precedence-list78471_
                     (let () (declare (not safe)) (##vector-ref _g83350_ 0)))
                    (_super-struct78472_
                     (let () (declare (not safe)) (##vector-ref _g83350_ 1))))
            _precedence-list78471_))))
    (define c3-linearize__%__0
      (lambda (__7845678477_
               _single-inheritance?7845478478_
               _rhead78479_
               _supers78480_
               _get-precedence-list78481_)
        (let* ((_eqpred78483_ eq?) (_get-name78485_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7845678477_
           _single-inheritance?7845478478_
           _rhead78479_
           _supers78480_
           _get-precedence-list78481_
           _eqpred78483_
           _get-name78485_))))
    (define c3-linearize__%__1
      (lambda (__7845678487_
               _single-inheritance?7845478488_
               _rhead78489_
               _supers78490_
               _get-precedence-list78491_
               _eqpred78492_)
        (let ((_get-name78494_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7845678487_
           _single-inheritance?7845478488_
           _rhead78489_
           _supers78490_
           _get-precedence-list78491_
           _eqpred78492_
           _get-name78494_))))
    (define c3-linearize__%
      (lambda _g83354_
        (let ((_g83353_ (let () (declare (not safe)) (##length _g83354_))))
          (cond ((let () (declare (not safe)) (##fx= _g83353_ 5))
                 (apply (lambda (__7845678477_
                                 _single-inheritance?7845478478_
                                 _rhead78479_
                                 _supers78480_
                                 _get-precedence-list78481_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__0
                             __7845678477_
                             _single-inheritance?7845478478_
                             _rhead78479_
                             _supers78480_
                             _get-precedence-list78481_)))
                        _g83354_))
                ((let () (declare (not safe)) (##fx= _g83353_ 6))
                 (apply (lambda (__7845678487_
                                 _single-inheritance?7845478488_
                                 _rhead78489_
                                 _supers78490_
                                 _get-precedence-list78491_
                                 _eqpred78492_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__1
                             __7845678487_
                             _single-inheritance?7845478488_
                             _rhead78489_
                             _supers78490_
                             _get-precedence-list78491_
                             _eqpred78492_)))
                        _g83354_))
                ((let () (declare (not safe)) (##fx= _g83353_ 7))
                 (apply (lambda (__7845678496_
                                 _single-inheritance?7845478497_
                                 _rhead78498_
                                 _supers78499_
                                 _get-precedence-list78500_
                                 _eqpred78501_
                                 _get-name78502_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__%
                             __7845678496_
                             _single-inheritance?7845478497_
                             _rhead78498_
                             _supers78499_
                             _get-precedence-list78500_
                             _eqpred78501_
                             _get-name78502_)))
                        _g83354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize__%
                  _g83354_))))))
    (define c3-linearize__@
      (lambda (_keys7845378507_ . _args78509_)
        (apply c3-linearize__%
               _keys7845378507_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7845378507_
                  'single-inheritance?:
                  absent-value))
               _args78509_)))
    (define c3-linearize
      (lambda _args7845578515_
        (apply keyword-dispatch
               '#(single-inheritance?:)
               c3-linearize__@
               _args7845578515_)))))
