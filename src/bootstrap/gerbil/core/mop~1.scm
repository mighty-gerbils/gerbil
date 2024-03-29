(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_type-t24785_)
      (let ((_$e24788_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e24788_
            ((lambda (_ns24792_)
               (gx#stx-identifier
                _type-t24785_
                _ns24792_
                '"#"
                _type-t24785_
                '"::t"))
             _$e24788_)
            (let ((_mid24795_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t24785_
               _mid24795_
               '"#"
               _type-t24785_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_type-t24782_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop~MOP-1[1]#module-type-id| _type-t24782_))
          (let ((__tmp29453 (gensym (gx#stx-e _type-t24782_))))
            (declare (not safe))
            (make-symbol__1 '"__" __tmp29453 '"::t")))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_stx23362_ _struct?23364_)
      (letrec ((_wrap23366_
                (lambda (_e-stx24779_)
                  (gx#stx-wrap-source
                   _e-stx24779_
                   (gx#stx-source _stx23362_))))
               (_slot-name23368_
                (lambda (_slot-spec24696_)
                  (let* ((_g2469924718_
                          (lambda (_g2470024714_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2470024714_)))
                         (_g2469824775_
                          (lambda (_g2470024722_)
                            (if (gx#stx-pair? _g2470024722_)
                                (let ((_e2470624725_
                                       (gx#syntax-e _g2470024722_)))
                                  (let ((_hd2470524729_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2470624725_)))
                                        (_tl2470424732_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2470624725_))))
                                    (if (gx#stx-pair? _tl2470424732_)
                                        (let ((_e2470924735_
                                               (gx#syntax-e _tl2470424732_)))
                                          (let ((_hd2470824739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2470924735_)))
                                                (_tl2470724742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2470924735_))))
                                            (if (gx#stx-pair? _tl2470724742_)
                                                (let ((_e2471224745_
                                                       (gx#syntax-e
                                                        _tl2470724742_)))
                                                  (let ((_hd2471124749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2471224745_)))
                                                        (_tl2471024752_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2471224745_))))
                                                    (if (gx#stx-null?
                                                         _tl2471024752_)
                                                        ((lambda (_L24755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24757_
                          _L24758_)
                   _L24758_)
                 _hd2471124749_
                 _hd2470824739_
                 _hd2470524729_)
                (let () (declare (not safe)) (_g2469924718_ _g2470024722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2469924718_
                                                   _g2470024722_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2469924718_ _g2470024722_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2469924718_ _g2470024722_))))))
                    (declare (not safe))
                    (_g2469824775_ _slot-spec24696_))))
               (_class-opt?23369_
                (lambda (_key24693_)
                  (let ((__tmp29454 (gx#stx-e _key24693_)))
                    (declare (not safe))
                    (##memq __tmp29454
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_g2337123398_
                (lambda (_g2337223394_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2337223394_)))
               (_g2337024689_
                (lambda (_g2337223402_)
                  (if (gx#stx-pair? _g2337223402_)
                      (let ((_e2338023405_ (gx#syntax-e _g2337223402_)))
                        (let ((_hd2337923409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2338023405_)))
                              (_tl2337823412_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2338023405_))))
                          (if (gx#stx-pair? _tl2337823412_)
                              (let ((_e2338323415_
                                     (gx#syntax-e _tl2337823412_)))
                                (let ((_hd2338223419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2338323415_)))
                                      (_tl2338123422_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2338323415_))))
                                  (if (gx#stx-pair? _tl2338123422_)
                                      (let ((_e2338623425_
                                             (gx#syntax-e _tl2338123422_)))
                                        (let ((_hd2338523429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2338623425_)))
                                              (_tl2338423432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2338623425_))))
                                          (if (gx#stx-pair? _tl2338423432_)
                                              (let ((_e2338923435_
                                                     (gx#syntax-e
                                                      _tl2338423432_)))
                                                (let ((_hd2338823439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2338923435_)))
                                                      (_tl2338723442_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2338923435_))))
                                                  (if (gx#stx-pair?
                                                       _tl2338723442_)
                                                      (let ((_e2339223445_
                                                             (gx#syntax-e
                                                              _tl2338723442_)))
                                                        (let ((_hd2339123449_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2339223445_)))
                      (_tl2339023452_
                       (let () (declare (not safe)) (##cdr _e2339223445_))))
                  ((lambda (_L23455_ _L23457_ _L23458_ _L23459_ _L23460_)
                     (if (and (gx#identifier? _L23460_)
                              (gx#identifier-list? _L23459_)
                              (or (gx#identifier? _L23458_)
                                  (gx#stx-false? _L23458_))
                              (gx#identifier? _L23457_)
                              (gx#stx-plist? _L23455_ _class-opt?23369_))
                         (let* ((_struct?23498_
                                 (let ((_$e23490_ _struct?23364_))
                                   (if _$e23490_
                                       _$e23490_
                                       (let ((_$e23494_
                                              (gx#stx-getq 'struct: _L23455_)))
                                         (if _$e23494_
                                             (gx#stx-e _$e23494_)
                                             '#f)))))
                                (_slots23505_
                                 (let ((_$e23501_
                                        (gx#stx-getq 'slots: _L23455_)))
                                   (if _$e23501_ _$e23501_ '())))
                                (_mixin-slots23512_
                                 (let ((_$e23508_
                                        (gx#stx-getq 'mixin: _L23455_)))
                                   (if _$e23508_ _$e23508_ '())))
                                (_accessible-slots23515_
                                 (append (gx#syntax->list _slots23505_)
                                         (gx#syntax->list _mixin-slots23512_)))
                                (_metaclass23518_
                                 (gx#stx-getq 'metaclass: _L23455_))
                                (_g2352123538_
                                 (lambda (_g2352223534_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2352223534_)))
                                (_g2352024685_
                                 (lambda (_g2352223542_)
                                   (if (gx#stx-pair/null? _g2352223542_)
                                       (let ((_g29455_
                                              (gx#syntax-split-splice
                                               _g2352223542_
                                               '0)))
                                         (begin
                                           (let ((_g29456_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g29455_)
                                                        (##vector-length
                                                         _g29455_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g29456_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g29456_)))
                                           (let ((_target2352423545_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g29455_ 0)))
                                                 (_tl2352623548_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g29455_
                                                     1))))
                                             (if (gx#stx-null? _tl2352623548_)
                                                 (letrec ((_loop2352723551_
                                                           (lambda (_hd2352523555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot2353123558_)
                     (if (gx#stx-pair? _hd2352523555_)
                         (let ((_e2352823561_ (gx#syntax-e _hd2352523555_)))
                           (let ((_lp-hd2352923565_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2352823561_)))
                                 (_lp-tl2353023568_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2352823561_))))
                             (let ((__tmp29457
                                    (cons _lp-hd2352923565_ _slot2353123558_)))
                               (declare (not safe))
                               (_loop2352723551_
                                _lp-tl2353023568_
                                __tmp29457))))
                         (let ((_slot2353223571_ (reverse _slot2353123558_)))
                           ((lambda (_L23575_)
                              (let ()
                                (let* ((_g2359623604_
                                        (lambda (_g2359723600_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2359723600_)))
                                       (_g2359524677_
                                        (lambda (_g2359723608_)
                                          ((lambda (_L23611_)
                                             (let ()
                                               (let* ((_g2362423632_
                                                       (lambda (_g2362523628_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2362523628_)))
                                                      (_g2362324669_
                                                       (lambda (_g2362523636_)
                                                         ((lambda (_L23639_)
                                                            (let ()
                                                              (let* ((_g2365223660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2365323656_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2365323656_)))
                             (_g2365124665_
                              (lambda (_g2365323664_)
                                ((lambda (_L23667_)
                                   (let ()
                                     (let* ((_g2368023688_
                                             (lambda (_g2368123684_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2368123684_)))
                                            (_g2367924661_
                                             (lambda (_g2368123692_)
                                               ((lambda (_L23695_)
                                                  (let ()
                                                    (let* ((_g2370823716_
                                                            (lambda (_g2370923712_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2370923712_)))
                                                           (_g2370724657_
                                                            (lambda (_g2370923720_)
                                                              ((lambda (_L23723_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2373623744_
                                   (lambda (_g2373723740_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2373723740_)))
                                  (_g2373524653_
                                   (lambda (_g2373723748_)
                                     ((lambda (_L23751_)
                                        (let ()
                                          (let* ((_g2376423772_
                                                  (lambda (_g2376523768_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2376523768_)))
                                                 (_g2376324649_
                                                  (lambda (_g2376523776_)
                                                    ((lambda (_L23779_)
                                                       (let ()
                                                         (let* ((_g2379223800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2379323796_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2379323796_)))
                        (_g2379124645_
                         (lambda (_g2379323804_)
                           ((lambda (_L23807_)
                              (let ()
                                (let* ((_g2382023828_
                                        (lambda (_g2382123824_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2382123824_)))
                                       (_g2381924637_
                                        (lambda (_g2382123832_)
                                          ((lambda (_L23835_)
                                             (let ()
                                               (let* ((_g2384823856_
                                                       (lambda (_g2384923852_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2384923852_)))
                                                      (_g2384724633_
                                                       (lambda (_g2384923860_)
                                                         ((lambda (_L23863_)
                                                            (let ()
                                                              (let* ((_g2387623884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2387723880_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2387723880_)))
                             (_g2387524629_
                              (lambda (_g2387723888_)
                                ((lambda (_L23891_)
                                   (let ()
                                     (let* ((_g2390423912_
                                             (lambda (_g2390523908_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2390523908_)))
                                            (_g2390324594_
                                             (lambda (_g2390523916_)
                                               ((lambda (_L23919_)
                                                  (let ()
                                                    (let* ((_g2393223940_
                                                            (lambda (_g2393323936_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2393323936_)))
                                                           (_g2393124590_
                                                            (lambda (_g2393323944_)
                                                              ((lambda (_L23947_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2396023968_
                                   (lambda (_g2396123964_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2396123964_)))
                                  (_g2395924578_
                                   (lambda (_g2396123972_)
                                     ((lambda (_L23975_)
                                        (let ()
                                          (let* ((_g2398823996_
                                                  (lambda (_g2398923992_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2398923992_)))
                                                 (_g2398724566_
                                                  (lambda (_g2398924000_)
                                                    ((lambda (_L24003_)
                                                       (let ()
                                                         (let* ((_g2401624024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2401724020_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2401724020_)))
                        (_g2401524562_
                         (lambda (_g2401724028_)
                           ((lambda (_L24031_)
                              (let ()
                                (let* ((_g2404424052_
                                        (lambda (_g2404524048_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2404524048_)))
                                       (_g2404324558_
                                        (lambda (_g2404524056_)
                                          ((lambda (_L24059_)
                                             (let ()
                                               (let* ((_g2407224098_
                                                       (lambda (_g2407324094_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2407324094_)))
                                                      (_g2407124470_
                                                       (lambda (_g2407324102_)
                                                         (if (gx#stx-pair/null?
                                                              _g2407324102_)
                                                             (let ((_g29458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2407324102_ '0)))
                       (begin
                         (let ((_g29459_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g29458_)
                                      (##vector-length _g29458_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g29459_ 2)))
                               (error "Context expects 2 values" _g29459_)))
                         (let ((_target2407624105_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g29458_ 0)))
                               (_tl2407824108_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g29458_ 1))))
                           (if (gx#stx-null? _tl2407824108_)
                               (letrec ((_loop2407924111_
                                         (lambda (_hd2407724115_
                                                  _def-setf2408324118_
                                                  _def-getf2408424120_)
                                           (if (gx#stx-pair? _hd2407724115_)
                                               (let ((_e2408024123_
                                                      (gx#syntax-e
                                                       _hd2407724115_)))
                                                 (let ((_lp-hd2408124127_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2408024123_)))
                                                       (_lp-tl2408224130_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2408024123_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd2408124127_)
                                                       (let ((_e2408924133_
                                                              (gx#syntax-e
                                                               _lp-hd2408124127_)))
                                                         (let ((_hd2408824137_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2408924133_)))
                       (_tl2408724140_
                        (let () (declare (not safe)) (##cdr _e2408924133_))))
                   (if (gx#stx-pair? _tl2408724140_)
                       (let ((_e2409224143_ (gx#syntax-e _tl2408724140_)))
                         (let ((_hd2409124147_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2409224143_)))
                               (_tl2409024150_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2409224143_))))
                           (if (gx#stx-null? _tl2409024150_)
                               (let ((__tmp29461
                                      (cons _hd2409124147_
                                            _def-setf2408324118_))
                                     (__tmp29460
                                      (cons _hd2408824137_
                                            _def-getf2408424120_)))
                                 (declare (not safe))
                                 (_loop2407924111_
                                  _lp-tl2408224130_
                                  __tmp29461
                                  __tmp29460))
                               (let ()
                                 (declare (not safe))
                                 (_g2407224098_ _g2407324102_)))))
                       (let ()
                         (declare (not safe))
                         (_g2407224098_ _g2407324102_)))))
               (let () (declare (not safe)) (_g2407224098_ _g2407324102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf2408524153_
                                                      (reverse _def-setf2408324118_))
                                                     (_def-getf2408624156_
                                                      (reverse _def-getf2408424120_)))
                                                 ((lambda (_L24159_ _L24161_)
                                                    (let ()
                                                      (let* ((_g2417824204_
                                                              (lambda (_g2417924200_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2417924200_)))
                     (_g2417724318_
                      (lambda (_g2417924208_)
                        (if (gx#stx-pair/null? _g2417924208_)
                            (let ((_g29462_
                                   (gx#syntax-split-splice _g2417924208_ '0)))
                              (begin
                                (let ((_g29463_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g29462_)
                                             (##vector-length _g29462_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g29463_ 2)))
                                      (error "Context expects 2 values"
                                             _g29463_)))
                                (let ((_target2418224211_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g29462_ 0)))
                                      (_tl2418424214_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g29462_ 1))))
                                  (if (gx#stx-null? _tl2418424214_)
                                      (letrec ((_loop2418524217_
                                                (lambda (_hd2418324221_
                                                         _def-usetf2418924224_
                                                         _def-ugetf2419024226_)
                                                  (if (gx#stx-pair?
                                                       _hd2418324221_)
                                                      (let ((_e2418624229_
                                                             (gx#syntax-e
                                                              _hd2418324221_)))
                                                        (let ((_lp-hd2418724233_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2418624229_)))
                      (_lp-tl2418824236_
                       (let () (declare (not safe)) (##cdr _e2418624229_))))
                  (if (gx#stx-pair? _lp-hd2418724233_)
                      (let ((_e2419524239_ (gx#syntax-e _lp-hd2418724233_)))
                        (let ((_hd2419424243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2419524239_)))
                              (_tl2419324246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2419524239_))))
                          (if (gx#stx-pair? _tl2419324246_)
                              (let ((_e2419824249_
                                     (gx#syntax-e _tl2419324246_)))
                                (let ((_hd2419724253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2419824249_)))
                                      (_tl2419624256_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2419824249_))))
                                  (if (gx#stx-null? _tl2419624256_)
                                      (let ((__tmp29465
                                             (cons _hd2419724253_
                                                   _def-usetf2418924224_))
                                            (__tmp29464
                                             (cons _hd2419424243_
                                                   _def-ugetf2419024226_)))
                                        (declare (not safe))
                                        (_loop2418524217_
                                         _lp-tl2418824236_
                                         __tmp29465
                                         __tmp29464))
                                      (let ()
                                        (declare (not safe))
                                        (_g2417824204_ _g2417924208_)))))
                              (let ()
                                (declare (not safe))
                                (_g2417824204_ _g2417924208_)))))
                      (let ()
                        (declare (not safe))
                        (_g2417824204_ _g2417924208_)))))
              (let ((_def-usetf2419124259_ (reverse _def-usetf2418924224_))
                    (_def-ugetf2419224262_ (reverse _def-ugetf2419024226_)))
                ((lambda (_L24265_ _L24267_)
                   (let ()
                     (let ()
                       (let ((__tmp29466
                              (cons (gx#datum->syntax '#f 'begin)
                                    (cons _L24003_
                                          (cons _L24059_
                                                (cons _L24031_
                                                      (let ((__tmp29473
                                                             (lambda (_g2428524294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2428624297_)
                       (cons _g2428524294_ _g2428624297_)))
                    (__tmp29467
                     (let ((__tmp29472
                            (lambda (_g2428724300_ _g2428824303_)
                              (cons _g2428724300_ _g2428824303_)))
                           (__tmp29468
                            (let ((__tmp29471
                                   (lambda (_g2428924306_ _g2429024309_)
                                     (cons _g2428924306_ _g2429024309_)))
                                  (__tmp29469
                                   (let ((__tmp29470
                                          (lambda (_g2429124312_ _g2429224315_)
                                            (cons _g2429124312_
                                                  _g2429224315_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp29470 '() _L24265_))))
                              (declare (not safe))
                              (__foldr1 __tmp29471 __tmp29469 _L24267_))))
                       (declare (not safe))
                       (__foldr1 __tmp29472 __tmp29468 _L24159_))))
                (declare (not safe))
                (__foldr1 __tmp29473 __tmp29467 _L24161_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (_wrap23366_ __tmp29466)))))
                 _def-usetf2419124259_
                 _def-ugetf2419224262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2418524217_
                                           _target2418224211_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2417824204_ _g2417924208_))))))
                            (let ()
                              (declare (not safe))
                              (_g2417824204_ _g2417924208_)))))
                     (__tmp29474
                      (gx#stx-map
                       (lambda (_ref24322_)
                         (let* ((_g2432524344_
                                 (lambda (_g2432624340_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2432624340_)))
                                (_g2432424466_
                                 (lambda (_g2432624348_)
                                   (if (gx#stx-pair? _g2432624348_)
                                       (let ((_e2433224351_
                                              (gx#syntax-e _g2432624348_)))
                                         (let ((_hd2433124355_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2433224351_)))
                                               (_tl2433024358_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2433224351_))))
                                           (if (gx#stx-pair? _tl2433024358_)
                                               (let ((_e2433524361_
                                                      (gx#syntax-e
                                                       _tl2433024358_)))
                                                 (let ((_hd2433424365_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2433524361_)))
                                                       (_tl2433324368_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2433524361_))))
                                                   (if (gx#stx-pair?
                                                        _tl2433324368_)
                                                       (let ((_e2433824371_
                                                              (gx#syntax-e
                                                               _tl2433324368_)))
                                                         (let ((_hd2433724375_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2433824371_)))
                       (_tl2433624378_
                        (let () (declare (not safe)) (##cdr _e2433824371_))))
                   (if (gx#stx-null? _tl2433624378_)
                       ((lambda (_L24381_ _L24383_ _L24384_)
                          (let* ((_g2440224417_
                                  (lambda (_g2440324413_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2440324413_)))
                                 (_g2440124462_
                                  (lambda (_g2440324421_)
                                    (if (gx#stx-pair? _g2440324421_)
                                        (let ((_e2440824424_
                                               (gx#syntax-e _g2440324421_)))
                                          (let ((_hd2440724428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2440824424_)))
                                                (_tl2440624431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2440824424_))))
                                            (if (gx#stx-pair? _tl2440624431_)
                                                (let ((_e2441124434_
                                                       (gx#syntax-e
                                                        _tl2440624431_)))
                                                  (let ((_hd2441024438_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2441124434_)))
                                                        (_tl2440924441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2441124434_))))
                                                    (if (gx#stx-null?
                                                         _tl2440924441_)
                                                        ((lambda (_L24444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24446_)
                   (let ()
                     (cons (let ((__tmp29475
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons _L24446_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _L23695_ (cons _L24384_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax
                                     '#f
                                     'make-class-slot-unchecked-accessor)
                                    (cons _L23460_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L24384_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                             (declare (not safe))
                             (_wrap23366_ __tmp29475))
                           (cons (let ((__tmp29476
                                        (cons (gx#datum->syntax '#f 'def)
                                              (cons _L24444_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _L23695_
                                          (cons _L24384_ (cons '#f '()))))
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'make-class-slot-unchecked-mutator)
                                          (cons _L23460_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L24384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (_wrap23366_ __tmp29476))
                                 '()))))
                 _hd2441024438_
                 _hd2440724428_)
                (let () (declare (not safe)) (_g2440224417_ _g2440324421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2440224417_
                                                   _g2440324421_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2440224417_ _g2440324421_)))))
                                 (__tmp29477
                                  (list (gx#stx-identifier
                                         _L24383_
                                         '"&"
                                         _L24383_)
                                        (gx#stx-identifier
                                         _L24381_
                                         '"&"
                                         _L24381_))))
                            (declare (not safe))
                            (_g2440124462_ __tmp29477)))
                        _hd2433724375_
                        _hd2433424365_
                        _hd2433124355_)
                       (let ()
                         (declare (not safe))
                         (_g2432524344_ _g2432624348_)))))
               (let () (declare (not safe)) (_g2432524344_ _g2432624348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2432524344_
                                                  _g2432624348_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2432524344_ _g2432624348_))))))
                           (declare (not safe))
                           (_g2432424466_ _ref24322_)))
                       _accessible-slots23515_)))
                (declare (not safe))
                (_g2417724318_ __tmp29474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf2408524153_
                                                  _def-getf2408624156_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2407924111_
                                    _target2407624105_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2407224098_ _g2407324102_))))))
                     (let ()
                       (declare (not safe))
                       (_g2407224098_ _g2407324102_)))))
              (__tmp29478
               (gx#stx-map
                (lambda (_ref24474_)
                  (let* ((_g2447724496_
                          (lambda (_g2447824492_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2447824492_)))
                         (_g2447624554_
                          (lambda (_g2447824500_)
                            (if (gx#stx-pair? _g2447824500_)
                                (let ((_e2448424503_
                                       (gx#syntax-e _g2447824500_)))
                                  (let ((_hd2448324507_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2448424503_)))
                                        (_tl2448224510_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2448424503_))))
                                    (if (gx#stx-pair? _tl2448224510_)
                                        (let ((_e2448724513_
                                               (gx#syntax-e _tl2448224510_)))
                                          (let ((_hd2448624517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2448724513_)))
                                                (_tl2448524520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2448724513_))))
                                            (if (gx#stx-pair? _tl2448524520_)
                                                (let ((_e2449024523_
                                                       (gx#syntax-e
                                                        _tl2448524520_)))
                                                  (let ((_hd2448924527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2449024523_)))
                                                        (_tl2448824530_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2449024523_))))
                                                    (if (gx#stx-null?
                                                         _tl2448824530_)
                                                        ((lambda (_L24533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24535_
                          _L24536_)
                   (cons (let ((__tmp29479
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L24535_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _L23695_ (cons _L24536_ (cons '#t '()))))
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'make-class-slot-accessor)
                                  (cons _L23460_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _L24536_ '()))
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                           (declare (not safe))
                           (_wrap23366_ __tmp29479))
                         (cons (let ((__tmp29480
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L24533_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _L23695_
                                        (cons _L24536_ (cons '#t '()))))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'make-class-slot-mutator)
                                        (cons _L23460_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _L24536_ '()))
                                                    '())))
                                  '())))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (_wrap23366_ __tmp29480))
                               '())))
                 _hd2448924527_
                 _hd2448624517_
                 _hd2448324507_)
                (let () (declare (not safe)) (_g2447724496_ _g2447824500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2447724496_
                                                   _g2447824500_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2447724496_ _g2447824500_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2447724496_ _g2447824500_))))))
                    (declare (not safe))
                    (_g2447624554_ _ref24474_)))
                _accessible-slots23515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2407124470_ __tmp29478))))
                                           _g2404524056_)))
                                       (__tmp29481
                                        (let ((__tmp29482
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _L23457_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '@mop.predicate)
                                           (cons _L23695_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'make-class-predicate)
                                                 (cons _L23460_ '()))
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_wrap23366_ __tmp29482))))
                                  (declare (not safe))
                                  (_g2404324558_ __tmp29481))))
                            _g2401724028_)))
                        (__tmp29483
                         (if (gx#stx-false? _L23458_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (let ((__tmp29484
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L23458_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin-annotation)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '@mop.constructor)
                                (cons _L23695_ '()))
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (gx#datum->syntax '#f '$args)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-instance)
                                                              (cons _L23460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (_wrap23366_ __tmp29484)))))
                   (declare (not safe))
                   (_g2401524562_ __tmp29483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2398924000_)))
                                                 (__tmp29485
                                                  (let ((__tmp29486
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def)
                                                               (cons _L23460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.class)
                                                     (cons _L23611_
                                                           (cons _L23723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ((__tmp29487
                                      (lambda (_g2456924572_ _g2457024575_)
                                        (cons _g2456924572_ _g2457024575_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp29487 '() _L23575_))
                               (cons _L23667_
                                     (cons _L23751_
                                           (cons _L23779_
                                                 (cons _L23807_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L23975_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap23366_ __tmp29486))))
                                            (declare (not safe))
                                            (_g2398724566_ __tmp29485))))
                                      _g2396123972_)))
                                  (__tmp29488
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L23611_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L23639_ '()))
                                                     (cons _L23947_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons (let ((__tmp29489
                                            (lambda (_g2458124584_
                                                     _g2458224587_)
                                              (cons _g2458124584_
                                                    _g2458224587_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp29489 '() _L23575_))
                                     '()))
                         (cons _L23919_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L23667_ '()))
                                     '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (_g2395924578_ __tmp29488))))
                       _g2393323944_)))
                   (__tmp29490 (cons (gx#datum->syntax '#f 'list) _L23459_)))
              (declare (not safe))
              (_g2393124590_ __tmp29490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2390523916_)))
                                            (__tmp29491
                                             (if (gx#stx-e _metaclass23518_)
                                                 (let* ((_g2459824606_
                                                         (lambda (_g2459924602_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2459924602_)))
                                                        (_g2459724625_
                                                         (lambda (_g2459924610_)
                                                           ((lambda (_L24613_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@list)
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (cons 'metaclass:
                                                (cons '::
                                                      (cons _L24613_ '()))))
                                    (cons ':: (cons _L23891_ '()))))))
                    _g2459924610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2459724625_
                                                    _metaclass23518_))
                                                 _L23891_)))
                                       (declare (not safe))
                                       (_g2390324594_ __tmp29491))))
                                 _g2387723888_)))
                             (__tmp29492
                              (if _struct?23498_
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'struct: '#t))
                                              (cons ':: (cons _L23863_ '()))))
                                  _L23863_)))
                        (declare (not safe))
                        (_g2387524629_ __tmp29492))))
                  _g2384923860_)))
              (__tmp29493
               (if (gx#stx-e _L23779_)
                   (cons (gx#datum->syntax '#f '@list)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons 'final: '#t))
                               (cons ':: (cons _L23835_ '()))))
                   _L23835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2384724633_ __tmp29493))))
                                           _g2382123832_)))
                                       (__tmp29494
                                        (let ((_$e24641_
                                               (gx#stx-getq
                                                'properties:
                                                _L23455_)))
                                          (if _$e24641_
                                              _$e24641_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '())))))
                                  (declare (not safe))
                                  (_g2381924637_ __tmp29494))))
                            _g2379323804_)))
                        (__tmp29495
                         (if (gx#stx-e _metaclass23518_)
                             (gx#core-quote-syntax _metaclass23518_)
                             '#f)))
                   (declare (not safe))
                   (_g2379124645_ __tmp29495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2376523776_)))
                                                 (__tmp29496
                                                  (gx#stx-getq
                                                   'final:
                                                   _L23455_)))
                                            (declare (not safe))
                                            (_g2376324649_ __tmp29496))))
                                      _g2373723748_))))
                             (declare (not safe))
                             (_g2373524653_ _struct?23498_))))
                       _g2370923720_)))
                   (__tmp29497 (gx#stx-map gx#core-quote-syntax _L23459_)))
              (declare (not safe))
              (_g2370724657_ __tmp29497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2368123692_)))
                                            (__tmp29498
                                             (gx#core-quote-syntax _L23460_)))
                                       (declare (not safe))
                                       (_g2367924661_ __tmp29498))))
                                 _g2365323664_)))
                             (__tmp29499 (gx#stx-getq 'constructor: _L23455_)))
                        (declare (not safe))
                        (_g2365124665_ __tmp29499))))
                  _g2362523636_)))
              (__tmp29500
               (let ((_$e24673_ (gx#stx-getq 'name: _L23455_)))
                 (if _$e24673_ _$e24673_ _L23460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2362324669_ __tmp29500))))
                                           _g2359723608_)))
                                       (__tmp29501
                                        (let ((_$e24681_
                                               (gx#stx-getq 'id: _L23455_)))
                                          (if _$e24681_
                                              _$e24681_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _L23460_))))))
                                  (declare (not safe))
                                  (_g2359524677_ __tmp29501))))
                            _slot2353223571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop2352723551_
                                                      _target2352423545_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2352123538_
                                                    _g2352223542_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2352123538_ _g2352223542_)))))
                                (__tmp29502
                                 (gx#stx-map _slot-name23368_ _slots23505_)))
                           (declare (not safe))
                           (_g2352024685_ __tmp29502))
                         (let ()
                           (declare (not safe))
                           (_g2337123398_ _g2337223402_))))
                   _tl2339023452_
                   _hd2339123449_
                   _hd2338823439_
                   _hd2338523429_
                   _hd2338223419_)))
              (let () (declare (not safe)) (_g2337123398_ _g2337223402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2337123398_
                                                 _g2337223402_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2337123398_ _g2337223402_)))))
                              (let ()
                                (declare (not safe))
                                (_g2337123398_ _g2337223402_)))))
                      (let ()
                        (declare (not safe))
                        (_g2337123398_ _g2337223402_))))))
          (declare (not safe))
          (_g2337024689_ _stx23362_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_stx24801_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _stx24801_ '#t))))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_stx24804_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _stx24804_ '#f)))))
