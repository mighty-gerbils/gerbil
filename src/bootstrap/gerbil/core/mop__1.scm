(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:1>[1]#module-type-id|
    (lambda (_type-t27236_)
      (let ((_$e27239_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e27239_
            ((lambda (_ns27243_)
               (gx#stx-identifier
                _type-t27236_
                _ns27243_
                '"#"
                _type-t27236_
                '"::t"))
             _$e27239_)
            (let ((_mid27246_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t27236_
               _mid27246_
               '"#"
               _type-t27236_
               '"::t"))))))
  (define |gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t27233_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop$<MOP:1>[1]#module-type-id| _type-t27233_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t27233_)) '"::t"))))
  (define |gerbil/core/mop$<MOP:1>[1]#generate-typedef|
    (lambda (_stx25813_ _struct?25815_)
      (letrec ((_wrap25817_
                (lambda (_e-stx27230_)
                  (gx#stx-wrap-source
                   _e-stx27230_
                   (gx#stx-source _stx25813_))))
               (_slot-name25819_
                (lambda (_slot-spec27147_)
                  (let* ((_g2715027169_
                          (lambda (_g2715127165_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2715127165_)))
                         (_g2714927226_
                          (lambda (_g2715127173_)
                            (if (gx#stx-pair? _g2715127173_)
                                (let ((_e2715527176_
                                       (gx#syntax-e _g2715127173_)))
                                  (let ((_hd2715627180_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2715527176_)))
                                        (_tl2715727183_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2715527176_))))
                                    (if (gx#stx-pair? _tl2715727183_)
                                        (let ((_e2715827186_
                                               (gx#syntax-e _tl2715727183_)))
                                          (let ((_hd2715927190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2715827186_)))
                                                (_tl2716027193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2715827186_))))
                                            (if (gx#stx-pair? _tl2716027193_)
                                                (let ((_e2716127196_
                                                       (gx#syntax-e
                                                        _tl2716027193_)))
                                                  (let ((_hd2716227200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2716127196_)))
                                                        (_tl2716327203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2716127196_))))
                                                    (if (gx#stx-null?
                                                         _tl2716327203_)
                                                        ((lambda (_L27206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27208_
                          _L27209_)
                   _L27209_)
                 _hd2716227200_
                 _hd2715927190_
                 _hd2715627180_)
                (let () (declare (not safe)) (_g2715027169_ _g2715127173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2715027169_
                                                   _g2715127173_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2715027169_ _g2715127173_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2715027169_ _g2715127173_))))))
                    (declare (not safe))
                    (_g2714927226_ _slot-spec27147_))))
               (_class-opt?25820_
                (lambda (_key27144_)
                  (memq (gx#stx-e _key27144_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_g2582225849_
                (lambda (_g2582325845_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2582325845_)))
               (_g2582127140_
                (lambda (_g2582325853_)
                  (if (gx#stx-pair? _g2582325853_)
                      (let ((_e2582925856_ (gx#syntax-e _g2582325853_)))
                        (let ((_hd2583025860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2582925856_)))
                              (_tl2583125863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2582925856_))))
                          (if (gx#stx-pair? _tl2583125863_)
                              (let ((_e2583225866_
                                     (gx#syntax-e _tl2583125863_)))
                                (let ((_hd2583325870_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2583225866_)))
                                      (_tl2583425873_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2583225866_))))
                                  (if (gx#stx-pair? _tl2583425873_)
                                      (let ((_e2583525876_
                                             (gx#syntax-e _tl2583425873_)))
                                        (let ((_hd2583625880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2583525876_)))
                                              (_tl2583725883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2583525876_))))
                                          (if (gx#stx-pair? _tl2583725883_)
                                              (let ((_e2583825886_
                                                     (gx#syntax-e
                                                      _tl2583725883_)))
                                                (let ((_hd2583925890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2583825886_)))
                                                      (_tl2584025893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2583825886_))))
                                                  (if (gx#stx-pair?
                                                       _tl2584025893_)
                                                      (let ((_e2584125896_
                                                             (gx#syntax-e
                                                              _tl2584025893_)))
                                                        (let ((_hd2584225900_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2584125896_)))
                      (_tl2584325903_
                       (let () (declare (not safe)) (##cdr _e2584125896_))))
                  ((lambda (_L25906_ _L25908_ _L25909_ _L25910_ _L25911_)
                     (if (and (gx#identifier? _L25911_)
                              (gx#identifier-list? _L25910_)
                              (or (gx#identifier? _L25909_)
                                  (gx#stx-false? _L25909_))
                              (gx#identifier? _L25908_)
                              (gx#stx-plist? _L25906_ _class-opt?25820_))
                         (let* ((_struct?25949_
                                 (let ((_$e25941_ _struct?25815_))
                                   (if _$e25941_
                                       _$e25941_
                                       (let ((_$e25945_
                                              (gx#stx-getq 'struct: _L25906_)))
                                         (if _$e25945_
                                             (gx#stx-e _$e25945_)
                                             '#f)))))
                                (_slots25956_
                                 (let ((_$e25952_
                                        (gx#stx-getq 'slots: _L25906_)))
                                   (if _$e25952_ _$e25952_ '())))
                                (_mixin-slots25963_
                                 (let ((_$e25959_
                                        (gx#stx-getq 'mixin: _L25906_)))
                                   (if _$e25959_ _$e25959_ '())))
                                (_accessible-slots25966_
                                 (append (gx#syntax->list _slots25956_)
                                         (gx#syntax->list _mixin-slots25963_)))
                                (_metaclass25969_
                                 (gx#stx-getq 'metaclass: _L25906_))
                                (_g2597225989_
                                 (lambda (_g2597325985_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2597325985_)))
                                (_g2597127136_
                                 (lambda (_g2597325993_)
                                   (if (gx#stx-pair/null? _g2597325993_)
                                       (let ((_g31590_
                                              (gx#syntax-split-splice
                                               _g2597325993_
                                               '0)))
                                         (begin
                                           (let ((_g31591_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g31590_)
                                                        (##vector-length
                                                         _g31590_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g31591_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g31591_)))
                                           (let ((_target2597525996_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g31590_ 0)))
                                                 (_tl2597725999_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g31590_
                                                     1))))
                                             (if (gx#stx-null? _tl2597725999_)
                                                 (letrec ((_loop2597826002_
                                                           (lambda (_hd2597626006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot2598226009_)
                     (if (gx#stx-pair? _hd2597626006_)
                         (let ((_e2597926012_ (gx#syntax-e _hd2597626006_)))
                           (let ((_lp-hd2598026016_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2597926012_)))
                                 (_lp-tl2598126019_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2597926012_))))
                             (let ((__tmp31592
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd2598026016_
                                            _slot2598226009_))))
                               (declare (not safe))
                               (_loop2597826002_
                                _lp-tl2598126019_
                                __tmp31592))))
                         (let ((_slot2598326022_ (reverse _slot2598226009_)))
                           ((lambda (_L26026_)
                              (let ()
                                (let* ((_g2604726055_
                                        (lambda (_g2604826051_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2604826051_)))
                                       (_g2604627128_
                                        (lambda (_g2604826059_)
                                          ((lambda (_L26062_)
                                             (let ()
                                               (let* ((_g2607526083_
                                                       (lambda (_g2607626079_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2607626079_)))
                                                      (_g2607427120_
                                                       (lambda (_g2607626087_)
                                                         ((lambda (_L26090_)
                                                            (let ()
                                                              (let* ((_g2610326111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2610426107_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2610426107_)))
                             (_g2610227116_
                              (lambda (_g2610426115_)
                                ((lambda (_L26118_)
                                   (let ()
                                     (let* ((_g2613126139_
                                             (lambda (_g2613226135_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2613226135_)))
                                            (_g2613027112_
                                             (lambda (_g2613226143_)
                                               ((lambda (_L26146_)
                                                  (let ()
                                                    (let* ((_g2615926167_
                                                            (lambda (_g2616026163_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2616026163_)))
                                                           (_g2615827108_
                                                            (lambda (_g2616026171_)
                                                              ((lambda (_L26174_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2618726195_
                                   (lambda (_g2618826191_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2618826191_)))
                                  (_g2618627104_
                                   (lambda (_g2618826199_)
                                     ((lambda (_L26202_)
                                        (let ()
                                          (let* ((_g2621526223_
                                                  (lambda (_g2621626219_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2621626219_)))
                                                 (_g2621427100_
                                                  (lambda (_g2621626227_)
                                                    ((lambda (_L26230_)
                                                       (let ()
                                                         (let* ((_g2624326251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2624426247_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2624426247_)))
                        (_g2624227096_
                         (lambda (_g2624426255_)
                           ((lambda (_L26258_)
                              (let ()
                                (let* ((_g2627126279_
                                        (lambda (_g2627226275_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2627226275_)))
                                       (_g2627027088_
                                        (lambda (_g2627226283_)
                                          ((lambda (_L26286_)
                                             (let ()
                                               (let* ((_g2629926307_
                                                       (lambda (_g2630026303_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2630026303_)))
                                                      (_g2629827084_
                                                       (lambda (_g2630026311_)
                                                         ((lambda (_L26314_)
                                                            (let ()
                                                              (let* ((_g2632726335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2632826331_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2632826331_)))
                             (_g2632627080_
                              (lambda (_g2632826339_)
                                ((lambda (_L26342_)
                                   (let ()
                                     (let* ((_g2635526363_
                                             (lambda (_g2635626359_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2635626359_)))
                                            (_g2635427045_
                                             (lambda (_g2635626367_)
                                               ((lambda (_L26370_)
                                                  (let ()
                                                    (let* ((_g2638326391_
                                                            (lambda (_g2638426387_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2638426387_)))
                                                           (_g2638227041_
                                                            (lambda (_g2638426395_)
                                                              ((lambda (_L26398_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2641126419_
                                   (lambda (_g2641226415_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2641226415_)))
                                  (_g2641027029_
                                   (lambda (_g2641226423_)
                                     ((lambda (_L26426_)
                                        (let ()
                                          (let* ((_g2643926447_
                                                  (lambda (_g2644026443_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2644026443_)))
                                                 (_g2643827017_
                                                  (lambda (_g2644026451_)
                                                    ((lambda (_L26454_)
                                                       (let ()
                                                         (let* ((_g2646726475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2646826471_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2646826471_)))
                        (_g2646627013_
                         (lambda (_g2646826479_)
                           ((lambda (_L26482_)
                              (let ()
                                (let* ((_g2649526503_
                                        (lambda (_g2649626499_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2649626499_)))
                                       (_g2649427009_
                                        (lambda (_g2649626507_)
                                          ((lambda (_L26510_)
                                             (let ()
                                               (let* ((_g2652326549_
                                                       (lambda (_g2652426545_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2652426545_)))
                                                      (_g2652226921_
                                                       (lambda (_g2652426553_)
                                                         (if (gx#stx-pair/null?
                                                              _g2652426553_)
                                                             (let ((_g31593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2652426553_ '0)))
                       (begin
                         (let ((_g31594_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g31593_)
                                      (##vector-length _g31593_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g31594_ 2)))
                               (error "Context expects 2 values" _g31594_)))
                         (let ((_target2652726556_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31593_ 0)))
                               (_tl2652926559_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31593_ 1))))
                           (if (gx#stx-null? _tl2652926559_)
                               (letrec ((_loop2653026562_
                                         (lambda (_hd2652826566_
                                                  _def-setf2653426569_
                                                  _def-getf2653526571_)
                                           (if (gx#stx-pair? _hd2652826566_)
                                               (let ((_e2653126574_
                                                      (gx#syntax-e
                                                       _hd2652826566_)))
                                                 (let ((_lp-hd2653226578_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2653126574_)))
                                                       (_lp-tl2653326581_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2653126574_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd2653226578_)
                                                       (let ((_e2653826584_
                                                              (gx#syntax-e
                                                               _lp-hd2653226578_)))
                                                         (let ((_hd2653926588_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2653826584_)))
                       (_tl2654026591_
                        (let () (declare (not safe)) (##cdr _e2653826584_))))
                   (if (gx#stx-pair? _tl2654026591_)
                       (let ((_e2654126594_ (gx#syntax-e _tl2654026591_)))
                         (let ((_hd2654226598_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2654126594_)))
                               (_tl2654326601_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2654126594_))))
                           (if (gx#stx-null? _tl2654326601_)
                               (let ((__tmp31596
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654226598_
                                              _def-setf2653426569_)))
                                     (__tmp31595
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2653926588_
                                              _def-getf2653526571_))))
                                 (declare (not safe))
                                 (_loop2653026562_
                                  _lp-tl2653326581_
                                  __tmp31596
                                  __tmp31595))
                               (let ()
                                 (declare (not safe))
                                 (_g2652326549_ _g2652426553_)))))
                       (let ()
                         (declare (not safe))
                         (_g2652326549_ _g2652426553_)))))
               (let () (declare (not safe)) (_g2652326549_ _g2652426553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf2653626604_
                                                      (reverse _def-setf2653426569_))
                                                     (_def-getf2653726607_
                                                      (reverse _def-getf2653526571_)))
                                                 ((lambda (_L26610_ _L26612_)
                                                    (let ()
                                                      (let* ((_g2662926655_
                                                              (lambda (_g2663026651_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2663026651_)))
                     (_g2662826769_
                      (lambda (_g2663026659_)
                        (if (gx#stx-pair/null? _g2663026659_)
                            (let ((_g31597_
                                   (gx#syntax-split-splice _g2663026659_ '0)))
                              (begin
                                (let ((_g31598_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g31597_)
                                             (##vector-length _g31597_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g31598_ 2)))
                                      (error "Context expects 2 values"
                                             _g31598_)))
                                (let ((_target2663326662_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31597_ 0)))
                                      (_tl2663526665_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31597_ 1))))
                                  (if (gx#stx-null? _tl2663526665_)
                                      (letrec ((_loop2663626668_
                                                (lambda (_hd2663426672_
                                                         _def-usetf2664026675_
                                                         _def-ugetf2664126677_)
                                                  (if (gx#stx-pair?
                                                       _hd2663426672_)
                                                      (let ((_e2663726680_
                                                             (gx#syntax-e
                                                              _hd2663426672_)))
                                                        (let ((_lp-hd2663826684_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2663726680_)))
                      (_lp-tl2663926687_
                       (let () (declare (not safe)) (##cdr _e2663726680_))))
                  (if (gx#stx-pair? _lp-hd2663826684_)
                      (let ((_e2664426690_ (gx#syntax-e _lp-hd2663826684_)))
                        (let ((_hd2664526694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2664426690_)))
                              (_tl2664626697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2664426690_))))
                          (if (gx#stx-pair? _tl2664626697_)
                              (let ((_e2664726700_
                                     (gx#syntax-e _tl2664626697_)))
                                (let ((_hd2664826704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2664726700_)))
                                      (_tl2664926707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2664726700_))))
                                  (if (gx#stx-null? _tl2664926707_)
                                      (let ((__tmp31600
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664826704_
                                                     _def-usetf2664026675_)))
                                            (__tmp31599
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664526694_
                                                     _def-ugetf2664126677_))))
                                        (declare (not safe))
                                        (_loop2663626668_
                                         _lp-tl2663926687_
                                         __tmp31600
                                         __tmp31599))
                                      (let ()
                                        (declare (not safe))
                                        (_g2662926655_ _g2663026659_)))))
                              (let ()
                                (declare (not safe))
                                (_g2662926655_ _g2663026659_)))))
                      (let ()
                        (declare (not safe))
                        (_g2662926655_ _g2663026659_)))))
              (let ((_def-usetf2664226710_ (reverse _def-usetf2664026675_))
                    (_def-ugetf2664326713_ (reverse _def-ugetf2664126677_)))
                ((lambda (_L26716_ _L26718_)
                   (let ()
                     (let ()
                       (let ((__tmp31601
                              (let ((__tmp31606 (gx#datum->syntax '#f 'begin))
                                    (__tmp31602
                                     (let ((__tmp31603
                                            (let ((__tmp31604
                                                   (let ((__tmp31605
                                                          (foldr (lambda (_g2673626745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2673726748_)
                           (let ()
                             (declare (not safe))
                             (cons _g2673626745_ _g2673726748_)))
                         (foldr (lambda (_g2673826751_ _g2673926754_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2673826751_ _g2673926754_)))
                                (foldr (lambda (_g2674026757_ _g2674126760_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2674026757_ _g2674126760_)))
                                       (foldr (lambda (_g2674226763_
                                                       _g2674326766_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2674226763_
                                                        _g2674326766_)))
                                              '()
                                              _L26716_)
                                       _L26718_)
                                _L26610_)
                         _L26612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L26482_
                                                           __tmp31605))))
                                              (declare (not safe))
                                              (cons _L26510_ __tmp31604))))
                                       (declare (not safe))
                                       (cons _L26454_ __tmp31603))))
                                (declare (not safe))
                                (cons __tmp31606 __tmp31602))))
                         (declare (not safe))
                         (_wrap25817_ __tmp31601)))))
                 _def-usetf2664226710_
                 _def-ugetf2664326713_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2663626668_
                                           _target2663326662_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2662926655_ _g2663026659_))))))
                            (let ()
                              (declare (not safe))
                              (_g2662926655_ _g2663026659_)))))
                     (__tmp31607
                      (gx#stx-map
                       (lambda (_ref26773_)
                         (let* ((_g2677626795_
                                 (lambda (_g2677726791_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2677726791_)))
                                (_g2677526917_
                                 (lambda (_g2677726799_)
                                   (if (gx#stx-pair? _g2677726799_)
                                       (let ((_e2678126802_
                                              (gx#syntax-e _g2677726799_)))
                                         (let ((_hd2678226806_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2678126802_)))
                                               (_tl2678326809_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2678126802_))))
                                           (if (gx#stx-pair? _tl2678326809_)
                                               (let ((_e2678426812_
                                                      (gx#syntax-e
                                                       _tl2678326809_)))
                                                 (let ((_hd2678526816_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2678426812_)))
                                                       (_tl2678626819_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2678426812_))))
                                                   (if (gx#stx-pair?
                                                        _tl2678626819_)
                                                       (let ((_e2678726822_
                                                              (gx#syntax-e
                                                               _tl2678626819_)))
                                                         (let ((_hd2678826826_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2678726822_)))
                       (_tl2678926829_
                        (let () (declare (not safe)) (##cdr _e2678726822_))))
                   (if (gx#stx-null? _tl2678926829_)
                       ((lambda (_L26832_ _L26834_ _L26835_)
                          (let* ((_g2685326868_
                                  (lambda (_g2685426864_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2685426864_)))
                                 (_g2685226913_
                                  (lambda (_g2685426872_)
                                    (if (gx#stx-pair? _g2685426872_)
                                        (let ((_e2685726875_
                                               (gx#syntax-e _g2685426872_)))
                                          (let ((_hd2685826879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2685726875_)))
                                                (_tl2685926882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2685726875_))))
                                            (if (gx#stx-pair? _tl2685926882_)
                                                (let ((_e2686026885_
                                                       (gx#syntax-e
                                                        _tl2685926882_)))
                                                  (let ((_hd2686126889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2686026885_)))
                                                        (_tl2686226892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2686026885_))))
                                                    (if (gx#stx-null?
                                                         _tl2686226892_)
                                                        ((lambda (_L26895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26897_)
                   (let ()
                     (let ((__tmp31630
                            (let ((__tmp31631
                                   (let ((__tmp31650
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp31632
                                          (let ((__tmp31633
                                                 (let ((__tmp31634
                                                        (let ((__tmp31649
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp31635
                                                               (let ((__tmp31644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp31648
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp31645
                                     (let ((__tmp31646
                                            (let ((__tmp31647
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L26835_ __tmp31647))))
                                       (declare (not safe))
                                       (cons _L26146_ __tmp31646))))
                                (declare (not safe))
                                (cons __tmp31648 __tmp31645)))
                             (__tmp31636
                              (let ((__tmp31637
                                     (let ((__tmp31643
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp31638
                                            (let ((__tmp31639
                                                   (let ((__tmp31640
                                                          (let ((__tmp31642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp31641
                         (let () (declare (not safe)) (cons _L26835_ '()))))
                    (declare (not safe))
                    (cons __tmp31642 __tmp31641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp31640 '()))))
                                              (declare (not safe))
                                              (cons _L25911_ __tmp31639))))
                                       (declare (not safe))
                                       (cons __tmp31643 __tmp31638))))
                                (declare (not safe))
                                (cons __tmp31637 '()))))
                         (declare (not safe))
                         (cons __tmp31644 __tmp31636))))
                  (declare (not safe))
                  (cons __tmp31649 __tmp31635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31634 '()))))
                                            (declare (not safe))
                                            (cons _L26897_ __tmp31633))))
                                     (declare (not safe))
                                     (cons __tmp31650 __tmp31632))))
                              (declare (not safe))
                              (_wrap25817_ __tmp31631)))
                           (__tmp31608
                            (let ((__tmp31609
                                   (let ((__tmp31610
                                          (let ((__tmp31629
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp31611
                                                 (let ((__tmp31612
                                                        (let ((__tmp31613
                                                               (let ((__tmp31628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp31614
                              (let ((__tmp31623
                                     (let ((__tmp31627
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp31624
                                            (let ((__tmp31625
                                                   (let ((__tmp31626
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L26835_
                                                           __tmp31626))))
                                              (declare (not safe))
                                              (cons _L26146_ __tmp31625))))
                                       (declare (not safe))
                                       (cons __tmp31627 __tmp31624)))
                                    (__tmp31615
                                     (let ((__tmp31616
                                            (let ((__tmp31622
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp31617
                                                   (let ((__tmp31618
                                                          (let ((__tmp31619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp31621 (gx#datum->syntax '#f 'quote))
                               (__tmp31620
                                (let ()
                                  (declare (not safe))
                                  (cons _L26835_ '()))))
                           (declare (not safe))
                           (cons __tmp31621 __tmp31620))))
                    (declare (not safe))
                    (cons __tmp31619 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L25911_
                                                           __tmp31618))))
                                              (declare (not safe))
                                              (cons __tmp31622 __tmp31617))))
                                       (declare (not safe))
                                       (cons __tmp31616 '()))))
                                (declare (not safe))
                                (cons __tmp31623 __tmp31615))))
                         (declare (not safe))
                         (cons __tmp31628 __tmp31614))))
                  (declare (not safe))
                  (cons __tmp31613 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L26895_
                                                         __tmp31612))))
                                            (declare (not safe))
                                            (cons __tmp31629 __tmp31611))))
                                     (declare (not safe))
                                     (_wrap25817_ __tmp31610))))
                              (declare (not safe))
                              (cons __tmp31609 '()))))
                       (declare (not safe))
                       (cons __tmp31630 __tmp31608))))
                 _hd2686126889_
                 _hd2685826879_)
                (let () (declare (not safe)) (_g2685326868_ _g2685426872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2685326868_
                                                   _g2685426872_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2685326868_ _g2685426872_)))))
                                 (__tmp31651
                                  (list (gx#stx-identifier
                                         _L26834_
                                         '"&"
                                         _L26834_)
                                        (gx#stx-identifier
                                         _L26832_
                                         '"&"
                                         _L26832_))))
                            (declare (not safe))
                            (_g2685226913_ __tmp31651)))
                        _hd2678826826_
                        _hd2678526816_
                        _hd2678226806_)
                       (let ()
                         (declare (not safe))
                         (_g2677626795_ _g2677726799_)))))
               (let () (declare (not safe)) (_g2677626795_ _g2677726799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2677626795_
                                                  _g2677726799_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2677626795_ _g2677726799_))))))
                           (declare (not safe))
                           (_g2677526917_ _ref26773_)))
                       _accessible-slots25966_)))
                (declare (not safe))
                (_g2662826769_ __tmp31607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf2653626604_
                                                  _def-getf2653726607_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2653026562_
                                    _target2652726556_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2652326549_ _g2652426553_))))))
                     (let ()
                       (declare (not safe))
                       (_g2652326549_ _g2652426553_)))))
              (__tmp31652
               (gx#stx-map
                (lambda (_ref26925_)
                  (let* ((_g2692826947_
                          (lambda (_g2692926943_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2692926943_)))
                         (_g2692727005_
                          (lambda (_g2692926951_)
                            (if (gx#stx-pair? _g2692926951_)
                                (let ((_e2693326954_
                                       (gx#syntax-e _g2692926951_)))
                                  (let ((_hd2693426958_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2693326954_)))
                                        (_tl2693526961_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2693326954_))))
                                    (if (gx#stx-pair? _tl2693526961_)
                                        (let ((_e2693626964_
                                               (gx#syntax-e _tl2693526961_)))
                                          (let ((_hd2693726968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2693626964_)))
                                                (_tl2693826971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2693626964_))))
                                            (if (gx#stx-pair? _tl2693826971_)
                                                (let ((_e2693926974_
                                                       (gx#syntax-e
                                                        _tl2693826971_)))
                                                  (let ((_hd2694026978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2693926974_)))
                                                        (_tl2694126981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2693926974_))))
                                                    (if (gx#stx-null?
                                                         _tl2694126981_)
                                                        ((lambda (_L26984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26986_
                          _L26987_)
                   (let ((__tmp31675
                          (let ((__tmp31676
                                 (let ((__tmp31695 (gx#datum->syntax '#f 'def))
                                       (__tmp31677
                                        (let ((__tmp31678
                                               (let ((__tmp31679
                                                      (let ((__tmp31694
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp31680
                                                             (let ((__tmp31689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp31693
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp31690
                                   (let ((__tmp31691
                                          (let ((__tmp31692
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L26987_ __tmp31692))))
                                     (declare (not safe))
                                     (cons _L26146_ __tmp31691))))
                              (declare (not safe))
                              (cons __tmp31693 __tmp31690)))
                           (__tmp31681
                            (let ((__tmp31682
                                   (let ((__tmp31688
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp31683
                                          (let ((__tmp31684
                                                 (let ((__tmp31685
                                                        (let ((__tmp31687
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp31686
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26987_ '()))))
                  (declare (not safe))
                  (cons __tmp31687 __tmp31686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31685 '()))))
                                            (declare (not safe))
                                            (cons _L25911_ __tmp31684))))
                                     (declare (not safe))
                                     (cons __tmp31688 __tmp31683))))
                              (declare (not safe))
                              (cons __tmp31682 '()))))
                       (declare (not safe))
                       (cons __tmp31689 __tmp31681))))
                (declare (not safe))
                (cons __tmp31694 __tmp31680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31679 '()))))
                                          (declare (not safe))
                                          (cons _L26986_ __tmp31678))))
                                   (declare (not safe))
                                   (cons __tmp31695 __tmp31677))))
                            (declare (not safe))
                            (_wrap25817_ __tmp31676)))
                         (__tmp31653
                          (let ((__tmp31654
                                 (let ((__tmp31655
                                        (let ((__tmp31674
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp31656
                                               (let ((__tmp31657
                                                      (let ((__tmp31658
                                                             (let ((__tmp31673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp31659
                            (let ((__tmp31668
                                   (let ((__tmp31672
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp31669
                                          (let ((__tmp31670
                                                 (let ((__tmp31671
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L26987_
                                                         __tmp31671))))
                                            (declare (not safe))
                                            (cons _L26146_ __tmp31670))))
                                     (declare (not safe))
                                     (cons __tmp31672 __tmp31669)))
                                  (__tmp31660
                                   (let ((__tmp31661
                                          (let ((__tmp31667
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp31662
                                                 (let ((__tmp31663
                                                        (let ((__tmp31664
                                                               (let ((__tmp31666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp31665
                              (let ()
                                (declare (not safe))
                                (cons _L26987_ '()))))
                         (declare (not safe))
                         (cons __tmp31666 __tmp31665))))
                  (declare (not safe))
                  (cons __tmp31664 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25911_
                                                         __tmp31663))))
                                            (declare (not safe))
                                            (cons __tmp31667 __tmp31662))))
                                     (declare (not safe))
                                     (cons __tmp31661 '()))))
                              (declare (not safe))
                              (cons __tmp31668 __tmp31660))))
                       (declare (not safe))
                       (cons __tmp31673 __tmp31659))))
                (declare (not safe))
                (cons __tmp31658 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26984_ __tmp31657))))
                                          (declare (not safe))
                                          (cons __tmp31674 __tmp31656))))
                                   (declare (not safe))
                                   (_wrap25817_ __tmp31655))))
                            (declare (not safe))
                            (cons __tmp31654 '()))))
                     (declare (not safe))
                     (cons __tmp31675 __tmp31653)))
                 _hd2694026978_
                 _hd2693726968_
                 _hd2693426958_)
                (let () (declare (not safe)) (_g2692826947_ _g2692926951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2692826947_
                                                   _g2692926951_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2692826947_ _g2692926951_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2692826947_ _g2692926951_))))))
                    (declare (not safe))
                    (_g2692727005_ _ref26925_)))
                _accessible-slots25966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2652226921_ __tmp31652))))
                                           _g2649626507_)))
                                       (__tmp31696
                                        (let ((__tmp31697
                                               (let ((__tmp31710
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp31698
                                                      (let ((__tmp31699
                                                             (let ((__tmp31700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp31709
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp31701
                                   (let ((__tmp31706
                                          (let ((__tmp31708
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp31707
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L26146_ '()))))
                                            (declare (not safe))
                                            (cons __tmp31708 __tmp31707)))
                                         (__tmp31702
                                          (let ((__tmp31703
                                                 (let ((__tmp31705
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp31704
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L25911_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp31705
                                                         __tmp31704))))
                                            (declare (not safe))
                                            (cons __tmp31703 '()))))
                                     (declare (not safe))
                                     (cons __tmp31706 __tmp31702))))
                              (declare (not safe))
                              (cons __tmp31709 __tmp31701))))
                       (declare (not safe))
                       (cons __tmp31700 '()))))
                (declare (not safe))
                (cons _L25908_ __tmp31699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31710
                                                       __tmp31698))))
                                          (declare (not safe))
                                          (_wrap25817_ __tmp31697))))
                                  (declare (not safe))
                                  (_g2649427009_ __tmp31696))))
                            _g2646826479_)))
                        (__tmp31711
                         (if (gx#stx-false? _L25909_)
                             (let ((__tmp31712 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp31712 '()))
                             (let ((__tmp31713
                                    (let ((__tmp31735
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp31714
                                           (let ((__tmp31715
                                                  (let ((__tmp31716
                                                         (let ((__tmp31734
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp31717
                        (let ((__tmp31731
                               (let ((__tmp31733
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp31732
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26146_ '()))))
                                 (declare (not safe))
                                 (cons __tmp31733 __tmp31732)))
                              (__tmp31718
                               (let ((__tmp31719
                                      (let ((__tmp31730
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp31720
                                             (let ((__tmp31729
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp31721
                                                    (let ((__tmp31722
                                                           (let ((__tmp31728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp31723
                          (let ((__tmp31727
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp31724
                                 (let ((__tmp31725
                                        (let ((__tmp31726
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp31726 '()))))
                                   (declare (not safe))
                                   (cons _L25911_ __tmp31725))))
                            (declare (not safe))
                            (cons __tmp31727 __tmp31724))))
                     (declare (not safe))
                     (cons __tmp31728 __tmp31723))))
              (declare (not safe))
              (cons __tmp31722 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp31729 __tmp31721))))
                                        (declare (not safe))
                                        (cons __tmp31730 __tmp31720))))
                                 (declare (not safe))
                                 (cons __tmp31719 '()))))
                          (declare (not safe))
                          (cons __tmp31731 __tmp31718))))
                   (declare (not safe))
                   (cons __tmp31734 __tmp31717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp31716 '()))))
                                             (declare (not safe))
                                             (cons _L25909_ __tmp31715))))
                                      (declare (not safe))
                                      (cons __tmp31735 __tmp31714))))
                               (declare (not safe))
                               (_wrap25817_ __tmp31713)))))
                   (declare (not safe))
                   (_g2646627013_ __tmp31711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2644026451_)))
                                                 (__tmp31736
                                                  (let ((__tmp31737
                                                         (let ((__tmp31754
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp31738
                        (let ((__tmp31739
                               (let ((__tmp31740
                                      (let ((__tmp31753
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp31741
                                             (let ((__tmp31743
                                                    (let ((__tmp31752
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp31744
                                                           (let ((__tmp31745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp31746
                                 (let ((__tmp31751
                                        (foldr (lambda (_g2702027023_
                                                        _g2702127026_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2702027023_
                                                         _g2702127026_)))
                                               '()
                                               _L26026_))
                                       (__tmp31747
                                        (let ((__tmp31748
                                               (let ((__tmp31749
                                                      (let ((__tmp31750
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L26258_ '()))))
                (declare (not safe))
                (cons _L26230_ __tmp31750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26202_ __tmp31749))))
                                          (declare (not safe))
                                          (cons _L26118_ __tmp31748))))
                                   (declare (not safe))
                                   (cons __tmp31751 __tmp31747))))
                            (declare (not safe))
                            (cons _L26174_ __tmp31746))))
                     (declare (not safe))
                     (cons _L26062_ __tmp31745))))
              (declare (not safe))
              (cons __tmp31752 __tmp31744)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp31742
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L26426_ '()))))
                                               (declare (not safe))
                                               (cons __tmp31743 __tmp31742))))
                                        (declare (not safe))
                                        (cons __tmp31753 __tmp31741))))
                                 (declare (not safe))
                                 (cons __tmp31740 '()))))
                          (declare (not safe))
                          (cons _L25911_ __tmp31739))))
                   (declare (not safe))
                   (cons __tmp31754 __tmp31738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap25817_ __tmp31737))))
                                            (declare (not safe))
                                            (_g2643827017_ __tmp31736))))
                                      _g2641226423_)))
                                  (__tmp31755
                                   (let ((__tmp31775
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp31756
                                          (let ((__tmp31772
                                                 (let ((__tmp31774
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp31773
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L26062_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp31774
                                                         __tmp31773)))
                                                (__tmp31757
                                                 (let ((__tmp31769
                                                        (let ((__tmp31771
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp31770
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26090_ '()))))
                  (declare (not safe))
                  (cons __tmp31771 __tmp31770)))
               (__tmp31758
                (let ((__tmp31759
                       (let ((__tmp31765
                              (let ((__tmp31768 (gx#datum->syntax '#f 'quote))
                                    (__tmp31766
                                     (let ((__tmp31767
                                            (foldr (lambda (_g2703227035_
                                                            _g2703327038_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2703227035_
                                                             _g2703327038_)))
                                                   '()
                                                   _L26026_)))
                                       (declare (not safe))
                                       (cons __tmp31767 '()))))
                                (declare (not safe))
                                (cons __tmp31768 __tmp31766)))
                             (__tmp31760
                              (let ((__tmp31761
                                     (let ((__tmp31762
                                            (let ((__tmp31764
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp31763
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L26118_ '()))))
                                              (declare (not safe))
                                              (cons __tmp31764 __tmp31763))))
                                       (declare (not safe))
                                       (cons __tmp31762 '()))))
                                (declare (not safe))
                                (cons _L26370_ __tmp31761))))
                         (declare (not safe))
                         (cons __tmp31765 __tmp31760))))
                  (declare (not safe))
                  (cons _L26398_ __tmp31759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31769
                                                         __tmp31758))))
                                            (declare (not safe))
                                            (cons __tmp31772 __tmp31757))))
                                     (declare (not safe))
                                     (cons __tmp31775 __tmp31756))))
                             (declare (not safe))
                             (_g2641027029_ __tmp31755))))
                       _g2638426395_)))
                   (__tmp31776
                    (let ((__tmp31777 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp31777 _L25910_))))
              (declare (not safe))
              (_g2638227041_ __tmp31776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2635626367_)))
                                            (__tmp31778
                                             (if (gx#stx-e _metaclass25969_)
                                                 (let* ((_g2704927057_
                                                         (lambda (_g2705027053_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2705027053_)))
                                                        (_g2704827076_
                                                         (lambda (_g2705027061_)
                                                           ((lambda (_L27064_)
                                                              (let ()
                                                                (let ((__tmp31787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp31779
                               (let ((__tmp31782
                                      (let ((__tmp31786
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp31783
                                             (let ((__tmp31784
                                                    (let ((__tmp31785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L27064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp31785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp31784))))
                                        (declare (not safe))
                                        (cons __tmp31786 __tmp31783)))
                                     (__tmp31780
                                      (let ((__tmp31781
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26342_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp31781))))
                                 (declare (not safe))
                                 (cons __tmp31782 __tmp31780))))
                          (declare (not safe))
                          (cons __tmp31787 __tmp31779))))
                    _g2705027061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2704827076_
                                                    _metaclass25969_))
                                                 _L26342_)))
                                       (declare (not safe))
                                       (_g2635427045_ __tmp31778))))
                                 _g2632826339_)))
                             (__tmp31788
                              (if _struct?25949_
                                  (let ((__tmp31795
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp31789
                                         (let ((__tmp31792
                                                (let ((__tmp31794
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp31793
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp31794
                                                        __tmp31793)))
                                               (__tmp31790
                                                (let ((__tmp31791
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26314_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp31791))))
                                           (declare (not safe))
                                           (cons __tmp31792 __tmp31790))))
                                    (declare (not safe))
                                    (cons __tmp31795 __tmp31789))
                                  _L26314_)))
                        (declare (not safe))
                        (_g2632627080_ __tmp31788))))
                  _g2630026311_)))
              (__tmp31796
               (if (gx#stx-e _L26230_)
                   (let ((__tmp31803 (gx#datum->syntax '#f '@list))
                         (__tmp31797
                          (let ((__tmp31800
                                 (let ((__tmp31802
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp31801
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp31802 __tmp31801)))
                                (__tmp31798
                                 (let ((__tmp31799
                                        (let ()
                                          (declare (not safe))
                                          (cons _L26286_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp31799))))
                            (declare (not safe))
                            (cons __tmp31800 __tmp31798))))
                     (declare (not safe))
                     (cons __tmp31803 __tmp31797))
                   _L26286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2629827084_ __tmp31796))))
                                           _g2627226283_)))
                                       (__tmp31804
                                        (let ((_$e27092_
                                               (gx#stx-getq
                                                'properties:
                                                _L25906_)))
                                          (if _$e27092_
                                              _$e27092_
                                              (let ((__tmp31805
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp31805 '()))))))
                                  (declare (not safe))
                                  (_g2627027088_ __tmp31804))))
                            _g2624426255_)))
                        (__tmp31806
                         (if (gx#stx-e _metaclass25969_)
                             (gx#core-quote-syntax _metaclass25969_)
                             '#f)))
                   (declare (not safe))
                   (_g2624227096_ __tmp31806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2621626227_)))
                                                 (__tmp31807
                                                  (gx#stx-getq
                                                   'final:
                                                   _L25906_)))
                                            (declare (not safe))
                                            (_g2621427100_ __tmp31807))))
                                      _g2618826199_))))
                             (declare (not safe))
                             (_g2618627104_ _struct?25949_))))
                       _g2616026171_)))
                   (__tmp31808 (gx#stx-map gx#core-quote-syntax _L25910_)))
              (declare (not safe))
              (_g2615827108_ __tmp31808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2613226143_)))
                                            (__tmp31809
                                             (gx#core-quote-syntax _L25911_)))
                                       (declare (not safe))
                                       (_g2613027112_ __tmp31809))))
                                 _g2610426115_)))
                             (__tmp31810 (gx#stx-getq 'constructor: _L25906_)))
                        (declare (not safe))
                        (_g2610227116_ __tmp31810))))
                  _g2607626087_)))
              (__tmp31811
               (let ((_$e27124_ (gx#stx-getq 'name: _L25906_)))
                 (if _$e27124_ _$e27124_ _L25911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2607427120_ __tmp31811))))
                                           _g2604826059_)))
                                       (__tmp31812
                                        (let ((_$e27132_
                                               (gx#stx-getq 'id: _L25906_)))
                                          (if _$e27132_
                                              _$e27132_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                                                 _L25911_))))))
                                  (declare (not safe))
                                  (_g2604627128_ __tmp31812))))
                            _slot2598326022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop2597826002_
                                                      _target2597525996_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2597225989_
                                                    _g2597325993_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2597225989_ _g2597325993_)))))
                                (__tmp31813
                                 (gx#stx-map _slot-name25819_ _slots25956_)))
                           (declare (not safe))
                           (_g2597127136_ __tmp31813))
                         (let ()
                           (declare (not safe))
                           (_g2582225849_ _g2582325853_))))
                   _tl2584325903_
                   _hd2584225900_
                   _hd2583925890_
                   _hd2583625880_
                   _hd2583325870_)))
              (let () (declare (not safe)) (_g2582225849_ _g2582325853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2582225849_
                                                 _g2582325853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2582225849_ _g2582325853_)))))
                              (let ()
                                (declare (not safe))
                                (_g2582225849_ _g2582325853_)))))
                      (let ()
                        (declare (not safe))
                        (_g2582225849_ _g2582325853_))))))
          (declare (not safe))
          (_g2582127140_ _stx25813_)))))
  (define |gerbil/core/mop$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx27252_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop$<MOP:1>[1]#generate-typedef| _stx27252_ '#t))))
  (define |gerbil/core/mop$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx27255_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop$<MOP:1>[1]#generate-typedef| _stx27255_ '#f)))))
