(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:1>[1]#module-type-id|
    (lambda (_type-t27237_)
      (let ((_$e27240_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e27240_
            ((lambda (_ns27244_)
               (gx#stx-identifier
                _type-t27237_
                _ns27244_
                '"#"
                _type-t27237_
                '"::t"))
             _$e27240_)
            (let ((_mid27247_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t27237_
               _mid27247_
               '"#"
               _type-t27237_
               '"::t"))))))
  (define |gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t27234_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop$<MOP:1>[1]#module-type-id| _type-t27234_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t27234_)) '"::t"))))
  (define |gerbil/core/mop$<MOP:1>[1]#generate-typedef|
    (lambda (_stx25814_ _struct?25816_)
      (letrec ((_wrap25818_
                (lambda (_e-stx27231_)
                  (gx#stx-wrap-source
                   _e-stx27231_
                   (gx#stx-source _stx25814_))))
               (_slot-name25820_
                (lambda (_slot-spec27148_)
                  (let* ((_g2715127170_
                          (lambda (_g2715227166_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2715227166_)))
                         (_g2715027227_
                          (lambda (_g2715227174_)
                            (if (gx#stx-pair? _g2715227174_)
                                (let ((_e2715627177_
                                       (gx#syntax-e _g2715227174_)))
                                  (let ((_hd2715727181_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2715627177_)))
                                        (_tl2715827184_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2715627177_))))
                                    (if (gx#stx-pair? _tl2715827184_)
                                        (let ((_e2715927187_
                                               (gx#syntax-e _tl2715827184_)))
                                          (let ((_hd2716027191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2715927187_)))
                                                (_tl2716127194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2715927187_))))
                                            (if (gx#stx-pair? _tl2716127194_)
                                                (let ((_e2716227197_
                                                       (gx#syntax-e
                                                        _tl2716127194_)))
                                                  (let ((_hd2716327201_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2716227197_)))
                                                        (_tl2716427204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2716227197_))))
                                                    (if (gx#stx-null?
                                                         _tl2716427204_)
                                                        ((lambda (_L27207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27209_
                          _L27210_)
                   _L27210_)
                 _hd2716327201_
                 _hd2716027191_
                 _hd2715727181_)
                (let () (declare (not safe)) (_g2715127170_ _g2715227174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2715127170_
                                                   _g2715227174_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2715127170_ _g2715227174_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2715127170_ _g2715227174_))))))
                    (declare (not safe))
                    (_g2715027227_ _slot-spec27148_))))
               (_class-opt?25821_
                (lambda (_key27145_)
                  (memq (gx#stx-e _key27145_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_g2582325850_
                (lambda (_g2582425846_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2582425846_)))
               (_g2582227141_
                (lambda (_g2582425854_)
                  (if (gx#stx-pair? _g2582425854_)
                      (let ((_e2583025857_ (gx#syntax-e _g2582425854_)))
                        (let ((_hd2583125861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2583025857_)))
                              (_tl2583225864_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2583025857_))))
                          (if (gx#stx-pair? _tl2583225864_)
                              (let ((_e2583325867_
                                     (gx#syntax-e _tl2583225864_)))
                                (let ((_hd2583425871_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2583325867_)))
                                      (_tl2583525874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2583325867_))))
                                  (if (gx#stx-pair? _tl2583525874_)
                                      (let ((_e2583625877_
                                             (gx#syntax-e _tl2583525874_)))
                                        (let ((_hd2583725881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2583625877_)))
                                              (_tl2583825884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2583625877_))))
                                          (if (gx#stx-pair? _tl2583825884_)
                                              (let ((_e2583925887_
                                                     (gx#syntax-e
                                                      _tl2583825884_)))
                                                (let ((_hd2584025891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2583925887_)))
                                                      (_tl2584125894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2583925887_))))
                                                  (if (gx#stx-pair?
                                                       _tl2584125894_)
                                                      (let ((_e2584225897_
                                                             (gx#syntax-e
                                                              _tl2584125894_)))
                                                        (let ((_hd2584325901_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2584225897_)))
                      (_tl2584425904_
                       (let () (declare (not safe)) (##cdr _e2584225897_))))
                  ((lambda (_L25907_ _L25909_ _L25910_ _L25911_ _L25912_)
                     (if (and (gx#identifier? _L25912_)
                              (gx#identifier-list? _L25911_)
                              (or (gx#identifier? _L25910_)
                                  (gx#stx-false? _L25910_))
                              (gx#identifier? _L25909_)
                              (gx#stx-plist? _L25907_ _class-opt?25821_))
                         (let* ((_struct?25950_
                                 (let ((_$e25942_ _struct?25816_))
                                   (if _$e25942_
                                       _$e25942_
                                       (let ((_$e25946_
                                              (gx#stx-getq 'struct: _L25907_)))
                                         (if _$e25946_
                                             (gx#stx-e _$e25946_)
                                             '#f)))))
                                (_slots25957_
                                 (let ((_$e25953_
                                        (gx#stx-getq 'slots: _L25907_)))
                                   (if _$e25953_ _$e25953_ '())))
                                (_mixin-slots25964_
                                 (let ((_$e25960_
                                        (gx#stx-getq 'mixin: _L25907_)))
                                   (if _$e25960_ _$e25960_ '())))
                                (_accessible-slots25967_
                                 (append (gx#syntax->list _slots25957_)
                                         (gx#syntax->list _mixin-slots25964_)))
                                (_metaclass25970_
                                 (gx#stx-getq 'metaclass: _L25907_))
                                (_g2597325990_
                                 (lambda (_g2597425986_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2597425986_)))
                                (_g2597227137_
                                 (lambda (_g2597425994_)
                                   (if (gx#stx-pair/null? _g2597425994_)
                                       (let ((_g31898_
                                              (gx#syntax-split-splice
                                               _g2597425994_
                                               '0)))
                                         (begin
                                           (let ((_g31899_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g31898_)
                                                        (##vector-length
                                                         _g31898_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g31899_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g31899_)))
                                           (let ((_target2597625997_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g31898_ 0)))
                                                 (_tl2597826000_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g31898_
                                                     1))))
                                             (if (gx#stx-null? _tl2597826000_)
                                                 (letrec ((_loop2597926003_
                                                           (lambda (_hd2597726007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot2598326010_)
                     (if (gx#stx-pair? _hd2597726007_)
                         (let ((_e2598026013_ (gx#syntax-e _hd2597726007_)))
                           (let ((_lp-hd2598126017_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2598026013_)))
                                 (_lp-tl2598226020_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2598026013_))))
                             (let ((__tmp31900
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd2598126017_
                                            _slot2598326010_))))
                               (declare (not safe))
                               (_loop2597926003_
                                _lp-tl2598226020_
                                __tmp31900))))
                         (let ((_slot2598426023_ (reverse _slot2598326010_)))
                           ((lambda (_L26027_)
                              (let ()
                                (let* ((_g2604826056_
                                        (lambda (_g2604926052_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2604926052_)))
                                       (_g2604727129_
                                        (lambda (_g2604926060_)
                                          ((lambda (_L26063_)
                                             (let ()
                                               (let* ((_g2607626084_
                                                       (lambda (_g2607726080_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2607726080_)))
                                                      (_g2607527121_
                                                       (lambda (_g2607726088_)
                                                         ((lambda (_L26091_)
                                                            (let ()
                                                              (let* ((_g2610426112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2610526108_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2610526108_)))
                             (_g2610327117_
                              (lambda (_g2610526116_)
                                ((lambda (_L26119_)
                                   (let ()
                                     (let* ((_g2613226140_
                                             (lambda (_g2613326136_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2613326136_)))
                                            (_g2613127113_
                                             (lambda (_g2613326144_)
                                               ((lambda (_L26147_)
                                                  (let ()
                                                    (let* ((_g2616026168_
                                                            (lambda (_g2616126164_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2616126164_)))
                                                           (_g2615927109_
                                                            (lambda (_g2616126172_)
                                                              ((lambda (_L26175_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2618826196_
                                   (lambda (_g2618926192_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2618926192_)))
                                  (_g2618727105_
                                   (lambda (_g2618926200_)
                                     ((lambda (_L26203_)
                                        (let ()
                                          (let* ((_g2621626224_
                                                  (lambda (_g2621726220_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2621726220_)))
                                                 (_g2621527101_
                                                  (lambda (_g2621726228_)
                                                    ((lambda (_L26231_)
                                                       (let ()
                                                         (let* ((_g2624426252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2624526248_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2624526248_)))
                        (_g2624327097_
                         (lambda (_g2624526256_)
                           ((lambda (_L26259_)
                              (let ()
                                (let* ((_g2627226280_
                                        (lambda (_g2627326276_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2627326276_)))
                                       (_g2627127089_
                                        (lambda (_g2627326284_)
                                          ((lambda (_L26287_)
                                             (let ()
                                               (let* ((_g2630026308_
                                                       (lambda (_g2630126304_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2630126304_)))
                                                      (_g2629927085_
                                                       (lambda (_g2630126312_)
                                                         ((lambda (_L26315_)
                                                            (let ()
                                                              (let* ((_g2632826336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2632926332_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2632926332_)))
                             (_g2632727081_
                              (lambda (_g2632926340_)
                                ((lambda (_L26343_)
                                   (let ()
                                     (let* ((_g2635626364_
                                             (lambda (_g2635726360_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2635726360_)))
                                            (_g2635527046_
                                             (lambda (_g2635726368_)
                                               ((lambda (_L26371_)
                                                  (let ()
                                                    (let* ((_g2638426392_
                                                            (lambda (_g2638526388_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2638526388_)))
                                                           (_g2638327042_
                                                            (lambda (_g2638526396_)
                                                              ((lambda (_L26399_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2641226420_
                                   (lambda (_g2641326416_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2641326416_)))
                                  (_g2641127030_
                                   (lambda (_g2641326424_)
                                     ((lambda (_L26427_)
                                        (let ()
                                          (let* ((_g2644026448_
                                                  (lambda (_g2644126444_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2644126444_)))
                                                 (_g2643927018_
                                                  (lambda (_g2644126452_)
                                                    ((lambda (_L26455_)
                                                       (let ()
                                                         (let* ((_g2646826476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2646926472_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2646926472_)))
                        (_g2646727014_
                         (lambda (_g2646926480_)
                           ((lambda (_L26483_)
                              (let ()
                                (let* ((_g2649626504_
                                        (lambda (_g2649726500_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2649726500_)))
                                       (_g2649527010_
                                        (lambda (_g2649726508_)
                                          ((lambda (_L26511_)
                                             (let ()
                                               (let* ((_g2652426550_
                                                       (lambda (_g2652526546_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2652526546_)))
                                                      (_g2652326922_
                                                       (lambda (_g2652526554_)
                                                         (if (gx#stx-pair/null?
                                                              _g2652526554_)
                                                             (let ((_g31901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2652526554_ '0)))
                       (begin
                         (let ((_g31902_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g31901_)
                                      (##vector-length _g31901_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g31902_ 2)))
                               (error "Context expects 2 values" _g31902_)))
                         (let ((_target2652826557_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31901_ 0)))
                               (_tl2653026560_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31901_ 1))))
                           (if (gx#stx-null? _tl2653026560_)
                               (letrec ((_loop2653126563_
                                         (lambda (_hd2652926567_
                                                  _def-setf2653526570_
                                                  _def-getf2653626572_)
                                           (if (gx#stx-pair? _hd2652926567_)
                                               (let ((_e2653226575_
                                                      (gx#syntax-e
                                                       _hd2652926567_)))
                                                 (let ((_lp-hd2653326579_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2653226575_)))
                                                       (_lp-tl2653426582_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2653226575_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd2653326579_)
                                                       (let ((_e2653926585_
                                                              (gx#syntax-e
                                                               _lp-hd2653326579_)))
                                                         (let ((_hd2654026589_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2653926585_)))
                       (_tl2654126592_
                        (let () (declare (not safe)) (##cdr _e2653926585_))))
                   (if (gx#stx-pair? _tl2654126592_)
                       (let ((_e2654226595_ (gx#syntax-e _tl2654126592_)))
                         (let ((_hd2654326599_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2654226595_)))
                               (_tl2654426602_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2654226595_))))
                           (if (gx#stx-null? _tl2654426602_)
                               (let ((__tmp31904
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654326599_
                                              _def-setf2653526570_)))
                                     (__tmp31903
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654026589_
                                              _def-getf2653626572_))))
                                 (declare (not safe))
                                 (_loop2653126563_
                                  _lp-tl2653426582_
                                  __tmp31904
                                  __tmp31903))
                               (let ()
                                 (declare (not safe))
                                 (_g2652426550_ _g2652526554_)))))
                       (let ()
                         (declare (not safe))
                         (_g2652426550_ _g2652526554_)))))
               (let () (declare (not safe)) (_g2652426550_ _g2652526554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf2653726605_
                                                      (reverse _def-setf2653526570_))
                                                     (_def-getf2653826608_
                                                      (reverse _def-getf2653626572_)))
                                                 ((lambda (_L26611_ _L26613_)
                                                    (let ()
                                                      (let* ((_g2663026656_
                                                              (lambda (_g2663126652_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2663126652_)))
                     (_g2662926770_
                      (lambda (_g2663126660_)
                        (if (gx#stx-pair/null? _g2663126660_)
                            (let ((_g31905_
                                   (gx#syntax-split-splice _g2663126660_ '0)))
                              (begin
                                (let ((_g31906_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g31905_)
                                             (##vector-length _g31905_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g31906_ 2)))
                                      (error "Context expects 2 values"
                                             _g31906_)))
                                (let ((_target2663426663_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31905_ 0)))
                                      (_tl2663626666_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31905_ 1))))
                                  (if (gx#stx-null? _tl2663626666_)
                                      (letrec ((_loop2663726669_
                                                (lambda (_hd2663526673_
                                                         _def-usetf2664126676_
                                                         _def-ugetf2664226678_)
                                                  (if (gx#stx-pair?
                                                       _hd2663526673_)
                                                      (let ((_e2663826681_
                                                             (gx#syntax-e
                                                              _hd2663526673_)))
                                                        (let ((_lp-hd2663926685_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2663826681_)))
                      (_lp-tl2664026688_
                       (let () (declare (not safe)) (##cdr _e2663826681_))))
                  (if (gx#stx-pair? _lp-hd2663926685_)
                      (let ((_e2664526691_ (gx#syntax-e _lp-hd2663926685_)))
                        (let ((_hd2664626695_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2664526691_)))
                              (_tl2664726698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2664526691_))))
                          (if (gx#stx-pair? _tl2664726698_)
                              (let ((_e2664826701_
                                     (gx#syntax-e _tl2664726698_)))
                                (let ((_hd2664926705_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2664826701_)))
                                      (_tl2665026708_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2664826701_))))
                                  (if (gx#stx-null? _tl2665026708_)
                                      (let ((__tmp31908
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664926705_
                                                     _def-usetf2664126676_)))
                                            (__tmp31907
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664626695_
                                                     _def-ugetf2664226678_))))
                                        (declare (not safe))
                                        (_loop2663726669_
                                         _lp-tl2664026688_
                                         __tmp31908
                                         __tmp31907))
                                      (let ()
                                        (declare (not safe))
                                        (_g2663026656_ _g2663126660_)))))
                              (let ()
                                (declare (not safe))
                                (_g2663026656_ _g2663126660_)))))
                      (let ()
                        (declare (not safe))
                        (_g2663026656_ _g2663126660_)))))
              (let ((_def-usetf2664326711_ (reverse _def-usetf2664126676_))
                    (_def-ugetf2664426714_ (reverse _def-ugetf2664226678_)))
                ((lambda (_L26717_ _L26719_)
                   (let ()
                     (let ()
                       (let ((__tmp31909
                              (let ((__tmp31914 (gx#datum->syntax '#f 'begin))
                                    (__tmp31910
                                     (let ((__tmp31911
                                            (let ((__tmp31912
                                                   (let ((__tmp31913
                                                          (foldr (lambda (_g2673726746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2673826749_)
                           (let ()
                             (declare (not safe))
                             (cons _g2673726746_ _g2673826749_)))
                         (foldr (lambda (_g2673926752_ _g2674026755_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2673926752_ _g2674026755_)))
                                (foldr (lambda (_g2674126758_ _g2674226761_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2674126758_ _g2674226761_)))
                                       (foldr (lambda (_g2674326764_
                                                       _g2674426767_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2674326764_
                                                        _g2674426767_)))
                                              '()
                                              _L26717_)
                                       _L26719_)
                                _L26611_)
                         _L26613_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L26483_
                                                           __tmp31913))))
                                              (declare (not safe))
                                              (cons _L26511_ __tmp31912))))
                                       (declare (not safe))
                                       (cons _L26455_ __tmp31911))))
                                (declare (not safe))
                                (cons __tmp31914 __tmp31910))))
                         (declare (not safe))
                         (_wrap25818_ __tmp31909)))))
                 _def-usetf2664326711_
                 _def-ugetf2664426714_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2663726669_
                                           _target2663426663_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2663026656_ _g2663126660_))))))
                            (let ()
                              (declare (not safe))
                              (_g2663026656_ _g2663126660_)))))
                     (__tmp31915
                      (gx#stx-map
                       (lambda (_ref26774_)
                         (let* ((_g2677726796_
                                 (lambda (_g2677826792_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2677826792_)))
                                (_g2677626918_
                                 (lambda (_g2677826800_)
                                   (if (gx#stx-pair? _g2677826800_)
                                       (let ((_e2678226803_
                                              (gx#syntax-e _g2677826800_)))
                                         (let ((_hd2678326807_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2678226803_)))
                                               (_tl2678426810_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2678226803_))))
                                           (if (gx#stx-pair? _tl2678426810_)
                                               (let ((_e2678526813_
                                                      (gx#syntax-e
                                                       _tl2678426810_)))
                                                 (let ((_hd2678626817_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2678526813_)))
                                                       (_tl2678726820_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2678526813_))))
                                                   (if (gx#stx-pair?
                                                        _tl2678726820_)
                                                       (let ((_e2678826823_
                                                              (gx#syntax-e
                                                               _tl2678726820_)))
                                                         (let ((_hd2678926827_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2678826823_)))
                       (_tl2679026830_
                        (let () (declare (not safe)) (##cdr _e2678826823_))))
                   (if (gx#stx-null? _tl2679026830_)
                       ((lambda (_L26833_ _L26835_ _L26836_)
                          (let* ((_g2685426869_
                                  (lambda (_g2685526865_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2685526865_)))
                                 (_g2685326914_
                                  (lambda (_g2685526873_)
                                    (if (gx#stx-pair? _g2685526873_)
                                        (let ((_e2685826876_
                                               (gx#syntax-e _g2685526873_)))
                                          (let ((_hd2685926880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2685826876_)))
                                                (_tl2686026883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2685826876_))))
                                            (if (gx#stx-pair? _tl2686026883_)
                                                (let ((_e2686126886_
                                                       (gx#syntax-e
                                                        _tl2686026883_)))
                                                  (let ((_hd2686226890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2686126886_)))
                                                        (_tl2686326893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2686126886_))))
                                                    (if (gx#stx-null?
                                                         _tl2686326893_)
                                                        ((lambda (_L26896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26898_)
                   (let ()
                     (let ((__tmp31938
                            (let ((__tmp31939
                                   (let ((__tmp31958
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp31940
                                          (let ((__tmp31941
                                                 (let ((__tmp31942
                                                        (let ((__tmp31957
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp31943
                                                               (let ((__tmp31952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp31956
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp31953
                                     (let ((__tmp31954
                                            (let ((__tmp31955
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L26836_ __tmp31955))))
                                       (declare (not safe))
                                       (cons _L26147_ __tmp31954))))
                                (declare (not safe))
                                (cons __tmp31956 __tmp31953)))
                             (__tmp31944
                              (let ((__tmp31945
                                     (let ((__tmp31951
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp31946
                                            (let ((__tmp31947
                                                   (let ((__tmp31948
                                                          (let ((__tmp31950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp31949
                         (let () (declare (not safe)) (cons _L26836_ '()))))
                    (declare (not safe))
                    (cons __tmp31950 __tmp31949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp31948 '()))))
                                              (declare (not safe))
                                              (cons _L25912_ __tmp31947))))
                                       (declare (not safe))
                                       (cons __tmp31951 __tmp31946))))
                                (declare (not safe))
                                (cons __tmp31945 '()))))
                         (declare (not safe))
                         (cons __tmp31952 __tmp31944))))
                  (declare (not safe))
                  (cons __tmp31957 __tmp31943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31942 '()))))
                                            (declare (not safe))
                                            (cons _L26898_ __tmp31941))))
                                     (declare (not safe))
                                     (cons __tmp31958 __tmp31940))))
                              (declare (not safe))
                              (_wrap25818_ __tmp31939)))
                           (__tmp31916
                            (let ((__tmp31917
                                   (let ((__tmp31918
                                          (let ((__tmp31937
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp31919
                                                 (let ((__tmp31920
                                                        (let ((__tmp31921
                                                               (let ((__tmp31936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp31922
                              (let ((__tmp31931
                                     (let ((__tmp31935
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp31932
                                            (let ((__tmp31933
                                                   (let ((__tmp31934
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L26836_
                                                           __tmp31934))))
                                              (declare (not safe))
                                              (cons _L26147_ __tmp31933))))
                                       (declare (not safe))
                                       (cons __tmp31935 __tmp31932)))
                                    (__tmp31923
                                     (let ((__tmp31924
                                            (let ((__tmp31930
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp31925
                                                   (let ((__tmp31926
                                                          (let ((__tmp31927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp31929 (gx#datum->syntax '#f 'quote))
                               (__tmp31928
                                (let ()
                                  (declare (not safe))
                                  (cons _L26836_ '()))))
                           (declare (not safe))
                           (cons __tmp31929 __tmp31928))))
                    (declare (not safe))
                    (cons __tmp31927 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L25912_
                                                           __tmp31926))))
                                              (declare (not safe))
                                              (cons __tmp31930 __tmp31925))))
                                       (declare (not safe))
                                       (cons __tmp31924 '()))))
                                (declare (not safe))
                                (cons __tmp31931 __tmp31923))))
                         (declare (not safe))
                         (cons __tmp31936 __tmp31922))))
                  (declare (not safe))
                  (cons __tmp31921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L26896_
                                                         __tmp31920))))
                                            (declare (not safe))
                                            (cons __tmp31937 __tmp31919))))
                                     (declare (not safe))
                                     (_wrap25818_ __tmp31918))))
                              (declare (not safe))
                              (cons __tmp31917 '()))))
                       (declare (not safe))
                       (cons __tmp31938 __tmp31916))))
                 _hd2686226890_
                 _hd2685926880_)
                (let () (declare (not safe)) (_g2685426869_ _g2685526873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2685426869_
                                                   _g2685526873_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2685426869_ _g2685526873_)))))
                                 (__tmp31959
                                  (list (gx#stx-identifier
                                         _L26835_
                                         '"&"
                                         _L26835_)
                                        (gx#stx-identifier
                                         _L26833_
                                         '"&"
                                         _L26833_))))
                            (declare (not safe))
                            (_g2685326914_ __tmp31959)))
                        _hd2678926827_
                        _hd2678626817_
                        _hd2678326807_)
                       (let ()
                         (declare (not safe))
                         (_g2677726796_ _g2677826800_)))))
               (let () (declare (not safe)) (_g2677726796_ _g2677826800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2677726796_
                                                  _g2677826800_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2677726796_ _g2677826800_))))))
                           (declare (not safe))
                           (_g2677626918_ _ref26774_)))
                       _accessible-slots25967_)))
                (declare (not safe))
                (_g2662926770_ __tmp31915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf2653726605_
                                                  _def-getf2653826608_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2653126563_
                                    _target2652826557_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2652426550_ _g2652526554_))))))
                     (let ()
                       (declare (not safe))
                       (_g2652426550_ _g2652526554_)))))
              (__tmp31960
               (gx#stx-map
                (lambda (_ref26926_)
                  (let* ((_g2692926948_
                          (lambda (_g2693026944_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2693026944_)))
                         (_g2692827006_
                          (lambda (_g2693026952_)
                            (if (gx#stx-pair? _g2693026952_)
                                (let ((_e2693426955_
                                       (gx#syntax-e _g2693026952_)))
                                  (let ((_hd2693526959_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2693426955_)))
                                        (_tl2693626962_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2693426955_))))
                                    (if (gx#stx-pair? _tl2693626962_)
                                        (let ((_e2693726965_
                                               (gx#syntax-e _tl2693626962_)))
                                          (let ((_hd2693826969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2693726965_)))
                                                (_tl2693926972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2693726965_))))
                                            (if (gx#stx-pair? _tl2693926972_)
                                                (let ((_e2694026975_
                                                       (gx#syntax-e
                                                        _tl2693926972_)))
                                                  (let ((_hd2694126979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2694026975_)))
                                                        (_tl2694226982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2694026975_))))
                                                    (if (gx#stx-null?
                                                         _tl2694226982_)
                                                        ((lambda (_L26985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26987_
                          _L26988_)
                   (let ((__tmp31983
                          (let ((__tmp31984
                                 (let ((__tmp32003 (gx#datum->syntax '#f 'def))
                                       (__tmp31985
                                        (let ((__tmp31986
                                               (let ((__tmp31987
                                                      (let ((__tmp32002
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp31988
                                                             (let ((__tmp31997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32001
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp31998
                                   (let ((__tmp31999
                                          (let ((__tmp32000
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L26988_ __tmp32000))))
                                     (declare (not safe))
                                     (cons _L26147_ __tmp31999))))
                              (declare (not safe))
                              (cons __tmp32001 __tmp31998)))
                           (__tmp31989
                            (let ((__tmp31990
                                   (let ((__tmp31996
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp31991
                                          (let ((__tmp31992
                                                 (let ((__tmp31993
                                                        (let ((__tmp31995
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp31994
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26988_ '()))))
                  (declare (not safe))
                  (cons __tmp31995 __tmp31994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31993 '()))))
                                            (declare (not safe))
                                            (cons _L25912_ __tmp31992))))
                                     (declare (not safe))
                                     (cons __tmp31996 __tmp31991))))
                              (declare (not safe))
                              (cons __tmp31990 '()))))
                       (declare (not safe))
                       (cons __tmp31997 __tmp31989))))
                (declare (not safe))
                (cons __tmp32002 __tmp31988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31987 '()))))
                                          (declare (not safe))
                                          (cons _L26987_ __tmp31986))))
                                   (declare (not safe))
                                   (cons __tmp32003 __tmp31985))))
                            (declare (not safe))
                            (_wrap25818_ __tmp31984)))
                         (__tmp31961
                          (let ((__tmp31962
                                 (let ((__tmp31963
                                        (let ((__tmp31982
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp31964
                                               (let ((__tmp31965
                                                      (let ((__tmp31966
                                                             (let ((__tmp31981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp31967
                            (let ((__tmp31976
                                   (let ((__tmp31980
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp31977
                                          (let ((__tmp31978
                                                 (let ((__tmp31979
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L26988_
                                                         __tmp31979))))
                                            (declare (not safe))
                                            (cons _L26147_ __tmp31978))))
                                     (declare (not safe))
                                     (cons __tmp31980 __tmp31977)))
                                  (__tmp31968
                                   (let ((__tmp31969
                                          (let ((__tmp31975
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp31970
                                                 (let ((__tmp31971
                                                        (let ((__tmp31972
                                                               (let ((__tmp31974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp31973
                              (let ()
                                (declare (not safe))
                                (cons _L26988_ '()))))
                         (declare (not safe))
                         (cons __tmp31974 __tmp31973))))
                  (declare (not safe))
                  (cons __tmp31972 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25912_
                                                         __tmp31971))))
                                            (declare (not safe))
                                            (cons __tmp31975 __tmp31970))))
                                     (declare (not safe))
                                     (cons __tmp31969 '()))))
                              (declare (not safe))
                              (cons __tmp31976 __tmp31968))))
                       (declare (not safe))
                       (cons __tmp31981 __tmp31967))))
                (declare (not safe))
                (cons __tmp31966 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26985_ __tmp31965))))
                                          (declare (not safe))
                                          (cons __tmp31982 __tmp31964))))
                                   (declare (not safe))
                                   (_wrap25818_ __tmp31963))))
                            (declare (not safe))
                            (cons __tmp31962 '()))))
                     (declare (not safe))
                     (cons __tmp31983 __tmp31961)))
                 _hd2694126979_
                 _hd2693826969_
                 _hd2693526959_)
                (let () (declare (not safe)) (_g2692926948_ _g2693026952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2692926948_
                                                   _g2693026952_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2692926948_ _g2693026952_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2692926948_ _g2693026952_))))))
                    (declare (not safe))
                    (_g2692827006_ _ref26926_)))
                _accessible-slots25967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2652326922_ __tmp31960))))
                                           _g2649726508_)))
                                       (__tmp32004
                                        (let ((__tmp32005
                                               (let ((__tmp32018
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp32006
                                                      (let ((__tmp32007
                                                             (let ((__tmp32008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32017
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp32009
                                   (let ((__tmp32014
                                          (let ((__tmp32016
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp32015
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L26147_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32016 __tmp32015)))
                                         (__tmp32010
                                          (let ((__tmp32011
                                                 (let ((__tmp32013
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp32012
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L25912_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32013
                                                         __tmp32012))))
                                            (declare (not safe))
                                            (cons __tmp32011 '()))))
                                     (declare (not safe))
                                     (cons __tmp32014 __tmp32010))))
                              (declare (not safe))
                              (cons __tmp32017 __tmp32009))))
                       (declare (not safe))
                       (cons __tmp32008 '()))))
                (declare (not safe))
                (cons _L25909_ __tmp32007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32018
                                                       __tmp32006))))
                                          (declare (not safe))
                                          (_wrap25818_ __tmp32005))))
                                  (declare (not safe))
                                  (_g2649527010_ __tmp32004))))
                            _g2646926480_)))
                        (__tmp32019
                         (if (gx#stx-false? _L25910_)
                             (let ((__tmp32020 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp32020 '()))
                             (let ((__tmp32021
                                    (let ((__tmp32043
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp32022
                                           (let ((__tmp32023
                                                  (let ((__tmp32024
                                                         (let ((__tmp32042
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp32025
                        (let ((__tmp32039
                               (let ((__tmp32041
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp32040
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26147_ '()))))
                                 (declare (not safe))
                                 (cons __tmp32041 __tmp32040)))
                              (__tmp32026
                               (let ((__tmp32027
                                      (let ((__tmp32038
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp32028
                                             (let ((__tmp32037
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp32029
                                                    (let ((__tmp32030
                                                           (let ((__tmp32036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp32031
                          (let ((__tmp32035
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp32032
                                 (let ((__tmp32033
                                        (let ((__tmp32034
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp32034 '()))))
                                   (declare (not safe))
                                   (cons _L25912_ __tmp32033))))
                            (declare (not safe))
                            (cons __tmp32035 __tmp32032))))
                     (declare (not safe))
                     (cons __tmp32036 __tmp32031))))
              (declare (not safe))
              (cons __tmp32030 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32037 __tmp32029))))
                                        (declare (not safe))
                                        (cons __tmp32038 __tmp32028))))
                                 (declare (not safe))
                                 (cons __tmp32027 '()))))
                          (declare (not safe))
                          (cons __tmp32039 __tmp32026))))
                   (declare (not safe))
                   (cons __tmp32042 __tmp32025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32024 '()))))
                                             (declare (not safe))
                                             (cons _L25910_ __tmp32023))))
                                      (declare (not safe))
                                      (cons __tmp32043 __tmp32022))))
                               (declare (not safe))
                               (_wrap25818_ __tmp32021)))))
                   (declare (not safe))
                   (_g2646727014_ __tmp32019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2644126452_)))
                                                 (__tmp32044
                                                  (let ((__tmp32045
                                                         (let ((__tmp32062
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp32046
                        (let ((__tmp32047
                               (let ((__tmp32048
                                      (let ((__tmp32061
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp32049
                                             (let ((__tmp32051
                                                    (let ((__tmp32060
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp32052
                                                           (let ((__tmp32053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32054
                                 (let ((__tmp32059
                                        (foldr (lambda (_g2702127024_
                                                        _g2702227027_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2702127024_
                                                         _g2702227027_)))
                                               '()
                                               _L26027_))
                                       (__tmp32055
                                        (let ((__tmp32056
                                               (let ((__tmp32057
                                                      (let ((__tmp32058
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L26259_ '()))))
                (declare (not safe))
                (cons _L26231_ __tmp32058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26203_ __tmp32057))))
                                          (declare (not safe))
                                          (cons _L26119_ __tmp32056))))
                                   (declare (not safe))
                                   (cons __tmp32059 __tmp32055))))
                            (declare (not safe))
                            (cons _L26175_ __tmp32054))))
                     (declare (not safe))
                     (cons _L26063_ __tmp32053))))
              (declare (not safe))
              (cons __tmp32060 __tmp32052)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp32050
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L26427_ '()))))
                                               (declare (not safe))
                                               (cons __tmp32051 __tmp32050))))
                                        (declare (not safe))
                                        (cons __tmp32061 __tmp32049))))
                                 (declare (not safe))
                                 (cons __tmp32048 '()))))
                          (declare (not safe))
                          (cons _L25912_ __tmp32047))))
                   (declare (not safe))
                   (cons __tmp32062 __tmp32046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap25818_ __tmp32045))))
                                            (declare (not safe))
                                            (_g2643927018_ __tmp32044))))
                                      _g2641326424_)))
                                  (__tmp32063
                                   (let ((__tmp32083
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp32064
                                          (let ((__tmp32080
                                                 (let ((__tmp32082
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32081
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L26063_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32082
                                                         __tmp32081)))
                                                (__tmp32065
                                                 (let ((__tmp32077
                                                        (let ((__tmp32079
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp32078
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26091_ '()))))
                  (declare (not safe))
                  (cons __tmp32079 __tmp32078)))
               (__tmp32066
                (let ((__tmp32067
                       (let ((__tmp32073
                              (let ((__tmp32076 (gx#datum->syntax '#f 'quote))
                                    (__tmp32074
                                     (let ((__tmp32075
                                            (foldr (lambda (_g2703327036_
                                                            _g2703427039_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2703327036_
                                                             _g2703427039_)))
                                                   '()
                                                   _L26027_)))
                                       (declare (not safe))
                                       (cons __tmp32075 '()))))
                                (declare (not safe))
                                (cons __tmp32076 __tmp32074)))
                             (__tmp32068
                              (let ((__tmp32069
                                     (let ((__tmp32070
                                            (let ((__tmp32072
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32071
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L26119_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32072 __tmp32071))))
                                       (declare (not safe))
                                       (cons __tmp32070 '()))))
                                (declare (not safe))
                                (cons _L26371_ __tmp32069))))
                         (declare (not safe))
                         (cons __tmp32073 __tmp32068))))
                  (declare (not safe))
                  (cons _L26399_ __tmp32067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32077
                                                         __tmp32066))))
                                            (declare (not safe))
                                            (cons __tmp32080 __tmp32065))))
                                     (declare (not safe))
                                     (cons __tmp32083 __tmp32064))))
                             (declare (not safe))
                             (_g2641127030_ __tmp32063))))
                       _g2638526396_)))
                   (__tmp32084
                    (let ((__tmp32085 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp32085 _L25911_))))
              (declare (not safe))
              (_g2638327042_ __tmp32084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2635726368_)))
                                            (__tmp32086
                                             (if (gx#stx-e _metaclass25970_)
                                                 (let* ((_g2705027058_
                                                         (lambda (_g2705127054_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2705127054_)))
                                                        (_g2704927077_
                                                         (lambda (_g2705127062_)
                                                           ((lambda (_L27065_)
                                                              (let ()
                                                                (let ((__tmp32095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32087
                               (let ((__tmp32090
                                      (let ((__tmp32094
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp32091
                                             (let ((__tmp32092
                                                    (let ((__tmp32093
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L27065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp32093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp32092))))
                                        (declare (not safe))
                                        (cons __tmp32094 __tmp32091)))
                                     (__tmp32088
                                      (let ((__tmp32089
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26343_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32089))))
                                 (declare (not safe))
                                 (cons __tmp32090 __tmp32088))))
                          (declare (not safe))
                          (cons __tmp32095 __tmp32087))))
                    _g2705127062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2704927077_
                                                    _metaclass25970_))
                                                 _L26343_)))
                                       (declare (not safe))
                                       (_g2635527046_ __tmp32086))))
                                 _g2632926340_)))
                             (__tmp32096
                              (if _struct?25950_
                                  (let ((__tmp32103
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp32097
                                         (let ((__tmp32100
                                                (let ((__tmp32102
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp32101
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp32102
                                                        __tmp32101)))
                                               (__tmp32098
                                                (let ((__tmp32099
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26315_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp32099))))
                                           (declare (not safe))
                                           (cons __tmp32100 __tmp32098))))
                                    (declare (not safe))
                                    (cons __tmp32103 __tmp32097))
                                  _L26315_)))
                        (declare (not safe))
                        (_g2632727081_ __tmp32096))))
                  _g2630126312_)))
              (__tmp32104
               (if (gx#stx-e _L26231_)
                   (let ((__tmp32111 (gx#datum->syntax '#f '@list))
                         (__tmp32105
                          (let ((__tmp32108
                                 (let ((__tmp32110
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp32109
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp32110 __tmp32109)))
                                (__tmp32106
                                 (let ((__tmp32107
                                        (let ()
                                          (declare (not safe))
                                          (cons _L26287_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp32107))))
                            (declare (not safe))
                            (cons __tmp32108 __tmp32106))))
                     (declare (not safe))
                     (cons __tmp32111 __tmp32105))
                   _L26287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2629927085_ __tmp32104))))
                                           _g2627326284_)))
                                       (__tmp32112
                                        (let ((_$e27093_
                                               (gx#stx-getq
                                                'properties:
                                                _L25907_)))
                                          (if _$e27093_
                                              _$e27093_
                                              (let ((__tmp32113
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp32113 '()))))))
                                  (declare (not safe))
                                  (_g2627127089_ __tmp32112))))
                            _g2624526256_)))
                        (__tmp32114
                         (if (gx#stx-e _metaclass25970_)
                             (gx#core-quote-syntax _metaclass25970_)
                             '#f)))
                   (declare (not safe))
                   (_g2624327097_ __tmp32114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2621726228_)))
                                                 (__tmp32115
                                                  (gx#stx-getq
                                                   'final:
                                                   _L25907_)))
                                            (declare (not safe))
                                            (_g2621527101_ __tmp32115))))
                                      _g2618926200_))))
                             (declare (not safe))
                             (_g2618727105_ _struct?25950_))))
                       _g2616126172_)))
                   (__tmp32116 (gx#stx-map gx#core-quote-syntax _L25911_)))
              (declare (not safe))
              (_g2615927109_ __tmp32116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2613326144_)))
                                            (__tmp32117
                                             (gx#core-quote-syntax _L25912_)))
                                       (declare (not safe))
                                       (_g2613127113_ __tmp32117))))
                                 _g2610526116_)))
                             (__tmp32118 (gx#stx-getq 'constructor: _L25907_)))
                        (declare (not safe))
                        (_g2610327117_ __tmp32118))))
                  _g2607726088_)))
              (__tmp32119
               (let ((_$e27125_ (gx#stx-getq 'name: _L25907_)))
                 (if _$e27125_ _$e27125_ _L25912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2607527121_ __tmp32119))))
                                           _g2604926060_)))
                                       (__tmp32120
                                        (let ((_$e27133_
                                               (gx#stx-getq 'id: _L25907_)))
                                          (if _$e27133_
                                              _$e27133_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                                                 _L25912_))))))
                                  (declare (not safe))
                                  (_g2604727129_ __tmp32120))))
                            _slot2598426023_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop2597926003_
                                                      _target2597625997_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2597325990_
                                                    _g2597425994_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2597325990_ _g2597425994_)))))
                                (__tmp32121
                                 (gx#stx-map _slot-name25820_ _slots25957_)))
                           (declare (not safe))
                           (_g2597227137_ __tmp32121))
                         (let ()
                           (declare (not safe))
                           (_g2582325850_ _g2582425854_))))
                   _tl2584425904_
                   _hd2584325901_
                   _hd2584025891_
                   _hd2583725881_
                   _hd2583425871_)))
              (let () (declare (not safe)) (_g2582325850_ _g2582425854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2582325850_
                                                 _g2582425854_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2582325850_ _g2582425854_)))))
                              (let ()
                                (declare (not safe))
                                (_g2582325850_ _g2582425854_)))))
                      (let ()
                        (declare (not safe))
                        (_g2582325850_ _g2582425854_))))))
          (declare (not safe))
          (_g2582227141_ _stx25814_)))))
  (define |gerbil/core/mop$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx27253_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop$<MOP:1>[1]#generate-typedef| _stx27253_ '#t))))
  (define |gerbil/core/mop$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx27256_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop$<MOP:1>[1]#generate-typedef| _stx27256_ '#f)))))
