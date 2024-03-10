(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx155341_)
      (let* ((_g155345155363_
              (lambda (_g155346155359_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155346155359_))))
             (_g155344155418_
              (lambda (_g155346155367_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155346155367_))
                    (let ((_e155349155370_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155346155367_))))
                      (let ((_hd155350155374_
                             (let ()
                               (declare (not safe))
                               (##car _e155349155370_)))
                            (_tl155351155377_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155349155370_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155351155377_))
                            (let ((_e155352155380_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155351155377_))))
                              (let ((_hd155353155384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155352155380_)))
                                    (_tl155354155387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155352155380_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl155354155387_))
                                    (let ((_e155355155390_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl155354155387_))))
                                      (let ((_hd155356155394_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155355155390_)))
                                            (_tl155357155397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155355155390_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155357155397_))
                                            ((lambda (_L155400_ _L155402_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L155402_))
                                                   (let ((__tmp158882
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp158877
                                                          (let ((__tmp158879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158881
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp158880
                                (let ()
                                  (declare (not safe))
                                  (cons _L155402_ '()))))
                           (declare (not safe))
                           (cons __tmp158881 __tmp158880)))
                        (__tmp158878
                         (let () (declare (not safe)) (cons _L155400_ '()))))
                    (declare (not safe))
                    (cons __tmp158879 __tmp158878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp158882
                                                           __tmp158877))
                                                   (_g155345155363_
                                                    _g155346155367_)))
                                             _hd155356155394_
                                             _hd155353155384_)
                                            (_g155345155363_
                                             _g155346155367_))))
                                    (_g155345155363_ _g155346155367_))))
                            (_g155345155363_ _g155346155367_))))
                    (_g155345155363_ _g155346155367_)))))
        (_g155344155418_ _$stx155341_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx155422_)
      (let* ((_g155426155455_
              (lambda (_g155427155451_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155427155451_))))
             (_g155425155555_
              (lambda (_g155427155459_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155427155459_))
                    (let ((_e155430155462_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155427155459_))))
                      (let ((_hd155431155466_
                             (let ()
                               (declare (not safe))
                               (##car _e155430155462_)))
                            (_tl155432155469_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155430155462_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl155432155469_))
                            (let ((_g158883_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl155432155469_
                                      '0))))
                              (begin
                                (let ((_g158884_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g158883_)
                                             (##vector-length _g158883_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g158884_ 2)))
                                      (error "Context expects 2 values"
                                             _g158884_)))
                                (let ((_target155433155472_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158883_ 0)))
                                      (_tl155435155475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158883_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl155435155475_))
                                      (letrec ((_loop155436155478_
                                                (lambda (_hd155434155482_
                                                         _type155440155485_
                                                         _symbol155441155487_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd155434155482_))
                                                      (let ((_e155437155490_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd155434155482_))))
                (let ((_lp-hd155438155494_
                       (let () (declare (not safe)) (##car _e155437155490_)))
                      (_lp-tl155439155497_
                       (let () (declare (not safe)) (##cdr _e155437155490_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd155438155494_))
                      (let ((_e155444155500_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd155438155494_))))
                        (let ((_hd155445155504_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155444155500_)))
                              (_tl155446155507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155444155500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155446155507_))
                              (let ((_e155447155510_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl155446155507_))))
                                (let ((_hd155448155514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155447155510_)))
                                      (_tl155449155517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155447155510_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl155449155517_))
                                      (_loop155436155478_
                                       _lp-tl155439155497_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd155448155514_
                                               _type155440155485_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd155445155504_
                                               _symbol155441155487_)))
                                      (_g155426155455_ _g155427155459_))))
                              (_g155426155455_ _g155427155459_))))
                      (_g155426155455_ _g155427155459_))))
              (let ((_type155442155520_ (reverse _type155440155485_))
                    (_symbol155443155523_ (reverse _symbol155441155487_)))
                ((lambda (_L155526_ _L155528_)
                   (let ((__tmp158891
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp158885
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L155526_
                               _L155528_))
                            (let ((__tmp158886
                                   (lambda (_g155543155547_
                                            _g155544155550_
                                            _g155545155552_)
                                     (let ((__tmp158887
                                            (let ((__tmp158890
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp158888
                                                   (let ((__tmp158889
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g155543155547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g155544155550_
                                                           __tmp158889))))
                                              (declare (not safe))
                                              (cons __tmp158890 __tmp158888))))
                                       (declare (not safe))
                                       (cons __tmp158887 _g155545155552_)))))
                              (declare (not safe))
                              (foldr2 __tmp158886 '() _L155526_ _L155528_)))))
                     (declare (not safe))
                     (cons __tmp158891 __tmp158885)))
                 _type155442155520_
                 _symbol155443155523_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop155436155478_
                                         _target155433155472_
                                         '()
                                         '()))
                                      (_g155426155455_ _g155427155459_)))))
                            (_g155426155455_ _g155427155459_))))
                    (_g155426155455_ _g155427155459_)))))
        (_g155425155555_ _$stx155422_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx155560_)
      (let* ((___stx158442158443_ _$stx155560_)
             (_g155565155607_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158442158443_)))))
        (let ((___kont158445158446_
               (lambda (_L155735_ _L155737_ _L155738_ _L155739_)
                 (let ((__tmp158905
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp158892
                        (let ((__tmp158902
                               (let ((__tmp158904
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158903
                                      (let ()
                                        (declare (not safe))
                                        (cons _L155739_ '()))))
                                 (declare (not safe))
                                 (cons __tmp158904 __tmp158903)))
                              (__tmp158893
                               (let ((__tmp158899
                                      (let ((__tmp158901
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp158900
                                             (let ()
                                               (declare (not safe))
                                               (cons _L155738_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158901 __tmp158900)))
                                     (__tmp158894
                                      (let ((__tmp158896
                                             (let ((__tmp158898
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp158897
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L155737_ '()))))
                                               (declare (not safe))
                                               (cons __tmp158898 __tmp158897)))
                                            (__tmp158895
                                             (let ()
                                               (declare (not safe))
                                               (cons _L155735_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158896 __tmp158895))))
                                 (declare (not safe))
                                 (cons __tmp158899 __tmp158894))))
                          (declare (not safe))
                          (cons __tmp158902 __tmp158893))))
                   (declare (not safe))
                   (cons __tmp158905 __tmp158892))))
              (___kont158447158448_
               (lambda (_L155654_ _L155656_ _L155657_ _L155658_)
                 (let ((__tmp158906
                        (let ((__tmp158907
                               (let ((__tmp158908
                                      (let ((__tmp158909
                                             (let ((__tmp158910
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp158910 '()))))
                                        (declare (not safe))
                                        (cons _L155654_ __tmp158909))))
                                 (declare (not safe))
                                 (cons _L155656_ __tmp158908))))
                          (declare (not safe))
                          (cons _L155657_ __tmp158907))))
                   (declare (not safe))
                   (cons _L155658_ __tmp158906)))))
          (let ((___match158481158482_
                 (lambda (_e155571155685_
                          _hd155572155689_
                          _tl155573155692_
                          _e155574155695_
                          _hd155575155699_
                          _tl155576155702_
                          _e155577155705_
                          _hd155578155709_
                          _tl155579155712_
                          _e155580155715_
                          _hd155581155719_
                          _tl155582155722_
                          _e155583155725_
                          _hd155584155729_
                          _tl155585155732_)
                   (let ((_L155735_ _hd155584155729_)
                         (_L155737_ _hd155581155719_)
                         (_L155738_ _hd155578155709_)
                         (_L155739_ _hd155575155699_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L155739_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L155738_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L155737_)))
                         (___kont158445158446_
                          _L155735_
                          _L155737_
                          _L155738_
                          _L155739_)
                         (let () (declare (not safe)) (_g155565155607_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158442158443_))
                (let ((_e155571155685_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158442158443_))))
                  (let ((_tl155573155692_
                         (let () (declare (not safe)) (##cdr _e155571155685_)))
                        (_hd155572155689_
                         (let ()
                           (declare (not safe))
                           (##car _e155571155685_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl155573155692_))
                        (let ((_e155574155695_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl155573155692_))))
                          (let ((_tl155576155702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e155574155695_)))
                                (_hd155575155699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e155574155695_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl155576155702_))
                                (let ((_e155577155705_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl155576155702_))))
                                  (let ((_tl155579155712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e155577155705_)))
                                        (_hd155578155709_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e155577155705_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl155579155712_))
                                        (let ((_e155580155715_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl155579155712_))))
                                          (let ((_tl155582155722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e155580155715_)))
                                                (_hd155581155719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e155580155715_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155582155722_))
                                                (let ((_e155583155725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl155582155722_))))
                                                  (let ((_tl155585155732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155583155725_)))
                                                        (_hd155584155729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155583155725_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155585155732_))
                                                        (___match158481158482_
                                                         _e155571155685_
                                                         _hd155572155689_
                                                         _tl155573155692_
                                                         _e155574155695_
                                                         _hd155575155699_
                                                         _tl155576155702_
                                                         _e155577155705_
                                                         _hd155578155709_
                                                         _tl155579155712_
                                                         _e155580155715_
                                                         _hd155581155719_
                                                         _tl155582155722_
                                                         _e155583155725_
                                                         _hd155584155729_
                                                         _tl155585155732_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155565155607_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl155582155722_))
                                                    (___kont158447158448_
                                                     _hd155581155719_
                                                     _hd155578155709_
                                                     _hd155575155699_
                                                     _hd155572155689_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155565155607_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155565155607_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g155565155607_)))))
                        (let () (declare (not safe)) (_g155565155607_)))))
                (let () (declare (not safe)) (_g155565155607_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx155764_)
      (let* ((_g155768155803_
              (lambda (_g155769155799_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155769155799_))))
             (_g155767155922_
              (lambda (_g155769155807_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155769155807_))
                    (let ((_e155773155810_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155769155807_))))
                      (let ((_hd155774155814_
                             (let ()
                               (declare (not safe))
                               (##car _e155773155810_)))
                            (_tl155775155817_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155773155810_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl155775155817_))
                            (let ((_g158911_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl155775155817_
                                      '0))))
                              (begin
                                (let ((_g158912_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g158911_)
                                             (##vector-length _g158911_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g158912_ 2)))
                                      (error "Context expects 2 values"
                                             _g158912_)))
                                (let ((_target155776155820_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158911_ 0)))
                                      (_tl155778155823_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158911_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl155778155823_))
                                      (letrec ((_loop155779155826_
                                                (lambda (_hd155777155830_
                                                         _symbol155783155833_
                                                         _method155784155835_
                                                         _type-t155785155837_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd155777155830_))
                                                      (let ((_e155780155840_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd155777155830_))))
                (let ((_lp-hd155781155844_
                       (let () (declare (not safe)) (##car _e155780155840_)))
                      (_lp-tl155782155847_
                       (let () (declare (not safe)) (##cdr _e155780155840_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd155781155844_))
                      (let ((_e155789155850_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd155781155844_))))
                        (let ((_hd155790155854_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155789155850_)))
                              (_tl155791155857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155789155850_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155791155857_))
                              (let ((_e155792155860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl155791155857_))))
                                (let ((_hd155793155864_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155792155860_)))
                                      (_tl155794155867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155792155860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155794155867_))
                                      (let ((_e155795155870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl155794155867_))))
                                        (let ((_hd155796155874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155795155870_)))
                                              (_tl155797155877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155795155870_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155797155877_))
                                              (_loop155779155826_
                                               _lp-tl155782155847_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155796155874_
                                                       _symbol155783155833_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155793155864_
                                                       _method155784155835_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155790155854_
                                                       _type-t155785155837_)))
                                              (_g155768155803_
                                               _g155769155807_))))
                                      (_g155768155803_ _g155769155807_))))
                              (_g155768155803_ _g155769155807_))))
                      (_g155768155803_ _g155769155807_))))
              (let ((_symbol155786155880_ (reverse _symbol155783155833_))
                    (_method155787155883_ (reverse _method155784155835_))
                    (_type-t155788155885_ (reverse _type-t155785155837_)))
                ((lambda (_L155888_ _L155890_ _L155891_)
                   (let ((__tmp158920
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp158913
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L155888_
                               _L155890_
                               _L155891_))
                            (let ((__tmp158914
                                   (lambda (_g155907155912_
                                            _g155908155915_
                                            _g155909155917_
                                            _g155910155919_)
                                     (let ((__tmp158915
                                            (let ((__tmp158919
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp158916
                                                   (let ((__tmp158917
                                                          (let ((__tmp158918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g155907155912_ '()))))
                    (declare (not safe))
                    (cons _g155908155915_ __tmp158918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g155909155917_
                                                           __tmp158917))))
                                              (declare (not safe))
                                              (cons __tmp158919 __tmp158916))))
                                       (declare (not safe))
                                       (cons __tmp158915 _g155910155919_)))))
                              (declare (not safe))
                              (foldr* __tmp158914
                                      '()
                                      _L155888_
                                      _L155890_
                                      _L155891_)))))
                     (declare (not safe))
                     (cons __tmp158920 __tmp158913)))
                 _symbol155786155880_
                 _method155787155883_
                 _type-t155788155885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop155779155826_
                                         _target155776155820_
                                         '()
                                         '()
                                         '()))
                                      (_g155768155803_ _g155769155807_)))))
                            (_g155768155803_ _g155769155807_))))
                    (_g155768155803_ _g155769155807_)))))
        (_g155767155922_ _$stx155764_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx155927_)
      (let* ((_g155931155964_
              (lambda (_g155932155960_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155932155960_))))
             (_g155930156078_
              (lambda (_g155932155968_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155932155968_))
                    (let ((_e155936155971_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155932155968_))))
                      (let ((_hd155937155975_
                             (let ()
                               (declare (not safe))
                               (##car _e155936155971_)))
                            (_tl155938155978_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155936155971_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155938155978_))
                            (let ((_e155939155981_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155938155978_))))
                              (let ((_hd155940155985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155939155981_)))
                                    (_tl155941155988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155939155981_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl155941155988_))
                                    (let ((_g158921_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl155941155988_
                                              '0))))
                                      (begin
                                        (let ((_g158922_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g158921_)
                                                     (##vector-length
                                                      _g158921_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g158922_ 2)))
                                              (error "Context expects 2 values"
                                                     _g158922_)))
                                        (let ((_target155942155991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g158921_ 0)))
                                              (_tl155944155994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g158921_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155944155994_))
                                              (letrec ((_loop155945155997_
                                                        (lambda (_hd155943156001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol155949156004_
                         _method155950156006_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155943156001_))
                      (let ((_e155946156009_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd155943156001_))))
                        (let ((_lp-hd155947156013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155946156009_)))
                              (_lp-tl155948156016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155946156009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd155947156013_))
                              (let ((_e155953156019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd155947156013_))))
                                (let ((_hd155954156023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155953156019_)))
                                      (_tl155955156026_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155953156019_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155955156026_))
                                      (let ((_e155956156029_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl155955156026_))))
                                        (let ((_hd155957156033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155956156029_)))
                                              (_tl155958156036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155956156029_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155958156036_))
                                              (_loop155945155997_
                                               _lp-tl155948156016_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155957156033_
                                                       _symbol155949156004_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155954156023_
                                                       _method155950156006_)))
                                              (_g155931155964_
                                               _g155932155968_))))
                                      (_g155931155964_ _g155932155968_))))
                              (_g155931155964_ _g155932155968_))))
                      (let ((_symbol155951156039_
                             (reverse _symbol155949156004_))
                            (_method155952156042_
                             (reverse _method155950156006_)))
                        ((lambda (_L156045_ _L156047_ _L156048_)
                           (let ((__tmp158930
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp158923
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L156045_
                                       _L156047_))
                                    (let ((__tmp158924
                                           (lambda (_g156066156070_
                                                    _g156067156073_
                                                    _g156068156075_)
                                             (let ((__tmp158925
                                                    (let ((__tmp158929
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp158926
                                                           (let ((__tmp158927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158928
                                 (let ()
                                   (declare (not safe))
                                   (cons _g156066156070_ '()))))
                            (declare (not safe))
                            (cons _g156067156073_ __tmp158928))))
                     (declare (not safe))
                     (cons _L156048_ __tmp158927))))
              (declare (not safe))
              (cons __tmp158929 __tmp158926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158925
                                                     _g156068156075_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp158924
                                              '()
                                              _L156045_
                                              _L156047_)))))
                             (declare (not safe))
                             (cons __tmp158930 __tmp158923)))
                         _symbol155951156039_
                         _method155952156042_
                         _hd155940155985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop155945155997_
                                                 _target155942155991_
                                                 '()
                                                 '()))
                                              (_g155931155964_
                                               _g155932155968_)))))
                                    (_g155931155964_ _g155932155968_))))
                            (_g155931155964_ _g155932155968_))))
                    (_g155931155964_ _g155932155968_)))))
        (_g155930156078_ _$stx155927_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx156083_)
      (let* ((_g156087156101_
              (lambda (_g156088156097_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156088156097_))))
             (_g156086156142_
              (lambda (_g156088156105_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156088156105_))
                    (let ((_e156090156108_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156088156105_))))
                      (let ((_hd156091156112_
                             (let ()
                               (declare (not safe))
                               (##car _e156090156108_)))
                            (_tl156092156115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156090156108_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156092156115_))
                            (let ((_e156093156118_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156092156115_))))
                              (let ((_hd156094156122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156093156118_)))
                                    (_tl156095156125_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156093156118_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156095156125_))
                                    ((lambda (_L156128_)
                                       (let ((__tmp158935
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp158931
                                              (let ((__tmp158932
                                                     (let ((__tmp158934
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp158933
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L156128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp158934 __tmp158933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158932 '()))))
                                         (declare (not safe))
                                         (cons __tmp158935 __tmp158931)))
                                     _hd156094156122_)
                                    (_g156087156101_ _g156088156105_))))
                            (_g156087156101_ _g156088156105_))))
                    (_g156087156101_ _g156088156105_)))))
        (_g156086156142_ _$stx156083_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx156146_)
      (let* ((_g156150156200_
              (lambda (_g156151156196_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156151156196_))))
             (_g156149156367_
              (lambda (_g156151156204_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156151156204_))
                    (let ((_e156162156207_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156151156204_))))
                      (let ((_hd156163156211_
                             (let ()
                               (declare (not safe))
                               (##car _e156162156207_)))
                            (_tl156164156214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156162156207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156164156214_))
                            (let ((_e156165156217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156164156214_))))
                              (let ((_hd156166156221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156165156217_)))
                                    (_tl156167156224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156165156217_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl156167156224_))
                                    (let ((_e156168156227_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl156167156224_))))
                                      (let ((_hd156169156231_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156168156227_)))
                                            (_tl156170156234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156168156227_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl156170156234_))
                                            (let ((_e156171156237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl156170156234_))))
                                              (let ((_hd156172156241_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156171156237_)))
                                                    (_tl156173156244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156171156237_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl156173156244_))
                                                    (let ((_e156174156247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl156173156244_))))
                                                      (let ((_hd156175156251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e156174156247_)))
                    (_tl156176156254_
                     (let () (declare (not safe)) (##cdr _e156174156247_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl156176156254_))
                    (let ((_e156177156257_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl156176156254_))))
                      (let ((_hd156178156261_
                             (let ()
                               (declare (not safe))
                               (##car _e156177156257_)))
                            (_tl156179156264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156177156257_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156179156264_))
                            (let ((_e156180156267_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156179156264_))))
                              (let ((_hd156181156271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156180156267_)))
                                    (_tl156182156274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156180156267_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl156182156274_))
                                    (let ((_e156183156277_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl156182156274_))))
                                      (let ((_hd156184156281_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156183156277_)))
                                            (_tl156185156284_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156183156277_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl156185156284_))
                                            (let ((_e156186156287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl156185156284_))))
                                              (let ((_hd156187156291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156186156287_)))
                                                    (_tl156188156294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156186156287_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl156188156294_))
                                                    (let ((_e156189156297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl156188156294_))))
                                                      (let ((_hd156190156301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e156189156297_)))
                    (_tl156191156304_
                     (let () (declare (not safe)) (##cdr _e156189156297_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl156191156304_))
                    (let ((_e156192156307_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl156191156304_))))
                      (let ((_hd156193156311_
                             (let ()
                               (declare (not safe))
                               (##car _e156192156307_)))
                            (_tl156194156314_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156192156307_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156194156314_))
                            ((lambda (_L156317_
                                      _L156319_
                                      _L156320_
                                      _L156321_
                                      _L156322_
                                      _L156323_
                                      _L156324_
                                      _L156325_
                                      _L156326_
                                      _L156327_)
                               (let ((__tmp158970
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp158936
                                      (let ((__tmp158967
                                             (let ((__tmp158969
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp158968
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L156327_ '()))))
                                               (declare (not safe))
                                               (cons __tmp158969 __tmp158968)))
                                            (__tmp158937
                                             (let ((__tmp158964
                                                    (let ((__tmp158966
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp158965
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L156326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp158966 __tmp158965)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158938
                                                    (let ((__tmp158961
                                                           (let ((__tmp158963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp158962
                          (let () (declare (not safe)) (cons _L156325_ '()))))
                     (declare (not safe))
                     (cons __tmp158963 __tmp158962)))
                  (__tmp158939
                   (let ((__tmp158958
                          (let ((__tmp158960
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp158959
                                 (let ()
                                   (declare (not safe))
                                   (cons _L156324_ '()))))
                            (declare (not safe))
                            (cons __tmp158960 __tmp158959)))
                         (__tmp158940
                          (let ((__tmp158955
                                 (let ((__tmp158957
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp158956
                                        (let ()
                                          (declare (not safe))
                                          (cons _L156323_ '()))))
                                   (declare (not safe))
                                   (cons __tmp158957 __tmp158956)))
                                (__tmp158941
                                 (let ((__tmp158952
                                        (let ((__tmp158954
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp158953
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L156322_ '()))))
                                          (declare (not safe))
                                          (cons __tmp158954 __tmp158953)))
                                       (__tmp158942
                                        (let ((__tmp158943
                                               (let ((__tmp158944
                                                      (let ((__tmp158949
                                                             (let ((__tmp158951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp158950
                            (let ()
                              (declare (not safe))
                              (cons _L156319_ '()))))
                       (declare (not safe))
                       (cons __tmp158951 __tmp158950)))
                    (__tmp158945
                     (let ((__tmp158946
                            (let ((__tmp158948
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp158947
                                   (let ()
                                     (declare (not safe))
                                     (cons _L156317_ '()))))
                              (declare (not safe))
                              (cons __tmp158948 __tmp158947))))
                       (declare (not safe))
                       (cons __tmp158946 '()))))
                (declare (not safe))
                (cons __tmp158949 __tmp158945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L156320_
                                                       __tmp158944))))
                                          (declare (not safe))
                                          (cons _L156321_ __tmp158943))))
                                   (declare (not safe))
                                   (cons __tmp158952 __tmp158942))))
                            (declare (not safe))
                            (cons __tmp158955 __tmp158941))))
                     (declare (not safe))
                     (cons __tmp158958 __tmp158940))))
              (declare (not safe))
              (cons __tmp158961 __tmp158939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158964
                                                     __tmp158938))))
                                        (declare (not safe))
                                        (cons __tmp158967 __tmp158937))))
                                 (declare (not safe))
                                 (cons __tmp158970 __tmp158936)))
                             _hd156193156311_
                             _hd156190156301_
                             _hd156187156291_
                             _hd156184156281_
                             _hd156181156271_
                             _hd156178156261_
                             _hd156175156251_
                             _hd156172156241_
                             _hd156169156231_
                             _hd156166156221_)
                            (_g156150156200_ _g156151156204_))))
                    (_g156150156200_ _g156151156204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g156150156200_
                                                     _g156151156204_))))
                                            (_g156150156200_
                                             _g156151156204_))))
                                    (_g156150156200_ _g156151156204_))))
                            (_g156150156200_ _g156151156204_))))
                    (_g156150156200_ _g156151156204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g156150156200_
                                                     _g156151156204_))))
                                            (_g156150156200_
                                             _g156151156204_))))
                                    (_g156150156200_ _g156151156204_))))
                            (_g156150156200_ _g156151156204_))))
                    (_g156150156200_ _g156151156204_)))))
        (_g156149156367_ _$stx156146_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx156371_)
      (let* ((_g156375156389_
              (lambda (_g156376156385_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156376156385_))))
             (_g156374156430_
              (lambda (_g156376156393_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156376156393_))
                    (let ((_e156378156396_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156376156393_))))
                      (let ((_hd156379156400_
                             (let ()
                               (declare (not safe))
                               (##car _e156378156396_)))
                            (_tl156380156403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156378156396_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156380156403_))
                            (let ((_e156381156406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156380156403_))))
                              (let ((_hd156382156410_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156381156406_)))
                                    (_tl156383156413_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156381156406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156383156413_))
                                    ((lambda (_L156416_)
                                       (let ((__tmp158975
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp158971
                                              (let ((__tmp158972
                                                     (let ((__tmp158974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp158973
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L156416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp158974 __tmp158973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158972 '()))))
                                         (declare (not safe))
                                         (cons __tmp158975 __tmp158971)))
                                     _hd156382156410_)
                                    (_g156375156389_ _g156376156393_))))
                            (_g156375156389_ _g156376156393_))))
                    (_g156375156389_ _g156376156393_)))))
        (_g156374156430_ _$stx156371_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx156434_)
      (let* ((_g156438156452_
              (lambda (_g156439156448_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156439156448_))))
             (_g156437156493_
              (lambda (_g156439156456_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156439156456_))
                    (let ((_e156441156459_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156439156456_))))
                      (let ((_hd156442156463_
                             (let ()
                               (declare (not safe))
                               (##car _e156441156459_)))
                            (_tl156443156466_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156441156459_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156443156466_))
                            (let ((_e156444156469_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156443156466_))))
                              (let ((_hd156445156473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156444156469_)))
                                    (_tl156446156476_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156444156469_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156446156476_))
                                    ((lambda (_L156479_)
                                       (let ((__tmp158980
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp158976
                                              (let ((__tmp158977
                                                     (let ((__tmp158979
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp158978
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L156479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp158979 __tmp158978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158977 '()))))
                                         (declare (not safe))
                                         (cons __tmp158980 __tmp158976)))
                                     _hd156445156473_)
                                    (_g156438156452_ _g156439156456_))))
                            (_g156438156452_ _g156439156456_))))
                    (_g156438156452_ _g156439156456_)))))
        (_g156437156493_ _$stx156434_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx156497_)
      (let* ((_g156501156523_
              (lambda (_g156502156519_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156502156519_))))
             (_g156500156592_
              (lambda (_g156502156527_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156502156527_))
                    (let ((_e156506156530_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156502156527_))))
                      (let ((_hd156507156534_
                             (let ()
                               (declare (not safe))
                               (##car _e156506156530_)))
                            (_tl156508156537_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156506156530_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156508156537_))
                            (let ((_e156509156540_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156508156537_))))
                              (let ((_hd156510156544_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156509156540_)))
                                    (_tl156511156547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156509156540_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl156511156547_))
                                    (let ((_e156512156550_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl156511156547_))))
                                      (let ((_hd156513156554_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156512156550_)))
                                            (_tl156514156557_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156512156550_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl156514156557_))
                                            (let ((_e156515156560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl156514156557_))))
                                              (let ((_hd156516156564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156515156560_)))
                                                    (_tl156517156567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156515156560_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156517156567_))
                                                    ((lambda (_L156570_
                                                              _L156572_
                                                              _L156573_)
                                                       (let ((__tmp158990
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp158981
                      (let ((__tmp158987
                             (let ((__tmp158989
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp158988
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156573_ '()))))
                               (declare (not safe))
                               (cons __tmp158989 __tmp158988)))
                            (__tmp158982
                             (let ((__tmp158984
                                    (let ((__tmp158986
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp158985
                                           (let ()
                                             (declare (not safe))
                                             (cons _L156572_ '()))))
                                      (declare (not safe))
                                      (cons __tmp158986 __tmp158985)))
                                   (__tmp158983
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156570_ '()))))
                               (declare (not safe))
                               (cons __tmp158984 __tmp158983))))
                        (declare (not safe))
                        (cons __tmp158987 __tmp158982))))
                 (declare (not safe))
                 (cons __tmp158990 __tmp158981)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd156516156564_
                                                     _hd156513156554_
                                                     _hd156510156544_)
                                                    (_g156501156523_
                                                     _g156502156527_))))
                                            (_g156501156523_
                                             _g156502156527_))))
                                    (_g156501156523_ _g156502156527_))))
                            (_g156501156523_ _g156502156527_))))
                    (_g156501156523_ _g156502156527_)))))
        (_g156500156592_ _$stx156497_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx156596_)
      (let* ((_g156600156622_
              (lambda (_g156601156618_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156601156618_))))
             (_g156599156691_
              (lambda (_g156601156626_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156601156626_))
                    (let ((_e156605156629_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156601156626_))))
                      (let ((_hd156606156633_
                             (let ()
                               (declare (not safe))
                               (##car _e156605156629_)))
                            (_tl156607156636_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156605156629_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156607156636_))
                            (let ((_e156608156639_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156607156636_))))
                              (let ((_hd156609156643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156608156639_)))
                                    (_tl156610156646_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156608156639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl156610156646_))
                                    (let ((_e156611156649_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl156610156646_))))
                                      (let ((_hd156612156653_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156611156649_)))
                                            (_tl156613156656_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156611156649_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl156613156656_))
                                            (let ((_e156614156659_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl156613156656_))))
                                              (let ((_hd156615156663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156614156659_)))
                                                    (_tl156616156666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156614156659_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156616156666_))
                                                    ((lambda (_L156669_
                                                              _L156671_
                                                              _L156672_)
                                                       (let ((__tmp159000
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp158991
                      (let ((__tmp158997
                             (let ((__tmp158999
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp158998
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156672_ '()))))
                               (declare (not safe))
                               (cons __tmp158999 __tmp158998)))
                            (__tmp158992
                             (let ((__tmp158994
                                    (let ((__tmp158996
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp158995
                                           (let ()
                                             (declare (not safe))
                                             (cons _L156671_ '()))))
                                      (declare (not safe))
                                      (cons __tmp158996 __tmp158995)))
                                   (__tmp158993
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156669_ '()))))
                               (declare (not safe))
                               (cons __tmp158994 __tmp158993))))
                        (declare (not safe))
                        (cons __tmp158997 __tmp158992))))
                 (declare (not safe))
                 (cons __tmp159000 __tmp158991)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd156615156663_
                                                     _hd156612156653_
                                                     _hd156609156643_)
                                                    (_g156600156622_
                                                     _g156601156626_))))
                                            (_g156600156622_
                                             _g156601156626_))))
                                    (_g156600156622_ _g156601156626_))))
                            (_g156600156622_ _g156601156626_))))
                    (_g156600156622_ _g156601156626_)))))
        (_g156599156691_ _$stx156596_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx156695_)
      (let* ((___stx158510158511_ _$stx156695_)
             (_g156703156771_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158510158511_)))))
        (let ((___kont158513158514_
               (lambda (_L157049_ _L157051_)
                 (let ((__tmp159021
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp159001
                        (let ((__tmp159017
                               (let ((__tmp159020
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp159018
                                      (let ((__tmp159019
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp159019 '()))))
                                 (declare (not safe))
                                 (cons __tmp159020 __tmp159018)))
                              (__tmp159002
                               (let ((__tmp159014
                                      (let ((__tmp159016
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp159015
                                             (let ()
                                               (declare (not safe))
                                               (cons _L157051_ '()))))
                                        (declare (not safe))
                                        (cons __tmp159016 __tmp159015)))
                                     (__tmp159003
                                      (let ((__tmp159004
                                             (let ((__tmp159005
                                                    (let ((__tmp159006
                                                           (let ((__tmp159013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp159007
                          (let ((__tmp159008
                                 (let ((__tmp159012
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp159009
                                        (let ((__tmp159010
                                               (let ((__tmp159011
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L157049_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp159011))))
                                          (declare (not safe))
                                          (cons _L157051_ __tmp159010))))
                                   (declare (not safe))
                                   (cons __tmp159012 __tmp159009))))
                            (declare (not safe))
                            (cons __tmp159008 '()))))
                     (declare (not safe))
                     (cons __tmp159013 __tmp159007))))
              (declare (not safe))
              (cons __tmp159006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L157049_ __tmp159005))))
                                        (declare (not safe))
                                        (cons '#f __tmp159004))))
                                 (declare (not safe))
                                 (cons __tmp159014 __tmp159003))))
                          (declare (not safe))
                          (cons __tmp159017 __tmp159002))))
                   (declare (not safe))
                   (cons __tmp159021 __tmp159001))))
              (___kont158515158516_
               (lambda (_L156980_ _L156982_)
                 (let ((__tmp159022
                        (let ((__tmp159023
                               (let ((__tmp159024
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L156980_ __tmp159024))))
                          (declare (not safe))
                          (cons 'primitive: __tmp159023))))
                   (declare (not safe))
                   (cons _L156982_ __tmp159022))))
              (___kont158517158518_
               (lambda (_L156919_ _L156921_)
                 (let ((__tmp159038
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp159025
                        (let ((__tmp159034
                               (let ((__tmp159037
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp159035
                                      (let ((__tmp159036
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp159036 '()))))
                                 (declare (not safe))
                                 (cons __tmp159037 __tmp159035)))
                              (__tmp159026
                               (let ((__tmp159031
                                      (let ((__tmp159033
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp159032
                                             (let ()
                                               (declare (not safe))
                                               (cons _L156921_ '()))))
                                        (declare (not safe))
                                        (cons __tmp159033 __tmp159032)))
                                     (__tmp159027
                                      (let ((__tmp159028
                                             (let ((__tmp159030
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp159029
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L156919_ '()))))
                                               (declare (not safe))
                                               (cons __tmp159030
                                                     __tmp159029))))
                                        (declare (not safe))
                                        (cons __tmp159028 '()))))
                                 (declare (not safe))
                                 (cons __tmp159031 __tmp159027))))
                          (declare (not safe))
                          (cons __tmp159034 __tmp159026))))
                   (declare (not safe))
                   (cons __tmp159038 __tmp159025))))
              (___kont158519158520_
               (lambda (_L156851_ _L156853_)
                 (let ((__tmp159052
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp159039
                        (let ((__tmp159048
                               (let ((__tmp159051
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp159049
                                      (let ((__tmp159050
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp159050 '()))))
                                 (declare (not safe))
                                 (cons __tmp159051 __tmp159049)))
                              (__tmp159040
                               (let ((__tmp159045
                                      (let ((__tmp159047
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp159046
                                             (let ()
                                               (declare (not safe))
                                               (cons _L156853_ '()))))
                                        (declare (not safe))
                                        (cons __tmp159047 __tmp159046)))
                                     (__tmp159041
                                      (let ((__tmp159042
                                             (let ((__tmp159044
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp159043
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L156851_ '()))))
                                               (declare (not safe))
                                               (cons __tmp159044
                                                     __tmp159043))))
                                        (declare (not safe))
                                        (cons __tmp159042 '()))))
                                 (declare (not safe))
                                 (cons __tmp159045 __tmp159041))))
                          (declare (not safe))
                          (cons __tmp159048 __tmp159040))))
                   (declare (not safe))
                   (cons __tmp159052 __tmp159039))))
              (___kont158521158522_
               (lambda (_L156798_ _L156800_)
                 (let ((__tmp159053
                        (let ((__tmp159054
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L156798_ __tmp159054))))
                   (declare (not safe))
                   (cons _L156800_ __tmp159053)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx158510158511_))
              (let ((_e156707157005_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx158510158511_))))
                (let ((_tl156709157012_
                       (let () (declare (not safe)) (##cdr _e156707157005_)))
                      (_hd156708157009_
                       (let () (declare (not safe)) (##car _e156707157005_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl156709157012_))
                      (let ((_e156710157015_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl156709157012_))))
                        (let ((_tl156712157022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156710157015_)))
                              (_hd156711157019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156710157015_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156712157022_))
                              (let ((_e156713157025_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl156712157022_))))
                                (let ((_tl156715157032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156713157025_)))
                                      (_hd156714157029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156713157025_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd156714157029_))
                                      (let ((_e156716157035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd156714157029_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e156716157035_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156715157032_))
                                                (let ((_e156717157039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl156715157032_))))
                                                  (let ((_tl156719157046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156717157039_)))
                                                        (_hd156718157043_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156717157039_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156719157046_))
                                                        (___kont158513158514_
                                                         _hd156718157043_
                                                         _hd156711157019_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd156711157019_))
                                                            (let ((_e156728156966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd156711157019_))))
                      (declare (not safe))
                      (_g156703156771_))
                    (let () (declare (not safe)) (_g156703156771_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd156711157019_))
                                                    (let ((_e156728156966_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd156711157019_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e156728156966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl156715157032_))
                      (___kont158515158516_ _hd156714157029_ _hd156708157009_)
                      (let () (declare (not safe)) (_g156703156771_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl156715157032_))
                      (___kont158519158520_ _hd156714157029_ _hd156711157019_)
                      (let () (declare (not safe)) (_g156703156771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156715157032_))
                                                        (___kont158519158520_
                                                         _hd156714157029_
                                                         _hd156711157019_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156703156771_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd156711157019_))
                                                (let ((_e156728156966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd156711157019_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e156728156966_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl156715157032_))
                                                          (___kont158515158516_
                                                           _hd156714157029_
                                                           _hd156708157009_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl156715157032_))
                      (let ((_e156744156909_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl156715157032_))))
                        (let ((_tl156746156916_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156744156909_)))
                              (_hd156745156913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156744156909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl156746156916_))
                              (___kont158517158518_
                               _hd156745156913_
                               _hd156714157029_)
                              (let ()
                                (declare (not safe))
                                (_g156703156771_)))))
                      (let () (declare (not safe)) (_g156703156771_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl156715157032_))
                  (___kont158519158520_ _hd156714157029_ _hd156711157019_)
                  (let () (declare (not safe)) (_g156703156771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156715157032_))
                                                    (___kont158519158520_
                                                     _hd156714157029_
                                                     _hd156711157019_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156703156771_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd156711157019_))
                                          (let ((_e156728156966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd156711157019_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e156728156966_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156715157032_))
                                                    (___kont158515158516_
                                                     _hd156714157029_
                                                     _hd156708157009_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl156715157032_))
                                                        (let ((_e156744156909_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl156715157032_))))
                  (let ((_tl156746156916_
                         (let () (declare (not safe)) (##cdr _e156744156909_)))
                        (_hd156745156913_
                         (let ()
                           (declare (not safe))
                           (##car _e156744156909_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl156746156916_))
                        (___kont158517158518_
                         _hd156745156913_
                         _hd156714157029_)
                        (let () (declare (not safe)) (_g156703156771_)))))
                (let () (declare (not safe)) (_g156703156771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156715157032_))
                                                    (___kont158519158520_
                                                     _hd156714157029_
                                                     _hd156711157019_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156703156771_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156715157032_))
                                              (___kont158519158520_
                                               _hd156714157029_
                                               _hd156711157019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g156703156771_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd156711157019_))
                                  (let ((_e156728156966_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd156711157019_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl156712157022_))
                                        (___kont158521158522_
                                         _hd156711157019_
                                         _hd156708157009_)
                                        (let ()
                                          (declare (not safe))
                                          (_g156703156771_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl156712157022_))
                                      (___kont158521158522_
                                       _hd156711157019_
                                       _hd156708157009_)
                                      (let ()
                                        (declare (not safe))
                                        (_g156703156771_)))))))
                      (let () (declare (not safe)) (_g156703156771_)))))
              (let () (declare (not safe)) (_g156703156771_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx157073_)
      (let* ((___stx158650158651_ _$stx157073_)
             (_g157078157133_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158650158651_)))))
        (let ((___kont158653158654_
               (lambda (_L157318_ _L157320_)
                 (let ((__tmp159070
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp159055
                        (let ((__tmp159066
                               (let ((__tmp159069
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp159067
                                      (let ((__tmp159068
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp159068 '()))))
                                 (declare (not safe))
                                 (cons __tmp159069 __tmp159067)))
                              (__tmp159056
                               (let ((__tmp159057
                                      (let ((__tmp159065
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp159058
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L157318_
                                                  _L157320_))
                                               (let ((__tmp159059
                                                      (lambda (_g157337157341_
                                                               _g157338157344_
                                                               _g157339157346_)
                                                        (let ((__tmp159060
                                                               (let ((__tmp159064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp159061
                              (let ((__tmp159062
                                     (let ((__tmp159063
                                            (let ()
                                              (declare (not safe))
                                              (cons _g157337157341_ '()))))
                                       (declare (not safe))
                                       (cons _g157338157344_ __tmp159063))))
                                (declare (not safe))
                                (cons 'primitive: __tmp159062))))
                         (declare (not safe))
                         (cons __tmp159064 __tmp159061))))
                  (declare (not safe))
                  (cons __tmp159060 _g157339157346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp159059
                                                         '()
                                                         _L157318_
                                                         _L157320_)))))
                                        (declare (not safe))
                                        (cons __tmp159065 __tmp159058))))
                                 (declare (not safe))
                                 (cons __tmp159057 '()))))
                          (declare (not safe))
                          (cons __tmp159066 __tmp159056))))
                   (declare (not safe))
                   (cons __tmp159070 __tmp159055))))
              (___kont158657158658_
               (lambda (_L157204_ _L157206_)
                 (let ((__tmp159085
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp159071
                        (let ((__tmp159081
                               (let ((__tmp159084
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp159082
                                      (let ((__tmp159083
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp159083 '()))))
                                 (declare (not safe))
                                 (cons __tmp159084 __tmp159082)))
                              (__tmp159072
                               (let ((__tmp159073
                                      (let ((__tmp159080
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp159074
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L157204_
                                                  _L157206_))
                                               (let ((__tmp159075
                                                      (lambda (_g157221157225_
                                                               _g157222157228_
                                                               _g157223157230_)
                                                        (let ((__tmp159076
                                                               (let ((__tmp159079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp159077
                              (let ((__tmp159078
                                     (let ()
                                       (declare (not safe))
                                       (cons _g157221157225_ '()))))
                                (declare (not safe))
                                (cons _g157222157228_ __tmp159078))))
                         (declare (not safe))
                         (cons __tmp159079 __tmp159077))))
                  (declare (not safe))
                  (cons __tmp159076 _g157223157230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp159075
                                                         '()
                                                         _L157204_
                                                         _L157206_)))))
                                        (declare (not safe))
                                        (cons __tmp159080 __tmp159074))))
                                 (declare (not safe))
                                 (cons __tmp159073 '()))))
                          (declare (not safe))
                          (cons __tmp159081 __tmp159072))))
                   (declare (not safe))
                   (cons __tmp159085 __tmp159071)))))
          (let* ((___match158701158702_
                  (lambda (_e157108157140_
                           _hd157109157144_
                           _tl157110157147_
                           ___splice158659158660_
                           _target157111157150_
                           _tl157113157153_)
                    (letrec ((_loop157114157156_
                              (lambda (_hd157112157160_
                                       _dispatch157118157163_
                                       _arity157119157165_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157112157160_))
                                    (let ((_e157115157168_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd157112157160_))))
                                      (let ((_lp-tl157117157175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157115157168_)))
                                            (_lp-hd157116157172_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157115157168_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd157116157172_))
                                            (let ((_e157122157178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd157116157172_))))
                                              (let ((_tl157124157185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e157122157178_)))
                                                    (_hd157123157182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e157122157178_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl157124157185_))
                                                    (let ((_e157125157188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl157124157185_))))
                                                      (let ((_tl157127157195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e157125157188_)))
                    (_hd157126157192_
                     (let () (declare (not safe)) (##car _e157125157188_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl157127157195_))
                    (_loop157114157156_
                     _lp-tl157117157175_
                     (let ()
                       (declare (not safe))
                       (cons _hd157126157192_ _dispatch157118157163_))
                     (let ()
                       (declare (not safe))
                       (cons _hd157123157182_ _arity157119157165_)))
                    (let () (declare (not safe)) (_g157078157133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157078157133_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g157078157133_)))))
                                    (let ((_arity157121157201_
                                           (reverse _arity157119157165_))
                                          (_dispatch157120157198_
                                           (reverse _dispatch157118157163_)))
                                      (___kont158657158658_
                                       _dispatch157120157198_
                                       _arity157121157201_))))))
                      (_loop157114157156_ _target157111157150_ '() '()))))
                 (___match158693158694_
                  (lambda (_e157108157140_ _hd157109157144_ _tl157110157147_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl157110157147_))
                        (let ((___splice158659158660_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl157110157147_
                                  '0))))
                          (let ((_tl157113157153_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice158659158660_ '1)))
                                (_target157111157150_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice158659158660_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl157113157153_))
                                (___match158701158702_
                                 _e157108157140_
                                 _hd157109157144_
                                 _tl157110157147_
                                 ___splice158659158660_
                                 _target157111157150_
                                 _tl157113157153_)
                                (let ()
                                  (declare (not safe))
                                  (_g157078157133_)))))
                        (let () (declare (not safe)) (_g157078157133_)))))
                 (___match158687158688_
                  (lambda (_e157082157240_
                           _hd157083157244_
                           _tl157084157247_
                           _e157085157250_
                           _hd157086157254_
                           _tl157087157257_
                           _e157088157260_
                           ___splice158655158656_
                           _target157089157264_
                           _tl157091157267_)
                    (letrec ((_loop157092157270_
                              (lambda (_hd157090157274_
                                       _dispatch157096157277_
                                       _arity157097157279_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157090157274_))
                                    (let ((_e157093157282_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd157090157274_))))
                                      (let ((_lp-tl157095157289_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157093157282_)))
                                            (_lp-hd157094157286_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157093157282_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd157094157286_))
                                            (let ((_e157100157292_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd157094157286_))))
                                              (let ((_tl157102157299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e157100157292_)))
                                                    (_hd157101157296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e157100157292_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl157102157299_))
                                                    (let ((_e157103157302_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl157102157299_))))
                                                      (let ((_tl157105157309_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e157103157302_)))
                    (_hd157104157306_
                     (let () (declare (not safe)) (##car _e157103157302_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl157105157309_))
                    (_loop157092157270_
                     _lp-tl157095157289_
                     (let ()
                       (declare (not safe))
                       (cons _hd157104157306_ _dispatch157096157277_))
                     (let ()
                       (declare (not safe))
                       (cons _hd157101157296_ _arity157097157279_)))
                    (___match158693158694_
                     _e157082157240_
                     _hd157083157244_
                     _tl157084157247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match158693158694_
                                                     _e157082157240_
                                                     _hd157083157244_
                                                     _tl157084157247_))))
                                            (___match158693158694_
                                             _e157082157240_
                                             _hd157083157244_
                                             _tl157084157247_))))
                                    (let ((_arity157099157315_
                                           (reverse _arity157097157279_))
                                          (_dispatch157098157312_
                                           (reverse _dispatch157096157277_)))
                                      (___kont158653158654_
                                       _dispatch157098157312_
                                       _arity157099157315_))))))
                      (_loop157092157270_ _target157089157264_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158650158651_))
                (let ((_e157082157240_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158650158651_))))
                  (let ((_tl157084157247_
                         (let () (declare (not safe)) (##cdr _e157082157240_)))
                        (_hd157083157244_
                         (let ()
                           (declare (not safe))
                           (##car _e157082157240_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157084157247_))
                        (let ((_e157085157250_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157084157247_))))
                          (let ((_tl157087157257_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157085157250_)))
                                (_hd157086157254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157085157250_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd157086157254_))
                                (let ((_e157088157260_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd157086157254_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e157088157260_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl157087157257_))
                                          (let ((___splice158655158656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl157087157257_
                                                    '0))))
                                            (let ((_tl157091157267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158655158656_
                                                      '1)))
                                                  (_target157089157264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158655158656_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157091157267_))
                                                  (___match158687158688_
                                                   _e157082157240_
                                                   _hd157083157244_
                                                   _tl157084157247_
                                                   _e157085157250_
                                                   _hd157086157254_
                                                   _tl157087157257_
                                                   _e157088157260_
                                                   ___splice158655158656_
                                                   _target157089157264_
                                                   _tl157091157267_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl157084157247_))
                                                      (let ((___splice158659158660_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl157084157247_ '0))))
                (let ((_tl157113157153_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158659158660_ '1)))
                      (_target157111157150_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158659158660_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl157113157153_))
                      (___match158701158702_
                       _e157082157240_
                       _hd157083157244_
                       _tl157084157247_
                       ___splice158659158660_
                       _target157111157150_
                       _tl157113157153_)
                      (let () (declare (not safe)) (_g157078157133_)))))
              (let () (declare (not safe)) (_g157078157133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl157084157247_))
                                              (let ((___splice158659158660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl157084157247_
                                                        '0))))
                                                (let ((_tl157113157153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice158659158660_
                                                          '1)))
                                                      (_target157111157150_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice158659158660_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157113157153_))
                                                      (___match158701158702_
                                                       _e157082157240_
                                                       _hd157083157244_
                                                       _tl157084157247_
                                                       ___splice158659158660_
                                                       _target157111157150_
                                                       _tl157113157153_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g157078157133_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g157078157133_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl157084157247_))
                                          (let ((___splice158659158660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl157084157247_
                                                    '0))))
                                            (let ((_tl157113157153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158659158660_
                                                      '1)))
                                                  (_target157111157150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158659158660_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157113157153_))
                                                  (___match158701158702_
                                                   _e157082157240_
                                                   _hd157083157244_
                                                   _tl157084157247_
                                                   ___splice158659158660_
                                                   _target157111157150_
                                                   _tl157113157153_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g157078157133_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g157078157133_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl157084157247_))
                                    (let ((___splice158659158660_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl157084157247_
                                              '0))))
                                      (let ((_tl157113157153_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158659158660_
                                                '1)))
                                            (_target157111157150_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158659158660_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157113157153_))
                                            (___match158701158702_
                                             _e157082157240_
                                             _hd157083157244_
                                             _tl157084157247_
                                             ___splice158659158660_
                                             _target157111157150_
                                             _tl157113157153_)
                                            (let ()
                                              (declare (not safe))
                                              (_g157078157133_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g157078157133_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157084157247_))
                            (let ((___splice158659158660_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157084157247_
                                      '0))))
                              (let ((_tl157113157153_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice158659158660_
                                        '1)))
                                    (_target157111157150_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice158659158660_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl157113157153_))
                                    (___match158701158702_
                                     _e157082157240_
                                     _hd157083157244_
                                     _tl157084157247_
                                     ___splice158659158660_
                                     _target157111157150_
                                     _tl157113157153_)
                                    (let ()
                                      (declare (not safe))
                                      (_g157078157133_)))))
                            (let () (declare (not safe)) (_g157078157133_))))))
                (let () (declare (not safe)) (_g157078157133_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx157355_)
      (let* ((_g157359157377_
              (lambda (_g157360157373_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157360157373_))))
             (_g157358157432_
              (lambda (_g157360157381_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157360157381_))
                    (let ((_e157363157384_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157360157381_))))
                      (let ((_hd157364157388_
                             (let ()
                               (declare (not safe))
                               (##car _e157363157384_)))
                            (_tl157365157391_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157363157384_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157365157391_))
                            (let ((_e157366157394_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157365157391_))))
                              (let ((_hd157367157398_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157366157394_)))
                                    (_tl157368157401_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157366157394_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157368157401_))
                                    (let ((_e157369157404_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157368157401_))))
                                      (let ((_hd157370157408_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157369157404_)))
                                            (_tl157371157411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157369157404_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157371157411_))
                                            ((lambda (_L157414_ _L157416_)
                                               (let ((__tmp159099
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp159086
                                                      (let ((__tmp159095
                                                             (let ((__tmp159098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp159096
                            (let ((__tmp159097
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp159097 '()))))
                       (declare (not safe))
                       (cons __tmp159098 __tmp159096)))
                    (__tmp159087
                     (let ((__tmp159092
                            (let ((__tmp159094
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp159093
                                   (let ()
                                     (declare (not safe))
                                     (cons _L157416_ '()))))
                              (declare (not safe))
                              (cons __tmp159094 __tmp159093)))
                           (__tmp159088
                            (let ((__tmp159089
                                   (let ((__tmp159091
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp159090
                                          (let ()
                                            (declare (not safe))
                                            (cons _L157414_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159091 __tmp159090))))
                              (declare (not safe))
                              (cons __tmp159089 '()))))
                       (declare (not safe))
                       (cons __tmp159092 __tmp159088))))
                (declare (not safe))
                (cons __tmp159095 __tmp159087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159099
                                                       __tmp159086)))
                                             _hd157370157408_
                                             _hd157367157398_)
                                            (_g157359157377_
                                             _g157360157381_))))
                                    (_g157359157377_ _g157360157381_))))
                            (_g157359157377_ _g157360157381_))))
                    (_g157359157377_ _g157360157381_)))))
        (_g157358157432_ _$stx157355_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx157436_)
      (let* ((_g157440157458_
              (lambda (_g157441157454_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157441157454_))))
             (_g157439157513_
              (lambda (_g157441157462_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157441157462_))
                    (let ((_e157444157465_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157441157462_))))
                      (let ((_hd157445157469_
                             (let ()
                               (declare (not safe))
                               (##car _e157444157465_)))
                            (_tl157446157472_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157444157465_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157446157472_))
                            (let ((_e157447157475_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157446157472_))))
                              (let ((_hd157448157479_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157447157475_)))
                                    (_tl157449157482_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157447157475_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157449157482_))
                                    (let ((_e157450157485_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157449157482_))))
                                      (let ((_hd157451157489_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157450157485_)))
                                            (_tl157452157492_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157450157485_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157452157492_))
                                            ((lambda (_L157495_ _L157497_)
                                               (let ((__tmp159113
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp159100
                                                      (let ((__tmp159109
                                                             (let ((__tmp159112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp159110
                            (let ((__tmp159111
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp159111 '()))))
                       (declare (not safe))
                       (cons __tmp159112 __tmp159110)))
                    (__tmp159101
                     (let ((__tmp159106
                            (let ((__tmp159108
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp159107
                                   (let ()
                                     (declare (not safe))
                                     (cons _L157497_ '()))))
                              (declare (not safe))
                              (cons __tmp159108 __tmp159107)))
                           (__tmp159102
                            (let ((__tmp159103
                                   (let ((__tmp159105
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp159104
                                          (let ()
                                            (declare (not safe))
                                            (cons _L157495_ '()))))
                                     (declare (not safe))
                                     (cons __tmp159105 __tmp159104))))
                              (declare (not safe))
                              (cons __tmp159103 '()))))
                       (declare (not safe))
                       (cons __tmp159106 __tmp159102))))
                (declare (not safe))
                (cons __tmp159109 __tmp159101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp159113
                                                       __tmp159100)))
                                             _hd157451157489_
                                             _hd157448157479_)
                                            (_g157440157458_
                                             _g157441157462_))))
                                    (_g157440157458_ _g157441157462_))))
                            (_g157440157458_ _g157441157462_))))
                    (_g157440157458_ _g157441157462_)))))
        (_g157439157513_ _$stx157436_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx157517_)
      (let* ((___stx158704158705_ _$stx157517_)
             (_g157524157595_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158704158705_)))))
        (let ((___kont158707158708_
               (lambda (_L157886_ _L157888_)
                 (let ((__tmp159119
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp159114
                        (let ((__tmp159115
                               (let ((__tmp159116
                                      (let ((__tmp159118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp159117
                                             (let ()
                                               (declare (not safe))
                                               (cons _L157886_ '()))))
                                        (declare (not safe))
                                        (cons __tmp159118 __tmp159117))))
                                 (declare (not safe))
                                 (cons __tmp159116 '()))))
                          (declare (not safe))
                          (cons _L157888_ __tmp159115))))
                   (declare (not safe))
                   (cons __tmp159119 __tmp159114))))
              (___kont158709158710_
               (lambda (_L157805_ _L157807_)
                 (let ((__tmp159128
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp159120
                        (let ((__tmp159121
                               (let ((__tmp159122
                                      (let ((__tmp159127
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp159123
                                             (let ((__tmp159124
                                                    (lambda (_g157826157829_
                                                             _g157827157832_)
                                                      (let ((__tmp159125
                                                             (let ((__tmp159126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g157826157829_ __tmp159126))))
                (declare (not safe))
                (cons __tmp159125 _g157827157832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp159124
                                                       '()
                                                       _L157805_))))
                                        (declare (not safe))
                                        (cons __tmp159127 __tmp159123))))
                                 (declare (not safe))
                                 (cons __tmp159122 '()))))
                          (declare (not safe))
                          (cons _L157807_ __tmp159121))))
                   (declare (not safe))
                   (cons __tmp159128 __tmp159120))))
              (___kont158713158714_
               (lambda (_L157717_ _L157719_)
                 (let ((__tmp159135
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp159129
                        (let ((__tmp159130
                               (let ((__tmp159131
                                      (let ((__tmp159134
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp159132
                                             (let ((__tmp159133
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L157717_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp159133))))
                                        (declare (not safe))
                                        (cons __tmp159134 __tmp159132))))
                                 (declare (not safe))
                                 (cons __tmp159131 '()))))
                          (declare (not safe))
                          (cons _L157719_ __tmp159130))))
                   (declare (not safe))
                   (cons __tmp159135 __tmp159129))))
              (___kont158715158716_
               (lambda (_L157652_ _L157654_)
                 (let ((__tmp159145
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp159136
                        (let ((__tmp159137
                               (let ((__tmp159138
                                      (let ((__tmp159144
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp159139
                                             (let ((__tmp159140
                                                    (let ((__tmp159141
                                                           (lambda (_g157671157674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g157672157677_)
                     (let ((__tmp159142
                            (let ((__tmp159143
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g157671157674_ __tmp159143))))
                       (declare (not safe))
                       (cons __tmp159142 _g157672157677_)))))
              (declare (not safe))
              (foldr1 __tmp159141 '() _L157652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp159140))))
                                        (declare (not safe))
                                        (cons __tmp159144 __tmp159139))))
                                 (declare (not safe))
                                 (cons __tmp159138 '()))))
                          (declare (not safe))
                          (cons _L157654_ __tmp159137))))
                   (declare (not safe))
                   (cons __tmp159145 __tmp159136)))))
          (let* ((___match158823158824_
                  (lambda (_e157575157602_
                           _hd157576157606_
                           _tl157577157609_
                           _e157578157612_
                           _hd157579157616_
                           _tl157580157619_
                           ___splice158717158718_
                           _target157581157622_
                           _tl157583157625_)
                    (letrec ((_loop157584157628_
                              (lambda (_hd157582157632_ _arity157588157635_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157582157632_))
                                    (let ((_e157585157638_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd157582157632_))))
                                      (let ((_lp-tl157587157645_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157585157638_)))
                                            (_lp-hd157586157642_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157585157638_))))
                                        (_loop157584157628_
                                         _lp-tl157587157645_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd157586157642_
                                                 _arity157588157635_)))))
                                    (let ((_arity157589157648_
                                           (reverse _arity157588157635_)))
                                      (___kont158715158716_
                                       _arity157589157648_
                                       _hd157579157616_))))))
                      (_loop157584157628_ _target157581157622_ '()))))
                 (___match158783158784_
                  (lambda (_e157543157741_
                           _hd157544157745_
                           _tl157545157748_
                           _e157546157751_
                           _hd157547157755_
                           _tl157548157758_
                           _e157549157761_
                           _hd157550157765_
                           _tl157551157768_
                           _e157552157771_
                           ___splice158711158712_
                           _target157553157775_
                           _tl157555157778_)
                    (letrec ((_loop157556157781_
                              (lambda (_hd157554157785_ _arity157560157788_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157554157785_))
                                    (let ((_e157557157791_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd157554157785_))))
                                      (let ((_lp-tl157559157798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157557157791_)))
                                            (_lp-hd157558157795_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157557157791_))))
                                        (_loop157556157781_
                                         _lp-tl157559157798_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd157558157795_
                                                 _arity157560157788_)))))
                                    (let ((_arity157561157801_
                                           (reverse _arity157560157788_)))
                                      (___kont158709158710_
                                       _arity157561157801_
                                       _hd157547157755_))))))
                      (_loop157556157781_ _target157553157775_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158704158705_))
                (let ((_e157528157842_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158704158705_))))
                  (let ((_tl157530157849_
                         (let () (declare (not safe)) (##cdr _e157528157842_)))
                        (_hd157529157846_
                         (let ()
                           (declare (not safe))
                           (##car _e157528157842_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157530157849_))
                        (let ((_e157531157852_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157530157849_))))
                          (let ((_tl157533157859_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157531157852_)))
                                (_hd157532157856_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157531157852_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157533157859_))
                                (let ((_e157534157862_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157533157859_))))
                                  (let ((_tl157536157869_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157534157862_)))
                                        (_hd157535157866_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157534157862_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd157535157866_))
                                        (let ((_e157537157872_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd157535157866_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e157537157872_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157536157869_))
                                                  (let ((_e157538157876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl157536157869_))))
                                                    (let ((_tl157540157883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157538157876_)))
                                                          (_hd157539157880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157538157876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157540157883_))
                                                          (___kont158707158708_
                                                           _hd157539157880_
                                                           _hd157532157856_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl157536157869_))
                      (let ((___splice158711158712_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl157536157869_ '0))))
                        (let ((_tl157555157778_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158711158712_ '1)))
                              (_target157553157775_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158711158712_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl157555157778_))
                              (___match158783158784_
                               _e157528157842_
                               _hd157529157846_
                               _tl157530157849_
                               _e157531157852_
                               _hd157532157856_
                               _tl157533157859_
                               _e157534157862_
                               _hd157535157866_
                               _tl157536157869_
                               _e157537157872_
                               ___splice158711158712_
                               _target157553157775_
                               _tl157555157778_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl157533157859_))
                                  (let ((___splice158717158718_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl157533157859_
                                            '0))))
                                    (let ((_tl157583157625_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice158717158718_
                                              '1)))
                                          (_target157581157622_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice158717158718_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157583157625_))
                                          (___match158823158824_
                                           _e157528157842_
                                           _hd157529157846_
                                           _tl157530157849_
                                           _e157531157852_
                                           _hd157532157856_
                                           _tl157533157859_
                                           ___splice158717158718_
                                           _target157581157622_
                                           _tl157583157625_)
                                          (let ()
                                            (declare (not safe))
                                            (_g157524157595_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g157524157595_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl157533157859_))
                          (let ((___splice158717158718_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl157533157859_
                                    '0))))
                            (let ((_tl157583157625_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice158717158718_ '1)))
                                  (_target157581157622_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice158717158718_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl157583157625_))
                                  (___match158823158824_
                                   _e157528157842_
                                   _hd157529157846_
                                   _tl157530157849_
                                   _e157531157852_
                                   _hd157532157856_
                                   _tl157533157859_
                                   ___splice158717158718_
                                   _target157581157622_
                                   _tl157583157625_)
                                  (let ()
                                    (declare (not safe))
                                    (_g157524157595_)))))
                          (let () (declare (not safe)) (_g157524157595_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl157536157869_))
                                                      (let ((___splice158711158712_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl157536157869_ '0))))
                (let ((_tl157555157778_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158711158712_ '1)))
                      (_target157553157775_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158711158712_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl157555157778_))
                      (___match158783158784_
                       _e157528157842_
                       _hd157529157846_
                       _tl157530157849_
                       _e157531157852_
                       _hd157532157856_
                       _tl157533157859_
                       _e157534157862_
                       _hd157535157866_
                       _tl157536157869_
                       _e157537157872_
                       ___splice158711158712_
                       _target157553157775_
                       _tl157555157778_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl157536157869_))
                          (___kont158713158714_
                           _hd157535157866_
                           _hd157532157856_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl157533157859_))
                              (let ((___splice158717158718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl157533157859_
                                        '0))))
                                (let ((_tl157583157625_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice158717158718_
                                          '1)))
                                      (_target157581157622_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice158717158718_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157583157625_))
                                      (___match158823158824_
                                       _e157528157842_
                                       _hd157529157846_
                                       _tl157530157849_
                                       _e157531157852_
                                       _hd157532157856_
                                       _tl157533157859_
                                       ___splice158717158718_
                                       _target157581157622_
                                       _tl157583157625_)
                                      (let ()
                                        (declare (not safe))
                                        (_g157524157595_)))))
                              (let ()
                                (declare (not safe))
                                (_g157524157595_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl157536157869_))
                  (___kont158713158714_ _hd157535157866_ _hd157532157856_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl157533157859_))
                      (let ((___splice158717158718_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl157533157859_ '0))))
                        (let ((_tl157583157625_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158717158718_ '1)))
                              (_target157581157622_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158717158718_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl157583157625_))
                              (___match158823158824_
                               _e157528157842_
                               _hd157529157846_
                               _tl157530157849_
                               _e157531157852_
                               _hd157532157856_
                               _tl157533157859_
                               ___splice158717158718_
                               _target157581157622_
                               _tl157583157625_)
                              (let ()
                                (declare (not safe))
                                (_g157524157595_)))))
                      (let () (declare (not safe)) (_g157524157595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157536157869_))
                                                  (___kont158713158714_
                                                   _hd157535157866_
                                                   _hd157532157856_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl157533157859_))
                                                      (let ((___splice158717158718_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl157533157859_ '0))))
                (let ((_tl157583157625_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158717158718_ '1)))
                      (_target157581157622_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158717158718_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl157583157625_))
                      (___match158823158824_
                       _e157528157842_
                       _hd157529157846_
                       _tl157530157849_
                       _e157531157852_
                       _hd157532157856_
                       _tl157533157859_
                       ___splice158717158718_
                       _target157581157622_
                       _tl157583157625_)
                      (let () (declare (not safe)) (_g157524157595_)))))
              (let () (declare (not safe)) (_g157524157595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157536157869_))
                                            (___kont158713158714_
                                             _hd157535157866_
                                             _hd157532157856_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl157533157859_))
                                                (let ((___splice158717158718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl157533157859_
                                                          '0))))
                                                  (let ((_tl157583157625_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158717158718_
                                                            '1)))
                                                        (_target157581157622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158717158718_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157583157625_))
                                                        (___match158823158824_
                                                         _e157528157842_
                                                         _hd157529157846_
                                                         _tl157530157849_
                                                         _e157531157852_
                                                         _hd157532157856_
                                                         _tl157533157859_
                                                         ___splice158717158718_
                                                         _target157581157622_
                                                         _tl157583157625_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157524157595_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157524157595_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl157533157859_))
                                    (let ((___splice158717158718_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl157533157859_
                                              '0))))
                                      (let ((_tl157583157625_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158717158718_
                                                '1)))
                                            (_target157581157622_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158717158718_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157583157625_))
                                            (___match158823158824_
                                             _e157528157842_
                                             _hd157529157846_
                                             _tl157530157849_
                                             _e157531157852_
                                             _hd157532157856_
                                             _tl157533157859_
                                             ___splice158717158718_
                                             _target157581157622_
                                             _tl157583157625_)
                                            (let ()
                                              (declare (not safe))
                                              (_g157524157595_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g157524157595_))))))
                        (let () (declare (not safe)) (_g157524157595_)))))
                (let () (declare (not safe)) (_g157524157595_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx157912_)
      (let* ((___stx158826158827_ _$stx157912_)
             (_g157917157952_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158826158827_)))))
        (let ((___kont158829158830_
               (lambda (_L158074_ _L158076_)
                 (let ((__tmp159151
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp159146
                        (let ((__tmp159147
                               (let ((__tmp159148
                                      (let ((__tmp159150
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp159149
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158074_ '()))))
                                        (declare (not safe))
                                        (cons __tmp159150 __tmp159149))))
                                 (declare (not safe))
                                 (cons __tmp159148 '()))))
                          (declare (not safe))
                          (cons _L158076_ __tmp159147))))
                   (declare (not safe))
                   (cons __tmp159151 __tmp159146))))
              (___kont158831158832_
               (lambda (_L158009_ _L158011_)
                 (let ((__tmp159160
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp159152
                        (let ((__tmp159153
                               (let ((__tmp159154
                                      (let ((__tmp159159
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp159155
                                             (let ((__tmp159156
                                                    (lambda (_g158028158031_
                                                             _g158029158034_)
                                                      (let ((__tmp159157
                                                             (let ((__tmp159158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g158028158031_ __tmp159158))))
                (declare (not safe))
                (cons __tmp159157 _g158029158034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp159156
                                                       '()
                                                       _L158009_))))
                                        (declare (not safe))
                                        (cons __tmp159159 __tmp159155))))
                                 (declare (not safe))
                                 (cons __tmp159154 '()))))
                          (declare (not safe))
                          (cons _L158011_ __tmp159153))))
                   (declare (not safe))
                   (cons __tmp159160 __tmp159152)))))
          (let ((___match158875158876_
                 (lambda (_e157932157959_
                          _hd157933157963_
                          _tl157934157966_
                          _e157935157969_
                          _hd157936157973_
                          _tl157937157976_
                          ___splice158833158834_
                          _target157938157979_
                          _tl157940157982_)
                   (letrec ((_loop157941157985_
                             (lambda (_hd157939157989_ _arity157945157992_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd157939157989_))
                                   (let ((_e157942157995_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd157939157989_))))
                                     (let ((_lp-tl157944158002_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e157942157995_)))
                                           (_lp-hd157943157999_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e157942157995_))))
                                       (_loop157941157985_
                                        _lp-tl157944158002_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd157943157999_
                                                _arity157945157992_)))))
                                   (let ((_arity157946158005_
                                          (reverse _arity157945157992_)))
                                     (___kont158831158832_
                                      _arity157946158005_
                                      _hd157936157973_))))))
                     (_loop157941157985_ _target157938157979_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158826158827_))
                (let ((_e157921158044_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158826158827_))))
                  (let ((_tl157923158051_
                         (let () (declare (not safe)) (##cdr _e157921158044_)))
                        (_hd157922158048_
                         (let ()
                           (declare (not safe))
                           (##car _e157921158044_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157923158051_))
                        (let ((_e157924158054_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157923158051_))))
                          (let ((_tl157926158061_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157924158054_)))
                                (_hd157925158058_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157924158054_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157926158061_))
                                (let ((_e157927158064_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157926158061_))))
                                  (let ((_tl157929158071_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157927158064_)))
                                        (_hd157928158068_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157927158064_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl157929158071_))
                                        (___kont158829158830_
                                         _hd157928158068_
                                         _hd157925158058_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl157926158061_))
                                            (let ((___splice158833158834_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl157926158061_
                                                      '0))))
                                              (let ((_tl157940157982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice158833158834_
                                                        '1)))
                                                    (_target157938157979_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice158833158834_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl157940157982_))
                                                    (___match158875158876_
                                                     _e157921158044_
                                                     _hd157922158048_
                                                     _tl157923158051_
                                                     _e157924158054_
                                                     _hd157925158058_
                                                     _tl157926158061_
                                                     ___splice158833158834_
                                                     _target157938157979_
                                                     _tl157940157982_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157917157952_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g157917157952_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl157926158061_))
                                    (let ((___splice158833158834_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl157926158061_
                                              '0))))
                                      (let ((_tl157940157982_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158833158834_
                                                '1)))
                                            (_target157938157979_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158833158834_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157940157982_))
                                            (___match158875158876_
                                             _e157921158044_
                                             _hd157922158048_
                                             _tl157923158051_
                                             _e157924158054_
                                             _hd157925158058_
                                             _tl157926158061_
                                             ___splice158833158834_
                                             _target157938157979_
                                             _tl157940157982_)
                                            (let ()
                                              (declare (not safe))
                                              (_g157917157952_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g157917157952_))))))
                        (let () (declare (not safe)) (_g157917157952_)))))
                (let () (declare (not safe)) (_g157917157952_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx158096_)
      (let* ((_g158100158135_
              (lambda (_g158101158131_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158101158131_))))
             (_g158099158263_
              (lambda (_g158101158139_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158101158139_))
                    (let ((_e158104158142_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158101158139_))))
                      (let ((_hd158105158146_
                             (let ()
                               (declare (not safe))
                               (##car _e158104158142_)))
                            (_tl158106158149_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158104158142_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158106158149_))
                            (let ((_g159161_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158106158149_
                                      '0))))
                              (begin
                                (let ((_g159162_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g159161_)
                                             (##vector-length _g159161_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g159162_ 2)))
                                      (error "Context expects 2 values"
                                             _g159162_)))
                                (let ((_target158107158152_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g159161_ 0)))
                                      (_tl158109158155_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g159161_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158109158155_))
                                      (letrec ((_loop158110158158_
                                                (lambda (_hd158108158162_
                                                         _arity158114158165_
                                                         _prim158115158167_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158108158162_))
                                                      (let ((_e158111158170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158108158162_))))
                (let ((_lp-hd158112158174_
                       (let () (declare (not safe)) (##car _e158111158170_)))
                      (_lp-tl158113158177_
                       (let () (declare (not safe)) (##cdr _e158111158170_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158112158174_))
                      (let ((_e158118158180_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158112158174_))))
                        (let ((_hd158119158184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158118158180_)))
                              (_tl158120158187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158118158180_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl158120158187_))
                              (let ((_g159163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl158120158187_
                                        '0))))
                                (begin
                                  (let ((_g159164_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g159163_)
                                               (##vector-length _g159163_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g159164_ 2)))
                                        (error "Context expects 2 values"
                                               _g159164_)))
                                  (let ((_target158121158190_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g159163_ 0)))
                                        (_tl158123158193_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g159163_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl158123158193_))
                                        (letrec ((_loop158124158196_
                                                  (lambda (_hd158122158200_
                                                           _arity158128158203_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd158122158200_))
                                                        (let ((_e158125158206_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd158122158200_))))
                  (let ((_lp-hd158126158210_
                         (let () (declare (not safe)) (##car _e158125158206_)))
                        (_lp-tl158127158213_
                         (let ()
                           (declare (not safe))
                           (##cdr _e158125158206_))))
                    (_loop158124158196_
                     _lp-tl158127158213_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd158126158210_ _arity158128158203_)))))
                (let ((_arity158129158216_ (reverse _arity158128158203_)))
                  (_loop158110158158_
                   _lp-tl158113158177_
                   (let ()
                     (declare (not safe))
                     (cons _arity158129158216_ _arity158114158165_))
                   (let ()
                     (declare (not safe))
                     (cons _hd158119158184_ _prim158115158167_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop158124158196_
                                           _target158121158190_
                                           '()))
                                        (_g158100158135_ _g158101158139_)))))
                              (_g158100158135_ _g158101158139_))))
                      (_g158100158135_ _g158101158139_))))
              (let ((_arity158116158220_ (reverse _arity158114158165_))
                    (_prim158117158223_ (reverse _prim158115158167_)))
                ((lambda (_L158226_ _L158228_)
                   (let ((__tmp159172
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp159165
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158226_
                               _L158228_))
                            (let ((__tmp159166
                                   (lambda (_g158243158249_
                                            _g158244158252_
                                            _g158245158254_)
                                     (let ((__tmp159167
                                            (let ((__tmp159171
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp159168
                                                   (let ((__tmp159169
                                                          (let ((__tmp159170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g158246158257_ _g158247158260_)
                           (let ()
                             (declare (not safe))
                             (cons _g158246158257_ _g158247158260_)))))
                    (declare (not safe))
                    (foldr1 __tmp159170 '() _g158243158249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158244158252_
                                                           __tmp159169))))
                                              (declare (not safe))
                                              (cons __tmp159171 __tmp159168))))
                                       (declare (not safe))
                                       (cons __tmp159167 _g158245158254_)))))
                              (declare (not safe))
                              (foldr2 __tmp159166 '() _L158226_ _L158228_)))))
                     (declare (not safe))
                     (cons __tmp159172 __tmp159165)))
                 _arity158116158220_
                 _prim158117158223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158110158158_
                                         _target158107158152_
                                         '()
                                         '()))
                                      (_g158100158135_ _g158101158139_)))))
                            (_g158100158135_ _g158101158139_))))
                    (_g158100158135_ _g158101158139_)))))
        (_g158099158263_ _$stx158096_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx158269_)
      (let* ((_g158273158308_
              (lambda (_g158274158304_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158274158304_))))
             (_g158272158436_
              (lambda (_g158274158312_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158274158312_))
                    (let ((_e158277158315_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158274158312_))))
                      (let ((_hd158278158319_
                             (let ()
                               (declare (not safe))
                               (##car _e158277158315_)))
                            (_tl158279158322_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158277158315_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158279158322_))
                            (let ((_g159173_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158279158322_
                                      '0))))
                              (begin
                                (let ((_g159174_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g159173_)
                                             (##vector-length _g159173_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g159174_ 2)))
                                      (error "Context expects 2 values"
                                             _g159174_)))
                                (let ((_target158280158325_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g159173_ 0)))
                                      (_tl158282158328_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g159173_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158282158328_))
                                      (letrec ((_loop158283158331_
                                                (lambda (_hd158281158335_
                                                         _arity158287158338_
                                                         _prim158288158340_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158281158335_))
                                                      (let ((_e158284158343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158281158335_))))
                (let ((_lp-hd158285158347_
                       (let () (declare (not safe)) (##car _e158284158343_)))
                      (_lp-tl158286158350_
                       (let () (declare (not safe)) (##cdr _e158284158343_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158285158347_))
                      (let ((_e158291158353_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158285158347_))))
                        (let ((_hd158292158357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158291158353_)))
                              (_tl158293158360_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158291158353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl158293158360_))
                              (let ((_g159175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl158293158360_
                                        '0))))
                                (begin
                                  (let ((_g159176_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g159175_)
                                               (##vector-length _g159175_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g159176_ 2)))
                                        (error "Context expects 2 values"
                                               _g159176_)))
                                  (let ((_target158294158363_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g159175_ 0)))
                                        (_tl158296158366_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g159175_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl158296158366_))
                                        (letrec ((_loop158297158369_
                                                  (lambda (_hd158295158373_
                                                           _arity158301158376_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd158295158373_))
                                                        (let ((_e158298158379_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd158295158373_))))
                  (let ((_lp-hd158299158383_
                         (let () (declare (not safe)) (##car _e158298158379_)))
                        (_lp-tl158300158386_
                         (let ()
                           (declare (not safe))
                           (##cdr _e158298158379_))))
                    (_loop158297158369_
                     _lp-tl158300158386_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd158299158383_ _arity158301158376_)))))
                (let ((_arity158302158389_ (reverse _arity158301158376_)))
                  (_loop158283158331_
                   _lp-tl158286158350_
                   (let ()
                     (declare (not safe))
                     (cons _arity158302158389_ _arity158287158338_))
                   (let ()
                     (declare (not safe))
                     (cons _hd158292158357_ _prim158288158340_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop158297158369_
                                           _target158294158363_
                                           '()))
                                        (_g158273158308_ _g158274158312_)))))
                              (_g158273158308_ _g158274158312_))))
                      (_g158273158308_ _g158274158312_))))
              (let ((_arity158289158393_ (reverse _arity158287158338_))
                    (_prim158290158396_ (reverse _prim158288158340_)))
                ((lambda (_L158399_ _L158401_)
                   (let ((__tmp159184
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp159177
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158399_
                               _L158401_))
                            (let ((__tmp159178
                                   (lambda (_g158416158422_
                                            _g158417158425_
                                            _g158418158427_)
                                     (let ((__tmp159179
                                            (let ((__tmp159183
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp159180
                                                   (let ((__tmp159181
                                                          (let ((__tmp159182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g158419158430_ _g158420158433_)
                           (let ()
                             (declare (not safe))
                             (cons _g158419158430_ _g158420158433_)))))
                    (declare (not safe))
                    (foldr1 __tmp159182 '() _g158416158422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158417158425_
                                                           __tmp159181))))
                                              (declare (not safe))
                                              (cons __tmp159183 __tmp159180))))
                                       (declare (not safe))
                                       (cons __tmp159179 _g158418158427_)))))
                              (declare (not safe))
                              (foldr2 __tmp159178 '() _L158399_ _L158401_)))))
                     (declare (not safe))
                     (cons __tmp159184 __tmp159177)))
                 _arity158289158393_
                 _prim158290158396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158283158331_
                                         _target158280158325_
                                         '()
                                         '()))
                                      (_g158273158308_ _g158274158312_)))))
                            (_g158273158308_ _g158274158312_))))
                    (_g158273158308_ _g158274158312_)))))
        (_g158272158436_ _$stx158269_)))))
