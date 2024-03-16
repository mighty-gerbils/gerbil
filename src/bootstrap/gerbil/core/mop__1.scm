(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop$<MOP:1>[1]#module-type-id|
    (lambda (_type-t27238_)
      (let ((_$e27241_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e27241_
            ((lambda (_ns27245_)
               (gx#stx-identifier
                _type-t27238_
                _ns27245_
                '"#"
                _type-t27238_
                '"::t"))
             _$e27241_)
            (let ((_mid27248_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t27238_
               _mid27248_
               '"#"
               _type-t27238_
               '"::t"))))))
  (define |gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t27235_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop$<MOP:1>[1]#module-type-id| _type-t27235_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t27235_)) '"::t"))))
  (define |gerbil/core/mop$<MOP:1>[1]#generate-typedef|
    (lambda (_stx25815_ _struct?25817_)
      (letrec ((_wrap25819_
                (lambda (_e-stx27232_)
                  (gx#stx-wrap-source
                   _e-stx27232_
                   (gx#stx-source _stx25815_))))
               (_slot-name25821_
                (lambda (_slot-spec27149_)
                  (let* ((_g2715227171_
                          (lambda (_g2715327167_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2715327167_)))
                         (_g2715127228_
                          (lambda (_g2715327175_)
                            (if (gx#stx-pair? _g2715327175_)
                                (let ((_e2715927178_
                                       (gx#syntax-e _g2715327175_)))
                                  (let ((_hd2715827182_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2715927178_)))
                                        (_tl2715727185_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2715927178_))))
                                    (if (gx#stx-pair? _tl2715727185_)
                                        (let ((_e2716227188_
                                               (gx#syntax-e _tl2715727185_)))
                                          (let ((_hd2716127192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2716227188_)))
                                                (_tl2716027195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2716227188_))))
                                            (if (gx#stx-pair? _tl2716027195_)
                                                (let ((_e2716527198_
                                                       (gx#syntax-e
                                                        _tl2716027195_)))
                                                  (let ((_hd2716427202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2716527198_)))
                                                        (_tl2716327205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2716527198_))))
                                                    (if (gx#stx-null?
                                                         _tl2716327205_)
                                                        ((lambda (_L27208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27210_
                          _L27211_)
                   _L27211_)
                 _hd2716427202_
                 _hd2716127192_
                 _hd2715827182_)
                (let () (declare (not safe)) (_g2715227171_ _g2715327175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2715227171_
                                                   _g2715327175_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2715227171_ _g2715327175_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2715227171_ _g2715327175_))))))
                    (declare (not safe))
                    (_g2715127228_ _slot-spec27149_))))
               (_class-opt?25822_
                (lambda (_key27146_)
                  (memq (gx#stx-e _key27146_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_g2582425851_
                (lambda (_g2582525847_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2582525847_)))
               (_g2582327142_
                (lambda (_g2582525855_)
                  (if (gx#stx-pair? _g2582525855_)
                      (let ((_e2583325858_ (gx#syntax-e _g2582525855_)))
                        (let ((_hd2583225862_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2583325858_)))
                              (_tl2583125865_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2583325858_))))
                          (if (gx#stx-pair? _tl2583125865_)
                              (let ((_e2583625868_
                                     (gx#syntax-e _tl2583125865_)))
                                (let ((_hd2583525872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2583625868_)))
                                      (_tl2583425875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2583625868_))))
                                  (if (gx#stx-pair? _tl2583425875_)
                                      (let ((_e2583925878_
                                             (gx#syntax-e _tl2583425875_)))
                                        (let ((_hd2583825882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2583925878_)))
                                              (_tl2583725885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2583925878_))))
                                          (if (gx#stx-pair? _tl2583725885_)
                                              (let ((_e2584225888_
                                                     (gx#syntax-e
                                                      _tl2583725885_)))
                                                (let ((_hd2584125892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2584225888_)))
                                                      (_tl2584025895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2584225888_))))
                                                  (if (gx#stx-pair?
                                                       _tl2584025895_)
                                                      (let ((_e2584525898_
                                                             (gx#syntax-e
                                                              _tl2584025895_)))
                                                        (let ((_hd2584425902_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2584525898_)))
                      (_tl2584325905_
                       (let () (declare (not safe)) (##cdr _e2584525898_))))
                  ((lambda (_L25908_ _L25910_ _L25911_ _L25912_ _L25913_)
                     (if (and (gx#identifier? _L25913_)
                              (gx#identifier-list? _L25912_)
                              (or (gx#identifier? _L25911_)
                                  (gx#stx-false? _L25911_))
                              (gx#identifier? _L25910_)
                              (gx#stx-plist? _L25908_ _class-opt?25822_))
                         (let* ((_struct?25951_
                                 (let ((_$e25943_ _struct?25817_))
                                   (if _$e25943_
                                       _$e25943_
                                       (let ((_$e25947_
                                              (gx#stx-getq 'struct: _L25908_)))
                                         (if _$e25947_
                                             (gx#stx-e _$e25947_)
                                             '#f)))))
                                (_slots25958_
                                 (let ((_$e25954_
                                        (gx#stx-getq 'slots: _L25908_)))
                                   (if _$e25954_ _$e25954_ '())))
                                (_mixin-slots25965_
                                 (let ((_$e25961_
                                        (gx#stx-getq 'mixin: _L25908_)))
                                   (if _$e25961_ _$e25961_ '())))
                                (_accessible-slots25968_
                                 (append (gx#syntax->list _slots25958_)
                                         (gx#syntax->list _mixin-slots25965_)))
                                (_metaclass25971_
                                 (gx#stx-getq 'metaclass: _L25908_))
                                (_g2597425991_
                                 (lambda (_g2597525987_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2597525987_)))
                                (_g2597327138_
                                 (lambda (_g2597525995_)
                                   (if (gx#stx-pair/null? _g2597525995_)
                                       (let ((_g31903_
                                              (gx#syntax-split-splice
                                               _g2597525995_
                                               '0)))
                                         (begin
                                           (let ((_g31904_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g31903_)
                                                        (##vector-length
                                                         _g31903_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g31904_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g31904_)))
                                           (let ((_target2597725998_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g31903_ 0)))
                                                 (_tl2597926001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g31903_
                                                     1))))
                                             (if (gx#stx-null? _tl2597926001_)
                                                 (letrec ((_loop2598026004_
                                                           (lambda (_hd2597826008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot2598426011_)
                     (if (gx#stx-pair? _hd2597826008_)
                         (let ((_e2598126014_ (gx#syntax-e _hd2597826008_)))
                           (let ((_lp-hd2598226018_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2598126014_)))
                                 (_lp-tl2598326021_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2598126014_))))
                             (let ((__tmp32125
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd2598226018_
                                            _slot2598426011_))))
                               (declare (not safe))
                               (_loop2598026004_
                                _lp-tl2598326021_
                                __tmp32125))))
                         (let ((_slot2598526024_ (reverse _slot2598426011_)))
                           ((lambda (_L26028_)
                              (let ()
                                (let* ((_g2604926057_
                                        (lambda (_g2605026053_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2605026053_)))
                                       (_g2604827130_
                                        (lambda (_g2605026061_)
                                          ((lambda (_L26064_)
                                             (let ()
                                               (let* ((_g2607726085_
                                                       (lambda (_g2607826081_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2607826081_)))
                                                      (_g2607627122_
                                                       (lambda (_g2607826089_)
                                                         ((lambda (_L26092_)
                                                            (let ()
                                                              (let* ((_g2610526113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2610626109_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2610626109_)))
                             (_g2610427118_
                              (lambda (_g2610626117_)
                                ((lambda (_L26120_)
                                   (let ()
                                     (let* ((_g2613326141_
                                             (lambda (_g2613426137_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2613426137_)))
                                            (_g2613227114_
                                             (lambda (_g2613426145_)
                                               ((lambda (_L26148_)
                                                  (let ()
                                                    (let* ((_g2616126169_
                                                            (lambda (_g2616226165_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2616226165_)))
                                                           (_g2616027110_
                                                            (lambda (_g2616226173_)
                                                              ((lambda (_L26176_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2618926197_
                                   (lambda (_g2619026193_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2619026193_)))
                                  (_g2618827106_
                                   (lambda (_g2619026201_)
                                     ((lambda (_L26204_)
                                        (let ()
                                          (let* ((_g2621726225_
                                                  (lambda (_g2621826221_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2621826221_)))
                                                 (_g2621627102_
                                                  (lambda (_g2621826229_)
                                                    ((lambda (_L26232_)
                                                       (let ()
                                                         (let* ((_g2624526253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2624626249_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2624626249_)))
                        (_g2624427098_
                         (lambda (_g2624626257_)
                           ((lambda (_L26260_)
                              (let ()
                                (let* ((_g2627326281_
                                        (lambda (_g2627426277_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2627426277_)))
                                       (_g2627227090_
                                        (lambda (_g2627426285_)
                                          ((lambda (_L26288_)
                                             (let ()
                                               (let* ((_g2630126309_
                                                       (lambda (_g2630226305_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2630226305_)))
                                                      (_g2630027086_
                                                       (lambda (_g2630226313_)
                                                         ((lambda (_L26316_)
                                                            (let ()
                                                              (let* ((_g2632926337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2633026333_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2633026333_)))
                             (_g2632827082_
                              (lambda (_g2633026341_)
                                ((lambda (_L26344_)
                                   (let ()
                                     (let* ((_g2635726365_
                                             (lambda (_g2635826361_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2635826361_)))
                                            (_g2635627047_
                                             (lambda (_g2635826369_)
                                               ((lambda (_L26372_)
                                                  (let ()
                                                    (let* ((_g2638526393_
                                                            (lambda (_g2638626389_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2638626389_)))
                                                           (_g2638427043_
                                                            (lambda (_g2638626397_)
                                                              ((lambda (_L26400_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2641326421_
                                   (lambda (_g2641426417_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2641426417_)))
                                  (_g2641227031_
                                   (lambda (_g2641426425_)
                                     ((lambda (_L26428_)
                                        (let ()
                                          (let* ((_g2644126449_
                                                  (lambda (_g2644226445_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2644226445_)))
                                                 (_g2644027019_
                                                  (lambda (_g2644226453_)
                                                    ((lambda (_L26456_)
                                                       (let ()
                                                         (let* ((_g2646926477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2647026473_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2647026473_)))
                        (_g2646827015_
                         (lambda (_g2647026481_)
                           ((lambda (_L26484_)
                              (let ()
                                (let* ((_g2649726505_
                                        (lambda (_g2649826501_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2649826501_)))
                                       (_g2649627011_
                                        (lambda (_g2649826509_)
                                          ((lambda (_L26512_)
                                             (let ()
                                               (let* ((_g2652526551_
                                                       (lambda (_g2652626547_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2652626547_)))
                                                      (_g2652426923_
                                                       (lambda (_g2652626555_)
                                                         (if (gx#stx-pair/null?
                                                              _g2652626555_)
                                                             (let ((_g31905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2652626555_ '0)))
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
                               (error "Context expects 2 values" _g31906_)))
                         (let ((_target2652926558_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31905_ 0)))
                               (_tl2653126561_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g31905_ 1))))
                           (if (gx#stx-null? _tl2653126561_)
                               (letrec ((_loop2653226564_
                                         (lambda (_hd2653026568_
                                                  _def-setf2653626571_
                                                  _def-getf2653726573_)
                                           (if (gx#stx-pair? _hd2653026568_)
                                               (let ((_e2653326576_
                                                      (gx#syntax-e
                                                       _hd2653026568_)))
                                                 (let ((_lp-hd2653426580_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2653326576_)))
                                                       (_lp-tl2653526583_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2653326576_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd2653426580_)
                                                       (let ((_e2654226586_
                                                              (gx#syntax-e
                                                               _lp-hd2653426580_)))
                                                         (let ((_hd2654126590_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2654226586_)))
                       (_tl2654026593_
                        (let () (declare (not safe)) (##cdr _e2654226586_))))
                   (if (gx#stx-pair? _tl2654026593_)
                       (let ((_e2654526596_ (gx#syntax-e _tl2654026593_)))
                         (let ((_hd2654426600_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2654526596_)))
                               (_tl2654326603_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2654526596_))))
                           (if (gx#stx-null? _tl2654326603_)
                               (let ((__tmp31963
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654426600_
                                              _def-setf2653626571_)))
                                     (__tmp31962
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2654126590_
                                              _def-getf2653726573_))))
                                 (declare (not safe))
                                 (_loop2653226564_
                                  _lp-tl2653526583_
                                  __tmp31963
                                  __tmp31962))
                               (let ()
                                 (declare (not safe))
                                 (_g2652526551_ _g2652626555_)))))
                       (let ()
                         (declare (not safe))
                         (_g2652526551_ _g2652626555_)))))
               (let () (declare (not safe)) (_g2652526551_ _g2652626555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf2653826606_
                                                      (reverse _def-setf2653626571_))
                                                     (_def-getf2653926609_
                                                      (reverse _def-getf2653726573_)))
                                                 ((lambda (_L26612_ _L26614_)
                                                    (let ()
                                                      (let* ((_g2663126657_
                                                              (lambda (_g2663226653_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2663226653_)))
                     (_g2663026771_
                      (lambda (_g2663226661_)
                        (if (gx#stx-pair/null? _g2663226661_)
                            (let ((_g31907_
                                   (gx#syntax-split-splice _g2663226661_ '0)))
                              (begin
                                (let ((_g31908_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g31907_)
                                             (##vector-length _g31907_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g31908_ 2)))
                                      (error "Context expects 2 values"
                                             _g31908_)))
                                (let ((_target2663526664_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31907_ 0)))
                                      (_tl2663726667_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g31907_ 1))))
                                  (if (gx#stx-null? _tl2663726667_)
                                      (letrec ((_loop2663826670_
                                                (lambda (_hd2663626674_
                                                         _def-usetf2664226677_
                                                         _def-ugetf2664326679_)
                                                  (if (gx#stx-pair?
                                                       _hd2663626674_)
                                                      (let ((_e2663926682_
                                                             (gx#syntax-e
                                                              _hd2663626674_)))
                                                        (let ((_lp-hd2664026686_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2663926682_)))
                      (_lp-tl2664126689_
                       (let () (declare (not safe)) (##cdr _e2663926682_))))
                  (if (gx#stx-pair? _lp-hd2664026686_)
                      (let ((_e2664826692_ (gx#syntax-e _lp-hd2664026686_)))
                        (let ((_hd2664726696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2664826692_)))
                              (_tl2664626699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2664826692_))))
                          (if (gx#stx-pair? _tl2664626699_)
                              (let ((_e2665126702_
                                     (gx#syntax-e _tl2664626699_)))
                                (let ((_hd2665026706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2665126702_)))
                                      (_tl2664926709_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2665126702_))))
                                  (if (gx#stx-null? _tl2664926709_)
                                      (let ((__tmp31916
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2665026706_
                                                     _def-usetf2664226677_)))
                                            (__tmp31915
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2664726696_
                                                     _def-ugetf2664326679_))))
                                        (declare (not safe))
                                        (_loop2663826670_
                                         _lp-tl2664126689_
                                         __tmp31916
                                         __tmp31915))
                                      (let ()
                                        (declare (not safe))
                                        (_g2663126657_ _g2663226661_)))))
                              (let ()
                                (declare (not safe))
                                (_g2663126657_ _g2663226661_)))))
                      (let ()
                        (declare (not safe))
                        (_g2663126657_ _g2663226661_)))))
              (let ((_def-usetf2664426712_ (reverse _def-usetf2664226677_))
                    (_def-ugetf2664526715_ (reverse _def-ugetf2664326679_)))
                ((lambda (_L26718_ _L26720_)
                   (let ()
                     (let ()
                       (let ((__tmp31909
                              (let ((__tmp31914 (gx#datum->syntax '#f 'begin))
                                    (__tmp31910
                                     (let ((__tmp31911
                                            (let ((__tmp31912
                                                   (let ((__tmp31913
                                                          (foldr (lambda (_g2673826747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2673926750_)
                           (let ()
                             (declare (not safe))
                             (cons _g2673826747_ _g2673926750_)))
                         (foldr (lambda (_g2674026753_ _g2674126756_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2674026753_ _g2674126756_)))
                                (foldr (lambda (_g2674226759_ _g2674326762_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2674226759_ _g2674326762_)))
                                       (foldr (lambda (_g2674426765_
                                                       _g2674526768_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2674426765_
                                                        _g2674526768_)))
                                              '()
                                              _L26718_)
                                       _L26720_)
                                _L26612_)
                         _L26614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L26484_
                                                           __tmp31913))))
                                              (declare (not safe))
                                              (cons _L26512_ __tmp31912))))
                                       (declare (not safe))
                                       (cons _L26456_ __tmp31911))))
                                (declare (not safe))
                                (cons __tmp31914 __tmp31910))))
                         (declare (not safe))
                         (_wrap25819_ __tmp31909)))))
                 _def-usetf2664426712_
                 _def-ugetf2664526715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2663826670_
                                           _target2663526664_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2663126657_ _g2663226661_))))))
                            (let ()
                              (declare (not safe))
                              (_g2663126657_ _g2663226661_)))))
                     (__tmp31917
                      (gx#stx-map
                       (lambda (_ref26775_)
                         (let* ((_g2677826797_
                                 (lambda (_g2677926793_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2677926793_)))
                                (_g2677726919_
                                 (lambda (_g2677926801_)
                                   (if (gx#stx-pair? _g2677926801_)
                                       (let ((_e2678526804_
                                              (gx#syntax-e _g2677926801_)))
                                         (let ((_hd2678426808_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2678526804_)))
                                               (_tl2678326811_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2678526804_))))
                                           (if (gx#stx-pair? _tl2678326811_)
                                               (let ((_e2678826814_
                                                      (gx#syntax-e
                                                       _tl2678326811_)))
                                                 (let ((_hd2678726818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2678826814_)))
                                                       (_tl2678626821_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2678826814_))))
                                                   (if (gx#stx-pair?
                                                        _tl2678626821_)
                                                       (let ((_e2679126824_
                                                              (gx#syntax-e
                                                               _tl2678626821_)))
                                                         (let ((_hd2679026828_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2679126824_)))
                       (_tl2678926831_
                        (let () (declare (not safe)) (##cdr _e2679126824_))))
                   (if (gx#stx-null? _tl2678926831_)
                       ((lambda (_L26834_ _L26836_ _L26837_)
                          (let* ((_g2685526870_
                                  (lambda (_g2685626866_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2685626866_)))
                                 (_g2685426915_
                                  (lambda (_g2685626874_)
                                    (if (gx#stx-pair? _g2685626874_)
                                        (let ((_e2686126877_
                                               (gx#syntax-e _g2685626874_)))
                                          (let ((_hd2686026881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2686126877_)))
                                                (_tl2685926884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2686126877_))))
                                            (if (gx#stx-pair? _tl2685926884_)
                                                (let ((_e2686426887_
                                                       (gx#syntax-e
                                                        _tl2685926884_)))
                                                  (let ((_hd2686326891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2686426887_)))
                                                        (_tl2686226894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2686426887_))))
                                                    (if (gx#stx-null?
                                                         _tl2686226894_)
                                                        ((lambda (_L26897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26899_)
                   (let ()
                     (let ((__tmp31940
                            (let ((__tmp31941
                                   (let ((__tmp31960
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp31942
                                          (let ((__tmp31943
                                                 (let ((__tmp31944
                                                        (let ((__tmp31959
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp31945
                                                               (let ((__tmp31954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp31958
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp31955
                                     (let ((__tmp31956
                                            (let ((__tmp31957
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L26837_ __tmp31957))))
                                       (declare (not safe))
                                       (cons _L26148_ __tmp31956))))
                                (declare (not safe))
                                (cons __tmp31958 __tmp31955)))
                             (__tmp31946
                              (let ((__tmp31947
                                     (let ((__tmp31953
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp31948
                                            (let ((__tmp31949
                                                   (let ((__tmp31950
                                                          (let ((__tmp31952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp31951
                         (let () (declare (not safe)) (cons _L26837_ '()))))
                    (declare (not safe))
                    (cons __tmp31952 __tmp31951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp31950 '()))))
                                              (declare (not safe))
                                              (cons _L25913_ __tmp31949))))
                                       (declare (not safe))
                                       (cons __tmp31953 __tmp31948))))
                                (declare (not safe))
                                (cons __tmp31947 '()))))
                         (declare (not safe))
                         (cons __tmp31954 __tmp31946))))
                  (declare (not safe))
                  (cons __tmp31959 __tmp31945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31944 '()))))
                                            (declare (not safe))
                                            (cons _L26899_ __tmp31943))))
                                     (declare (not safe))
                                     (cons __tmp31960 __tmp31942))))
                              (declare (not safe))
                              (_wrap25819_ __tmp31941)))
                           (__tmp31918
                            (let ((__tmp31919
                                   (let ((__tmp31920
                                          (let ((__tmp31939
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp31921
                                                 (let ((__tmp31922
                                                        (let ((__tmp31923
                                                               (let ((__tmp31938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp31924
                              (let ((__tmp31933
                                     (let ((__tmp31937
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp31934
                                            (let ((__tmp31935
                                                   (let ((__tmp31936
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L26837_
                                                           __tmp31936))))
                                              (declare (not safe))
                                              (cons _L26148_ __tmp31935))))
                                       (declare (not safe))
                                       (cons __tmp31937 __tmp31934)))
                                    (__tmp31925
                                     (let ((__tmp31926
                                            (let ((__tmp31932
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp31927
                                                   (let ((__tmp31928
                                                          (let ((__tmp31929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp31931 (gx#datum->syntax '#f 'quote))
                               (__tmp31930
                                (let ()
                                  (declare (not safe))
                                  (cons _L26837_ '()))))
                           (declare (not safe))
                           (cons __tmp31931 __tmp31930))))
                    (declare (not safe))
                    (cons __tmp31929 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L25913_
                                                           __tmp31928))))
                                              (declare (not safe))
                                              (cons __tmp31932 __tmp31927))))
                                       (declare (not safe))
                                       (cons __tmp31926 '()))))
                                (declare (not safe))
                                (cons __tmp31933 __tmp31925))))
                         (declare (not safe))
                         (cons __tmp31938 __tmp31924))))
                  (declare (not safe))
                  (cons __tmp31923 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L26897_
                                                         __tmp31922))))
                                            (declare (not safe))
                                            (cons __tmp31939 __tmp31921))))
                                     (declare (not safe))
                                     (_wrap25819_ __tmp31920))))
                              (declare (not safe))
                              (cons __tmp31919 '()))))
                       (declare (not safe))
                       (cons __tmp31940 __tmp31918))))
                 _hd2686326891_
                 _hd2686026881_)
                (let () (declare (not safe)) (_g2685526870_ _g2685626874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2685526870_
                                                   _g2685626874_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2685526870_ _g2685626874_)))))
                                 (__tmp31961
                                  (list (gx#stx-identifier
                                         _L26836_
                                         '"&"
                                         _L26836_)
                                        (gx#stx-identifier
                                         _L26834_
                                         '"&"
                                         _L26834_))))
                            (declare (not safe))
                            (_g2685426915_ __tmp31961)))
                        _hd2679026828_
                        _hd2678726818_
                        _hd2678426808_)
                       (let ()
                         (declare (not safe))
                         (_g2677826797_ _g2677926801_)))))
               (let () (declare (not safe)) (_g2677826797_ _g2677926801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2677826797_
                                                  _g2677926801_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2677826797_ _g2677926801_))))))
                           (declare (not safe))
                           (_g2677726919_ _ref26775_)))
                       _accessible-slots25968_)))
                (declare (not safe))
                (_g2663026771_ __tmp31917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf2653826606_
                                                  _def-getf2653926609_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2653226564_
                                    _target2652926558_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2652526551_ _g2652626555_))))))
                     (let ()
                       (declare (not safe))
                       (_g2652526551_ _g2652626555_)))))
              (__tmp31964
               (gx#stx-map
                (lambda (_ref26927_)
                  (let* ((_g2693026949_
                          (lambda (_g2693126945_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2693126945_)))
                         (_g2692927007_
                          (lambda (_g2693126953_)
                            (if (gx#stx-pair? _g2693126953_)
                                (let ((_e2693726956_
                                       (gx#syntax-e _g2693126953_)))
                                  (let ((_hd2693626960_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2693726956_)))
                                        (_tl2693526963_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2693726956_))))
                                    (if (gx#stx-pair? _tl2693526963_)
                                        (let ((_e2694026966_
                                               (gx#syntax-e _tl2693526963_)))
                                          (let ((_hd2693926970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2694026966_)))
                                                (_tl2693826973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2694026966_))))
                                            (if (gx#stx-pair? _tl2693826973_)
                                                (let ((_e2694326976_
                                                       (gx#syntax-e
                                                        _tl2693826973_)))
                                                  (let ((_hd2694226980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2694326976_)))
                                                        (_tl2694126983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2694326976_))))
                                                    (if (gx#stx-null?
                                                         _tl2694126983_)
                                                        ((lambda (_L26986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L26988_
                          _L26989_)
                   (let ((__tmp31987
                          (let ((__tmp31988
                                 (let ((__tmp32007 (gx#datum->syntax '#f 'def))
                                       (__tmp31989
                                        (let ((__tmp31990
                                               (let ((__tmp31991
                                                      (let ((__tmp32006
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp31992
                                                             (let ((__tmp32001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32005
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp32002
                                   (let ((__tmp32003
                                          (let ((__tmp32004
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L26989_ __tmp32004))))
                                     (declare (not safe))
                                     (cons _L26148_ __tmp32003))))
                              (declare (not safe))
                              (cons __tmp32005 __tmp32002)))
                           (__tmp31993
                            (let ((__tmp31994
                                   (let ((__tmp32000
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp31995
                                          (let ((__tmp31996
                                                 (let ((__tmp31997
                                                        (let ((__tmp31999
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp31998
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26989_ '()))))
                  (declare (not safe))
                  (cons __tmp31999 __tmp31998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp31997 '()))))
                                            (declare (not safe))
                                            (cons _L25913_ __tmp31996))))
                                     (declare (not safe))
                                     (cons __tmp32000 __tmp31995))))
                              (declare (not safe))
                              (cons __tmp31994 '()))))
                       (declare (not safe))
                       (cons __tmp32001 __tmp31993))))
                (declare (not safe))
                (cons __tmp32006 __tmp31992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp31991 '()))))
                                          (declare (not safe))
                                          (cons _L26988_ __tmp31990))))
                                   (declare (not safe))
                                   (cons __tmp32007 __tmp31989))))
                            (declare (not safe))
                            (_wrap25819_ __tmp31988)))
                         (__tmp31965
                          (let ((__tmp31966
                                 (let ((__tmp31967
                                        (let ((__tmp31986
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp31968
                                               (let ((__tmp31969
                                                      (let ((__tmp31970
                                                             (let ((__tmp31985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp31971
                            (let ((__tmp31980
                                   (let ((__tmp31984
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp31981
                                          (let ((__tmp31982
                                                 (let ((__tmp31983
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L26989_
                                                         __tmp31983))))
                                            (declare (not safe))
                                            (cons _L26148_ __tmp31982))))
                                     (declare (not safe))
                                     (cons __tmp31984 __tmp31981)))
                                  (__tmp31972
                                   (let ((__tmp31973
                                          (let ((__tmp31979
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp31974
                                                 (let ((__tmp31975
                                                        (let ((__tmp31976
                                                               (let ((__tmp31978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp31977
                              (let ()
                                (declare (not safe))
                                (cons _L26989_ '()))))
                         (declare (not safe))
                         (cons __tmp31978 __tmp31977))))
                  (declare (not safe))
                  (cons __tmp31976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25913_
                                                         __tmp31975))))
                                            (declare (not safe))
                                            (cons __tmp31979 __tmp31974))))
                                     (declare (not safe))
                                     (cons __tmp31973 '()))))
                              (declare (not safe))
                              (cons __tmp31980 __tmp31972))))
                       (declare (not safe))
                       (cons __tmp31985 __tmp31971))))
                (declare (not safe))
                (cons __tmp31970 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26986_ __tmp31969))))
                                          (declare (not safe))
                                          (cons __tmp31986 __tmp31968))))
                                   (declare (not safe))
                                   (_wrap25819_ __tmp31967))))
                            (declare (not safe))
                            (cons __tmp31966 '()))))
                     (declare (not safe))
                     (cons __tmp31987 __tmp31965)))
                 _hd2694226980_
                 _hd2693926970_
                 _hd2693626960_)
                (let () (declare (not safe)) (_g2693026949_ _g2693126953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2693026949_
                                                   _g2693126953_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2693026949_ _g2693126953_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2693026949_ _g2693126953_))))))
                    (declare (not safe))
                    (_g2692927007_ _ref26927_)))
                _accessible-slots25968_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2652426923_ __tmp31964))))
                                           _g2649826509_)))
                                       (__tmp32008
                                        (let ((__tmp32009
                                               (let ((__tmp32022
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp32010
                                                      (let ((__tmp32011
                                                             (let ((__tmp32012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp32021
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp32013
                                   (let ((__tmp32018
                                          (let ((__tmp32020
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp32019
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L26148_ '()))))
                                            (declare (not safe))
                                            (cons __tmp32020 __tmp32019)))
                                         (__tmp32014
                                          (let ((__tmp32015
                                                 (let ((__tmp32017
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp32016
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L25913_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32017
                                                         __tmp32016))))
                                            (declare (not safe))
                                            (cons __tmp32015 '()))))
                                     (declare (not safe))
                                     (cons __tmp32018 __tmp32014))))
                              (declare (not safe))
                              (cons __tmp32021 __tmp32013))))
                       (declare (not safe))
                       (cons __tmp32012 '()))))
                (declare (not safe))
                (cons _L25910_ __tmp32011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp32022
                                                       __tmp32010))))
                                          (declare (not safe))
                                          (_wrap25819_ __tmp32009))))
                                  (declare (not safe))
                                  (_g2649627011_ __tmp32008))))
                            _g2647026481_)))
                        (__tmp32023
                         (if (gx#stx-false? _L25911_)
                             (let ((__tmp32047 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp32047 '()))
                             (let ((__tmp32024
                                    (let ((__tmp32046
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp32025
                                           (let ((__tmp32026
                                                  (let ((__tmp32027
                                                         (let ((__tmp32045
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp32028
                        (let ((__tmp32042
                               (let ((__tmp32044
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp32043
                                      (let ()
                                        (declare (not safe))
                                        (cons _L26148_ '()))))
                                 (declare (not safe))
                                 (cons __tmp32044 __tmp32043)))
                              (__tmp32029
                               (let ((__tmp32030
                                      (let ((__tmp32041
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp32031
                                             (let ((__tmp32040
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp32032
                                                    (let ((__tmp32033
                                                           (let ((__tmp32039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp32034
                          (let ((__tmp32038
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp32035
                                 (let ((__tmp32036
                                        (let ((__tmp32037
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp32037 '()))))
                                   (declare (not safe))
                                   (cons _L25913_ __tmp32036))))
                            (declare (not safe))
                            (cons __tmp32038 __tmp32035))))
                     (declare (not safe))
                     (cons __tmp32039 __tmp32034))))
              (declare (not safe))
              (cons __tmp32033 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp32040 __tmp32032))))
                                        (declare (not safe))
                                        (cons __tmp32041 __tmp32031))))
                                 (declare (not safe))
                                 (cons __tmp32030 '()))))
                          (declare (not safe))
                          (cons __tmp32042 __tmp32029))))
                   (declare (not safe))
                   (cons __tmp32045 __tmp32028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp32027 '()))))
                                             (declare (not safe))
                                             (cons _L25911_ __tmp32026))))
                                      (declare (not safe))
                                      (cons __tmp32046 __tmp32025))))
                               (declare (not safe))
                               (_wrap25819_ __tmp32024)))))
                   (declare (not safe))
                   (_g2646827015_ __tmp32023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2644226453_)))
                                                 (__tmp32048
                                                  (let ((__tmp32049
                                                         (let ((__tmp32066
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp32050
                        (let ((__tmp32051
                               (let ((__tmp32052
                                      (let ((__tmp32065
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp32053
                                             (let ((__tmp32055
                                                    (let ((__tmp32064
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp32056
                                                           (let ((__tmp32057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp32058
                                 (let ((__tmp32063
                                        (foldr (lambda (_g2702227025_
                                                        _g2702327028_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2702227025_
                                                         _g2702327028_)))
                                               '()
                                               _L26028_))
                                       (__tmp32059
                                        (let ((__tmp32060
                                               (let ((__tmp32061
                                                      (let ((__tmp32062
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L26260_ '()))))
                (declare (not safe))
                (cons _L26232_ __tmp32062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L26204_ __tmp32061))))
                                          (declare (not safe))
                                          (cons _L26120_ __tmp32060))))
                                   (declare (not safe))
                                   (cons __tmp32063 __tmp32059))))
                            (declare (not safe))
                            (cons _L26176_ __tmp32058))))
                     (declare (not safe))
                     (cons _L26064_ __tmp32057))))
              (declare (not safe))
              (cons __tmp32064 __tmp32056)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp32054
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L26428_ '()))))
                                               (declare (not safe))
                                               (cons __tmp32055 __tmp32054))))
                                        (declare (not safe))
                                        (cons __tmp32065 __tmp32053))))
                                 (declare (not safe))
                                 (cons __tmp32052 '()))))
                          (declare (not safe))
                          (cons _L25913_ __tmp32051))))
                   (declare (not safe))
                   (cons __tmp32066 __tmp32050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap25819_ __tmp32049))))
                                            (declare (not safe))
                                            (_g2644027019_ __tmp32048))))
                                      _g2641426425_)))
                                  (__tmp32067
                                   (let ((__tmp32087
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp32068
                                          (let ((__tmp32084
                                                 (let ((__tmp32086
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp32085
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L26064_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp32086
                                                         __tmp32085)))
                                                (__tmp32069
                                                 (let ((__tmp32081
                                                        (let ((__tmp32083
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp32082
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26092_ '()))))
                  (declare (not safe))
                  (cons __tmp32083 __tmp32082)))
               (__tmp32070
                (let ((__tmp32071
                       (let ((__tmp32077
                              (let ((__tmp32080 (gx#datum->syntax '#f 'quote))
                                    (__tmp32078
                                     (let ((__tmp32079
                                            (foldr (lambda (_g2703427037_
                                                            _g2703527040_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2703427037_
                                                             _g2703527040_)))
                                                   '()
                                                   _L26028_)))
                                       (declare (not safe))
                                       (cons __tmp32079 '()))))
                                (declare (not safe))
                                (cons __tmp32080 __tmp32078)))
                             (__tmp32072
                              (let ((__tmp32073
                                     (let ((__tmp32074
                                            (let ((__tmp32076
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp32075
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L26120_ '()))))
                                              (declare (not safe))
                                              (cons __tmp32076 __tmp32075))))
                                       (declare (not safe))
                                       (cons __tmp32074 '()))))
                                (declare (not safe))
                                (cons _L26372_ __tmp32073))))
                         (declare (not safe))
                         (cons __tmp32077 __tmp32072))))
                  (declare (not safe))
                  (cons _L26400_ __tmp32071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp32081
                                                         __tmp32070))))
                                            (declare (not safe))
                                            (cons __tmp32084 __tmp32069))))
                                     (declare (not safe))
                                     (cons __tmp32087 __tmp32068))))
                             (declare (not safe))
                             (_g2641227031_ __tmp32067))))
                       _g2638626397_)))
                   (__tmp32088
                    (let ((__tmp32089 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp32089 _L25912_))))
              (declare (not safe))
              (_g2638427043_ __tmp32088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2635826369_)))
                                            (__tmp32090
                                             (if (gx#stx-e _metaclass25971_)
                                                 (let* ((_g2705127059_
                                                         (lambda (_g2705227055_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2705227055_)))
                                                        (_g2705027078_
                                                         (lambda (_g2705227063_)
                                                           ((lambda (_L27066_)
                                                              (let ()
                                                                (let ((__tmp32099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp32091
                               (let ((__tmp32094
                                      (let ((__tmp32098
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp32095
                                             (let ((__tmp32096
                                                    (let ((__tmp32097
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L27066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp32097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp32096))))
                                        (declare (not safe))
                                        (cons __tmp32098 __tmp32095)))
                                     (__tmp32092
                                      (let ((__tmp32093
                                             (let ()
                                               (declare (not safe))
                                               (cons _L26344_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp32093))))
                                 (declare (not safe))
                                 (cons __tmp32094 __tmp32092))))
                          (declare (not safe))
                          (cons __tmp32099 __tmp32091))))
                    _g2705227063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2705027078_
                                                    _metaclass25971_))
                                                 _L26344_)))
                                       (declare (not safe))
                                       (_g2635627047_ __tmp32090))))
                                 _g2633026341_)))
                             (__tmp32100
                              (if _struct?25951_
                                  (let ((__tmp32107
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp32101
                                         (let ((__tmp32104
                                                (let ((__tmp32106
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp32105
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp32106
                                                        __tmp32105)))
                                               (__tmp32102
                                                (let ((__tmp32103
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L26316_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp32103))))
                                           (declare (not safe))
                                           (cons __tmp32104 __tmp32102))))
                                    (declare (not safe))
                                    (cons __tmp32107 __tmp32101))
                                  _L26316_)))
                        (declare (not safe))
                        (_g2632827082_ __tmp32100))))
                  _g2630226313_)))
              (__tmp32108
               (if (gx#stx-e _L26232_)
                   (let ((__tmp32115 (gx#datum->syntax '#f '@list))
                         (__tmp32109
                          (let ((__tmp32112
                                 (let ((__tmp32114
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp32113
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp32114 __tmp32113)))
                                (__tmp32110
                                 (let ((__tmp32111
                                        (let ()
                                          (declare (not safe))
                                          (cons _L26288_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp32111))))
                            (declare (not safe))
                            (cons __tmp32112 __tmp32110))))
                     (declare (not safe))
                     (cons __tmp32115 __tmp32109))
                   _L26288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2630027086_ __tmp32108))))
                                           _g2627426285_)))
                                       (__tmp32116
                                        (let ((_$e27094_
                                               (gx#stx-getq
                                                'properties:
                                                _L25908_)))
                                          (if _$e27094_
                                              _$e27094_
                                              (let ((__tmp32117
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp32117 '()))))))
                                  (declare (not safe))
                                  (_g2627227090_ __tmp32116))))
                            _g2624626257_)))
                        (__tmp32118
                         (if (gx#stx-e _metaclass25971_)
                             (gx#core-quote-syntax _metaclass25971_)
                             '#f)))
                   (declare (not safe))
                   (_g2624427098_ __tmp32118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2621826229_)))
                                                 (__tmp32119
                                                  (gx#stx-getq
                                                   'final:
                                                   _L25908_)))
                                            (declare (not safe))
                                            (_g2621627102_ __tmp32119))))
                                      _g2619026201_))))
                             (declare (not safe))
                             (_g2618827106_ _struct?25951_))))
                       _g2616226173_)))
                   (__tmp32120 (gx#stx-map gx#core-quote-syntax _L25912_)))
              (declare (not safe))
              (_g2616027110_ __tmp32120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2613426145_)))
                                            (__tmp32121
                                             (gx#core-quote-syntax _L25913_)))
                                       (declare (not safe))
                                       (_g2613227114_ __tmp32121))))
                                 _g2610626117_)))
                             (__tmp32122 (gx#stx-getq 'constructor: _L25908_)))
                        (declare (not safe))
                        (_g2610427118_ __tmp32122))))
                  _g2607826089_)))
              (__tmp32123
               (let ((_$e27126_ (gx#stx-getq 'name: _L25908_)))
                 (if _$e27126_ _$e27126_ _L25913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2607627122_ __tmp32123))))
                                           _g2605026061_)))
                                       (__tmp32124
                                        (let ((_$e27134_
                                               (gx#stx-getq 'id: _L25908_)))
                                          (if _$e27134_
                                              _$e27134_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop$<MOP:1>[1]#make-class-type-id|
                                                 _L25913_))))))
                                  (declare (not safe))
                                  (_g2604827130_ __tmp32124))))
                            _slot2598526024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop2598026004_
                                                      _target2597725998_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2597425991_
                                                    _g2597525995_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2597425991_ _g2597525995_)))))
                                (__tmp32126
                                 (gx#stx-map _slot-name25821_ _slots25958_)))
                           (declare (not safe))
                           (_g2597327138_ __tmp32126))
                         (let ()
                           (declare (not safe))
                           (_g2582425851_ _g2582525855_))))
                   _tl2584325905_
                   _hd2584425902_
                   _hd2584125892_
                   _hd2583825882_
                   _hd2583525872_)))
              (let () (declare (not safe)) (_g2582425851_ _g2582525855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2582425851_
                                                 _g2582525855_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2582425851_ _g2582525855_)))))
                              (let ()
                                (declare (not safe))
                                (_g2582425851_ _g2582525855_)))))
                      (let ()
                        (declare (not safe))
                        (_g2582425851_ _g2582525855_))))))
          (declare (not safe))
          (_g2582327142_ _stx25815_)))))
  (define |gerbil/core/mop$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx27254_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop$<MOP:1>[1]#generate-typedef| _stx27254_ '#t))))
  (define |gerbil/core/mop$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx27257_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop$<MOP:1>[1]#generate-typedef| _stx27257_ '#f)))))
