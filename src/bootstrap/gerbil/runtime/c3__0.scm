(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708168067)
  (begin
    (define c4-linearize__%
      (lambda (_g90532_
               _get-precedence-list8563185637_
               _struct?8563285639_
               _eq8563385641_
               _get-name8563485643_
               _rhead85645_
               _supers85646_)
        (let* ((_get-precedence-list85648_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list8563185637_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list8563185637_))
               (_struct?85650_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?8563285639_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?8563285639_))
               (_eq85652_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq8563385641_ absent-value))
                    eq?
                    _eq8563385641_))
               (_get-name85654_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name8563485643_ absent-value))
                    identity
                    _get-name8563485643_)))
          (letrec* ((_pls85656_ (map _get-precedence-list85648_ _supers85646_))
                    (_sit85657_ '())
                    (_get-names85658_
                     (lambda (_lst85922_) (map _get-name85654_ _lst85922_)))
                    (_err85659_
                     (lambda _a85920_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90533 (reverse _rhead85645_)))
                                (declare (not safe))
                                (_get-names85658_ __tmp90533))
                              'precedence-lists:
                              (map _get-names85658_ _pls85656_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names85658_ _sit85657_))
                              _a85920_)))
                    (_merge-sit!85660_
                     (lambda (_sit285910_)
                       (if (let () (declare (not safe)) (null? _sit285910_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit85657_))
                               (set! _sit85657_ _sit285910_)
                               (let _loop85912_ ((_t185914_ _sit85657_)
                                                 (_t285915_ _sit285910_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t185914_ _sit285910_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t285915_ _sit85657_))
                                         (set! _sit85657_ _sit285910_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t185914_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t285915_)))
                                             (let ((__tmp90536
                                                    (let ((__tmp90539
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names85658_
                                                              _sit85657_)))
                                                          (__tmp90537
                                                           (let ((__tmp90538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names85658_ _sit285910_))))
                     (declare (not safe))
                     (cons __tmp90538 '()))))
              (declare (not safe))
              (cons __tmp90539 __tmp90537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err85659_
                                                'single-inheritance-incompatibility:
                                                __tmp90536))
                                             (let ((__tmp90535 (cdr _t185914_))
                                                   (__tmp90534
                                                    (cdr _t285915_)))
                                               (declare (not safe))
                                               (_loop85912_
                                                __tmp90535
                                                __tmp90534))))))))))
                    (_rpls85661_
                     (map (lambda (_pl85905_)
                            (let ((_g90540_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?85650_
                                      _pl85905_
                                      '()))))
                              (begin
                                (let ((_g90541_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g90540_)
                                             (##vector-length _g90540_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g90541_ 2)))
                                      (error "Context expects 2 values"
                                             _g90541_)))
                                (let ((_tl85907_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g90540_ 0)))
                                      (_rh85908_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g90540_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!85660_ _tl85907_))
                                    _rh85908_)))))
                          _pls85656_))
                    (_unsitr-rpl85662_
                     (lambda (_rpl85851_)
                       (let _u85853_ ((_pl-rhead85855_ _rpl85851_)
                                      (_pl-tail85856_ '())
                                      (_sit-rhead85857_ (reverse _sit85657_))
                                      (_sit-tail85858_ '()))
                         (let* ((_pl-rhead8585985868_ _pl-rhead85855_)
                                (_E8586285872_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead8585985868_))))
                           (let ((_K8586685902_ (lambda () _pl-tail85856_))
                                 (_K8586385886_
                                  (lambda (_plrh85876_ _c85877_)
                                    (if (member _c85877_
                                                _sit-tail85858_
                                                _eq85652_)
                                        (let ((__tmp90552
                                               (let ((__tmp90553
                                                      (reverse _pl-rhead85855_)))
                                                 (declare (not safe))
                                                 (_get-names85658_
                                                  __tmp90553)))
                                              (__tmp90551
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names85658_
                                                  _pl-tail85856_)))
                                              (__tmp90549
                                               (let ((__tmp90550
                                                      (reverse _sit-rhead85857_)))
                                                 (declare (not safe))
                                                 (_get-names85658_
                                                  __tmp90550)))
                                              (__tmp90548
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names85658_
                                                  _sit-tail85858_)))
                                              (__tmp90547
                                               (_get-name85654_ _c85877_)))
                                          (declare (not safe))
                                          (_err85659_
                                           'precedence-list-head:
                                           __tmp90552
                                           'precedence-list-tail:
                                           __tmp90551
                                           'single-inheritance-head:
                                           __tmp90549
                                           'single-inheritance-tail:
                                           __tmp90548
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90547))
                                        (let ((_g90542_
                                               (let ((__tmp90544
                                                      (lambda (_g8587885880_)
                                                        (_eq85652_
                                                         _c85877_
                                                         _g8587885880_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp90544
                                                  _sit-rhead85857_
                                                  _sit-tail85858_))))
                                          (begin
                                            (let ((_g90543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90542_)
                                                         (##vector-length
                                                          _g90542_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90543_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90543_)))
                                            (let ((_sit-rh285883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90542_
                                                      0)))
                                                  (_sit-tl285884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90542_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh285883_))
                                                  (let ((__tmp90546
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c85877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail85856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u85853_
                                                     _plrh85876_
                                                     __tmp90546
                                                     '()
                                                     _sit-tl285884_))
                                                  (let ((__tmp90545
                                                         (cdr _sit-rh285883_)))
                                                    (declare (not safe))
                                                    (_u85853_
                                                     _plrh85876_
                                                     _pl-tail85856_
                                                     __tmp90545
                                                     _sit-tl285884_))))))))))
                             (let ((_try-match8586185898_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead8585985868_))
                                          (let ((_tl8586585891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead8585985868_)))
                                                (_hd8586485889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead8585985868_))))
                                            (let ((_c85894_ _hd8586485889_)
                                                  (_plrh85896_ _tl8586585891_))
                                              (let ()
                                                (declare (not safe))
                                                (_K8586385886_
                                                 _plrh85896_
                                                 _c85894_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E8586285872_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead8585985868_))
                                   (let ()
                                     (declare (not safe))
                                     (_K8586685902_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match8586185898_)))))))))
                    (_g90554_
                     (let ((_g90555_
                            (let ((__tmp90557 (reverse _supers85646_)))
                              (declare (not safe))
                              (append1! _rpls85661_ __tmp90557))))
                       #!void
                       _g90555_))
                    (_g90558_
                     (let ((_g90559_
                            (set! _pls85656_
                                  (map _unsitr-rpl85662_ _rpls85661_))))
                       #!void
                       _g90559_))
                    (_c3-select-next85663_
                     (lambda (_tails85801_)
                       (let ((_candidate?85807_
                              (lambda (_c85803_)
                                (let ((__tmp90561
                                       (lambda (_tail85805_)
                                         (let ((__tmp90562
                                                (member _c85803_
                                                        (cdr _tail85805_)
                                                        _eq85652_)))
                                           (declare (not safe))
                                           (not __tmp90562)))))
                                  (declare (not safe))
                                  (andmap1 __tmp90561 _tails85801_)))))
                         (let _loop85809_ ((_ts85811_ _tails85801_))
                           (let* ((_ts8581285822_ _ts85811_)
                                  (_else8581485830_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err85659_))))
                                  (_K8581685836_
                                   (lambda (_rts85833_ _c85834_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?85807_ _c85834_))
                                         _c85834_
                                         (let ()
                                           (declare (not safe))
                                           (_loop85809_ _rts85833_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts8581285822_))
                                 (let ((_hd8581785839_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts8581285822_)))
                                       (_tl8581885841_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts8581285822_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd8581785839_))
                                       (let* ((_hd8581985844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd8581785839_)))
                                              (_c85847_ _hd8581985844_)
                                              (_rts85849_ _tl8581885841_))
                                         (declare (not safe))
                                         (_K8581685836_ _rts85849_ _c85847_))
                                       (let ()
                                         (declare (not safe))
                                         (_err85659_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err85659_))))))))
                    (_remove-next!85664_
                     (lambda (_next85746_ _tails85747_)
                       (let _loop85749_ ((_t85751_ _tails85747_))
                         (let* ((_t8575285763_ _t85751_)
                                (_E8575585767_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t8575285763_))))
                           (let ((_K8576185798_ (lambda () _tails85747_))
                                 (_K8575685775_
                                  (lambda (_more85771_ _tail85772_ _head85773_)
                                    (if (_eq85652_ _head85773_ _next85746_)
                                        (set-car! _t85751_ _tail85772_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop85749_ _more85771_)))))
                             (let ((_try-match8575485794_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t8575285763_))
                                          (let ((_tl8575885780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t8575285763_)))
                                                (_hd8575785778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t8575285763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd8575785778_))
                                                (let ((_tl8576085785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd8575785778_)))
                                                      (_hd8575985783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd8575785778_))))
                                                  (let ((_head85788_
                                                         _hd8575985783_)
                                                        (_tail85790_
                                                         _tl8576085785_)
                                                        (_more85792_
                                                         _tl8575885780_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K8575685775_
                                                       _more85792_
                                                       _tail85790_
                                                       _head85788_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E8575585767_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E8575585767_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t8575285763_))
                                   (let ()
                                     (declare (not safe))
                                     (_K8576185798_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match8575485794_)))))))))
                    (_precedence-list85665_
                     (let _c3loop85696_ ((_rhead85698_ _rhead85645_)
                                         (_tails85699_ _pls85656_))
                       (let* ((_tails85701_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails85699_)))
                              (_tails8570285712_ _tails85701_)
                              (_else8570585723_
                               (lambda ()
                                 (let ((_next85720_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next85663_
                                           _tails85701_))))
                                   (let ((__tmp90564
                                          (let ()
                                            (declare (not safe))
                                            (cons _next85720_ _rhead85698_)))
                                         (__tmp90563
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!85664_
                                             _next85720_
                                             _tails85701_))))
                                     (declare (not safe))
                                     (_c3loop85696_ __tmp90564 __tmp90563))))))
                         (let ((_K8571085743_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead85698_ _sit85657_))))
                               (_K8570785729_
                                (lambda (_tail85727_)
                                  (let ((__tmp90565
                                         (append _tail85727_ _sit85657_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead85698_
                                     __tmp90565)))))
                           (let ((_try-match8570485739_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails8570285712_))
                                        (let ((_tl8570985734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails8570285712_)))
                                              (_hd8570885732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails8570285712_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl8570985734_))
                                              (let ((_tail85737_
                                                     _hd8570885732_))
                                                (declare (not safe))
                                                (_K8570785729_ _tail85737_))
                                              (let ()
                                                (declare (not safe))
                                                (_else8570585723_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else8570585723_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails8570285712_))
                                 (let () (declare (not safe)) (_K8571085743_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match8570485739_))))))))
                    (_super-struct85666_
                     (let* ((_sit8566785675_ _sit85657_)
                            (_else8566985683_ (lambda () '#f))
                            (_K8567185688_ (lambda (_s85686_) _s85686_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit8566785675_))
                           (let* ((_hd8567285691_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit8566785675_)))
                                  (_s85694_ _hd8567285691_))
                             (declare (not safe))
                             (_K8567185688_ _s85694_))
                           (let () (declare (not safe)) (_else8566985683_))))))
            (values _precedence-list85665_ _super-struct85666_)))))
    (define c4-linearize__@
      (lambda (_keys8563085927_ . _args85929_)
        (apply c4-linearize__%
               _keys8563085927_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys8563085927_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys8563085927_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys8563085927_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys8563085927_ 'get-name: absent-value))
               _args85929_)))
    (define c4-linearize
      (lambda _args8563585935_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args8563585935_)))))
