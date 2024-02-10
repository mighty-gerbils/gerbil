(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707601714)
  (begin
    (define c4-linearize__%
      (lambda (_g83287_
               _get-precedence-list7851778523_
               _single-inheritance?7851878525_
               _eqpred7851978527_
               _get-name7852078529_
               _rhead78531_
               _supers78532_)
        (let* ((_get-precedence-list78534_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7851778523_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7851778523_))
               (_single-inheritance?78536_
                (if (let ()
                      (declare (not safe))
                      (eq? _single-inheritance?7851878525_ absent-value))
                    (error '"Missing required keyword argument"
                           'single-inheritance?:)
                    _single-inheritance?7851878525_))
               (_eqpred78538_
                (if (let ()
                      (declare (not safe))
                      (eq? _eqpred7851978527_ absent-value))
                    eq?
                    _eqpred7851978527_))
               (_get-name78540_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7852078529_ absent-value))
                    identity
                    _get-name7852078529_)))
          (letrec* ((_pls78542_ (map _get-precedence-list78534_ _supers78532_))
                    (_sit78543_ '())
                    (_get-names78544_
                     (lambda (_g7877478776_)
                       (map _get-name78540_ _g7877478776_)))
                    (_err78545_
                     (lambda _a78773_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83288 (reverse _rhead78531_)))
                                (declare (not safe))
                                (_get-names78544_ __tmp83288))
                              'precedence-lists:
                              (map _get-names78544_ _pls78542_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78544_ _sit78543_))
                              _a78773_)))
                    (_merge-sit!78546_
                     (lambda (_sit278766_)
                       (if (let () (declare (not safe)) (null? _sit278766_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78543_))
                               (set! _sit78543_ _sit278766_)
                               (let _loop78768_ ((_t178770_ _sit78543_)
                                                 (_t278771_ _sit278766_))
                                 (if (let ()
                                       (declare (not safe))
                                       (eq? _t178770_ _sit278766_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (eq? _t278771_ _sit78543_))
                                         (set! _sit78543_ _sit278766_)
                                         (if (let ()
                                               (declare (not safe))
                                               (null? _t178770_))
                                             (let ()
                                               (declare (not safe))
                                               (_err78545_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (null? _t278771_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_err78545_))
                                                 (let ((__tmp83290
                                                        (cdr _t178770_))
                                                       (__tmp83289
                                                        (cdr _t278771_)))
                                                   (declare (not safe))
                                                   (_loop78768_
                                                    __tmp83290
                                                    __tmp83289)))))))))))
                    (_rpls78547_
                     (map (lambda (_pl78761_)
                            (let ((_g83291_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _single-inheritance?78536_
                                      _pl78761_
                                      '()))))
                              (begin
                                (let ((_g83292_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83291_)
                                             (##vector-length _g83291_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83292_ 2)))
                                      (error "Context expects 2 values"
                                             _g83292_)))
                                (let ((_rh78763_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83291_ 0)))
                                      (_tl78764_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83291_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78546_ _tl78764_))
                                    _rh78763_)))))
                          _pls78542_))
                    (_unsitr-rpl78548_
                     (lambda (_rpl78707_)
                       (let _u78709_ ((_pl-rhead78711_ _rpl78707_)
                                      (_pl-tail78712_ '())
                                      (_sit-rhead78713_ (reverse _sit78543_))
                                      (_sit-tail78714_ '()))
                         (let* ((_pl-rhead7871578724_ _pl-rhead78711_)
                                (_E7871878728_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7871578724_))))
                           (let ((_K7872278758_ (lambda () _pl-tail78712_))
                                 (_K7871978742_
                                  (lambda (_plrh78732_ _c78733_)
                                    (if (member _c78733_ _sit-tail78714_)
                                        (let ((__tmp83298
                                               (let ()
                                                 (declare (not safe))
                                                 (last _pl-rhead78711_))))
                                          (declare (not safe))
                                          (_err78545_
                                           'direct-super:
                                           __tmp83298
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           _c78733_))
                                        (let ((_g83293_
                                               (let ((__tmp83295
                                                      (lambda (_g7873478736_)
                                                        (_eqpred78538_
                                                         _c78733_
                                                         _g7873478736_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83295
                                                  _sit-rhead78713_
                                                  _sit-tail78714_))))
                                          (begin
                                            (let ((_g83294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83293_)
                                                         (##vector-length
                                                          _g83293_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83294_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83294_)))
                                            (let ((_sit-rh278739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83293_
                                                      0)))
                                                  (_sit-tl278740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83293_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278739_))
                                                  (let ((__tmp83297
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78709_
                                                     _plrh78732_
                                                     __tmp83297
                                                     '()
                                                     _sit-tl278740_))
                                                  (let ((__tmp83296
                                                         (cdr _sit-rh278739_)))
                                                    (declare (not safe))
                                                    (_u78709_
                                                     _plrh78732_
                                                     _pl-tail78712_
                                                     __tmp83296
                                                     _sit-tl278740_))))))))))
                             (let ((_try-match7871778754_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7871578724_))
                                          (let ((_tl7872178747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7871578724_)))
                                                (_hd7872078745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7871578724_))))
                                            (let ((_c78750_ _hd7872078745_)
                                                  (_plrh78752_ _tl7872178747_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7871978742_
                                                 _plrh78752_
                                                 _c78750_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7871878728_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7871578724_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7872278758_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7871778754_)))))))))
                    (_g83299_
                     (let ((_g83300_
                            (let ((__tmp83302 (reverse _supers78532_)))
                              (declare (not safe))
                              (append1! _rpls78547_ __tmp83302))))
                       #!void
                       _g83300_))
                    (_g83303_
                     (let ((_g83304_
                            (set! _pls78542_
                                  (map _unsitr-rpl78548_ _rpls78547_))))
                       #!void
                       _g83304_))
                    (_c3-select-next78549_
                     (lambda (_tails78657_)
                       (let ((_candidate?78663_
                              (lambda (_c78659_)
                                (let ((__tmp83306
                                       (lambda (_tail78661_)
                                         (let ((__tmp83307
                                                (member _c78659_
                                                        (cdr _tail78661_)
                                                        _eqpred78538_)))
                                           (declare (not safe))
                                           (not __tmp83307)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83306 _tails78657_)))))
                         (let _loop78665_ ((_ts78667_ _tails78657_))
                           (let* ((_ts7866878678_ _ts78667_)
                                  (_else7867078686_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78545_))))
                                  (_K7867278692_
                                   (lambda (_rts78689_ _c78690_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78663_ _c78690_))
                                         _c78690_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78665_ _rts78689_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7866878678_))
                                 (let ((_hd7867378695_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7866878678_)))
                                       (_tl7867478697_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7866878678_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7867378695_))
                                       (let* ((_hd7867578700_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7867378695_)))
                                              (_c78703_ _hd7867578700_)
                                              (_rts78705_ _tl7867478697_))
                                         (declare (not safe))
                                         (_K7867278692_ _rts78705_ _c78703_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78545_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78545_))))))))
                    (_remove-next!78550_
                     (lambda (_next78602_ _tails78603_)
                       (let _loop78605_ ((_t78607_ _tails78603_))
                         (let* ((_t7860878619_ _t78607_)
                                (_E7861178623_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7860878619_))))
                           (let ((_K7861778654_ (lambda () _tails78603_))
                                 (_K7861278631_
                                  (lambda (_more78627_ _tail78628_ _head78629_)
                                    (if (_eqpred78538_ _head78629_ _next78602_)
                                        (set-car! _t78607_ _tail78628_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78605_ _more78627_)))))
                             (let ((_try-match7861078650_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7860878619_))
                                          (let ((_tl7861478636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7860878619_)))
                                                (_hd7861378634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7860878619_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7861378634_))
                                                (let ((_tl7861678641_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7861378634_)))
                                                      (_hd7861578639_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7861378634_))))
                                                  (let ((_head78644_
                                                         _hd7861578639_)
                                                        (_tail78646_
                                                         _tl7861678641_)
                                                        (_more78648_
                                                         _tl7861478636_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7861278631_
                                                       _more78648_
                                                       _tail78646_
                                                       _head78644_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7861178623_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7861178623_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7860878619_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7861778654_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7861078650_))))))))))
            (let _c3loop78552_ ((_rhead78554_ _rhead78531_)
                                (_tails78555_ _pls78542_))
              (let* ((_tails78557_
                      (let ()
                        (declare (not safe))
                        (remove-nulls! _tails78555_)))
                     (_tails7855878568_ _tails78557_)
                     (_else7856178579_
                      (lambda ()
                        (let ((_next78576_
                               (let ()
                                 (declare (not safe))
                                 (_c3-select-next78549_ _tails78557_))))
                          (let ((__tmp83309
                                 (let ()
                                   (declare (not safe))
                                   (cons _next78576_ _rhead78554_)))
                                (__tmp83308
                                 (let ()
                                   (declare (not safe))
                                   (_remove-next!78550_
                                    _next78576_
                                    _tails78557_))))
                            (declare (not safe))
                            (_c3loop78552_ __tmp83309 __tmp83308))))))
                (let ((_K7856678599_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (append-reverse _rhead78554_ _sit78543_))))
                      (_K7856378585_
                       (lambda (_tail78583_)
                         (let ((__tmp83310 (append _tail78583_ _sit78543_)))
                           (declare (not safe))
                           (append-reverse _rhead78554_ __tmp83310)))))
                  (let ((_try-match7856078595_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _tails7855878568_))
                               (let ((_tl7856578590_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _tails7855878568_)))
                                     (_hd7856478588_
                                      (let ()
                                        (declare (not safe))
                                        (##car _tails7855878568_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##null? _tl7856578590_))
                                     (let ((_tail78593_ _hd7856478588_))
                                       (declare (not safe))
                                       (_K7856378585_ _tail78593_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7856178579_))))
                               (let ()
                                 (declare (not safe))
                                 (_else7856178579_))))))
                    (if (let ()
                          (declare (not safe))
                          (##null? _tails7855878568_))
                        (let () (declare (not safe)) (_K7856678599_))
                        (let ()
                          (declare (not safe))
                          (_try-match7856078595_)))))))))))
    (define c4-linearize__@
      (lambda (_keys7851678782_ . _args78784_)
        (apply c4-linearize__%
               _keys7851678782_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7851678782_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7851678782_
                  'single-inheritance?:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7851678782_ 'eqpred: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7851678782_ 'get-name: absent-value))
               _args78784_)))
    (define c4-linearize
      (lambda _args7852178790_
        (apply keyword-dispatch
               '#(eqpred:
                  get-name:
                  #f
                  get-precedence-list:
                  #f
                  single-inheritance?:)
               c4-linearize__@
               _args7852178790_)))
    (define c3-linearize__%__%
      (lambda (__7845378456_
               _single-inheritance?7845178458_
               _rhead78460_
               _supers78461_
               _get-precedence-list78462_
               _eqpred78463_
               _get-name78464_)
        (let ((_single-inheritance?78466_
               (if (let ()
                     (declare (not safe))
                     (eq? _single-inheritance?7845178458_ absent-value))
                   false
                   _single-inheritance?7845178458_)))
          (letrec* ((_g83311_
                     (let ((_g83312_
                            (let ()
                              (declare (not safe))
                              (c4-linearize__%
                               '#f
                               _get-precedence-list78462_
                               _single-inheritance?78466_
                               _eqpred78463_
                               _get-name78464_
                               _rhead78460_
                               _supers78461_))))
                       (let ((_g83313_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g83312_)
                                    (##vector-length _g83312_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g83313_ 2)))
                             (error "Context expects 2 values" _g83313_)))
                       _g83312_))
                    (_precedence-list78468_
                     (let () (declare (not safe)) (##vector-ref _g83311_ 0)))
                    (_super-struct78469_
                     (let () (declare (not safe)) (##vector-ref _g83311_ 1))))
            _precedence-list78468_))))
    (define c3-linearize__%__0
      (lambda (__7845378474_
               _single-inheritance?7845178475_
               _rhead78476_
               _supers78477_
               _get-precedence-list78478_)
        (let* ((_eqpred78480_ eq?) (_get-name78482_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7845378474_
           _single-inheritance?7845178475_
           _rhead78476_
           _supers78477_
           _get-precedence-list78478_
           _eqpred78480_
           _get-name78482_))))
    (define c3-linearize__%__1
      (lambda (__7845378484_
               _single-inheritance?7845178485_
               _rhead78486_
               _supers78487_
               _get-precedence-list78488_
               _eqpred78489_)
        (let ((_get-name78491_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7845378484_
           _single-inheritance?7845178485_
           _rhead78486_
           _supers78487_
           _get-precedence-list78488_
           _eqpred78489_
           _get-name78491_))))
    (define c3-linearize__%
      (lambda _g83315_
        (let ((_g83314_ (let () (declare (not safe)) (##length _g83315_))))
          (cond ((let () (declare (not safe)) (##fx= _g83314_ 5))
                 (apply (lambda (__7845378474_
                                 _single-inheritance?7845178475_
                                 _rhead78476_
                                 _supers78477_
                                 _get-precedence-list78478_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__0
                             __7845378474_
                             _single-inheritance?7845178475_
                             _rhead78476_
                             _supers78477_
                             _get-precedence-list78478_)))
                        _g83315_))
                ((let () (declare (not safe)) (##fx= _g83314_ 6))
                 (apply (lambda (__7845378484_
                                 _single-inheritance?7845178485_
                                 _rhead78486_
                                 _supers78487_
                                 _get-precedence-list78488_
                                 _eqpred78489_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__1
                             __7845378484_
                             _single-inheritance?7845178485_
                             _rhead78486_
                             _supers78487_
                             _get-precedence-list78488_
                             _eqpred78489_)))
                        _g83315_))
                ((let () (declare (not safe)) (##fx= _g83314_ 7))
                 (apply (lambda (__7845378493_
                                 _single-inheritance?7845178494_
                                 _rhead78495_
                                 _supers78496_
                                 _get-precedence-list78497_
                                 _eqpred78498_
                                 _get-name78499_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__%
                             __7845378493_
                             _single-inheritance?7845178494_
                             _rhead78495_
                             _supers78496_
                             _get-precedence-list78497_
                             _eqpred78498_
                             _get-name78499_)))
                        _g83315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize__%
                  _g83315_))))))
    (define c3-linearize__@
      (lambda (_keys7845078504_ . _args78506_)
        (apply c3-linearize__%
               _keys7845078504_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7845078504_
                  'single-inheritance?:
                  absent-value))
               _args78506_)))
    (define c3-linearize
      (lambda _args7845278512_
        (apply keyword-dispatch
               '#(single-inheritance?:)
               c3-linearize__@
               _args7845278512_)))))
