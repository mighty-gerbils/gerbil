(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx297469_)
      (let* ((_g297473297491_
              (lambda (_g297474297487_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297474297487_))))
             (_g297472297546_
              (lambda (_g297474297495_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297474297495_))
                    (let ((_e297477297498_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297474297495_))))
                      (let ((_hd297478297502_
                             (let ()
                               (declare (not safe))
                               (##car _e297477297498_)))
                            (_tl297479297505_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297477297498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297479297505_))
                            (let ((_e297480297508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297479297505_))))
                              (let ((_hd297481297512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297480297508_)))
                                    (_tl297482297515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297480297508_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297482297515_))
                                    (let ((_e297483297518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297482297515_))))
                                      (let ((_hd297484297522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297483297518_)))
                                            (_tl297485297525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297483297518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl297485297525_))
                                            ((lambda (_L297528_ _L297530_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L297530_))
                                                   (let ((__tmp305578
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp305573
                                                          (let ((__tmp305575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp305577
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp305576
                                (let ()
                                  (declare (not safe))
                                  (cons _L297530_ '()))))
                           (declare (not safe))
                           (cons __tmp305577 __tmp305576)))
                        (__tmp305574
                         (let () (declare (not safe)) (cons _L297528_ '()))))
                    (declare (not safe))
                    (cons __tmp305575 __tmp305574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp305578
                                                           __tmp305573))
                                                   (_g297473297491_
                                                    _g297474297495_)))
                                             _hd297484297522_
                                             _hd297481297512_)
                                            (_g297473297491_
                                             _g297474297495_))))
                                    (_g297473297491_ _g297474297495_))))
                            (_g297473297491_ _g297474297495_))))
                    (_g297473297491_ _g297474297495_)))))
        (_g297472297546_ _$stx297469_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx297550_)
      (let* ((_g297554297583_
              (lambda (_g297555297579_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297555297579_))))
             (_g297553297683_
              (lambda (_g297555297587_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297555297587_))
                    (let ((_e297558297590_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297555297587_))))
                      (let ((_hd297559297594_
                             (let ()
                               (declare (not safe))
                               (##car _e297558297590_)))
                            (_tl297560297597_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297558297590_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297560297597_))
                            (let ((_g305579_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297560297597_
                                      '0))))
                              (begin
                                (let ((_g305580_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305579_)
                                             (##vector-length _g305579_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305580_ 2)))
                                      (error "Context expects 2 values"
                                             _g305580_)))
                                (let ((_target297561297600_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305579_ 0)))
                                      (_tl297563297603_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305579_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297563297603_))
                                      (letrec ((_loop297564297606_
                                                (lambda (_hd297562297610_
                                                         _type297568297613_
                                                         _symbol297569297615_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297562297610_))
                                                      (let ((_e297565297618_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297562297610_))))
                (let ((_lp-hd297566297622_
                       (let () (declare (not safe)) (##car _e297565297618_)))
                      (_lp-tl297567297625_
                       (let () (declare (not safe)) (##cdr _e297565297618_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297566297622_))
                      (let ((_e297572297628_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297566297622_))))
                        (let ((_hd297573297632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297572297628_)))
                              (_tl297574297635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297572297628_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297574297635_))
                              (let ((_e297575297638_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297574297635_))))
                                (let ((_hd297576297642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297575297638_)))
                                      (_tl297577297645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297575297638_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297577297645_))
                                      (_loop297564297606_
                                       _lp-tl297567297625_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd297576297642_
                                               _type297568297613_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd297573297632_
                                               _symbol297569297615_)))
                                      (_g297554297583_ _g297555297587_))))
                              (_g297554297583_ _g297555297587_))))
                      (_g297554297583_ _g297555297587_))))
              (let ((_type297570297648_ (reverse _type297568297613_))
                    (_symbol297571297651_ (reverse _symbol297569297615_)))
                ((lambda (_L297654_ _L297656_)
                   (let ((__tmp305587
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305581
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297654_
                               _L297656_))
                            (let ((__tmp305582
                                   (lambda (_g297671297675_
                                            _g297672297678_
                                            _g297673297680_)
                                     (let ((__tmp305583
                                            (let ((__tmp305586
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp305584
                                                   (let ((__tmp305585
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g297671297675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297672297678_
                                                           __tmp305585))))
                                              (declare (not safe))
                                              (cons __tmp305586 __tmp305584))))
                                       (declare (not safe))
                                       (cons __tmp305583 _g297673297680_)))))
                              (declare (not safe))
                              (foldr2 __tmp305582 '() _L297654_ _L297656_)))))
                     (declare (not safe))
                     (cons __tmp305587 __tmp305581)))
                 _type297570297648_
                 _symbol297571297651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297564297606_
                                         _target297561297600_
                                         '()
                                         '()))
                                      (_g297554297583_ _g297555297587_)))))
                            (_g297554297583_ _g297555297587_))))
                    (_g297554297583_ _g297555297587_)))))
        (_g297553297683_ _$stx297550_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx297688_)
      (let* ((___stx305138305139_ _$stx297688_)
             (_g297693297735_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305138305139_)))))
        (let ((___kont305141305142_
               (lambda (_L297863_ _L297865_ _L297866_ _L297867_)
                 (let ((__tmp305601
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp305588
                        (let ((__tmp305598
                               (let ((__tmp305600
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305599
                                      (let ()
                                        (declare (not safe))
                                        (cons _L297867_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305600 __tmp305599)))
                              (__tmp305589
                               (let ((__tmp305595
                                      (let ((__tmp305597
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305596
                                             (let ()
                                               (declare (not safe))
                                               (cons _L297866_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305597 __tmp305596)))
                                     (__tmp305590
                                      (let ((__tmp305592
                                             (let ((__tmp305594
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305593
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L297865_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305594 __tmp305593)))
                                            (__tmp305591
                                             (let ()
                                               (declare (not safe))
                                               (cons _L297863_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305592 __tmp305591))))
                                 (declare (not safe))
                                 (cons __tmp305595 __tmp305590))))
                          (declare (not safe))
                          (cons __tmp305598 __tmp305589))))
                   (declare (not safe))
                   (cons __tmp305601 __tmp305588))))
              (___kont305143305144_
               (lambda (_L297782_ _L297784_ _L297785_ _L297786_)
                 (let ((__tmp305602
                        (let ((__tmp305603
                               (let ((__tmp305604
                                      (let ((__tmp305605
                                             (let ((__tmp305606
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp305606 '()))))
                                        (declare (not safe))
                                        (cons _L297782_ __tmp305605))))
                                 (declare (not safe))
                                 (cons _L297784_ __tmp305604))))
                          (declare (not safe))
                          (cons _L297785_ __tmp305603))))
                   (declare (not safe))
                   (cons _L297786_ __tmp305602)))))
          (let ((___match305177305178_
                 (lambda (_e297699297813_
                          _hd297700297817_
                          _tl297701297820_
                          _e297702297823_
                          _hd297703297827_
                          _tl297704297830_
                          _e297705297833_
                          _hd297706297837_
                          _tl297707297840_
                          _e297708297843_
                          _hd297709297847_
                          _tl297710297850_
                          _e297711297853_
                          _hd297712297857_
                          _tl297713297860_)
                   (let ((_L297863_ _hd297712297857_)
                         (_L297865_ _hd297709297847_)
                         (_L297866_ _hd297706297837_)
                         (_L297867_ _hd297703297827_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L297867_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L297866_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L297865_)))
                         (___kont305141305142_
                          _L297863_
                          _L297865_
                          _L297866_
                          _L297867_)
                         (let () (declare (not safe)) (_g297693297735_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305138305139_))
                (let ((_e297699297813_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305138305139_))))
                  (let ((_tl297701297820_
                         (let () (declare (not safe)) (##cdr _e297699297813_)))
                        (_hd297700297817_
                         (let ()
                           (declare (not safe))
                           (##car _e297699297813_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl297701297820_))
                        (let ((_e297702297823_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl297701297820_))))
                          (let ((_tl297704297830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e297702297823_)))
                                (_hd297703297827_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e297702297823_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl297704297830_))
                                (let ((_e297705297833_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl297704297830_))))
                                  (let ((_tl297707297840_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e297705297833_)))
                                        (_hd297706297837_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e297705297833_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl297707297840_))
                                        (let ((_e297708297843_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl297707297840_))))
                                          (let ((_tl297710297850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e297708297843_)))
                                                (_hd297709297847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e297708297843_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297710297850_))
                                                (let ((_e297711297853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297710297850_))))
                                                  (let ((_tl297713297860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297711297853_)))
                                                        (_hd297712297857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297711297853_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297713297860_))
                                                        (___match305177305178_
                                                         _e297699297813_
                                                         _hd297700297817_
                                                         _tl297701297820_
                                                         _e297702297823_
                                                         _hd297703297827_
                                                         _tl297704297830_
                                                         _e297705297833_
                                                         _hd297706297837_
                                                         _tl297707297840_
                                                         _e297708297843_
                                                         _hd297709297847_
                                                         _tl297710297850_
                                                         _e297711297853_
                                                         _hd297712297857_
                                                         _tl297713297860_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g297693297735_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297710297850_))
                                                    (___kont305143305144_
                                                     _hd297709297847_
                                                     _hd297706297837_
                                                     _hd297703297827_
                                                     _hd297700297817_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297693297735_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g297693297735_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g297693297735_)))))
                        (let () (declare (not safe)) (_g297693297735_)))))
                (let () (declare (not safe)) (_g297693297735_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx297892_)
      (let* ((_g297896297931_
              (lambda (_g297897297927_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297897297927_))))
             (_g297895298050_
              (lambda (_g297897297935_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297897297935_))
                    (let ((_e297901297938_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297897297935_))))
                      (let ((_hd297902297942_
                             (let ()
                               (declare (not safe))
                               (##car _e297901297938_)))
                            (_tl297903297945_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297901297938_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297903297945_))
                            (let ((_g305607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297903297945_
                                      '0))))
                              (begin
                                (let ((_g305608_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305607_)
                                             (##vector-length _g305607_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305608_ 2)))
                                      (error "Context expects 2 values"
                                             _g305608_)))
                                (let ((_target297904297948_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305607_ 0)))
                                      (_tl297906297951_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305607_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297906297951_))
                                      (letrec ((_loop297907297954_
                                                (lambda (_hd297905297958_
                                                         _symbol297911297961_
                                                         _method297912297963_
                                                         _type-t297913297965_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297905297958_))
                                                      (let ((_e297908297968_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297905297958_))))
                (let ((_lp-hd297909297972_
                       (let () (declare (not safe)) (##car _e297908297968_)))
                      (_lp-tl297910297975_
                       (let () (declare (not safe)) (##cdr _e297908297968_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297909297972_))
                      (let ((_e297917297978_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297909297972_))))
                        (let ((_hd297918297982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297917297978_)))
                              (_tl297919297985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297917297978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297919297985_))
                              (let ((_e297920297988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297919297985_))))
                                (let ((_hd297921297992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297920297988_)))
                                      (_tl297922297995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297920297988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297922297995_))
                                      (let ((_e297923297998_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297922297995_))))
                                        (let ((_hd297924298002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297923297998_)))
                                              (_tl297925298005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297923297998_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297925298005_))
                                              (_loop297907297954_
                                               _lp-tl297910297975_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297924298002_
                                                       _symbol297911297961_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297921297992_
                                                       _method297912297963_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297918297982_
                                                       _type-t297913297965_)))
                                              (_g297896297931_
                                               _g297897297935_))))
                                      (_g297896297931_ _g297897297935_))))
                              (_g297896297931_ _g297897297935_))))
                      (_g297896297931_ _g297897297935_))))
              (let ((_symbol297914298008_ (reverse _symbol297911297961_))
                    (_method297915298011_ (reverse _method297912297963_))
                    (_type-t297916298013_ (reverse _type-t297913297965_)))
                ((lambda (_L298016_ _L298018_ _L298019_)
                   (let ((__tmp305616
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305609
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298016_
                               _L298018_
                               _L298019_))
                            (let ((__tmp305610
                                   (lambda (_g298035298040_
                                            _g298036298043_
                                            _g298037298045_
                                            _g298038298047_)
                                     (let ((__tmp305611
                                            (let ((__tmp305615
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp305612
                                                   (let ((__tmp305613
                                                          (let ((__tmp305614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g298035298040_ '()))))
                    (declare (not safe))
                    (cons _g298036298043_ __tmp305614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298037298045_
                                                           __tmp305613))))
                                              (declare (not safe))
                                              (cons __tmp305615 __tmp305612))))
                                       (declare (not safe))
                                       (cons __tmp305611 _g298038298047_)))))
                              (declare (not safe))
                              (foldr* __tmp305610
                                      '()
                                      _L298016_
                                      _L298018_
                                      _L298019_)))))
                     (declare (not safe))
                     (cons __tmp305616 __tmp305609)))
                 _symbol297914298008_
                 _method297915298011_
                 _type-t297916298013_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297907297954_
                                         _target297904297948_
                                         '()
                                         '()
                                         '()))
                                      (_g297896297931_ _g297897297935_)))))
                            (_g297896297931_ _g297897297935_))))
                    (_g297896297931_ _g297897297935_)))))
        (_g297895298050_ _$stx297892_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx298055_)
      (let* ((_g298059298092_
              (lambda (_g298060298088_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298060298088_))))
             (_g298058298206_
              (lambda (_g298060298096_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298060298096_))
                    (let ((_e298064298099_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298060298096_))))
                      (let ((_hd298065298103_
                             (let ()
                               (declare (not safe))
                               (##car _e298064298099_)))
                            (_tl298066298106_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298064298099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298066298106_))
                            (let ((_e298067298109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298066298106_))))
                              (let ((_hd298068298113_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298067298109_)))
                                    (_tl298069298116_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298067298109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298069298116_))
                                    (let ((_g305617_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298069298116_
                                              '0))))
                                      (begin
                                        (let ((_g305618_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g305617_)
                                                     (##vector-length
                                                      _g305617_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g305618_ 2)))
                                              (error "Context expects 2 values"
                                                     _g305618_)))
                                        (let ((_target298070298119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g305617_ 0)))
                                              (_tl298072298122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g305617_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298072298122_))
                                              (letrec ((_loop298073298125_
                                                        (lambda (_hd298071298129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol298077298132_
                         _method298078298134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd298071298129_))
                      (let ((_e298074298137_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd298071298129_))))
                        (let ((_lp-hd298075298141_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298074298137_)))
                              (_lp-tl298076298144_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298074298137_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd298075298141_))
                              (let ((_e298081298147_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd298075298141_))))
                                (let ((_hd298082298151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298081298147_)))
                                      (_tl298083298154_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298081298147_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298083298154_))
                                      (let ((_e298084298157_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298083298154_))))
                                        (let ((_hd298085298161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298084298157_)))
                                              (_tl298086298164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298084298157_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298086298164_))
                                              (_loop298073298125_
                                               _lp-tl298076298144_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298085298161_
                                                       _symbol298077298132_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298082298151_
                                                       _method298078298134_)))
                                              (_g298059298092_
                                               _g298060298096_))))
                                      (_g298059298092_ _g298060298096_))))
                              (_g298059298092_ _g298060298096_))))
                      (let ((_symbol298079298167_
                             (reverse _symbol298077298132_))
                            (_method298080298170_
                             (reverse _method298078298134_)))
                        ((lambda (_L298173_ _L298175_ _L298176_)
                           (let ((__tmp305626
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp305619
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L298173_
                                       _L298175_))
                                    (let ((__tmp305620
                                           (lambda (_g298194298198_
                                                    _g298195298201_
                                                    _g298196298203_)
                                             (let ((__tmp305621
                                                    (let ((__tmp305625
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp305622
                                                           (let ((__tmp305623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp305624
                                 (let ()
                                   (declare (not safe))
                                   (cons _g298194298198_ '()))))
                            (declare (not safe))
                            (cons _g298195298201_ __tmp305624))))
                     (declare (not safe))
                     (cons _L298176_ __tmp305623))))
              (declare (not safe))
              (cons __tmp305625 __tmp305622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305621
                                                     _g298196298203_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp305620
                                              '()
                                              _L298173_
                                              _L298175_)))))
                             (declare (not safe))
                             (cons __tmp305626 __tmp305619)))
                         _symbol298079298167_
                         _method298080298170_
                         _hd298068298113_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop298073298125_
                                                 _target298070298119_
                                                 '()
                                                 '()))
                                              (_g298059298092_
                                               _g298060298096_)))))
                                    (_g298059298092_ _g298060298096_))))
                            (_g298059298092_ _g298060298096_))))
                    (_g298059298092_ _g298060298096_)))))
        (_g298058298206_ _$stx298055_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx298211_)
      (let* ((_g298215298229_
              (lambda (_g298216298225_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298216298225_))))
             (_g298214298270_
              (lambda (_g298216298233_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298216298233_))
                    (let ((_e298218298236_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298216298233_))))
                      (let ((_hd298219298240_
                             (let ()
                               (declare (not safe))
                               (##car _e298218298236_)))
                            (_tl298220298243_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298218298236_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298220298243_))
                            (let ((_e298221298246_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298220298243_))))
                              (let ((_hd298222298250_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298221298246_)))
                                    (_tl298223298253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298221298246_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298223298253_))
                                    ((lambda (_L298256_)
                                       (let ((__tmp305631
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp305627
                                              (let ((__tmp305628
                                                     (let ((__tmp305630
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305629
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305630 __tmp305629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305628 '()))))
                                         (declare (not safe))
                                         (cons __tmp305631 __tmp305627)))
                                     _hd298222298250_)
                                    (_g298215298229_ _g298216298233_))))
                            (_g298215298229_ _g298216298233_))))
                    (_g298215298229_ _g298216298233_)))))
        (_g298214298270_ _$stx298211_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx298274_)
      (let* ((_g298278298328_
              (lambda (_g298279298324_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298279298324_))))
             (_g298277298495_
              (lambda (_g298279298332_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298279298332_))
                    (let ((_e298290298335_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298279298332_))))
                      (let ((_hd298291298339_
                             (let ()
                               (declare (not safe))
                               (##car _e298290298335_)))
                            (_tl298292298342_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298290298335_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298292298342_))
                            (let ((_e298293298345_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298292298342_))))
                              (let ((_hd298294298349_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298293298345_)))
                                    (_tl298295298352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298293298345_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298295298352_))
                                    (let ((_e298296298355_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298295298352_))))
                                      (let ((_hd298297298359_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298296298355_)))
                                            (_tl298298298362_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298296298355_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298298298362_))
                                            (let ((_e298299298365_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298298298362_))))
                                              (let ((_hd298300298369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298299298365_)))
                                                    (_tl298301298372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298299298365_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298301298372_))
                                                    (let ((_e298302298375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298301298372_))))
                                                      (let ((_hd298303298379_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298302298375_)))
                    (_tl298304298382_
                     (let () (declare (not safe)) (##cdr _e298302298375_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298304298382_))
                    (let ((_e298305298385_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298304298382_))))
                      (let ((_hd298306298389_
                             (let ()
                               (declare (not safe))
                               (##car _e298305298385_)))
                            (_tl298307298392_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298305298385_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298307298392_))
                            (let ((_e298308298395_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298307298392_))))
                              (let ((_hd298309298399_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298308298395_)))
                                    (_tl298310298402_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298308298395_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298310298402_))
                                    (let ((_e298311298405_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298310298402_))))
                                      (let ((_hd298312298409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298311298405_)))
                                            (_tl298313298412_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298311298405_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298313298412_))
                                            (let ((_e298314298415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298313298412_))))
                                              (let ((_hd298315298419_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298314298415_)))
                                                    (_tl298316298422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298314298415_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298316298422_))
                                                    (let ((_e298317298425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298316298422_))))
                                                      (let ((_hd298318298429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298317298425_)))
                    (_tl298319298432_
                     (let () (declare (not safe)) (##cdr _e298317298425_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298319298432_))
                    (let ((_e298320298435_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298319298432_))))
                      (let ((_hd298321298439_
                             (let ()
                               (declare (not safe))
                               (##car _e298320298435_)))
                            (_tl298322298442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298320298435_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl298322298442_))
                            ((lambda (_L298445_
                                      _L298447_
                                      _L298448_
                                      _L298449_
                                      _L298450_
                                      _L298451_
                                      _L298452_
                                      _L298453_
                                      _L298454_
                                      _L298455_)
                               (let ((__tmp305663
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp305632
                                      (let ((__tmp305660
                                             (let ((__tmp305662
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305661
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298455_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305662 __tmp305661)))
                                            (__tmp305633
                                             (let ((__tmp305657
                                                    (let ((__tmp305659
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp305658
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L298454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp305659 __tmp305658)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp305634
                                                    (let ((__tmp305654
                                                           (let ((__tmp305656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp305655
                          (let () (declare (not safe)) (cons _L298453_ '()))))
                     (declare (not safe))
                     (cons __tmp305656 __tmp305655)))
                  (__tmp305635
                   (let ((__tmp305651
                          (let ((__tmp305653
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp305652
                                 (let ()
                                   (declare (not safe))
                                   (cons _L298452_ '()))))
                            (declare (not safe))
                            (cons __tmp305653 __tmp305652)))
                         (__tmp305636
                          (let ((__tmp305648
                                 (let ((__tmp305650
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp305649
                                        (let ()
                                          (declare (not safe))
                                          (cons _L298451_ '()))))
                                   (declare (not safe))
                                   (cons __tmp305650 __tmp305649)))
                                (__tmp305637
                                 (let ((__tmp305645
                                        (let ((__tmp305647
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp305646
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L298450_ '()))))
                                          (declare (not safe))
                                          (cons __tmp305647 __tmp305646)))
                                       (__tmp305638
                                        (let ((__tmp305639
                                               (let ((__tmp305640
                                                      (let ((__tmp305641
                                                             (let ((__tmp305642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp305644
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp305643
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298445_ '()))))
                              (declare (not safe))
                              (cons __tmp305644 __tmp305643))))
                       (declare (not safe))
                       (cons __tmp305642 '()))))
                (declare (not safe))
                (cons _L298447_ __tmp305641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L298448_
                                                       __tmp305640))))
                                          (declare (not safe))
                                          (cons _L298449_ __tmp305639))))
                                   (declare (not safe))
                                   (cons __tmp305645 __tmp305638))))
                            (declare (not safe))
                            (cons __tmp305648 __tmp305637))))
                     (declare (not safe))
                     (cons __tmp305651 __tmp305636))))
              (declare (not safe))
              (cons __tmp305654 __tmp305635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305657
                                                     __tmp305634))))
                                        (declare (not safe))
                                        (cons __tmp305660 __tmp305633))))
                                 (declare (not safe))
                                 (cons __tmp305663 __tmp305632)))
                             _hd298321298439_
                             _hd298318298429_
                             _hd298315298419_
                             _hd298312298409_
                             _hd298309298399_
                             _hd298306298389_
                             _hd298303298379_
                             _hd298300298369_
                             _hd298297298359_
                             _hd298294298349_)
                            (_g298278298328_ _g298279298332_))))
                    (_g298278298328_ _g298279298332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298278298328_
                                                     _g298279298332_))))
                                            (_g298278298328_
                                             _g298279298332_))))
                                    (_g298278298328_ _g298279298332_))))
                            (_g298278298328_ _g298279298332_))))
                    (_g298278298328_ _g298279298332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298278298328_
                                                     _g298279298332_))))
                                            (_g298278298328_
                                             _g298279298332_))))
                                    (_g298278298328_ _g298279298332_))))
                            (_g298278298328_ _g298279298332_))))
                    (_g298278298328_ _g298279298332_)))))
        (_g298277298495_ _$stx298274_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx298499_)
      (let* ((_g298503298517_
              (lambda (_g298504298513_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298504298513_))))
             (_g298502298558_
              (lambda (_g298504298521_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298504298521_))
                    (let ((_e298506298524_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298504298521_))))
                      (let ((_hd298507298528_
                             (let ()
                               (declare (not safe))
                               (##car _e298506298524_)))
                            (_tl298508298531_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298506298524_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298508298531_))
                            (let ((_e298509298534_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298508298531_))))
                              (let ((_hd298510298538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298509298534_)))
                                    (_tl298511298541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298509298534_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298511298541_))
                                    ((lambda (_L298544_)
                                       (let ((__tmp305668
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp305664
                                              (let ((__tmp305665
                                                     (let ((__tmp305667
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305666
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305667 __tmp305666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305665 '()))))
                                         (declare (not safe))
                                         (cons __tmp305668 __tmp305664)))
                                     _hd298510298538_)
                                    (_g298503298517_ _g298504298521_))))
                            (_g298503298517_ _g298504298521_))))
                    (_g298503298517_ _g298504298521_)))))
        (_g298502298558_ _$stx298499_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx298562_)
      (let* ((_g298566298580_
              (lambda (_g298567298576_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298567298576_))))
             (_g298565298621_
              (lambda (_g298567298584_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298567298584_))
                    (let ((_e298569298587_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298567298584_))))
                      (let ((_hd298570298591_
                             (let ()
                               (declare (not safe))
                               (##car _e298569298587_)))
                            (_tl298571298594_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298569298587_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298571298594_))
                            (let ((_e298572298597_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298571298594_))))
                              (let ((_hd298573298601_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298572298597_)))
                                    (_tl298574298604_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298572298597_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298574298604_))
                                    ((lambda (_L298607_)
                                       (let ((__tmp305673
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp305669
                                              (let ((__tmp305670
                                                     (let ((__tmp305672
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305671
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305672 __tmp305671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305670 '()))))
                                         (declare (not safe))
                                         (cons __tmp305673 __tmp305669)))
                                     _hd298573298601_)
                                    (_g298566298580_ _g298567298584_))))
                            (_g298566298580_ _g298567298584_))))
                    (_g298566298580_ _g298567298584_)))))
        (_g298565298621_ _$stx298562_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx298625_)
      (let* ((_g298629298651_
              (lambda (_g298630298647_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298630298647_))))
             (_g298628298720_
              (lambda (_g298630298655_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298630298655_))
                    (let ((_e298634298658_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298630298655_))))
                      (let ((_hd298635298662_
                             (let ()
                               (declare (not safe))
                               (##car _e298634298658_)))
                            (_tl298636298665_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298634298658_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298636298665_))
                            (let ((_e298637298668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298636298665_))))
                              (let ((_hd298638298672_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298637298668_)))
                                    (_tl298639298675_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298637298668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298639298675_))
                                    (let ((_e298640298678_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298639298675_))))
                                      (let ((_hd298641298682_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298640298678_)))
                                            (_tl298642298685_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298640298678_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298642298685_))
                                            (let ((_e298643298688_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298642298685_))))
                                              (let ((_hd298644298692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298643298688_)))
                                                    (_tl298645298695_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298643298688_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298645298695_))
                                                    ((lambda (_L298698_
                                                              _L298700_
                                                              _L298701_)
                                                       (let ((__tmp305683
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp305674
                      (let ((__tmp305680
                             (let ((__tmp305682
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp305681
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298701_ '()))))
                               (declare (not safe))
                               (cons __tmp305682 __tmp305681)))
                            (__tmp305675
                             (let ((__tmp305677
                                    (let ((__tmp305679
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp305678
                                           (let ()
                                             (declare (not safe))
                                             (cons _L298700_ '()))))
                                      (declare (not safe))
                                      (cons __tmp305679 __tmp305678)))
                                   (__tmp305676
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298698_ '()))))
                               (declare (not safe))
                               (cons __tmp305677 __tmp305676))))
                        (declare (not safe))
                        (cons __tmp305680 __tmp305675))))
                 (declare (not safe))
                 (cons __tmp305683 __tmp305674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd298644298692_
                                                     _hd298641298682_
                                                     _hd298638298672_)
                                                    (_g298629298651_
                                                     _g298630298655_))))
                                            (_g298629298651_
                                             _g298630298655_))))
                                    (_g298629298651_ _g298630298655_))))
                            (_g298629298651_ _g298630298655_))))
                    (_g298629298651_ _g298630298655_)))))
        (_g298628298720_ _$stx298625_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx298724_)
      (let* ((_g298728298750_
              (lambda (_g298729298746_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298729298746_))))
             (_g298727298819_
              (lambda (_g298729298754_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298729298754_))
                    (let ((_e298733298757_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298729298754_))))
                      (let ((_hd298734298761_
                             (let ()
                               (declare (not safe))
                               (##car _e298733298757_)))
                            (_tl298735298764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298733298757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298735298764_))
                            (let ((_e298736298767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298735298764_))))
                              (let ((_hd298737298771_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298736298767_)))
                                    (_tl298738298774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298736298767_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298738298774_))
                                    (let ((_e298739298777_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298738298774_))))
                                      (let ((_hd298740298781_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298739298777_)))
                                            (_tl298741298784_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298739298777_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298741298784_))
                                            (let ((_e298742298787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298741298784_))))
                                              (let ((_hd298743298791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298742298787_)))
                                                    (_tl298744298794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298742298787_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298744298794_))
                                                    ((lambda (_L298797_
                                                              _L298799_
                                                              _L298800_)
                                                       (let ((__tmp305693
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp305684
                      (let ((__tmp305690
                             (let ((__tmp305692
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp305691
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298800_ '()))))
                               (declare (not safe))
                               (cons __tmp305692 __tmp305691)))
                            (__tmp305685
                             (let ((__tmp305687
                                    (let ((__tmp305689
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp305688
                                           (let ()
                                             (declare (not safe))
                                             (cons _L298799_ '()))))
                                      (declare (not safe))
                                      (cons __tmp305689 __tmp305688)))
                                   (__tmp305686
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298797_ '()))))
                               (declare (not safe))
                               (cons __tmp305687 __tmp305686))))
                        (declare (not safe))
                        (cons __tmp305690 __tmp305685))))
                 (declare (not safe))
                 (cons __tmp305693 __tmp305684)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd298743298791_
                                                     _hd298740298781_
                                                     _hd298737298771_)
                                                    (_g298728298750_
                                                     _g298729298754_))))
                                            (_g298728298750_
                                             _g298729298754_))))
                                    (_g298728298750_ _g298729298754_))))
                            (_g298728298750_ _g298729298754_))))
                    (_g298728298750_ _g298729298754_)))))
        (_g298727298819_ _$stx298724_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx298823_)
      (let* ((___stx305206305207_ _$stx298823_)
             (_g298831298899_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305206305207_)))))
        (let ((___kont305209305210_
               (lambda (_L299177_ _L299179_)
                 (let ((__tmp305709
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp305694
                        (let ((__tmp305705
                               (let ((__tmp305708
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305706
                                      (let ((__tmp305707
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305707 '()))))
                                 (declare (not safe))
                                 (cons __tmp305708 __tmp305706)))
                              (__tmp305695
                               (let ((__tmp305702
                                      (let ((__tmp305704
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305703
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299179_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305704 __tmp305703)))
                                     (__tmp305696
                                      (let ((__tmp305697
                                             (let ((__tmp305698
                                                    (let ((__tmp305699
                                                           (let ((__tmp305701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp305700
                          (let () (declare (not safe)) (cons _L299177_ '()))))
                     (declare (not safe))
                     (cons __tmp305701 __tmp305700))))
              (declare (not safe))
              (cons __tmp305699 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299177_ __tmp305698))))
                                        (declare (not safe))
                                        (cons '#f __tmp305697))))
                                 (declare (not safe))
                                 (cons __tmp305702 __tmp305696))))
                          (declare (not safe))
                          (cons __tmp305705 __tmp305695))))
                   (declare (not safe))
                   (cons __tmp305709 __tmp305694))))
              (___kont305211305212_
               (lambda (_L299108_ _L299110_)
                 (let ((__tmp305710
                        (let ((__tmp305711
                               (let ((__tmp305712
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299108_ __tmp305712))))
                          (declare (not safe))
                          (cons 'primitive: __tmp305711))))
                   (declare (not safe))
                   (cons _L299110_ __tmp305710))))
              (___kont305213305214_
               (lambda (_L299047_ _L299049_)
                 (let ((__tmp305726
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp305713
                        (let ((__tmp305722
                               (let ((__tmp305725
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305723
                                      (let ((__tmp305724
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305724 '()))))
                                 (declare (not safe))
                                 (cons __tmp305725 __tmp305723)))
                              (__tmp305714
                               (let ((__tmp305719
                                      (let ((__tmp305721
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305720
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299049_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305721 __tmp305720)))
                                     (__tmp305715
                                      (let ((__tmp305716
                                             (let ((__tmp305718
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305717
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299047_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305718
                                                     __tmp305717))))
                                        (declare (not safe))
                                        (cons __tmp305716 '()))))
                                 (declare (not safe))
                                 (cons __tmp305719 __tmp305715))))
                          (declare (not safe))
                          (cons __tmp305722 __tmp305714))))
                   (declare (not safe))
                   (cons __tmp305726 __tmp305713))))
              (___kont305215305216_
               (lambda (_L298979_ _L298981_)
                 (let ((__tmp305740
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp305727
                        (let ((__tmp305736
                               (let ((__tmp305739
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305737
                                      (let ((__tmp305738
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305738 '()))))
                                 (declare (not safe))
                                 (cons __tmp305739 __tmp305737)))
                              (__tmp305728
                               (let ((__tmp305733
                                      (let ((__tmp305735
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305734
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298981_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305735 __tmp305734)))
                                     (__tmp305729
                                      (let ((__tmp305730
                                             (let ((__tmp305732
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305731
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298979_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305732
                                                     __tmp305731))))
                                        (declare (not safe))
                                        (cons __tmp305730 '()))))
                                 (declare (not safe))
                                 (cons __tmp305733 __tmp305729))))
                          (declare (not safe))
                          (cons __tmp305736 __tmp305728))))
                   (declare (not safe))
                   (cons __tmp305740 __tmp305727))))
              (___kont305217305218_
               (lambda (_L298926_ _L298928_)
                 (let ((__tmp305741
                        (let ((__tmp305742
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298926_ __tmp305742))))
                   (declare (not safe))
                   (cons _L298928_ __tmp305741)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305206305207_))
              (let ((_e298835299133_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305206305207_))))
                (let ((_tl298837299140_
                       (let () (declare (not safe)) (##cdr _e298835299133_)))
                      (_hd298836299137_
                       (let () (declare (not safe)) (##car _e298835299133_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl298837299140_))
                      (let ((_e298838299143_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298837299140_))))
                        (let ((_tl298840299150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298838299143_)))
                              (_hd298839299147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298838299143_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298840299150_))
                              (let ((_e298841299153_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298840299150_))))
                                (let ((_tl298843299160_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298841299153_)))
                                      (_hd298842299157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298841299153_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd298842299157_))
                                      (let ((_e298844299163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd298842299157_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e298844299163_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298843299160_))
                                                (let ((_e298845299167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298843299160_))))
                                                  (let ((_tl298847299174_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298845299167_)))
                                                        (_hd298846299171_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298845299167_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298847299174_))
                                                        (___kont305209305210_
                                                         _hd298846299171_
                                                         _hd298839299147_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd298839299147_))
                                                            (let ((_e298856299094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd298839299147_))))
                      (declare (not safe))
                      (_g298831298899_))
                    (let () (declare (not safe)) (_g298831298899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd298839299147_))
                                                    (let ((_e298856299094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd298839299147_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e298856299094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298843299160_))
                      (___kont305211305212_ _hd298842299157_ _hd298836299137_)
                      (let () (declare (not safe)) (_g298831298899_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298843299160_))
                      (___kont305215305216_ _hd298842299157_ _hd298839299147_)
                      (let () (declare (not safe)) (_g298831298899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298843299160_))
                                                        (___kont305215305216_
                                                         _hd298842299157_
                                                         _hd298839299147_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298831298899_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd298839299147_))
                                                (let ((_e298856299094_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd298839299147_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e298856299094_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298843299160_))
                                                          (___kont305211305212_
                                                           _hd298842299157_
                                                           _hd298836299137_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl298843299160_))
                      (let ((_e298872299037_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298843299160_))))
                        (let ((_tl298874299044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298872299037_)))
                              (_hd298873299041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298872299037_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298874299044_))
                              (___kont305213305214_
                               _hd298873299041_
                               _hd298842299157_)
                              (let ()
                                (declare (not safe))
                                (_g298831298899_)))))
                      (let () (declare (not safe)) (_g298831298899_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298843299160_))
                  (___kont305215305216_ _hd298842299157_ _hd298839299147_)
                  (let () (declare (not safe)) (_g298831298899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298843299160_))
                                                    (___kont305215305216_
                                                     _hd298842299157_
                                                     _hd298839299147_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298831298899_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd298839299147_))
                                          (let ((_e298856299094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd298839299147_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e298856299094_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298843299160_))
                                                    (___kont305211305212_
                                                     _hd298842299157_
                                                     _hd298836299137_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl298843299160_))
                                                        (let ((_e298872299037_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl298843299160_))))
                  (let ((_tl298874299044_
                         (let () (declare (not safe)) (##cdr _e298872299037_)))
                        (_hd298873299041_
                         (let ()
                           (declare (not safe))
                           (##car _e298872299037_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl298874299044_))
                        (___kont305213305214_
                         _hd298873299041_
                         _hd298842299157_)
                        (let () (declare (not safe)) (_g298831298899_)))))
                (let () (declare (not safe)) (_g298831298899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298843299160_))
                                                    (___kont305215305216_
                                                     _hd298842299157_
                                                     _hd298839299147_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298831298899_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298843299160_))
                                              (___kont305215305216_
                                               _hd298842299157_
                                               _hd298839299147_)
                                              (let ()
                                                (declare (not safe))
                                                (_g298831298899_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd298839299147_))
                                  (let ((_e298856299094_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd298839299147_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl298840299150_))
                                        (___kont305217305218_
                                         _hd298839299147_
                                         _hd298836299137_)
                                        (let ()
                                          (declare (not safe))
                                          (_g298831298899_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298840299150_))
                                      (___kont305217305218_
                                       _hd298839299147_
                                       _hd298836299137_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298831298899_)))))))
                      (let () (declare (not safe)) (_g298831298899_)))))
              (let () (declare (not safe)) (_g298831298899_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299201_)
      (let* ((___stx305346305347_ _$stx299201_)
             (_g299206299261_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305346305347_)))))
        (let ((___kont305349305350_
               (lambda (_L299446_ _L299448_)
                 (let ((__tmp305758
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp305743
                        (let ((__tmp305754
                               (let ((__tmp305757
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305755
                                      (let ((__tmp305756
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp305756 '()))))
                                 (declare (not safe))
                                 (cons __tmp305757 __tmp305755)))
                              (__tmp305744
                               (let ((__tmp305745
                                      (let ((__tmp305753
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp305746
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299446_
                                                  _L299448_))
                                               (let ((__tmp305747
                                                      (lambda (_g299465299469_
                                                               _g299466299472_
                                                               _g299467299474_)
                                                        (let ((__tmp305748
                                                               (let ((__tmp305752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp305749
                              (let ((__tmp305750
                                     (let ((__tmp305751
                                            (let ()
                                              (declare (not safe))
                                              (cons _g299465299469_ '()))))
                                       (declare (not safe))
                                       (cons _g299466299472_ __tmp305751))))
                                (declare (not safe))
                                (cons 'primitive: __tmp305750))))
                         (declare (not safe))
                         (cons __tmp305752 __tmp305749))))
                  (declare (not safe))
                  (cons __tmp305748 _g299467299474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp305747
                                                         '()
                                                         _L299446_
                                                         _L299448_)))))
                                        (declare (not safe))
                                        (cons __tmp305753 __tmp305746))))
                                 (declare (not safe))
                                 (cons __tmp305745 '()))))
                          (declare (not safe))
                          (cons __tmp305754 __tmp305744))))
                   (declare (not safe))
                   (cons __tmp305758 __tmp305743))))
              (___kont305353305354_
               (lambda (_L299332_ _L299334_)
                 (let ((__tmp305773
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp305759
                        (let ((__tmp305769
                               (let ((__tmp305772
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305770
                                      (let ((__tmp305771
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp305771 '()))))
                                 (declare (not safe))
                                 (cons __tmp305772 __tmp305770)))
                              (__tmp305760
                               (let ((__tmp305761
                                      (let ((__tmp305768
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp305762
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299332_
                                                  _L299334_))
                                               (let ((__tmp305763
                                                      (lambda (_g299349299353_
                                                               _g299350299356_
                                                               _g299351299358_)
                                                        (let ((__tmp305764
                                                               (let ((__tmp305767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp305765
                              (let ((__tmp305766
                                     (let ()
                                       (declare (not safe))
                                       (cons _g299349299353_ '()))))
                                (declare (not safe))
                                (cons _g299350299356_ __tmp305766))))
                         (declare (not safe))
                         (cons __tmp305767 __tmp305765))))
                  (declare (not safe))
                  (cons __tmp305764 _g299351299358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp305763
                                                         '()
                                                         _L299332_
                                                         _L299334_)))))
                                        (declare (not safe))
                                        (cons __tmp305768 __tmp305762))))
                                 (declare (not safe))
                                 (cons __tmp305761 '()))))
                          (declare (not safe))
                          (cons __tmp305769 __tmp305760))))
                   (declare (not safe))
                   (cons __tmp305773 __tmp305759)))))
          (let* ((___match305397305398_
                  (lambda (_e299236299268_
                           _hd299237299272_
                           _tl299238299275_
                           ___splice305355305356_
                           _target299239299278_
                           _tl299241299281_)
                    (letrec ((_loop299242299284_
                              (lambda (_hd299240299288_
                                       _dispatch299246299291_
                                       _arity299247299293_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299240299288_))
                                    (let ((_e299243299296_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299240299288_))))
                                      (let ((_lp-tl299245299303_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299243299296_)))
                                            (_lp-hd299244299300_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299243299296_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299244299300_))
                                            (let ((_e299250299306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299244299300_))))
                                              (let ((_tl299252299313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299250299306_)))
                                                    (_hd299251299310_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299250299306_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299252299313_))
                                                    (let ((_e299253299316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299252299313_))))
                                                      (let ((_tl299255299323_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299253299316_)))
                    (_hd299254299320_
                     (let () (declare (not safe)) (##car _e299253299316_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299255299323_))
                    (_loop299242299284_
                     _lp-tl299245299303_
                     (let ()
                       (declare (not safe))
                       (cons _hd299254299320_ _dispatch299246299291_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299251299310_ _arity299247299293_)))
                    (let () (declare (not safe)) (_g299206299261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299206299261_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299206299261_)))))
                                    (let ((_arity299249299329_
                                           (reverse _arity299247299293_))
                                          (_dispatch299248299326_
                                           (reverse _dispatch299246299291_)))
                                      (___kont305353305354_
                                       _dispatch299248299326_
                                       _arity299249299329_))))))
                      (_loop299242299284_ _target299239299278_ '() '()))))
                 (___match305389305390_
                  (lambda (_e299236299268_ _hd299237299272_ _tl299238299275_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299238299275_))
                        (let ((___splice305355305356_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299238299275_
                                  '0))))
                          (let ((_tl299241299281_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice305355305356_ '1)))
                                (_target299239299278_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice305355305356_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299241299281_))
                                (___match305397305398_
                                 _e299236299268_
                                 _hd299237299272_
                                 _tl299238299275_
                                 ___splice305355305356_
                                 _target299239299278_
                                 _tl299241299281_)
                                (let ()
                                  (declare (not safe))
                                  (_g299206299261_)))))
                        (let () (declare (not safe)) (_g299206299261_)))))
                 (___match305383305384_
                  (lambda (_e299210299368_
                           _hd299211299372_
                           _tl299212299375_
                           _e299213299378_
                           _hd299214299382_
                           _tl299215299385_
                           _e299216299388_
                           ___splice305351305352_
                           _target299217299392_
                           _tl299219299395_)
                    (letrec ((_loop299220299398_
                              (lambda (_hd299218299402_
                                       _dispatch299224299405_
                                       _arity299225299407_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299218299402_))
                                    (let ((_e299221299410_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299218299402_))))
                                      (let ((_lp-tl299223299417_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299221299410_)))
                                            (_lp-hd299222299414_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299221299410_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299222299414_))
                                            (let ((_e299228299420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299222299414_))))
                                              (let ((_tl299230299427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299228299420_)))
                                                    (_hd299229299424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299228299420_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299230299427_))
                                                    (let ((_e299231299430_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299230299427_))))
                                                      (let ((_tl299233299437_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299231299430_)))
                    (_hd299232299434_
                     (let () (declare (not safe)) (##car _e299231299430_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299233299437_))
                    (_loop299220299398_
                     _lp-tl299223299417_
                     (let ()
                       (declare (not safe))
                       (cons _hd299232299434_ _dispatch299224299405_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299229299424_ _arity299225299407_)))
                    (___match305389305390_
                     _e299210299368_
                     _hd299211299372_
                     _tl299212299375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match305389305390_
                                                     _e299210299368_
                                                     _hd299211299372_
                                                     _tl299212299375_))))
                                            (___match305389305390_
                                             _e299210299368_
                                             _hd299211299372_
                                             _tl299212299375_))))
                                    (let ((_arity299227299443_
                                           (reverse _arity299225299407_))
                                          (_dispatch299226299440_
                                           (reverse _dispatch299224299405_)))
                                      (___kont305349305350_
                                       _dispatch299226299440_
                                       _arity299227299443_))))))
                      (_loop299220299398_ _target299217299392_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305346305347_))
                (let ((_e299210299368_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305346305347_))))
                  (let ((_tl299212299375_
                         (let () (declare (not safe)) (##cdr _e299210299368_)))
                        (_hd299211299372_
                         (let ()
                           (declare (not safe))
                           (##car _e299210299368_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299212299375_))
                        (let ((_e299213299378_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299212299375_))))
                          (let ((_tl299215299385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299213299378_)))
                                (_hd299214299382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299213299378_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299214299382_))
                                (let ((_e299216299388_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299214299382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299216299388_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299215299385_))
                                          (let ((___splice305351305352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299215299385_
                                                    '0))))
                                            (let ((_tl299219299395_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305351305352_
                                                      '1)))
                                                  (_target299217299392_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305351305352_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299219299395_))
                                                  (___match305383305384_
                                                   _e299210299368_
                                                   _hd299211299372_
                                                   _tl299212299375_
                                                   _e299213299378_
                                                   _hd299214299382_
                                                   _tl299215299385_
                                                   _e299216299388_
                                                   ___splice305351305352_
                                                   _target299217299392_
                                                   _tl299219299395_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299212299375_))
                                                      (let ((___splice305355305356_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299212299375_ '0))))
                (let ((_tl299241299281_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305355305356_ '1)))
                      (_target299239299278_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305355305356_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299241299281_))
                      (___match305397305398_
                       _e299210299368_
                       _hd299211299372_
                       _tl299212299375_
                       ___splice305355305356_
                       _target299239299278_
                       _tl299241299281_)
                      (let () (declare (not safe)) (_g299206299261_)))))
              (let () (declare (not safe)) (_g299206299261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299212299375_))
                                              (let ((___splice305355305356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299212299375_
                                                        '0))))
                                                (let ((_tl299241299281_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice305355305356_
                                                          '1)))
                                                      (_target299239299278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice305355305356_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299241299281_))
                                                      (___match305397305398_
                                                       _e299210299368_
                                                       _hd299211299372_
                                                       _tl299212299375_
                                                       ___splice305355305356_
                                                       _target299239299278_
                                                       _tl299241299281_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299206299261_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299206299261_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299212299375_))
                                          (let ((___splice305355305356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299212299375_
                                                    '0))))
                                            (let ((_tl299241299281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305355305356_
                                                      '1)))
                                                  (_target299239299278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305355305356_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299241299281_))
                                                  (___match305397305398_
                                                   _e299210299368_
                                                   _hd299211299372_
                                                   _tl299212299375_
                                                   ___splice305355305356_
                                                   _target299239299278_
                                                   _tl299241299281_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299206299261_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299206299261_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299212299375_))
                                    (let ((___splice305355305356_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299212299375_
                                              '0))))
                                      (let ((_tl299241299281_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305355305356_
                                                '1)))
                                            (_target299239299278_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305355305356_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299241299281_))
                                            (___match305397305398_
                                             _e299210299368_
                                             _hd299211299372_
                                             _tl299212299375_
                                             ___splice305355305356_
                                             _target299239299278_
                                             _tl299241299281_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299206299261_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299206299261_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299212299375_))
                            (let ((___splice305355305356_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299212299375_
                                      '0))))
                              (let ((_tl299241299281_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice305355305356_
                                        '1)))
                                    (_target299239299278_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice305355305356_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299241299281_))
                                    (___match305397305398_
                                     _e299210299368_
                                     _hd299211299372_
                                     _tl299212299375_
                                     ___splice305355305356_
                                     _target299239299278_
                                     _tl299241299281_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299206299261_)))))
                            (let () (declare (not safe)) (_g299206299261_))))))
                (let () (declare (not safe)) (_g299206299261_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx299483_)
      (let* ((_g299487299505_
              (lambda (_g299488299501_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299488299501_))))
             (_g299486299560_
              (lambda (_g299488299509_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299488299509_))
                    (let ((_e299491299512_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299488299509_))))
                      (let ((_hd299492299516_
                             (let ()
                               (declare (not safe))
                               (##car _e299491299512_)))
                            (_tl299493299519_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299491299512_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299493299519_))
                            (let ((_e299494299522_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299493299519_))))
                              (let ((_hd299495299526_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299494299522_)))
                                    (_tl299496299529_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299494299522_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299496299529_))
                                    (let ((_e299497299532_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299496299529_))))
                                      (let ((_hd299498299536_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299497299532_)))
                                            (_tl299499299539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299497299532_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299499299539_))
                                            ((lambda (_L299542_ _L299544_)
                                               (let ((__tmp305787
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp305774
                                                      (let ((__tmp305783
                                                             (let ((__tmp305786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp305784
                            (let ((__tmp305785
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp305785 '()))))
                       (declare (not safe))
                       (cons __tmp305786 __tmp305784)))
                    (__tmp305775
                     (let ((__tmp305780
                            (let ((__tmp305782
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp305781
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299544_ '()))))
                              (declare (not safe))
                              (cons __tmp305782 __tmp305781)))
                           (__tmp305776
                            (let ((__tmp305777
                                   (let ((__tmp305779
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp305778
                                          (let ()
                                            (declare (not safe))
                                            (cons _L299542_ '()))))
                                     (declare (not safe))
                                     (cons __tmp305779 __tmp305778))))
                              (declare (not safe))
                              (cons __tmp305777 '()))))
                       (declare (not safe))
                       (cons __tmp305780 __tmp305776))))
                (declare (not safe))
                (cons __tmp305783 __tmp305775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305787
                                                       __tmp305774)))
                                             _hd299498299536_
                                             _hd299495299526_)
                                            (_g299487299505_
                                             _g299488299509_))))
                                    (_g299487299505_ _g299488299509_))))
                            (_g299487299505_ _g299488299509_))))
                    (_g299487299505_ _g299488299509_)))))
        (_g299486299560_ _$stx299483_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx299564_)
      (let* ((_g299568299586_
              (lambda (_g299569299582_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299569299582_))))
             (_g299567299641_
              (lambda (_g299569299590_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299569299590_))
                    (let ((_e299572299593_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299569299590_))))
                      (let ((_hd299573299597_
                             (let ()
                               (declare (not safe))
                               (##car _e299572299593_)))
                            (_tl299574299600_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299572299593_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299574299600_))
                            (let ((_e299575299603_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299574299600_))))
                              (let ((_hd299576299607_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299575299603_)))
                                    (_tl299577299610_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299575299603_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299577299610_))
                                    (let ((_e299578299613_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299577299610_))))
                                      (let ((_hd299579299617_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299578299613_)))
                                            (_tl299580299620_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299578299613_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299580299620_))
                                            ((lambda (_L299623_ _L299625_)
                                               (let ((__tmp305801
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp305788
                                                      (let ((__tmp305797
                                                             (let ((__tmp305800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp305798
                            (let ((__tmp305799
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp305799 '()))))
                       (declare (not safe))
                       (cons __tmp305800 __tmp305798)))
                    (__tmp305789
                     (let ((__tmp305794
                            (let ((__tmp305796
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp305795
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299625_ '()))))
                              (declare (not safe))
                              (cons __tmp305796 __tmp305795)))
                           (__tmp305790
                            (let ((__tmp305791
                                   (let ((__tmp305793
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp305792
                                          (let ()
                                            (declare (not safe))
                                            (cons _L299623_ '()))))
                                     (declare (not safe))
                                     (cons __tmp305793 __tmp305792))))
                              (declare (not safe))
                              (cons __tmp305791 '()))))
                       (declare (not safe))
                       (cons __tmp305794 __tmp305790))))
                (declare (not safe))
                (cons __tmp305797 __tmp305789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305801
                                                       __tmp305788)))
                                             _hd299579299617_
                                             _hd299576299607_)
                                            (_g299568299586_
                                             _g299569299590_))))
                                    (_g299568299586_ _g299569299590_))))
                            (_g299568299586_ _g299569299590_))))
                    (_g299568299586_ _g299569299590_)))))
        (_g299567299641_ _$stx299564_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx299645_)
      (let* ((___stx305400305401_ _$stx299645_)
             (_g299652299723_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305400305401_)))))
        (let ((___kont305403305404_
               (lambda (_L300014_ _L300016_)
                 (let ((__tmp305807
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305802
                        (let ((__tmp305803
                               (let ((__tmp305804
                                      (let ((__tmp305806
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp305805
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300014_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305806 __tmp305805))))
                                 (declare (not safe))
                                 (cons __tmp305804 '()))))
                          (declare (not safe))
                          (cons _L300016_ __tmp305803))))
                   (declare (not safe))
                   (cons __tmp305807 __tmp305802))))
              (___kont305405305406_
               (lambda (_L299933_ _L299935_)
                 (let ((__tmp305816
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305808
                        (let ((__tmp305809
                               (let ((__tmp305810
                                      (let ((__tmp305815
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp305811
                                             (let ((__tmp305812
                                                    (lambda (_g299954299957_
                                                             _g299955299960_)
                                                      (let ((__tmp305813
                                                             (let ((__tmp305814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299954299957_ __tmp305814))))
                (declare (not safe))
                (cons __tmp305813 _g299955299960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp305812
                                                       '()
                                                       _L299933_))))
                                        (declare (not safe))
                                        (cons __tmp305815 __tmp305811))))
                                 (declare (not safe))
                                 (cons __tmp305810 '()))))
                          (declare (not safe))
                          (cons _L299935_ __tmp305809))))
                   (declare (not safe))
                   (cons __tmp305816 __tmp305808))))
              (___kont305409305410_
               (lambda (_L299845_ _L299847_)
                 (let ((__tmp305823
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305817
                        (let ((__tmp305818
                               (let ((__tmp305819
                                      (let ((__tmp305822
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp305820
                                             (let ((__tmp305821
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299845_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp305821))))
                                        (declare (not safe))
                                        (cons __tmp305822 __tmp305820))))
                                 (declare (not safe))
                                 (cons __tmp305819 '()))))
                          (declare (not safe))
                          (cons _L299847_ __tmp305818))))
                   (declare (not safe))
                   (cons __tmp305823 __tmp305817))))
              (___kont305411305412_
               (lambda (_L299780_ _L299782_)
                 (let ((__tmp305833
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305824
                        (let ((__tmp305825
                               (let ((__tmp305826
                                      (let ((__tmp305832
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp305827
                                             (let ((__tmp305828
                                                    (let ((__tmp305829
                                                           (lambda (_g299799299802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g299800299805_)
                     (let ((__tmp305830
                            (let ((__tmp305831
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g299799299802_ __tmp305831))))
                       (declare (not safe))
                       (cons __tmp305830 _g299800299805_)))))
              (declare (not safe))
              (foldr1 __tmp305829 '() _L299780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp305828))))
                                        (declare (not safe))
                                        (cons __tmp305832 __tmp305827))))
                                 (declare (not safe))
                                 (cons __tmp305826 '()))))
                          (declare (not safe))
                          (cons _L299782_ __tmp305825))))
                   (declare (not safe))
                   (cons __tmp305833 __tmp305824)))))
          (let* ((___match305519305520_
                  (lambda (_e299703299730_
                           _hd299704299734_
                           _tl299705299737_
                           _e299706299740_
                           _hd299707299744_
                           _tl299708299747_
                           ___splice305413305414_
                           _target299709299750_
                           _tl299711299753_)
                    (letrec ((_loop299712299756_
                              (lambda (_hd299710299760_ _arity299716299763_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299710299760_))
                                    (let ((_e299713299766_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299710299760_))))
                                      (let ((_lp-tl299715299773_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299713299766_)))
                                            (_lp-hd299714299770_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299713299766_))))
                                        (_loop299712299756_
                                         _lp-tl299715299773_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd299714299770_
                                                 _arity299716299763_)))))
                                    (let ((_arity299717299776_
                                           (reverse _arity299716299763_)))
                                      (___kont305411305412_
                                       _arity299717299776_
                                       _hd299707299744_))))))
                      (_loop299712299756_ _target299709299750_ '()))))
                 (___match305479305480_
                  (lambda (_e299671299869_
                           _hd299672299873_
                           _tl299673299876_
                           _e299674299879_
                           _hd299675299883_
                           _tl299676299886_
                           _e299677299889_
                           _hd299678299893_
                           _tl299679299896_
                           _e299680299899_
                           ___splice305407305408_
                           _target299681299903_
                           _tl299683299906_)
                    (letrec ((_loop299684299909_
                              (lambda (_hd299682299913_ _arity299688299916_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299682299913_))
                                    (let ((_e299685299919_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299682299913_))))
                                      (let ((_lp-tl299687299926_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299685299919_)))
                                            (_lp-hd299686299923_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299685299919_))))
                                        (_loop299684299909_
                                         _lp-tl299687299926_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd299686299923_
                                                 _arity299688299916_)))))
                                    (let ((_arity299689299929_
                                           (reverse _arity299688299916_)))
                                      (___kont305405305406_
                                       _arity299689299929_
                                       _hd299675299883_))))))
                      (_loop299684299909_ _target299681299903_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305400305401_))
                (let ((_e299656299970_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305400305401_))))
                  (let ((_tl299658299977_
                         (let () (declare (not safe)) (##cdr _e299656299970_)))
                        (_hd299657299974_
                         (let ()
                           (declare (not safe))
                           (##car _e299656299970_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299658299977_))
                        (let ((_e299659299980_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299658299977_))))
                          (let ((_tl299661299987_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299659299980_)))
                                (_hd299660299984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299659299980_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299661299987_))
                                (let ((_e299662299990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299661299987_))))
                                  (let ((_tl299664299997_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299662299990_)))
                                        (_hd299663299994_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299662299990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd299663299994_))
                                        (let ((_e299665300000_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd299663299994_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e299665300000_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl299664299997_))
                                                  (let ((_e299666300004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl299664299997_))))
                                                    (let ((_tl299668300011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e299666300004_)))
                                                          (_hd299667300008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e299666300004_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299668300011_))
                                                          (___kont305403305404_
                                                           _hd299667300008_
                                                           _hd299660299984_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl299664299997_))
                      (let ((___splice305407305408_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl299664299997_ '0))))
                        (let ((_tl299683299906_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305407305408_ '1)))
                              (_target299681299903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305407305408_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299683299906_))
                              (___match305479305480_
                               _e299656299970_
                               _hd299657299974_
                               _tl299658299977_
                               _e299659299980_
                               _hd299660299984_
                               _tl299661299987_
                               _e299662299990_
                               _hd299663299994_
                               _tl299664299997_
                               _e299665300000_
                               ___splice305407305408_
                               _target299681299903_
                               _tl299683299906_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl299661299987_))
                                  (let ((___splice305413305414_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl299661299987_
                                            '0))))
                                    (let ((_tl299711299753_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice305413305414_
                                              '1)))
                                          (_target299709299750_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice305413305414_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl299711299753_))
                                          (___match305519305520_
                                           _e299656299970_
                                           _hd299657299974_
                                           _tl299658299977_
                                           _e299659299980_
                                           _hd299660299984_
                                           _tl299661299987_
                                           ___splice305413305414_
                                           _target299709299750_
                                           _tl299711299753_)
                                          (let ()
                                            (declare (not safe))
                                            (_g299652299723_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g299652299723_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl299661299987_))
                          (let ((___splice305413305414_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl299661299987_
                                    '0))))
                            (let ((_tl299711299753_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice305413305414_ '1)))
                                  (_target299709299750_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice305413305414_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl299711299753_))
                                  (___match305519305520_
                                   _e299656299970_
                                   _hd299657299974_
                                   _tl299658299977_
                                   _e299659299980_
                                   _hd299660299984_
                                   _tl299661299987_
                                   ___splice305413305414_
                                   _target299709299750_
                                   _tl299711299753_)
                                  (let ()
                                    (declare (not safe))
                                    (_g299652299723_)))))
                          (let () (declare (not safe)) (_g299652299723_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299664299997_))
                                                      (let ((___splice305407305408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299664299997_ '0))))
                (let ((_tl299683299906_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305407305408_ '1)))
                      (_target299681299903_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305407305408_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299683299906_))
                      (___match305479305480_
                       _e299656299970_
                       _hd299657299974_
                       _tl299658299977_
                       _e299659299980_
                       _hd299660299984_
                       _tl299661299987_
                       _e299662299990_
                       _hd299663299994_
                       _tl299664299997_
                       _e299665300000_
                       ___splice305407305408_
                       _target299681299903_
                       _tl299683299906_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl299664299997_))
                          (___kont305409305410_
                           _hd299663299994_
                           _hd299660299984_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299661299987_))
                              (let ((___splice305413305414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299661299987_
                                        '0))))
                                (let ((_tl299711299753_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice305413305414_
                                          '1)))
                                      (_target299709299750_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice305413305414_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299711299753_))
                                      (___match305519305520_
                                       _e299656299970_
                                       _hd299657299974_
                                       _tl299658299977_
                                       _e299659299980_
                                       _hd299660299984_
                                       _tl299661299987_
                                       ___splice305413305414_
                                       _target299709299750_
                                       _tl299711299753_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299652299723_)))))
                              (let ()
                                (declare (not safe))
                                (_g299652299723_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299664299997_))
                  (___kont305409305410_ _hd299663299994_ _hd299660299984_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl299661299987_))
                      (let ((___splice305413305414_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl299661299987_ '0))))
                        (let ((_tl299711299753_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305413305414_ '1)))
                              (_target299709299750_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305413305414_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299711299753_))
                              (___match305519305520_
                               _e299656299970_
                               _hd299657299974_
                               _tl299658299977_
                               _e299659299980_
                               _hd299660299984_
                               _tl299661299987_
                               ___splice305413305414_
                               _target299709299750_
                               _tl299711299753_)
                              (let ()
                                (declare (not safe))
                                (_g299652299723_)))))
                      (let () (declare (not safe)) (_g299652299723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299664299997_))
                                                  (___kont305409305410_
                                                   _hd299663299994_
                                                   _hd299660299984_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299661299987_))
                                                      (let ((___splice305413305414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299661299987_ '0))))
                (let ((_tl299711299753_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305413305414_ '1)))
                      (_target299709299750_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305413305414_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299711299753_))
                      (___match305519305520_
                       _e299656299970_
                       _hd299657299974_
                       _tl299658299977_
                       _e299659299980_
                       _hd299660299984_
                       _tl299661299987_
                       ___splice305413305414_
                       _target299709299750_
                       _tl299711299753_)
                      (let () (declare (not safe)) (_g299652299723_)))))
              (let () (declare (not safe)) (_g299652299723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299664299997_))
                                            (___kont305409305410_
                                             _hd299663299994_
                                             _hd299660299984_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl299661299987_))
                                                (let ((___splice305413305414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl299661299987_
                                                          '0))))
                                                  (let ((_tl299711299753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice305413305414_
                                                            '1)))
                                                        (_target299709299750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice305413305414_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299711299753_))
                                                        (___match305519305520_
                                                         _e299656299970_
                                                         _hd299657299974_
                                                         _tl299658299977_
                                                         _e299659299980_
                                                         _hd299660299984_
                                                         _tl299661299987_
                                                         ___splice305413305414_
                                                         _target299709299750_
                                                         _tl299711299753_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299652299723_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g299652299723_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299661299987_))
                                    (let ((___splice305413305414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299661299987_
                                              '0))))
                                      (let ((_tl299711299753_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305413305414_
                                                '1)))
                                            (_target299709299750_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305413305414_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299711299753_))
                                            (___match305519305520_
                                             _e299656299970_
                                             _hd299657299974_
                                             _tl299658299977_
                                             _e299659299980_
                                             _hd299660299984_
                                             _tl299661299987_
                                             ___splice305413305414_
                                             _target299709299750_
                                             _tl299711299753_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299652299723_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299652299723_))))))
                        (let () (declare (not safe)) (_g299652299723_)))))
                (let () (declare (not safe)) (_g299652299723_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx300040_)
      (let* ((___stx305522305523_ _$stx300040_)
             (_g300045300080_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305522305523_)))))
        (let ((___kont305525305526_
               (lambda (_L300202_ _L300204_)
                 (let ((__tmp305839
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305834
                        (let ((__tmp305835
                               (let ((__tmp305836
                                      (let ((__tmp305838
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp305837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300202_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305838 __tmp305837))))
                                 (declare (not safe))
                                 (cons __tmp305836 '()))))
                          (declare (not safe))
                          (cons _L300204_ __tmp305835))))
                   (declare (not safe))
                   (cons __tmp305839 __tmp305834))))
              (___kont305527305528_
               (lambda (_L300137_ _L300139_)
                 (let ((__tmp305848
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305840
                        (let ((__tmp305841
                               (let ((__tmp305842
                                      (let ((__tmp305847
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp305843
                                             (let ((__tmp305844
                                                    (lambda (_g300156300159_
                                                             _g300157300162_)
                                                      (let ((__tmp305845
                                                             (let ((__tmp305846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300156300159_ __tmp305846))))
                (declare (not safe))
                (cons __tmp305845 _g300157300162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp305844
                                                       '()
                                                       _L300137_))))
                                        (declare (not safe))
                                        (cons __tmp305847 __tmp305843))))
                                 (declare (not safe))
                                 (cons __tmp305842 '()))))
                          (declare (not safe))
                          (cons _L300139_ __tmp305841))))
                   (declare (not safe))
                   (cons __tmp305848 __tmp305840)))))
          (let ((___match305571305572_
                 (lambda (_e300060300087_
                          _hd300061300091_
                          _tl300062300094_
                          _e300063300097_
                          _hd300064300101_
                          _tl300065300104_
                          ___splice305529305530_
                          _target300066300107_
                          _tl300068300110_)
                   (letrec ((_loop300069300113_
                             (lambda (_hd300067300117_ _arity300073300120_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300067300117_))
                                   (let ((_e300070300123_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300067300117_))))
                                     (let ((_lp-tl300072300130_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300070300123_)))
                                           (_lp-hd300071300127_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300070300123_))))
                                       (_loop300069300113_
                                        _lp-tl300072300130_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300071300127_
                                                _arity300073300120_)))))
                                   (let ((_arity300074300133_
                                          (reverse _arity300073300120_)))
                                     (___kont305527305528_
                                      _arity300074300133_
                                      _hd300064300101_))))))
                     (_loop300069300113_ _target300066300107_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305522305523_))
                (let ((_e300049300172_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305522305523_))))
                  (let ((_tl300051300179_
                         (let () (declare (not safe)) (##cdr _e300049300172_)))
                        (_hd300050300176_
                         (let ()
                           (declare (not safe))
                           (##car _e300049300172_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300051300179_))
                        (let ((_e300052300182_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300051300179_))))
                          (let ((_tl300054300189_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300052300182_)))
                                (_hd300053300186_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300052300182_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300054300189_))
                                (let ((_e300055300192_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300054300189_))))
                                  (let ((_tl300057300199_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300055300192_)))
                                        (_hd300056300196_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300055300192_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300057300199_))
                                        (___kont305525305526_
                                         _hd300056300196_
                                         _hd300053300186_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300054300189_))
                                            (let ((___splice305529305530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300054300189_
                                                      '0))))
                                              (let ((_tl300068300110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice305529305530_
                                                        '1)))
                                                    (_target300066300107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice305529305530_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300068300110_))
                                                    (___match305571305572_
                                                     _e300049300172_
                                                     _hd300050300176_
                                                     _tl300051300179_
                                                     _e300052300182_
                                                     _hd300053300186_
                                                     _tl300054300189_
                                                     ___splice305529305530_
                                                     _target300066300107_
                                                     _tl300068300110_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300045300080_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300045300080_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300054300189_))
                                    (let ((___splice305529305530_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300054300189_
                                              '0))))
                                      (let ((_tl300068300110_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305529305530_
                                                '1)))
                                            (_target300066300107_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305529305530_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300068300110_))
                                            (___match305571305572_
                                             _e300049300172_
                                             _hd300050300176_
                                             _tl300051300179_
                                             _e300052300182_
                                             _hd300053300186_
                                             _tl300054300189_
                                             ___splice305529305530_
                                             _target300066300107_
                                             _tl300068300110_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300045300080_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300045300080_))))))
                        (let () (declare (not safe)) (_g300045300080_)))))
                (let () (declare (not safe)) (_g300045300080_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300224_)
      (let* ((_g300228300263_
              (lambda (_g300229300259_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300229300259_))))
             (_g300227300391_
              (lambda (_g300229300267_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300229300267_))
                    (let ((_e300232300270_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300229300267_))))
                      (let ((_hd300233300274_
                             (let ()
                               (declare (not safe))
                               (##car _e300232300270_)))
                            (_tl300234300277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300232300270_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300234300277_))
                            (let ((_g305849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300234300277_
                                      '0))))
                              (begin
                                (let ((_g305850_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305849_)
                                             (##vector-length _g305849_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305850_ 2)))
                                      (error "Context expects 2 values"
                                             _g305850_)))
                                (let ((_target300235300280_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305849_ 0)))
                                      (_tl300237300283_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305849_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300237300283_))
                                      (letrec ((_loop300238300286_
                                                (lambda (_hd300236300290_
                                                         _arity300242300293_
                                                         _prim300243300295_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300236300290_))
                                                      (let ((_e300239300298_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300236300290_))))
                (let ((_lp-hd300240300302_
                       (let () (declare (not safe)) (##car _e300239300298_)))
                      (_lp-tl300241300305_
                       (let () (declare (not safe)) (##cdr _e300239300298_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300240300302_))
                      (let ((_e300246300308_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300240300302_))))
                        (let ((_hd300247300312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300246300308_)))
                              (_tl300248300315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300246300308_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300248300315_))
                              (let ((_g305851_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300248300315_
                                        '0))))
                                (begin
                                  (let ((_g305852_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g305851_)
                                               (##vector-length _g305851_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g305852_ 2)))
                                        (error "Context expects 2 values"
                                               _g305852_)))
                                  (let ((_target300249300318_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305851_ 0)))
                                        (_tl300251300321_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305851_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300251300321_))
                                        (letrec ((_loop300252300324_
                                                  (lambda (_hd300250300328_
                                                           _arity300256300331_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300250300328_))
                                                        (let ((_e300253300334_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300250300328_))))
                  (let ((_lp-hd300254300338_
                         (let () (declare (not safe)) (##car _e300253300334_)))
                        (_lp-tl300255300341_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300253300334_))))
                    (_loop300252300324_
                     _lp-tl300255300341_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300254300338_ _arity300256300331_)))))
                (let ((_arity300257300344_ (reverse _arity300256300331_)))
                  (_loop300238300286_
                   _lp-tl300241300305_
                   (let ()
                     (declare (not safe))
                     (cons _arity300257300344_ _arity300242300293_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300247300312_ _prim300243300295_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300252300324_
                                           _target300249300318_
                                           '()))
                                        (_g300228300263_ _g300229300267_)))))
                              (_g300228300263_ _g300229300267_))))
                      (_g300228300263_ _g300229300267_))))
              (let ((_arity300244300348_ (reverse _arity300242300293_))
                    (_prim300245300351_ (reverse _prim300243300295_)))
                ((lambda (_L300354_ _L300356_)
                   (let ((__tmp305860
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305853
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300354_
                               _L300356_))
                            (let ((__tmp305854
                                   (lambda (_g300371300377_
                                            _g300372300380_
                                            _g300373300382_)
                                     (let ((__tmp305855
                                            (let ((__tmp305859
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp305856
                                                   (let ((__tmp305857
                                                          (let ((__tmp305858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g300374300385_ _g300375300388_)
                           (let ()
                             (declare (not safe))
                             (cons _g300374300385_ _g300375300388_)))))
                    (declare (not safe))
                    (foldr1 __tmp305858 '() _g300371300377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300372300380_
                                                           __tmp305857))))
                                              (declare (not safe))
                                              (cons __tmp305859 __tmp305856))))
                                       (declare (not safe))
                                       (cons __tmp305855 _g300373300382_)))))
                              (declare (not safe))
                              (foldr2 __tmp305854 '() _L300354_ _L300356_)))))
                     (declare (not safe))
                     (cons __tmp305860 __tmp305853)))
                 _arity300244300348_
                 _prim300245300351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300238300286_
                                         _target300235300280_
                                         '()
                                         '()))
                                      (_g300228300263_ _g300229300267_)))))
                            (_g300228300263_ _g300229300267_))))
                    (_g300228300263_ _g300229300267_)))))
        (_g300227300391_ _$stx300224_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx300397_)
      (let* ((_g300401300436_
              (lambda (_g300402300432_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300402300432_))))
             (_g300400300564_
              (lambda (_g300402300440_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300402300440_))
                    (let ((_e300405300443_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300402300440_))))
                      (let ((_hd300406300447_
                             (let ()
                               (declare (not safe))
                               (##car _e300405300443_)))
                            (_tl300407300450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300405300443_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300407300450_))
                            (let ((_g305861_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300407300450_
                                      '0))))
                              (begin
                                (let ((_g305862_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305861_)
                                             (##vector-length _g305861_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305862_ 2)))
                                      (error "Context expects 2 values"
                                             _g305862_)))
                                (let ((_target300408300453_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305861_ 0)))
                                      (_tl300410300456_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305861_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300410300456_))
                                      (letrec ((_loop300411300459_
                                                (lambda (_hd300409300463_
                                                         _arity300415300466_
                                                         _prim300416300468_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300409300463_))
                                                      (let ((_e300412300471_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300409300463_))))
                (let ((_lp-hd300413300475_
                       (let () (declare (not safe)) (##car _e300412300471_)))
                      (_lp-tl300414300478_
                       (let () (declare (not safe)) (##cdr _e300412300471_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300413300475_))
                      (let ((_e300419300481_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300413300475_))))
                        (let ((_hd300420300485_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300419300481_)))
                              (_tl300421300488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300419300481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300421300488_))
                              (let ((_g305863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300421300488_
                                        '0))))
                                (begin
                                  (let ((_g305864_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g305863_)
                                               (##vector-length _g305863_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g305864_ 2)))
                                        (error "Context expects 2 values"
                                               _g305864_)))
                                  (let ((_target300422300491_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305863_ 0)))
                                        (_tl300424300494_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305863_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300424300494_))
                                        (letrec ((_loop300425300497_
                                                  (lambda (_hd300423300501_
                                                           _arity300429300504_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300423300501_))
                                                        (let ((_e300426300507_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300423300501_))))
                  (let ((_lp-hd300427300511_
                         (let () (declare (not safe)) (##car _e300426300507_)))
                        (_lp-tl300428300514_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300426300507_))))
                    (_loop300425300497_
                     _lp-tl300428300514_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300427300511_ _arity300429300504_)))))
                (let ((_arity300430300517_ (reverse _arity300429300504_)))
                  (_loop300411300459_
                   _lp-tl300414300478_
                   (let ()
                     (declare (not safe))
                     (cons _arity300430300517_ _arity300415300466_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300420300485_ _prim300416300468_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300425300497_
                                           _target300422300491_
                                           '()))
                                        (_g300401300436_ _g300402300440_)))))
                              (_g300401300436_ _g300402300440_))))
                      (_g300401300436_ _g300402300440_))))
              (let ((_arity300417300521_ (reverse _arity300415300466_))
                    (_prim300418300524_ (reverse _prim300416300468_)))
                ((lambda (_L300527_ _L300529_)
                   (let ((__tmp305872
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305865
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300527_
                               _L300529_))
                            (let ((__tmp305866
                                   (lambda (_g300544300550_
                                            _g300545300553_
                                            _g300546300555_)
                                     (let ((__tmp305867
                                            (let ((__tmp305871
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp305868
                                                   (let ((__tmp305869
                                                          (let ((__tmp305870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g300547300558_ _g300548300561_)
                           (let ()
                             (declare (not safe))
                             (cons _g300547300558_ _g300548300561_)))))
                    (declare (not safe))
                    (foldr1 __tmp305870 '() _g300544300550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300545300553_
                                                           __tmp305869))))
                                              (declare (not safe))
                                              (cons __tmp305871 __tmp305868))))
                                       (declare (not safe))
                                       (cons __tmp305867 _g300546300555_)))))
                              (declare (not safe))
                              (foldr2 __tmp305866 '() _L300527_ _L300529_)))))
                     (declare (not safe))
                     (cons __tmp305872 __tmp305865)))
                 _arity300417300521_
                 _prim300418300524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300411300459_
                                         _target300408300453_
                                         '()
                                         '()))
                                      (_g300401300436_ _g300402300440_)))))
                            (_g300401300436_ _g300402300440_))))
                    (_g300401300436_ _g300402300440_)))))
        (_g300400300564_ _$stx300397_)))))
