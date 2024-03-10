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
                                (let ((_e2715727176_
                                       (gx#syntax-e _g2715127173_)))
                                  (let ((_hd2715627180_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2715727176_)))
                                        (_tl2715527183_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2715727176_))))
                                    (if (gx#stx-pair? _tl2715527183_)
                                        (let ((_e2716027186_
                                               (gx#syntax-e _tl2715527183_)))
                                          (let ((_hd2715927190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2716027186_)))
                                                (_tl2715827193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2716027186_))))
                                            (if (gx#stx-pair? _tl2715827193_)
                                                (let ((_e2716327196_
                                                       (gx#syntax-e
                                                        _tl2715827193_)))
                                                  (let ((_hd2716227200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2716327196_)))
                                                        (_tl2716127203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2716327196_))))
                                                    (if (gx#stx-null?
                                                         _tl2716127203_)
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
                      (let ((_e2583125856_ (gx#syntax-e _g2582325853_)))
                        (let ((_hd2583025860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2583125856_)))
                              (_tl2582925863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2583125856_))))
                          (if (gx#stx-pair? _tl2582925863_)
                              (let ((_e2583425866_
                                     (gx#syntax-e _tl2582925863_)))
                                (let ((_hd2583325870_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2583425866_)))
                                      (_tl2583225873_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2583425866_))))
                                  (if (gx#stx-pair? _tl2583225873_)
                                      (let ((_e2583725876_
                                             (gx#syntax-e _tl2583225873_)))
                                        (let ((_hd2583625880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2583725876_)))
                                              (_tl2583525883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2583725876_))))
                                          (if (gx#stx-pair? _tl2583525883_)
                                              (let ((_e2584025886_
                                                     (gx#syntax-e
                                                      _tl2583525883_)))
                                                (let ((_hd2583925890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2584025886_)))
                                                      (_tl2583825893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2584025886_))))
                                                  (if (gx#stx-pair?
                                                       _tl2583825893_)
                                                      (let ((_e2584325896_
                                                             (gx#syntax-e
                                                              _tl2583825893_)))
                                                        (let ((_hd2584225900_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2584325896_)))
                      (_tl2584125903_
                       (let () (declare (not safe)) (##cdr _e2584325896_))))
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
                             (let ((__tmp31812
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd2598026016_
                                            _slot2598226009_))))
                               (declare (not safe))
                               (_loop2597826002_
                                _lp-tl2598126019_
                                __tmp31812))))
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
                                                             (let ((_g31592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2652426553_ '0)))
                       (begin
                         (let ((_g31593_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g31592_)
                                      (##vector-length _g31592_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g31593_ 2)))
                               (error "Context expects 2 values" _g31593_)))
                         (let ((_target2652726556_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31592_ 0)))
                               (_tl2652926559_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31592_ 1))))
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
                                                       (let ((_e2654026584_
                                                              (gx#syntax-e
                                                               _lp-hd2653226578_)))
                                                         (let ((_hd2653926588_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2654026584_)))
                       (_tl2653826591_
                        (let () (declare (not safe)) (##cdr _e2654026584_))))
                   (if (gx#stx-pair? _tl2653826591_)
                       (let ((_e2654326594_ (gx#syntax-e _tl2653826591_)))
                         (let ((_hd2654226598_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2654326594_)))
                               (_tl2654126601_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2654326594_))))
                           (if (gx#stx-null? _tl2654126601_)
                               (let ((__tmp31650
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654226598_
                                              _def-setf2653426569_)))
                                     (__tmp31649
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2653926588_
                                              _def-getf2653526571_))))
                                 (declare (not safe))
                                 (_loop2653026562_
                                  _lp-tl2653326581_
                                  __tmp31650
                                  __tmp31649))
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
                            (let ((_g31594_
                                   (gx#syntax-split-splice _g2663026659_ '0)))
                              (begin
                                (let ((_g31595_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g31594_)
                                             (##vector-length _g31594_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g31595_ 2)))
                                      (error "Context expects 2 values"
                                             _g31595_)))
                                (let ((_target2663326662_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31594_ 0)))
                                      (_tl2663526665_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31594_ 1))))
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
                      (let ((_e2664626690_ (gx#syntax-e _lp-hd2663826684_)))
                        (let ((_hd2664526694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2664626690_)))
                              (_tl2664426697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2664626690_))))
                          (if (gx#stx-pair? _tl2664426697_)
                              (let ((_e2664926700_
                                     (gx#syntax-e _tl2664426697_)))
                                (let ((_hd2664826704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2664926700_)))
                                      (_tl2664726707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2664926700_))))
                                  (if (gx#stx-null? _tl2664726707_)
                                      (let ((__tmp31603
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664826704_
                                                     _def-usetf2664026675_)))
                                            (__tmp31602
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664526694_
                                                     _def-ugetf2664126677_))))
                                        (declare (not safe))
                                        (_loop2663626668_
                                         _lp-tl2663926687_
                                         __tmp31603
                                         __tmp31602))
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
                       (let ((__tmp31596
                              (let ((__tmp31601 (gx#datum->syntax '#f 'begin))
                                    (__tmp31597
                                     (let ((__tmp31598
                                            (let ((__tmp31599
                                                   (let ((__tmp31600
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
                                                           __tmp31600))))
                                              (declare (not safe))
                                              (cons _L26510_ __tmp31599))))
                                       (declare (not safe))
                                       (cons _L26454_ __tmp31598))))
                                (declare (not safe))
                                (cons __tmp31601 __tmp31597))))
                         (declare (not safe))
                         (_wrap25817_ __tmp31596)))))
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
                     (__tmp31604
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
                                       (let ((_e2678326802_
                                              (gx#syntax-e _g2677726799_)))
                                         (let ((_hd2678226806_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2678326802_)))
                                               (_tl2678126809_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2678326802_))))
                                           (if (gx#stx-pair? _tl2678126809_)
                                               (let ((_e2678626812_
                                                      (gx#syntax-e
                                                       _tl2678126809_)))
                                                 (let ((_hd2678526816_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2678626812_)))
                                                       (_tl2678426819_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2678626812_))))
                                                   (if (gx#stx-pair?
                                                        _tl2678426819_)
                                                       (let ((_e2678926822_
                                                              (gx#syntax-e
                                                               _tl2678426819_)))
                                                         (let ((_hd2678826826_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2678926822_)))
                       (_tl2678726829_
                        (let () (declare (not safe)) (##cdr _e2678926822_))))
                   (if (gx#stx-null? _tl2678726829_)
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
                                        (let ((_e2685926875_
                                               (gx#syntax-e _g2685426872_)))
                                          (let ((_hd2685826879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2685926875_)))
                                                (_tl2685726882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2685926875_))))
                                            (if (gx#stx-pair? _tl2685726882_)
                                                (let ((_e2686226885_
                                                       (gx#syntax-e
                                                        _tl2685726882_)))
                                                  (let ((_hd2686126889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2686226885_)))
                                                        (_tl2686026892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2686226885_))))
                                                    (if (gx#stx-null?
                                                         _tl2686026892_)
                                                        ((lambda (_L26895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26897_)
                   (let ()
                     (let ((__tmp31627
                            (let ((__tmp31628
                                   (let ((__tmp31647
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp31629
                                          (let ((__tmp31630
                                                 (let ((__tmp31631
                                                        (let ((__tmp31646
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp31632
                                                               (let ((__tmp31641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp31645
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp31642
                                     (let ((__tmp31643
                                            (let ((__tmp31644
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L26835_ __tmp31644))))
                                       (declare (not safe))
                                       (cons _L26146_ __tmp31643))))
                                (declare (not safe))
                                (cons __tmp31645 __tmp31642)))
                             (__tmp31633
                              (let ((__tmp31634
                                     (let ((__tmp31640
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp31635
                                            (let ((__tmp31636
                                                   (let ((__tmp31637
                                                          (let ((__tmp31639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp31638
                         (let () (declare (not safe)) (cons _L26835_ '()))))
                    (declare (not safe))
                    (cons __tmp31639 __tmp31638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp31637 '()))))
                                              (declare (not safe))
                                              (cons _L25911_ __tmp31636))))
                                       (declare (not safe))
                                       (cons __tmp31640 __tmp31635))))
                                (declare (not safe))
                                (cons __tmp31634 '()))))
                         (declare (not safe))
                         (cons __tmp31641 __tmp31633))))
                  (declare (not safe))
                  (cons __tmp31646 __tmp31632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31631 '()))))
                                            (declare (not safe))
                                            (cons _L26897_ __tmp31630))))
                                     (declare (not safe))
                                     (cons __tmp31647 __tmp31629))))
                              (declare (not safe))
                              (_wrap25817_ __tmp31628)))
                           (__tmp31605
                            (let ((__tmp31606
                                   (let ((__tmp31607
                                          (let ((__tmp31626
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp31608
                                                 (let ((__tmp31609
                                                        (let ((__tmp31610
                                                               (let ((__tmp31625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp31611
                              (let ((__tmp31620
                                     (let ((__tmp31624
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp31621
                                            (let ((__tmp31622
                                                   (let ((__tmp31623
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L26835_
                                                           __tmp31623))))
                                              (declare (not safe))
                                              (cons _L26146_ __tmp31622))))
                                       (declare (not safe))
                                       (cons __tmp31624 __tmp31621)))
                                    (__tmp31612
                                     (let ((__tmp31613
                                            (let ((__tmp31619
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp31614
                                                   (let ((__tmp31615
                                                          (let ((__tmp31616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp31618 (gx#datum->syntax '#f 'quote))
                               (__tmp31617
                                (let ()
                                  (declare (not safe))
                                  (cons _L26835_ '()))))
                           (declare (not safe))
                           (cons __tmp31618 __tmp31617))))
                    (declare (not safe))
                    (cons __tmp31616 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L25911_
                                                           __tmp31615))))
                                              (declare (not safe))
                                              (cons __tmp31619 __tmp31614))))
                                       (declare (not safe))
                                       (cons __tmp31613 '()))))
                                (declare (not safe))
                                (cons __tmp31620 __tmp31612))))
                         (declare (not safe))
                         (cons __tmp31625 __tmp31611))))
                  (declare (not safe))
                  (cons __tmp31610 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L26895_
                                                         __tmp31609))))
                                            (declare (not safe))
                                            (cons __tmp31626 __tmp31608))))
                                     (declare (not safe))
                                     (_wrap25817_ __tmp31607))))
                              (declare (not safe))
                              (cons __tmp31606 '()))))
                       (declare (not safe))
                       (cons __tmp31627 __tmp31605))))
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
                                 (__tmp31648
                                  (list (gx#stx-identifier
                                         _L26834_
                                         '"&"
                                         _L26834_)
                                        (gx#stx-identifier
                                         _L26832_
                                         '"&"
                                         _L26832_))))
                            (declare (not safe))
                            (_g2685226913_ __tmp31648)))
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
                (_g2662826769_ __tmp31604))))
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
              (__tmp31651
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
                                (let ((_e2693526954_
                                       (gx#syntax-e _g2692926951_)))
                                  (let ((_hd2693426958_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2693526954_)))
                                        (_tl2693326961_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2693526954_))))
                                    (if (gx#stx-pair? _tl2693326961_)
                                        (let ((_e2693826964_
                                               (gx#syntax-e _tl2693326961_)))
                                          (let ((_hd2693726968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2693826964_)))
                                                (_tl2693626971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2693826964_))))
                                            (if (gx#stx-pair? _tl2693626971_)
                                                (let ((_e2694126974_
                                                       (gx#syntax-e
                                                        _tl2693626971_)))
                                                  (let ((_hd2694026978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2694126974_)))
                                                        (_tl2693926981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2694126974_))))
                                                    (if (gx#stx-null?
                                                         _tl2693926981_)
                                                        ((lambda (_L26984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26986_
                          _L26987_)
                   (let ((__tmp31674
                          (let ((__tmp31675
                                 (let ((__tmp31694 (gx#datum->syntax '#f 'def))
                                       (__tmp31676
                                        (let ((__tmp31677
                                               (let ((__tmp31678
                                                      (let ((__tmp31693
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp31679
                                                             (let ((__tmp31688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp31692
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp31689
                                   (let ((__tmp31690
                                          (let ((__tmp31691
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L26987_ __tmp31691))))
                                     (declare (not safe))
                                     (cons _L26146_ __tmp31690))))
                              (declare (not safe))
                              (cons __tmp31692 __tmp31689)))
                           (__tmp31680
                            (let ((__tmp31681
                                   (let ((__tmp31687
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp31682
                                          (let ((__tmp31683
                                                 (let ((__tmp31684
                                                        (let ((__tmp31686
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp31685
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26987_ '()))))
                  (declare (not safe))
                  (cons __tmp31686 __tmp31685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31684 '()))))
                                            (declare (not safe))
                                            (cons _L25911_ __tmp31683))))
                                     (declare (not safe))
                                     (cons __tmp31687 __tmp31682))))
                              (declare (not safe))
                              (cons __tmp31681 '()))))
                       (declare (not safe))
                       (cons __tmp31688 __tmp31680))))
                (declare (not safe))
                (cons __tmp31693 __tmp31679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31678 '()))))
                                          (declare (not safe))
                                          (cons _L26986_ __tmp31677))))
                                   (declare (not safe))
                                   (cons __tmp31694 __tmp31676))))
                            (declare (not safe))
                            (_wrap25817_ __tmp31675)))
                         (__tmp31652
                          (let ((__tmp31653
                                 (let ((__tmp31654
                                        (let ((__tmp31673
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp31655
                                               (let ((__tmp31656
                                                      (let ((__tmp31657
                                                             (let ((__tmp31672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp31658
                            (let ((__tmp31667
                                   (let ((__tmp31671
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp31668
                                          (let ((__tmp31669
                                                 (let ((__tmp31670
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L26987_
                                                         __tmp31670))))
                                            (declare (not safe))
                                            (cons _L26146_ __tmp31669))))
                                     (declare (not safe))
                                     (cons __tmp31671 __tmp31668)))
                                  (__tmp31659
                                   (let ((__tmp31660
                                          (let ((__tmp31666
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp31661
                                                 (let ((__tmp31662
                                                        (let ((__tmp31663
                                                               (let ((__tmp31665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp31664
                              (let ()
                                (declare (not safe))
                                (cons _L26987_ '()))))
                         (declare (not safe))
                         (cons __tmp31665 __tmp31664))))
                  (declare (not safe))
                  (cons __tmp31663 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25911_
                                                         __tmp31662))))
                                            (declare (not safe))
                                            (cons __tmp31666 __tmp31661))))
                                     (declare (not safe))
                                     (cons __tmp31660 '()))))
                              (declare (not safe))
                              (cons __tmp31667 __tmp31659))))
                       (declare (not safe))
                       (cons __tmp31672 __tmp31658))))
                (declare (not safe))
                (cons __tmp31657 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26984_ __tmp31656))))
                                          (declare (not safe))
                                          (cons __tmp31673 __tmp31655))))
                                   (declare (not safe))
                                   (_wrap25817_ __tmp31654))))
                            (declare (not safe))
                            (cons __tmp31653 '()))))
                     (declare (not safe))
                     (cons __tmp31674 __tmp31652)))
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
                                                 (_g2652226921_ __tmp31651))))
                                           _g2649626507_)))
                                       (__tmp31695
                                        (let ((__tmp31696
                                               (let ((__tmp31709
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp31697
                                                      (let ((__tmp31698
                                                             (let ((__tmp31699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp31708
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp31700
                                   (let ((__tmp31705
                                          (let ((__tmp31707
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp31706
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L26146_ '()))))
                                            (declare (not safe))
                                            (cons __tmp31707 __tmp31706)))
                                         (__tmp31701
                                          (let ((__tmp31702
                                                 (let ((__tmp31704
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp31703
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L25911_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp31704
                                                         __tmp31703))))
                                            (declare (not safe))
                                            (cons __tmp31702 '()))))
                                     (declare (not safe))
                                     (cons __tmp31705 __tmp31701))))
                              (declare (not safe))
                              (cons __tmp31708 __tmp31700))))
                       (declare (not safe))
                       (cons __tmp31699 '()))))
                (declare (not safe))
                (cons _L25908_ __tmp31698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31709
                                                       __tmp31697))))
                                          (declare (not safe))
                                          (_wrap25817_ __tmp31696))))
                                  (declare (not safe))
                                  (_g2649427009_ __tmp31695))))
                            _g2646826479_)))
                        (__tmp31710
                         (if (gx#stx-false? _L25909_)
                             (let ((__tmp31734 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp31734 '()))
                             (let ((__tmp31711
                                    (let ((__tmp31733
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp31712
                                           (let ((__tmp31713
                                                  (let ((__tmp31714
                                                         (let ((__tmp31732
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp31715
                        (let ((__tmp31729
                               (let ((__tmp31731
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp31730
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26146_ '()))))
                                 (declare (not safe))
                                 (cons __tmp31731 __tmp31730)))
                              (__tmp31716
                               (let ((__tmp31717
                                      (let ((__tmp31728
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp31718
                                             (let ((__tmp31727
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp31719
                                                    (let ((__tmp31720
                                                           (let ((__tmp31726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp31721
                          (let ((__tmp31725
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp31722
                                 (let ((__tmp31723
                                        (let ((__tmp31724
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp31724 '()))))
                                   (declare (not safe))
                                   (cons _L25911_ __tmp31723))))
                            (declare (not safe))
                            (cons __tmp31725 __tmp31722))))
                     (declare (not safe))
                     (cons __tmp31726 __tmp31721))))
              (declare (not safe))
              (cons __tmp31720 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp31727 __tmp31719))))
                                        (declare (not safe))
                                        (cons __tmp31728 __tmp31718))))
                                 (declare (not safe))
                                 (cons __tmp31717 '()))))
                          (declare (not safe))
                          (cons __tmp31729 __tmp31716))))
                   (declare (not safe))
                   (cons __tmp31732 __tmp31715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp31714 '()))))
                                             (declare (not safe))
                                             (cons _L25909_ __tmp31713))))
                                      (declare (not safe))
                                      (cons __tmp31733 __tmp31712))))
                               (declare (not safe))
                               (_wrap25817_ __tmp31711)))))
                   (declare (not safe))
                   (_g2646627013_ __tmp31710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2644026451_)))
                                                 (__tmp31735
                                                  (let ((__tmp31736
                                                         (let ((__tmp31753
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp31737
                        (let ((__tmp31738
                               (let ((__tmp31739
                                      (let ((__tmp31752
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp31740
                                             (let ((__tmp31742
                                                    (let ((__tmp31751
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp31743
                                                           (let ((__tmp31744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp31745
                                 (let ((__tmp31750
                                        (foldr (lambda (_g2702027023_
                                                        _g2702127026_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2702027023_
                                                         _g2702127026_)))
                                               '()
                                               _L26026_))
                                       (__tmp31746
                                        (let ((__tmp31747
                                               (let ((__tmp31748
                                                      (let ((__tmp31749
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L26258_ '()))))
                (declare (not safe))
                (cons _L26230_ __tmp31749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26202_ __tmp31748))))
                                          (declare (not safe))
                                          (cons _L26118_ __tmp31747))))
                                   (declare (not safe))
                                   (cons __tmp31750 __tmp31746))))
                            (declare (not safe))
                            (cons _L26174_ __tmp31745))))
                     (declare (not safe))
                     (cons _L26062_ __tmp31744))))
              (declare (not safe))
              (cons __tmp31751 __tmp31743)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp31741
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L26426_ '()))))
                                               (declare (not safe))
                                               (cons __tmp31742 __tmp31741))))
                                        (declare (not safe))
                                        (cons __tmp31752 __tmp31740))))
                                 (declare (not safe))
                                 (cons __tmp31739 '()))))
                          (declare (not safe))
                          (cons _L25911_ __tmp31738))))
                   (declare (not safe))
                   (cons __tmp31753 __tmp31737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap25817_ __tmp31736))))
                                            (declare (not safe))
                                            (_g2643827017_ __tmp31735))))
                                      _g2641226423_)))
                                  (__tmp31754
                                   (let ((__tmp31774
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp31755
                                          (let ((__tmp31771
                                                 (let ((__tmp31773
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp31772
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L26062_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp31773
                                                         __tmp31772)))
                                                (__tmp31756
                                                 (let ((__tmp31768
                                                        (let ((__tmp31770
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp31769
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26090_ '()))))
                  (declare (not safe))
                  (cons __tmp31770 __tmp31769)))
               (__tmp31757
                (let ((__tmp31758
                       (let ((__tmp31764
                              (let ((__tmp31767 (gx#datum->syntax '#f 'quote))
                                    (__tmp31765
                                     (let ((__tmp31766
                                            (foldr (lambda (_g2703227035_
                                                            _g2703327038_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2703227035_
                                                             _g2703327038_)))
                                                   '()
                                                   _L26026_)))
                                       (declare (not safe))
                                       (cons __tmp31766 '()))))
                                (declare (not safe))
                                (cons __tmp31767 __tmp31765)))
                             (__tmp31759
                              (let ((__tmp31760
                                     (let ((__tmp31761
                                            (let ((__tmp31763
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp31762
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L26118_ '()))))
                                              (declare (not safe))
                                              (cons __tmp31763 __tmp31762))))
                                       (declare (not safe))
                                       (cons __tmp31761 '()))))
                                (declare (not safe))
                                (cons _L26370_ __tmp31760))))
                         (declare (not safe))
                         (cons __tmp31764 __tmp31759))))
                  (declare (not safe))
                  (cons _L26398_ __tmp31758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31768
                                                         __tmp31757))))
                                            (declare (not safe))
                                            (cons __tmp31771 __tmp31756))))
                                     (declare (not safe))
                                     (cons __tmp31774 __tmp31755))))
                             (declare (not safe))
                             (_g2641027029_ __tmp31754))))
                       _g2638426395_)))
                   (__tmp31775
                    (let ((__tmp31776 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp31776 _L25910_))))
              (declare (not safe))
              (_g2638227041_ __tmp31775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2635626367_)))
                                            (__tmp31777
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
                                                                (let ((__tmp31786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp31778
                               (let ((__tmp31781
                                      (let ((__tmp31785
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp31782
                                             (let ((__tmp31783
                                                    (let ((__tmp31784
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L27064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp31784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp31783))))
                                        (declare (not safe))
                                        (cons __tmp31785 __tmp31782)))
                                     (__tmp31779
                                      (let ((__tmp31780
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26342_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp31780))))
                                 (declare (not safe))
                                 (cons __tmp31781 __tmp31779))))
                          (declare (not safe))
                          (cons __tmp31786 __tmp31778))))
                    _g2705027061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2704827076_
                                                    _metaclass25969_))
                                                 _L26342_)))
                                       (declare (not safe))
                                       (_g2635427045_ __tmp31777))))
                                 _g2632826339_)))
                             (__tmp31787
                              (if _struct?25949_
                                  (let ((__tmp31794
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp31788
                                         (let ((__tmp31791
                                                (let ((__tmp31793
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp31792
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp31793
                                                        __tmp31792)))
                                               (__tmp31789
                                                (let ((__tmp31790
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26314_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp31790))))
                                           (declare (not safe))
                                           (cons __tmp31791 __tmp31789))))
                                    (declare (not safe))
                                    (cons __tmp31794 __tmp31788))
                                  _L26314_)))
                        (declare (not safe))
                        (_g2632627080_ __tmp31787))))
                  _g2630026311_)))
              (__tmp31795
               (if (gx#stx-e _L26230_)
                   (let ((__tmp31802 (gx#datum->syntax '#f '@list))
                         (__tmp31796
                          (let ((__tmp31799
                                 (let ((__tmp31801
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp31800
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp31801 __tmp31800)))
                                (__tmp31797
                                 (let ((__tmp31798
                                        (let ()
                                          (declare (not safe))
                                          (cons _L26286_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp31798))))
                            (declare (not safe))
                            (cons __tmp31799 __tmp31797))))
                     (declare (not safe))
                     (cons __tmp31802 __tmp31796))
                   _L26286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2629827084_ __tmp31795))))
                                           _g2627226283_)))
                                       (__tmp31803
                                        (let ((_$e27092_
                                               (gx#stx-getq
                                                'properties:
                                                _L25906_)))
                                          (if _$e27092_
                                              _$e27092_
                                              (let ((__tmp31804
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp31804 '()))))))
                                  (declare (not safe))
                                  (_g2627027088_ __tmp31803))))
                            _g2624426255_)))
                        (__tmp31805
                         (if (gx#stx-e _metaclass25969_)
                             (gx#core-quote-syntax _metaclass25969_)
                             '#f)))
                   (declare (not safe))
                   (_g2624227096_ __tmp31805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2621626227_)))
                                                 (__tmp31806
                                                  (gx#stx-getq
                                                   'final:
                                                   _L25906_)))
                                            (declare (not safe))
                                            (_g2621427100_ __tmp31806))))
                                      _g2618826199_))))
                             (declare (not safe))
                             (_g2618627104_ _struct?25949_))))
                       _g2616026171_)))
                   (__tmp31807 (gx#stx-map gx#core-quote-syntax _L25910_)))
              (declare (not safe))
              (_g2615827108_ __tmp31807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2613226143_)))
                                            (__tmp31808
                                             (gx#core-quote-syntax _L25911_)))
                                       (declare (not safe))
                                       (_g2613027112_ __tmp31808))))
                                 _g2610426115_)))
                             (__tmp31809 (gx#stx-getq 'constructor: _L25906_)))
                        (declare (not safe))
                        (_g2610227116_ __tmp31809))))
                  _g2607626087_)))
              (__tmp31810
               (let ((_$e27124_ (gx#stx-getq 'name: _L25906_)))
                 (if _$e27124_ _$e27124_ _L25911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2607427120_ __tmp31810))))
                                           _g2604826059_)))
                                       (__tmp31811
                                        (let ((_$e27132_
                                               (gx#stx-getq 'id: _L25906_)))
                                          (if _$e27132_
                                              _$e27132_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                                                 _L25911_))))))
                                  (declare (not safe))
                                  (_g2604627128_ __tmp31811))))
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
                   _tl2584125903_
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
