(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_type-t27245_)
      (let ((_$e27248_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e27248_
            ((lambda (_ns27252_)
               (gx#stx-identifier
                _type-t27245_
                _ns27252_
                '"#"
                _type-t27245_
                '"::t"))
             _$e27248_)
            (let ((_mid27255_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t27245_
               _mid27255_
               '"#"
               _type-t27245_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_type-t27242_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop~MOP-1[1]#module-type-id| _type-t27242_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t27242_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_stx25822_ _struct?25824_)
      (letrec ((_wrap25826_
                (lambda (_e-stx27239_)
                  (gx#stx-wrap-source
                   _e-stx27239_
                   (gx#stx-source _stx25822_))))
               (_slot-name25828_
                (lambda (_slot-spec27156_)
                  (let* ((_g2715927178_
                          (lambda (_g2716027174_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2716027174_)))
                         (_g2715827235_
                          (lambda (_g2716027182_)
                            (if (gx#stx-pair? _g2716027182_)
                                (let ((_e2716627185_
                                       (gx#syntax-e _g2716027182_)))
                                  (let ((_hd2716527189_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2716627185_)))
                                        (_tl2716427192_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2716627185_))))
                                    (if (gx#stx-pair? _tl2716427192_)
                                        (let ((_e2716927195_
                                               (gx#syntax-e _tl2716427192_)))
                                          (let ((_hd2716827199_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2716927195_)))
                                                (_tl2716727202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2716927195_))))
                                            (if (gx#stx-pair? _tl2716727202_)
                                                (let ((_e2717227205_
                                                       (gx#syntax-e
                                                        _tl2716727202_)))
                                                  (let ((_hd2717127209_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2717227205_)))
                                                        (_tl2717027212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2717227205_))))
                                                    (if (gx#stx-null?
                                                         _tl2717027212_)
                                                        ((lambda (_L27215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27217_
                          _L27218_)
                   _L27218_)
                 _hd2717127209_
                 _hd2716827199_
                 _hd2716527189_)
                (let () (declare (not safe)) (_g2715927178_ _g2716027182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2715927178_
                                                   _g2716027182_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2715927178_ _g2716027182_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2715927178_ _g2716027182_))))))
                    (declare (not safe))
                    (_g2715827235_ _slot-spec27156_))))
               (_class-opt?25829_
                (lambda (_key27153_)
                  (memq (gx#stx-e _key27153_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_g2583125858_
                (lambda (_g2583225854_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2583225854_)))
               (_g2583027149_
                (lambda (_g2583225862_)
                  (if (gx#stx-pair? _g2583225862_)
                      (let ((_e2584025865_ (gx#syntax-e _g2583225862_)))
                        (let ((_hd2583925869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2584025865_)))
                              (_tl2583825872_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2584025865_))))
                          (if (gx#stx-pair? _tl2583825872_)
                              (let ((_e2584325875_
                                     (gx#syntax-e _tl2583825872_)))
                                (let ((_hd2584225879_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2584325875_)))
                                      (_tl2584125882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2584325875_))))
                                  (if (gx#stx-pair? _tl2584125882_)
                                      (let ((_e2584625885_
                                             (gx#syntax-e _tl2584125882_)))
                                        (let ((_hd2584525889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2584625885_)))
                                              (_tl2584425892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2584625885_))))
                                          (if (gx#stx-pair? _tl2584425892_)
                                              (let ((_e2584925895_
                                                     (gx#syntax-e
                                                      _tl2584425892_)))
                                                (let ((_hd2584825899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2584925895_)))
                                                      (_tl2584725902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2584925895_))))
                                                  (if (gx#stx-pair?
                                                       _tl2584725902_)
                                                      (let ((_e2585225905_
                                                             (gx#syntax-e
                                                              _tl2584725902_)))
                                                        (let ((_hd2585125909_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2585225905_)))
                      (_tl2585025912_
                       (let () (declare (not safe)) (##cdr _e2585225905_))))
                  ((lambda (_L25915_ _L25917_ _L25918_ _L25919_ _L25920_)
                     (if (and (gx#identifier? _L25920_)
                              (gx#identifier-list? _L25919_)
                              (or (gx#identifier? _L25918_)
                                  (gx#stx-false? _L25918_))
                              (gx#identifier? _L25917_)
                              (gx#stx-plist? _L25915_ _class-opt?25829_))
                         (let* ((_struct?25958_
                                 (let ((_$e25950_ _struct?25824_))
                                   (if _$e25950_
                                       _$e25950_
                                       (let ((_$e25954_
                                              (gx#stx-getq 'struct: _L25915_)))
                                         (if _$e25954_
                                             (gx#stx-e _$e25954_)
                                             '#f)))))
                                (_slots25965_
                                 (let ((_$e25961_
                                        (gx#stx-getq 'slots: _L25915_)))
                                   (if _$e25961_ _$e25961_ '())))
                                (_mixin-slots25972_
                                 (let ((_$e25968_
                                        (gx#stx-getq 'mixin: _L25915_)))
                                   (if _$e25968_ _$e25968_ '())))
                                (_accessible-slots25975_
                                 (append (gx#syntax->list _slots25965_)
                                         (gx#syntax->list _mixin-slots25972_)))
                                (_metaclass25978_
                                 (gx#stx-getq 'metaclass: _L25915_))
                                (_g2598125998_
                                 (lambda (_g2598225994_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2598225994_)))
                                (_g2598027145_
                                 (lambda (_g2598226002_)
                                   (if (gx#stx-pair/null? _g2598226002_)
                                       (let ((_g31910_
                                              (gx#syntax-split-splice
                                               _g2598226002_
                                               '0)))
                                         (begin
                                           (let ((_g31911_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g31910_)
                                                        (##vector-length
                                                         _g31910_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g31911_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g31911_)))
                                           (let ((_target2598426005_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g31910_ 0)))
                                                 (_tl2598626008_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g31910_
                                                     1))))
                                             (if (gx#stx-null? _tl2598626008_)
                                                 (letrec ((_loop2598726011_
                                                           (lambda (_hd2598526015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot2599126018_)
                     (if (gx#stx-pair? _hd2598526015_)
                         (let ((_e2598826021_ (gx#syntax-e _hd2598526015_)))
                           (let ((_lp-hd2598926025_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2598826021_)))
                                 (_lp-tl2599026028_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2598826021_))))
                             (let ((__tmp32132
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd2598926025_
                                            _slot2599126018_))))
                               (declare (not safe))
                               (_loop2598726011_
                                _lp-tl2599026028_
                                __tmp32132))))
                         (let ((_slot2599226031_ (reverse _slot2599126018_)))
                           ((lambda (_L26035_)
                              (let ()
                                (let* ((_g2605626064_
                                        (lambda (_g2605726060_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2605726060_)))
                                       (_g2605527137_
                                        (lambda (_g2605726068_)
                                          ((lambda (_L26071_)
                                             (let ()
                                               (let* ((_g2608426092_
                                                       (lambda (_g2608526088_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2608526088_)))
                                                      (_g2608327129_
                                                       (lambda (_g2608526096_)
                                                         ((lambda (_L26099_)
                                                            (let ()
                                                              (let* ((_g2611226120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2611326116_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2611326116_)))
                             (_g2611127125_
                              (lambda (_g2611326124_)
                                ((lambda (_L26127_)
                                   (let ()
                                     (let* ((_g2614026148_
                                             (lambda (_g2614126144_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2614126144_)))
                                            (_g2613927121_
                                             (lambda (_g2614126152_)
                                               ((lambda (_L26155_)
                                                  (let ()
                                                    (let* ((_g2616826176_
                                                            (lambda (_g2616926172_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2616926172_)))
                                                           (_g2616727117_
                                                            (lambda (_g2616926180_)
                                                              ((lambda (_L26183_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2619626204_
                                   (lambda (_g2619726200_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2619726200_)))
                                  (_g2619527113_
                                   (lambda (_g2619726208_)
                                     ((lambda (_L26211_)
                                        (let ()
                                          (let* ((_g2622426232_
                                                  (lambda (_g2622526228_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2622526228_)))
                                                 (_g2622327109_
                                                  (lambda (_g2622526236_)
                                                    ((lambda (_L26239_)
                                                       (let ()
                                                         (let* ((_g2625226260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2625326256_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2625326256_)))
                        (_g2625127105_
                         (lambda (_g2625326264_)
                           ((lambda (_L26267_)
                              (let ()
                                (let* ((_g2628026288_
                                        (lambda (_g2628126284_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2628126284_)))
                                       (_g2627927097_
                                        (lambda (_g2628126292_)
                                          ((lambda (_L26295_)
                                             (let ()
                                               (let* ((_g2630826316_
                                                       (lambda (_g2630926312_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2630926312_)))
                                                      (_g2630727093_
                                                       (lambda (_g2630926320_)
                                                         ((lambda (_L26323_)
                                                            (let ()
                                                              (let* ((_g2633626344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2633726340_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2633726340_)))
                             (_g2633527089_
                              (lambda (_g2633726348_)
                                ((lambda (_L26351_)
                                   (let ()
                                     (let* ((_g2636426372_
                                             (lambda (_g2636526368_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2636526368_)))
                                            (_g2636327054_
                                             (lambda (_g2636526376_)
                                               ((lambda (_L26379_)
                                                  (let ()
                                                    (let* ((_g2639226400_
                                                            (lambda (_g2639326396_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2639326396_)))
                                                           (_g2639127050_
                                                            (lambda (_g2639326404_)
                                                              ((lambda (_L26407_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2642026428_
                                   (lambda (_g2642126424_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2642126424_)))
                                  (_g2641927038_
                                   (lambda (_g2642126432_)
                                     ((lambda (_L26435_)
                                        (let ()
                                          (let* ((_g2644826456_
                                                  (lambda (_g2644926452_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2644926452_)))
                                                 (_g2644727026_
                                                  (lambda (_g2644926460_)
                                                    ((lambda (_L26463_)
                                                       (let ()
                                                         (let* ((_g2647626484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2647726480_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2647726480_)))
                        (_g2647527022_
                         (lambda (_g2647726488_)
                           ((lambda (_L26491_)
                              (let ()
                                (let* ((_g2650426512_
                                        (lambda (_g2650526508_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2650526508_)))
                                       (_g2650327018_
                                        (lambda (_g2650526516_)
                                          ((lambda (_L26519_)
                                             (let ()
                                               (let* ((_g2653226558_
                                                       (lambda (_g2653326554_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2653326554_)))
                                                      (_g2653126930_
                                                       (lambda (_g2653326562_)
                                                         (if (gx#stx-pair/null?
                                                              _g2653326562_)
                                                             (let ((_g31912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2653326562_ '0)))
                       (begin
                         (let ((_g31913_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g31912_)
                                      (##vector-length _g31912_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g31913_ 2)))
                               (error "Context expects 2 values" _g31913_)))
                         (let ((_target2653626565_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31912_ 0)))
                               (_tl2653826568_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31912_ 1))))
                           (if (gx#stx-null? _tl2653826568_)
                               (letrec ((_loop2653926571_
                                         (lambda (_hd2653726575_
                                                  _def-setf2654326578_
                                                  _def-getf2654426580_)
                                           (if (gx#stx-pair? _hd2653726575_)
                                               (let ((_e2654026583_
                                                      (gx#syntax-e
                                                       _hd2653726575_)))
                                                 (let ((_lp-hd2654126587_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2654026583_)))
                                                       (_lp-tl2654226590_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2654026583_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd2654126587_)
                                                       (let ((_e2654926593_
                                                              (gx#syntax-e
                                                               _lp-hd2654126587_)))
                                                         (let ((_hd2654826597_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2654926593_)))
                       (_tl2654726600_
                        (let () (declare (not safe)) (##cdr _e2654926593_))))
                   (if (gx#stx-pair? _tl2654726600_)
                       (let ((_e2655226603_ (gx#syntax-e _tl2654726600_)))
                         (let ((_hd2655126607_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2655226603_)))
                               (_tl2655026610_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2655226603_))))
                           (if (gx#stx-null? _tl2655026610_)
                               (let ((__tmp31970
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2655126607_
                                              _def-setf2654326578_)))
                                     (__tmp31969
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654826597_
                                              _def-getf2654426580_))))
                                 (declare (not safe))
                                 (_loop2653926571_
                                  _lp-tl2654226590_
                                  __tmp31970
                                  __tmp31969))
                               (let ()
                                 (declare (not safe))
                                 (_g2653226558_ _g2653326562_)))))
                       (let ()
                         (declare (not safe))
                         (_g2653226558_ _g2653326562_)))))
               (let () (declare (not safe)) (_g2653226558_ _g2653326562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf2654526613_
                                                      (reverse _def-setf2654326578_))
                                                     (_def-getf2654626616_
                                                      (reverse _def-getf2654426580_)))
                                                 ((lambda (_L26619_ _L26621_)
                                                    (let ()
                                                      (let* ((_g2663826664_
                                                              (lambda (_g2663926660_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2663926660_)))
                     (_g2663726778_
                      (lambda (_g2663926668_)
                        (if (gx#stx-pair/null? _g2663926668_)
                            (let ((_g31914_
                                   (gx#syntax-split-splice _g2663926668_ '0)))
                              (begin
                                (let ((_g31915_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g31914_)
                                             (##vector-length _g31914_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g31915_ 2)))
                                      (error "Context expects 2 values"
                                             _g31915_)))
                                (let ((_target2664226671_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31914_ 0)))
                                      (_tl2664426674_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31914_ 1))))
                                  (if (gx#stx-null? _tl2664426674_)
                                      (letrec ((_loop2664526677_
                                                (lambda (_hd2664326681_
                                                         _def-usetf2664926684_
                                                         _def-ugetf2665026686_)
                                                  (if (gx#stx-pair?
                                                       _hd2664326681_)
                                                      (let ((_e2664626689_
                                                             (gx#syntax-e
                                                              _hd2664326681_)))
                                                        (let ((_lp-hd2664726693_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2664626689_)))
                      (_lp-tl2664826696_
                       (let () (declare (not safe)) (##cdr _e2664626689_))))
                  (if (gx#stx-pair? _lp-hd2664726693_)
                      (let ((_e2665526699_ (gx#syntax-e _lp-hd2664726693_)))
                        (let ((_hd2665426703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2665526699_)))
                              (_tl2665326706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2665526699_))))
                          (if (gx#stx-pair? _tl2665326706_)
                              (let ((_e2665826709_
                                     (gx#syntax-e _tl2665326706_)))
                                (let ((_hd2665726713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2665826709_)))
                                      (_tl2665626716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2665826709_))))
                                  (if (gx#stx-null? _tl2665626716_)
                                      (let ((__tmp31923
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2665726713_
                                                     _def-usetf2664926684_)))
                                            (__tmp31922
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2665426703_
                                                     _def-ugetf2665026686_))))
                                        (declare (not safe))
                                        (_loop2664526677_
                                         _lp-tl2664826696_
                                         __tmp31923
                                         __tmp31922))
                                      (let ()
                                        (declare (not safe))
                                        (_g2663826664_ _g2663926668_)))))
                              (let ()
                                (declare (not safe))
                                (_g2663826664_ _g2663926668_)))))
                      (let ()
                        (declare (not safe))
                        (_g2663826664_ _g2663926668_)))))
              (let ((_def-usetf2665126719_ (reverse _def-usetf2664926684_))
                    (_def-ugetf2665226722_ (reverse _def-ugetf2665026686_)))
                ((lambda (_L26725_ _L26727_)
                   (let ()
                     (let ()
                       (let ((__tmp31916
                              (let ((__tmp31921 (gx#datum->syntax '#f 'begin))
                                    (__tmp31917
                                     (let ((__tmp31918
                                            (let ((__tmp31919
                                                   (let ((__tmp31920
                                                          (foldr (lambda (_g2674526754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2674626757_)
                           (let ()
                             (declare (not safe))
                             (cons _g2674526754_ _g2674626757_)))
                         (foldr (lambda (_g2674726760_ _g2674826763_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2674726760_ _g2674826763_)))
                                (foldr (lambda (_g2674926766_ _g2675026769_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2674926766_ _g2675026769_)))
                                       (foldr (lambda (_g2675126772_
                                                       _g2675226775_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2675126772_
                                                        _g2675226775_)))
                                              '()
                                              _L26725_)
                                       _L26727_)
                                _L26619_)
                         _L26621_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L26491_
                                                           __tmp31920))))
                                              (declare (not safe))
                                              (cons _L26519_ __tmp31919))))
                                       (declare (not safe))
                                       (cons _L26463_ __tmp31918))))
                                (declare (not safe))
                                (cons __tmp31921 __tmp31917))))
                         (declare (not safe))
                         (_wrap25826_ __tmp31916)))))
                 _def-usetf2665126719_
                 _def-ugetf2665226722_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2664526677_
                                           _target2664226671_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2663826664_ _g2663926668_))))))
                            (let ()
                              (declare (not safe))
                              (_g2663826664_ _g2663926668_)))))
                     (__tmp31924
                      (gx#stx-map
                       (lambda (_ref26782_)
                         (let* ((_g2678526804_
                                 (lambda (_g2678626800_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2678626800_)))
                                (_g2678426926_
                                 (lambda (_g2678626808_)
                                   (if (gx#stx-pair? _g2678626808_)
                                       (let ((_e2679226811_
                                              (gx#syntax-e _g2678626808_)))
                                         (let ((_hd2679126815_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2679226811_)))
                                               (_tl2679026818_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2679226811_))))
                                           (if (gx#stx-pair? _tl2679026818_)
                                               (let ((_e2679526821_
                                                      (gx#syntax-e
                                                       _tl2679026818_)))
                                                 (let ((_hd2679426825_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2679526821_)))
                                                       (_tl2679326828_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2679526821_))))
                                                   (if (gx#stx-pair?
                                                        _tl2679326828_)
                                                       (let ((_e2679826831_
                                                              (gx#syntax-e
                                                               _tl2679326828_)))
                                                         (let ((_hd2679726835_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2679826831_)))
                       (_tl2679626838_
                        (let () (declare (not safe)) (##cdr _e2679826831_))))
                   (if (gx#stx-null? _tl2679626838_)
                       ((lambda (_L26841_ _L26843_ _L26844_)
                          (let* ((_g2686226877_
                                  (lambda (_g2686326873_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2686326873_)))
                                 (_g2686126922_
                                  (lambda (_g2686326881_)
                                    (if (gx#stx-pair? _g2686326881_)
                                        (let ((_e2686826884_
                                               (gx#syntax-e _g2686326881_)))
                                          (let ((_hd2686726888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2686826884_)))
                                                (_tl2686626891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2686826884_))))
                                            (if (gx#stx-pair? _tl2686626891_)
                                                (let ((_e2687126894_
                                                       (gx#syntax-e
                                                        _tl2686626891_)))
                                                  (let ((_hd2687026898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2687126894_)))
                                                        (_tl2686926901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2687126894_))))
                                                    (if (gx#stx-null?
                                                         _tl2686926901_)
                                                        ((lambda (_L26904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26906_)
                   (let ()
                     (let ((__tmp31947
                            (let ((__tmp31948
                                   (let ((__tmp31967
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp31949
                                          (let ((__tmp31950
                                                 (let ((__tmp31951
                                                        (let ((__tmp31966
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp31952
                                                               (let ((__tmp31961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp31965
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp31962
                                     (let ((__tmp31963
                                            (let ((__tmp31964
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L26844_ __tmp31964))))
                                       (declare (not safe))
                                       (cons _L26155_ __tmp31963))))
                                (declare (not safe))
                                (cons __tmp31965 __tmp31962)))
                             (__tmp31953
                              (let ((__tmp31954
                                     (let ((__tmp31960
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp31955
                                            (let ((__tmp31956
                                                   (let ((__tmp31957
                                                          (let ((__tmp31959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp31958
                         (let () (declare (not safe)) (cons _L26844_ '()))))
                    (declare (not safe))
                    (cons __tmp31959 __tmp31958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp31957 '()))))
                                              (declare (not safe))
                                              (cons _L25920_ __tmp31956))))
                                       (declare (not safe))
                                       (cons __tmp31960 __tmp31955))))
                                (declare (not safe))
                                (cons __tmp31954 '()))))
                         (declare (not safe))
                         (cons __tmp31961 __tmp31953))))
                  (declare (not safe))
                  (cons __tmp31966 __tmp31952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31951 '()))))
                                            (declare (not safe))
                                            (cons _L26906_ __tmp31950))))
                                     (declare (not safe))
                                     (cons __tmp31967 __tmp31949))))
                              (declare (not safe))
                              (_wrap25826_ __tmp31948)))
                           (__tmp31925
                            (let ((__tmp31926
                                   (let ((__tmp31927
                                          (let ((__tmp31946
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp31928
                                                 (let ((__tmp31929
                                                        (let ((__tmp31930
                                                               (let ((__tmp31945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp31931
                              (let ((__tmp31940
                                     (let ((__tmp31944
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp31941
                                            (let ((__tmp31942
                                                   (let ((__tmp31943
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L26844_
                                                           __tmp31943))))
                                              (declare (not safe))
                                              (cons _L26155_ __tmp31942))))
                                       (declare (not safe))
                                       (cons __tmp31944 __tmp31941)))
                                    (__tmp31932
                                     (let ((__tmp31933
                                            (let ((__tmp31939
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp31934
                                                   (let ((__tmp31935
                                                          (let ((__tmp31936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp31938 (gx#datum->syntax '#f 'quote))
                               (__tmp31937
                                (let ()
                                  (declare (not safe))
                                  (cons _L26844_ '()))))
                           (declare (not safe))
                           (cons __tmp31938 __tmp31937))))
                    (declare (not safe))
                    (cons __tmp31936 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L25920_
                                                           __tmp31935))))
                                              (declare (not safe))
                                              (cons __tmp31939 __tmp31934))))
                                       (declare (not safe))
                                       (cons __tmp31933 '()))))
                                (declare (not safe))
                                (cons __tmp31940 __tmp31932))))
                         (declare (not safe))
                         (cons __tmp31945 __tmp31931))))
                  (declare (not safe))
                  (cons __tmp31930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L26904_
                                                         __tmp31929))))
                                            (declare (not safe))
                                            (cons __tmp31946 __tmp31928))))
                                     (declare (not safe))
                                     (_wrap25826_ __tmp31927))))
                              (declare (not safe))
                              (cons __tmp31926 '()))))
                       (declare (not safe))
                       (cons __tmp31947 __tmp31925))))
                 _hd2687026898_
                 _hd2686726888_)
                (let () (declare (not safe)) (_g2686226877_ _g2686326881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2686226877_
                                                   _g2686326881_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2686226877_ _g2686326881_)))))
                                 (__tmp31968
                                  (list (gx#stx-identifier
                                         _L26843_
                                         '"&"
                                         _L26843_)
                                        (gx#stx-identifier
                                         _L26841_
                                         '"&"
                                         _L26841_))))
                            (declare (not safe))
                            (_g2686126922_ __tmp31968)))
                        _hd2679726835_
                        _hd2679426825_
                        _hd2679126815_)
                       (let ()
                         (declare (not safe))
                         (_g2678526804_ _g2678626808_)))))
               (let () (declare (not safe)) (_g2678526804_ _g2678626808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2678526804_
                                                  _g2678626808_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2678526804_ _g2678626808_))))))
                           (declare (not safe))
                           (_g2678426926_ _ref26782_)))
                       _accessible-slots25975_)))
                (declare (not safe))
                (_g2663726778_ __tmp31924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf2654526613_
                                                  _def-getf2654626616_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2653926571_
                                    _target2653626565_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2653226558_ _g2653326562_))))))
                     (let ()
                       (declare (not safe))
                       (_g2653226558_ _g2653326562_)))))
              (__tmp31971
               (gx#stx-map
                (lambda (_ref26934_)
                  (let* ((_g2693726956_
                          (lambda (_g2693826952_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2693826952_)))
                         (_g2693627014_
                          (lambda (_g2693826960_)
                            (if (gx#stx-pair? _g2693826960_)
                                (let ((_e2694426963_
                                       (gx#syntax-e _g2693826960_)))
                                  (let ((_hd2694326967_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2694426963_)))
                                        (_tl2694226970_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2694426963_))))
                                    (if (gx#stx-pair? _tl2694226970_)
                                        (let ((_e2694726973_
                                               (gx#syntax-e _tl2694226970_)))
                                          (let ((_hd2694626977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2694726973_)))
                                                (_tl2694526980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2694726973_))))
                                            (if (gx#stx-pair? _tl2694526980_)
                                                (let ((_e2695026983_
                                                       (gx#syntax-e
                                                        _tl2694526980_)))
                                                  (let ((_hd2694926987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2695026983_)))
                                                        (_tl2694826990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2695026983_))))
                                                    (if (gx#stx-null?
                                                         _tl2694826990_)
                                                        ((lambda (_L26993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26995_
                          _L26996_)
                   (let ((__tmp31994
                          (let ((__tmp31995
                                 (let ((__tmp32014 (gx#datum->syntax '#f 'def))
                                       (__tmp31996
                                        (let ((__tmp31997
                                               (let ((__tmp31998
                                                      (let ((__tmp32013
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp31999
                                                             (let ((__tmp32008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32012
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp32009
                                   (let ((__tmp32010
                                          (let ((__tmp32011
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L26996_ __tmp32011))))
                                     (declare (not safe))
                                     (cons _L26155_ __tmp32010))))
                              (declare (not safe))
                              (cons __tmp32012 __tmp32009)))
                           (__tmp32000
                            (let ((__tmp32001
                                   (let ((__tmp32007
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp32002
                                          (let ((__tmp32003
                                                 (let ((__tmp32004
                                                        (let ((__tmp32006
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp32005
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26996_ '()))))
                  (declare (not safe))
                  (cons __tmp32006 __tmp32005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32004 '()))))
                                            (declare (not safe))
                                            (cons _L25920_ __tmp32003))))
                                     (declare (not safe))
                                     (cons __tmp32007 __tmp32002))))
                              (declare (not safe))
                              (cons __tmp32001 '()))))
                       (declare (not safe))
                       (cons __tmp32008 __tmp32000))))
                (declare (not safe))
                (cons __tmp32013 __tmp31999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31998 '()))))
                                          (declare (not safe))
                                          (cons _L26995_ __tmp31997))))
                                   (declare (not safe))
                                   (cons __tmp32014 __tmp31996))))
                            (declare (not safe))
                            (_wrap25826_ __tmp31995)))
                         (__tmp31972
                          (let ((__tmp31973
                                 (let ((__tmp31974
                                        (let ((__tmp31993
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp31975
                                               (let ((__tmp31976
                                                      (let ((__tmp31977
                                                             (let ((__tmp31992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp31978
                            (let ((__tmp31987
                                   (let ((__tmp31991
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp31988
                                          (let ((__tmp31989
                                                 (let ((__tmp31990
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L26996_
                                                         __tmp31990))))
                                            (declare (not safe))
                                            (cons _L26155_ __tmp31989))))
                                     (declare (not safe))
                                     (cons __tmp31991 __tmp31988)))
                                  (__tmp31979
                                   (let ((__tmp31980
                                          (let ((__tmp31986
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp31981
                                                 (let ((__tmp31982
                                                        (let ((__tmp31983
                                                               (let ((__tmp31985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp31984
                              (let ()
                                (declare (not safe))
                                (cons _L26996_ '()))))
                         (declare (not safe))
                         (cons __tmp31985 __tmp31984))))
                  (declare (not safe))
                  (cons __tmp31983 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25920_
                                                         __tmp31982))))
                                            (declare (not safe))
                                            (cons __tmp31986 __tmp31981))))
                                     (declare (not safe))
                                     (cons __tmp31980 '()))))
                              (declare (not safe))
                              (cons __tmp31987 __tmp31979))))
                       (declare (not safe))
                       (cons __tmp31992 __tmp31978))))
                (declare (not safe))
                (cons __tmp31977 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26993_ __tmp31976))))
                                          (declare (not safe))
                                          (cons __tmp31993 __tmp31975))))
                                   (declare (not safe))
                                   (_wrap25826_ __tmp31974))))
                            (declare (not safe))
                            (cons __tmp31973 '()))))
                     (declare (not safe))
                     (cons __tmp31994 __tmp31972)))
                 _hd2694926987_
                 _hd2694626977_
                 _hd2694326967_)
                (let () (declare (not safe)) (_g2693726956_ _g2693826960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2693726956_
                                                   _g2693826960_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2693726956_ _g2693826960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2693726956_ _g2693826960_))))))
                    (declare (not safe))
                    (_g2693627014_ _ref26934_)))
                _accessible-slots25975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2653126930_ __tmp31971))))
                                           _g2650526516_)))
                                       (__tmp32015
                                        (let ((__tmp32016
                                               (let ((__tmp32029
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp32017
                                                      (let ((__tmp32018
                                                             (let ((__tmp32019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32028
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp32020
                                   (let ((__tmp32025
                                          (let ((__tmp32027
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp32026
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L26155_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32027 __tmp32026)))
                                         (__tmp32021
                                          (let ((__tmp32022
                                                 (let ((__tmp32024
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp32023
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L25920_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32024
                                                         __tmp32023))))
                                            (declare (not safe))
                                            (cons __tmp32022 '()))))
                                     (declare (not safe))
                                     (cons __tmp32025 __tmp32021))))
                              (declare (not safe))
                              (cons __tmp32028 __tmp32020))))
                       (declare (not safe))
                       (cons __tmp32019 '()))))
                (declare (not safe))
                (cons _L25917_ __tmp32018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32029
                                                       __tmp32017))))
                                          (declare (not safe))
                                          (_wrap25826_ __tmp32016))))
                                  (declare (not safe))
                                  (_g2650327018_ __tmp32015))))
                            _g2647726488_)))
                        (__tmp32030
                         (if (gx#stx-false? _L25918_)
                             (let ((__tmp32054 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp32054 '()))
                             (let ((__tmp32031
                                    (let ((__tmp32053
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp32032
                                           (let ((__tmp32033
                                                  (let ((__tmp32034
                                                         (let ((__tmp32052
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp32035
                        (let ((__tmp32049
                               (let ((__tmp32051
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp32050
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26155_ '()))))
                                 (declare (not safe))
                                 (cons __tmp32051 __tmp32050)))
                              (__tmp32036
                               (let ((__tmp32037
                                      (let ((__tmp32048
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp32038
                                             (let ((__tmp32047
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp32039
                                                    (let ((__tmp32040
                                                           (let ((__tmp32046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp32041
                          (let ((__tmp32045
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp32042
                                 (let ((__tmp32043
                                        (let ((__tmp32044
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp32044 '()))))
                                   (declare (not safe))
                                   (cons _L25920_ __tmp32043))))
                            (declare (not safe))
                            (cons __tmp32045 __tmp32042))))
                     (declare (not safe))
                     (cons __tmp32046 __tmp32041))))
              (declare (not safe))
              (cons __tmp32040 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32047 __tmp32039))))
                                        (declare (not safe))
                                        (cons __tmp32048 __tmp32038))))
                                 (declare (not safe))
                                 (cons __tmp32037 '()))))
                          (declare (not safe))
                          (cons __tmp32049 __tmp32036))))
                   (declare (not safe))
                   (cons __tmp32052 __tmp32035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32034 '()))))
                                             (declare (not safe))
                                             (cons _L25918_ __tmp32033))))
                                      (declare (not safe))
                                      (cons __tmp32053 __tmp32032))))
                               (declare (not safe))
                               (_wrap25826_ __tmp32031)))))
                   (declare (not safe))
                   (_g2647527022_ __tmp32030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2644926460_)))
                                                 (__tmp32055
                                                  (let ((__tmp32056
                                                         (let ((__tmp32073
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp32057
                        (let ((__tmp32058
                               (let ((__tmp32059
                                      (let ((__tmp32072
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp32060
                                             (let ((__tmp32062
                                                    (let ((__tmp32071
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp32063
                                                           (let ((__tmp32064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32065
                                 (let ((__tmp32070
                                        (foldr (lambda (_g2702927032_
                                                        _g2703027035_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2702927032_
                                                         _g2703027035_)))
                                               '()
                                               _L26035_))
                                       (__tmp32066
                                        (let ((__tmp32067
                                               (let ((__tmp32068
                                                      (let ((__tmp32069
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L26267_ '()))))
                (declare (not safe))
                (cons _L26239_ __tmp32069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26211_ __tmp32068))))
                                          (declare (not safe))
                                          (cons _L26127_ __tmp32067))))
                                   (declare (not safe))
                                   (cons __tmp32070 __tmp32066))))
                            (declare (not safe))
                            (cons _L26183_ __tmp32065))))
                     (declare (not safe))
                     (cons _L26071_ __tmp32064))))
              (declare (not safe))
              (cons __tmp32071 __tmp32063)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp32061
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L26435_ '()))))
                                               (declare (not safe))
                                               (cons __tmp32062 __tmp32061))))
                                        (declare (not safe))
                                        (cons __tmp32072 __tmp32060))))
                                 (declare (not safe))
                                 (cons __tmp32059 '()))))
                          (declare (not safe))
                          (cons _L25920_ __tmp32058))))
                   (declare (not safe))
                   (cons __tmp32073 __tmp32057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap25826_ __tmp32056))))
                                            (declare (not safe))
                                            (_g2644727026_ __tmp32055))))
                                      _g2642126432_)))
                                  (__tmp32074
                                   (let ((__tmp32094
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp32075
                                          (let ((__tmp32091
                                                 (let ((__tmp32093
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32092
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L26071_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32093
                                                         __tmp32092)))
                                                (__tmp32076
                                                 (let ((__tmp32088
                                                        (let ((__tmp32090
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp32089
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26099_ '()))))
                  (declare (not safe))
                  (cons __tmp32090 __tmp32089)))
               (__tmp32077
                (let ((__tmp32078
                       (let ((__tmp32084
                              (let ((__tmp32087 (gx#datum->syntax '#f 'quote))
                                    (__tmp32085
                                     (let ((__tmp32086
                                            (foldr (lambda (_g2704127044_
                                                            _g2704227047_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2704127044_
                                                             _g2704227047_)))
                                                   '()
                                                   _L26035_)))
                                       (declare (not safe))
                                       (cons __tmp32086 '()))))
                                (declare (not safe))
                                (cons __tmp32087 __tmp32085)))
                             (__tmp32079
                              (let ((__tmp32080
                                     (let ((__tmp32081
                                            (let ((__tmp32083
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32082
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L26127_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32083 __tmp32082))))
                                       (declare (not safe))
                                       (cons __tmp32081 '()))))
                                (declare (not safe))
                                (cons _L26379_ __tmp32080))))
                         (declare (not safe))
                         (cons __tmp32084 __tmp32079))))
                  (declare (not safe))
                  (cons _L26407_ __tmp32078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32088
                                                         __tmp32077))))
                                            (declare (not safe))
                                            (cons __tmp32091 __tmp32076))))
                                     (declare (not safe))
                                     (cons __tmp32094 __tmp32075))))
                             (declare (not safe))
                             (_g2641927038_ __tmp32074))))
                       _g2639326404_)))
                   (__tmp32095
                    (let ((__tmp32096 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp32096 _L25919_))))
              (declare (not safe))
              (_g2639127050_ __tmp32095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2636526376_)))
                                            (__tmp32097
                                             (if (gx#stx-e _metaclass25978_)
                                                 (let* ((_g2705827066_
                                                         (lambda (_g2705927062_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2705927062_)))
                                                        (_g2705727085_
                                                         (lambda (_g2705927070_)
                                                           ((lambda (_L27073_)
                                                              (let ()
                                                                (let ((__tmp32106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32098
                               (let ((__tmp32101
                                      (let ((__tmp32105
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp32102
                                             (let ((__tmp32103
                                                    (let ((__tmp32104
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L27073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp32104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp32103))))
                                        (declare (not safe))
                                        (cons __tmp32105 __tmp32102)))
                                     (__tmp32099
                                      (let ((__tmp32100
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26351_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32100))))
                                 (declare (not safe))
                                 (cons __tmp32101 __tmp32099))))
                          (declare (not safe))
                          (cons __tmp32106 __tmp32098))))
                    _g2705927070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2705727085_
                                                    _metaclass25978_))
                                                 _L26351_)))
                                       (declare (not safe))
                                       (_g2636327054_ __tmp32097))))
                                 _g2633726348_)))
                             (__tmp32107
                              (if _struct?25958_
                                  (let ((__tmp32114
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp32108
                                         (let ((__tmp32111
                                                (let ((__tmp32113
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp32112
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp32113
                                                        __tmp32112)))
                                               (__tmp32109
                                                (let ((__tmp32110
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26323_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp32110))))
                                           (declare (not safe))
                                           (cons __tmp32111 __tmp32109))))
                                    (declare (not safe))
                                    (cons __tmp32114 __tmp32108))
                                  _L26323_)))
                        (declare (not safe))
                        (_g2633527089_ __tmp32107))))
                  _g2630926320_)))
              (__tmp32115
               (if (gx#stx-e _L26239_)
                   (let ((__tmp32122 (gx#datum->syntax '#f '@list))
                         (__tmp32116
                          (let ((__tmp32119
                                 (let ((__tmp32121
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp32120
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp32121 __tmp32120)))
                                (__tmp32117
                                 (let ((__tmp32118
                                        (let ()
                                          (declare (not safe))
                                          (cons _L26295_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp32118))))
                            (declare (not safe))
                            (cons __tmp32119 __tmp32117))))
                     (declare (not safe))
                     (cons __tmp32122 __tmp32116))
                   _L26295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2630727093_ __tmp32115))))
                                           _g2628126292_)))
                                       (__tmp32123
                                        (let ((_$e27101_
                                               (gx#stx-getq
                                                'properties:
                                                _L25915_)))
                                          (if _$e27101_
                                              _$e27101_
                                              (let ((__tmp32124
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp32124 '()))))))
                                  (declare (not safe))
                                  (_g2627927097_ __tmp32123))))
                            _g2625326264_)))
                        (__tmp32125
                         (if (gx#stx-e _metaclass25978_)
                             (gx#core-quote-syntax _metaclass25978_)
                             '#f)))
                   (declare (not safe))
                   (_g2625127105_ __tmp32125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2622526236_)))
                                                 (__tmp32126
                                                  (gx#stx-getq
                                                   'final:
                                                   _L25915_)))
                                            (declare (not safe))
                                            (_g2622327109_ __tmp32126))))
                                      _g2619726208_))))
                             (declare (not safe))
                             (_g2619527113_ _struct?25958_))))
                       _g2616926180_)))
                   (__tmp32127 (gx#stx-map gx#core-quote-syntax _L25919_)))
              (declare (not safe))
              (_g2616727117_ __tmp32127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2614126152_)))
                                            (__tmp32128
                                             (gx#core-quote-syntax _L25920_)))
                                       (declare (not safe))
                                       (_g2613927121_ __tmp32128))))
                                 _g2611326124_)))
                             (__tmp32129 (gx#stx-getq 'constructor: _L25915_)))
                        (declare (not safe))
                        (_g2611127125_ __tmp32129))))
                  _g2608526096_)))
              (__tmp32130
               (let ((_$e27133_ (gx#stx-getq 'name: _L25915_)))
                 (if _$e27133_ _$e27133_ _L25920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2608327129_ __tmp32130))))
                                           _g2605726068_)))
                                       (__tmp32131
                                        (let ((_$e27141_
                                               (gx#stx-getq 'id: _L25915_)))
                                          (if _$e27141_
                                              _$e27141_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _L25920_))))))
                                  (declare (not safe))
                                  (_g2605527137_ __tmp32131))))
                            _slot2599226031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop2598726011_
                                                      _target2598426005_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2598125998_
                                                    _g2598226002_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2598125998_ _g2598226002_)))))
                                (__tmp32133
                                 (gx#stx-map _slot-name25828_ _slots25965_)))
                           (declare (not safe))
                           (_g2598027145_ __tmp32133))
                         (let ()
                           (declare (not safe))
                           (_g2583125858_ _g2583225862_))))
                   _tl2585025912_
                   _hd2585125909_
                   _hd2584825899_
                   _hd2584525889_
                   _hd2584225879_)))
              (let () (declare (not safe)) (_g2583125858_ _g2583225862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2583125858_
                                                 _g2583225862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2583125858_ _g2583225862_)))))
                              (let ()
                                (declare (not safe))
                                (_g2583125858_ _g2583225862_)))))
                      (let ()
                        (declare (not safe))
                        (_g2583125858_ _g2583225862_))))))
          (declare (not safe))
          (_g2583027149_ _stx25822_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_stx27261_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _stx27261_ '#t))))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_stx27264_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _stx27264_ '#f)))))
