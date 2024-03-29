(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1711709196)
  (begin
    (define c4-linearize__%
      (lambda (__60869_
               _get-precedence-list6086360871_
               _struct?6086460873_
               _eq6086560875_
               _get-name6086660877_
               _rhead60879_
               _supers60880_)
        (let* ((_get-precedence-list60882_
                (if (eq? _get-precedence-list6086360871_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6086360871_))
               (_struct?60884_
                (if (eq? _struct?6086460873_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6086460873_))
               (_eq60886_
                (if (eq? _eq6086560875_ absent-value) eq? _eq6086560875_))
               (_get-name60888_
                (if (eq? _get-name6086660877_ absent-value)
                    identity
                    _get-name6086660877_)))
          (letrec* ((_pls60890_ (map _get-precedence-list60882_ _supers60880_))
                    (_sit60891_ '())
                    (_get-names60892_
                     (lambda (_lst61156_) (map _get-name60888_ _lst61156_)))
                    (_err60893_
                     (lambda _a61154_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61198 (reverse _rhead60879_)))
                                (declare (not safe))
                                (_get-names60892_ __tmp61198))
                              'precedence-lists:
                              (map _get-names60892_ _pls60890_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names60892_ _sit60891_))
                              _a61154_)))
                    (_merge-sit!60894_
                     (lambda (_sit261144_)
                       (if (let () (declare (not safe)) (null? _sit261144_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit60891_))
                               (set! _sit60891_ _sit261144_)
                               (let _loop61146_ ((_t161148_ _sit60891_)
                                                 (_t261149_ _sit261144_))
                                 (if (equal? _t161148_ _sit261144_)
                                     '#!void
                                     (if (equal? _t261149_ _sit60891_)
                                         (set! _sit60891_ _sit261144_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161148_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261149_)))
                                             (let ((__tmp61199
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (_get-names60892_
                                                             _sit60891_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_get-names60892_ _sit261144_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err60893_
                                                'single-inheritance-incompatibility:
                                                __tmp61199))
                                             (let ((__tmp61201 (cdr _t161148_))
                                                   (__tmp61200
                                                    (cdr _t261149_)))
                                               (declare (not safe))
                                               (_loop61146_
                                                __tmp61201
                                                __tmp61200))))))))))
                    (_rpls60895_
                     (map (lambda (_pl61139_)
                            (let ((_g61202_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?60884_
                                      _pl61139_
                                      '()))))
                              (begin
                                (let ((_g61203_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61202_)
                                             (##vector-length _g61202_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61203_ 2)))
                                      (error "Context expects 2 values"
                                             _g61203_)))
                                (let ((_tl61141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61202_ 0)))
                                      (_rh61142_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61202_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!60894_ _tl61141_))
                                    _rh61142_)))))
                          _pls60890_))
                    (_unsitr-rpl60896_
                     (lambda (_rpl61085_)
                       (let _u61087_ ((_pl-rhead61089_ _rpl61085_)
                                      (_pl-tail61090_ '())
                                      (_sit-rhead61091_ (reverse _sit60891_))
                                      (_sit-tail61092_ '()))
                         (let* ((_pl-rhead6109361102_ _pl-rhead61089_)
                                (_E6109661106_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6109361102_)))))
                           (let ((_K6110061136_ (lambda () _pl-tail61090_))
                                 (_K6109761120_
                                  (lambda (_plrh61110_ _c61111_)
                                    (if (member _c61111_
                                                _sit-tail61092_
                                                _eq60886_)
                                        (let ((__tmp61209
                                               (let ((__tmp61210
                                                      (reverse _pl-rhead61089_)))
                                                 (declare (not safe))
                                                 (_get-names60892_
                                                  __tmp61210)))
                                              (__tmp61208
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names60892_
                                                  _pl-tail61090_)))
                                              (__tmp61206
                                               (let ((__tmp61207
                                                      (reverse _sit-rhead61091_)))
                                                 (declare (not safe))
                                                 (_get-names60892_
                                                  __tmp61207)))
                                              (__tmp61205
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names60892_
                                                  _sit-tail61092_)))
                                              (__tmp61204
                                               (_get-name60888_ _c61111_)))
                                          (declare (not safe))
                                          (_err60893_
                                           'precedence-list-head:
                                           __tmp61209
                                           'precedence-list-tail:
                                           __tmp61208
                                           'single-inheritance-head:
                                           __tmp61206
                                           'single-inheritance-tail:
                                           __tmp61205
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61204))
                                        (let ((_g61211_
                                               (let ((__tmp61213
                                                      (lambda (_g6111261114_)
                                                        (_eq60886_
                                                         _c61111_
                                                         _g6111261114_))))
                                                 (declare (not safe))
                                                 (__append-reverse-until
                                                  __tmp61213
                                                  _sit-rhead61091_
                                                  _sit-tail61092_))))
                                          (begin
                                            (let ((_g61212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61211_)
                                                         (##vector-length
                                                          _g61211_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61212_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61212_)))
                                            (let ((_sit-rh261117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61211_
                                                      0)))
                                                  (_sit-tl261118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61211_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261117_))
                                                  (let ((__tmp61214
                                                         (cons _c61111_
                                                               _pl-tail61090_)))
                                                    (declare (not safe))
                                                    (_u61087_
                                                     _plrh61110_
                                                     __tmp61214
                                                     '()
                                                     _sit-tl261118_))
                                                  (let ((__tmp61215
                                                         (cdr _sit-rh261117_)))
                                                    (declare (not safe))
                                                    (_u61087_
                                                     _plrh61110_
                                                     _pl-tail61090_
                                                     __tmp61215
                                                     _sit-tl261118_))))))))))
                             (let ((_try-match6109561132_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6109361102_))
                                          (let ((_tl6109961125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6109361102_)))
                                                (_hd6109861123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6109361102_))))
                                            (let ((_c61128_ _hd6109861123_)
                                                  (_plrh61130_ _tl6109961125_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6109761120_
                                                 _plrh61130_
                                                 _c61128_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6109661106_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6109361102_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6110061136_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6109561132_)))))))))
                    (_g61216_
                     (let ((_g61217_
                            (let ((__tmp61219 (reverse _supers60880_)))
                              (declare (not safe))
                              (__append1! _rpls60895_ __tmp61219))))
                       #!void
                       _g61217_))
                    (_g61220_
                     (let ((_g61221_
                            (set! _pls60890_
                                  (map _unsitr-rpl60896_ _rpls60895_))))
                       #!void
                       _g61221_))
                    (_c3-select-next60897_
                     (lambda (_tails61035_)
                       (let ((_candidate?61041_
                              (lambda (_c61037_)
                                (let ((__tmp61223
                                       (lambda (_tail61039_)
                                         (let ((__tmp61224
                                                (member _c61037_
                                                        (cdr _tail61039_)
                                                        _eq60886_)))
                                           (declare (not safe))
                                           (not __tmp61224)))))
                                  (declare (not safe))
                                  (__andmap1 __tmp61223 _tails61035_)))))
                         (let _loop61043_ ((_ts61045_ _tails61035_))
                           (let* ((_ts6104661056_ _ts61045_)
                                  (_else6104861064_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err60893_))))
                                  (_K6105061070_
                                   (lambda (_rts61067_ _c61068_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61041_ _c61068_))
                                         _c61068_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61043_ _rts61067_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6104661056_))
                                 (let ((_hd6105161073_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6104661056_)))
                                       (_tl6105261075_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6104661056_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6105161073_))
                                       (let* ((_hd6105361078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6105161073_)))
                                              (_c61081_ _hd6105361078_)
                                              (_rts61083_ _tl6105261075_))
                                         (declare (not safe))
                                         (_K6105061070_ _rts61083_ _c61081_))
                                       (let ()
                                         (declare (not safe))
                                         (_err60893_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err60893_))))))))
                    (_remove-next!60898_
                     (lambda (_next60980_ _tails60981_)
                       (let _loop60983_ ((_t60985_ _tails60981_))
                         (let* ((_t6098660997_ _t60985_)
                                (_E6098961001_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6098660997_)))))
                           (let ((_K6099561032_ (lambda () _tails60981_))
                                 (_K6099061009_
                                  (lambda (_more61005_ _tail61006_ _head61007_)
                                    (if (_eq60886_ _head61007_ _next60980_)
                                        (set-car! _t60985_ _tail61006_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop60983_ _more61005_)))))
                             (let ((_try-match6098861028_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6098660997_))
                                          (let ((_tl6099261014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6098660997_)))
                                                (_hd6099161012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6098660997_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6099161012_))
                                                (let ((_tl6099461019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6099161012_)))
                                                      (_hd6099361017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6099161012_))))
                                                  (let ((_head61022_
                                                         _hd6099361017_)
                                                        (_tail61024_
                                                         _tl6099461019_)
                                                        (_more61026_
                                                         _tl6099261014_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6099061009_
                                                       _more61026_
                                                       _tail61024_
                                                       _head61022_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6098961001_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6098961001_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6098660997_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6099561032_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6098861028_)))))))))
                    (_precedence-list60899_
                     (let _c3loop60930_ ((_rhead60932_ _rhead60879_)
                                         (_tails60933_ _pls60890_))
                       (let* ((_tails60935_
                               (let ()
                                 (declare (not safe))
                                 (__remove-nulls! _tails60933_)))
                              (_tails6093660946_ _tails60935_)
                              (_else6093960957_
                               (lambda ()
                                 (let ((_next60954_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next60897_
                                           _tails60935_))))
                                   (let ((__tmp61226
                                          (cons _next60954_ _rhead60932_))
                                         (__tmp61225
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!60898_
                                             _next60954_
                                             _tails60935_))))
                                     (declare (not safe))
                                     (_c3loop60930_ __tmp61226 __tmp61225))))))
                         (let ((_K6094460977_
                                (lambda ()
                                  (append-reverse _rhead60932_ _sit60891_)))
                               (_K6094160963_
                                (lambda (_tail60961_)
                                  (append-reverse
                                   _rhead60932_
                                   (append _tail60961_ _sit60891_)))))
                           (let ((_try-match6093860973_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6093660946_))
                                        (let ((_tl6094360968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6093660946_)))
                                              (_hd6094260966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6093660946_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6094360968_))
                                              (let ((_tail60971_
                                                     _hd6094260966_))
                                                (declare (not safe))
                                                (_K6094160963_ _tail60971_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6093960957_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6093960957_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6093660946_))
                                 (let () (declare (not safe)) (_K6094460977_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6093860973_))))))))
                    (_super-struct60900_
                     (let* ((_sit6090160909_ _sit60891_)
                            (_else6090360917_ (lambda () '#f))
                            (_K6090560922_ (lambda (_s60920_) _s60920_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6090160909_))
                           (let* ((_hd6090660925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6090160909_)))
                                  (_s60928_ _hd6090660925_))
                             (declare (not safe))
                             (_K6090560922_ _s60928_))
                           (let () (declare (not safe)) (_else6090360917_))))))
            (values _precedence-list60899_ _super-struct60900_)))))
    (define c4-linearize__@
      (lambda (_keys6086261161_ . _args61163_)
        (apply c4-linearize__%
               _keys6086261161_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6086261161_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6086261161_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6086261161_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6086261161_ 'get-name: absent-value))
               _args61163_)))
    (define c4-linearize
      (lambda _args6086761169_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6086761169_)))))
