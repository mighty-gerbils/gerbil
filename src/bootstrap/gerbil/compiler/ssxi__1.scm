(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx295777_)
      (let* ((_g295781295799_
              (lambda (_g295782295795_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295782295795_))))
             (_g295780295854_
              (lambda (_g295782295803_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295782295803_))
                    (let ((_e295787295806_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295782295803_))))
                      (let ((_hd295786295810_
                             (let ()
                               (declare (not safe))
                               (##car _e295787295806_)))
                            (_tl295785295813_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295787295806_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295785295813_))
                            (let ((_e295790295816_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295785295813_))))
                              (let ((_hd295789295820_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295790295816_)))
                                    (_tl295788295823_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295790295816_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295788295823_))
                                    (let ((_e295793295826_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295788295823_))))
                                      (let ((_hd295792295830_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295793295826_)))
                                            (_tl295791295833_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295793295826_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295791295833_))
                                            ((lambda (_L295836_ _L295838_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L295838_))
                                                   (let ((__tmp305586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp305581
                                                          (let ((__tmp305583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp305585
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp305584
                                (let ()
                                  (declare (not safe))
                                  (cons _L295838_ '()))))
                           (declare (not safe))
                           (cons __tmp305585 __tmp305584)))
                        (__tmp305582
                         (let () (declare (not safe)) (cons _L295836_ '()))))
                    (declare (not safe))
                    (cons __tmp305583 __tmp305582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp305586
                                                           __tmp305581))
                                                   (_g295781295799_
                                                    _g295782295803_)))
                                             _hd295792295830_
                                             _hd295789295820_)
                                            (_g295781295799_
                                             _g295782295803_))))
                                    (_g295781295799_ _g295782295803_))))
                            (_g295781295799_ _g295782295803_))))
                    (_g295781295799_ _g295782295803_)))))
        (_g295780295854_ _$stx295777_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx295858_)
      (let* ((_g295862295891_
              (lambda (_g295863295887_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295863295887_))))
             (_g295861295991_
              (lambda (_g295863295895_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295863295895_))
                    (let ((_e295868295898_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295863295895_))))
                      (let ((_hd295867295902_
                             (let ()
                               (declare (not safe))
                               (##car _e295868295898_)))
                            (_tl295866295905_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295868295898_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295866295905_))
                            (let ((_g305587_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295866295905_
                                      '0))))
                              (begin
                                (let ((_g305588_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305587_)
                                             (##vector-length _g305587_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305588_ 2)))
                                      (error "Context expects 2 values"
                                             _g305588_)))
                                (let ((_target295869295908_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305587_ 0)))
                                      (_tl295871295911_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305587_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295871295911_))
                                      (letrec ((_loop295872295914_
                                                (lambda (_hd295870295918_
                                                         _type295876295921_
                                                         _symbol295877295923_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd295870295918_))
                                                      (let ((_e295873295926_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd295870295918_))))
                (let ((_lp-hd295874295930_
                       (let () (declare (not safe)) (##car _e295873295926_)))
                      (_lp-tl295875295933_
                       (let () (declare (not safe)) (##cdr _e295873295926_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd295874295930_))
                      (let ((_e295882295936_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd295874295930_))))
                        (let ((_hd295881295940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295882295936_)))
                              (_tl295880295943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295882295936_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl295880295943_))
                              (let ((_e295885295946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl295880295943_))))
                                (let ((_hd295884295950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e295885295946_)))
                                      (_tl295883295953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e295885295946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295883295953_))
                                      (_loop295872295914_
                                       _lp-tl295875295933_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd295884295950_
                                               _type295876295921_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd295881295940_
                                               _symbol295877295923_)))
                                      (_g295862295891_ _g295863295895_))))
                              (_g295862295891_ _g295863295895_))))
                      (_g295862295891_ _g295863295895_))))
              (let ((_type295878295956_ (reverse _type295876295921_))
                    (_symbol295879295959_ (reverse _symbol295877295923_)))
                ((lambda (_L295962_ _L295964_)
                   (let ((__tmp305595
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305589
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L295962_
                               _L295964_))
                            (let ((__tmp305590
                                   (lambda (_g295979295983_
                                            _g295980295986_
                                            _g295981295988_)
                                     (let ((__tmp305591
                                            (let ((__tmp305594
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp305592
                                                   (let ((__tmp305593
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g295979295983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g295980295986_
                                                           __tmp305593))))
                                              (declare (not safe))
                                              (cons __tmp305594 __tmp305592))))
                                       (declare (not safe))
                                       (cons __tmp305591 _g295981295988_)))))
                              (declare (not safe))
                              (foldr2 __tmp305590 '() _L295962_ _L295964_)))))
                     (declare (not safe))
                     (cons __tmp305595 __tmp305589)))
                 _type295878295956_
                 _symbol295879295959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop295872295914_
                                         _target295869295908_
                                         '()
                                         '()))
                                      (_g295862295891_ _g295863295895_)))))
                            (_g295862295891_ _g295863295895_))))
                    (_g295862295891_ _g295863295895_)))))
        (_g295861295991_ _$stx295858_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx295996_)
      (let* ((___stx304722304723_ _$stx295996_)
             (_g296001296043_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304722304723_)))))
        (let ((___kont304725304726_
               (lambda (_L296171_ _L296173_ _L296174_ _L296175_)
                 (let ((__tmp305609
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp305596
                        (let ((__tmp305606
                               (let ((__tmp305608
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305607
                                      (let ()
                                        (declare (not safe))
                                        (cons _L296175_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305608 __tmp305607)))
                              (__tmp305597
                               (let ((__tmp305603
                                      (let ((__tmp305605
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305604
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296174_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305605 __tmp305604)))
                                     (__tmp305598
                                      (let ((__tmp305600
                                             (let ((__tmp305602
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305601
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296173_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305602 __tmp305601)))
                                            (__tmp305599
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296171_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305600 __tmp305599))))
                                 (declare (not safe))
                                 (cons __tmp305603 __tmp305598))))
                          (declare (not safe))
                          (cons __tmp305606 __tmp305597))))
                   (declare (not safe))
                   (cons __tmp305609 __tmp305596))))
              (___kont304727304728_
               (lambda (_L296090_ _L296092_ _L296093_ _L296094_)
                 (let ((__tmp305610
                        (let ((__tmp305611
                               (let ((__tmp305612
                                      (let ((__tmp305613
                                             (let ((__tmp305614
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp305614 '()))))
                                        (declare (not safe))
                                        (cons _L296090_ __tmp305613))))
                                 (declare (not safe))
                                 (cons _L296092_ __tmp305612))))
                          (declare (not safe))
                          (cons _L296093_ __tmp305611))))
                   (declare (not safe))
                   (cons _L296094_ __tmp305610)))))
          (let ((___match304761304762_
                 (lambda (_e296009296121_
                          _hd296008296125_
                          _tl296007296128_
                          _e296012296131_
                          _hd296011296135_
                          _tl296010296138_
                          _e296015296141_
                          _hd296014296145_
                          _tl296013296148_
                          _e296018296151_
                          _hd296017296155_
                          _tl296016296158_
                          _e296021296161_
                          _hd296020296165_
                          _tl296019296168_)
                   (let ((_L296171_ _hd296020296165_)
                         (_L296173_ _hd296017296155_)
                         (_L296174_ _hd296014296145_)
                         (_L296175_ _hd296011296135_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L296175_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296174_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L296173_)))
                         (___kont304725304726_
                          _L296171_
                          _L296173_
                          _L296174_
                          _L296175_)
                         (let () (declare (not safe)) (_g296001296043_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304722304723_))
                (let ((_e296009296121_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304722304723_))))
                  (let ((_tl296007296128_
                         (let () (declare (not safe)) (##cdr _e296009296121_)))
                        (_hd296008296125_
                         (let ()
                           (declare (not safe))
                           (##car _e296009296121_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296007296128_))
                        (let ((_e296012296131_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296007296128_))))
                          (let ((_tl296010296138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296012296131_)))
                                (_hd296011296135_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296012296131_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296010296138_))
                                (let ((_e296015296141_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296010296138_))))
                                  (let ((_tl296013296148_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296015296141_)))
                                        (_hd296014296145_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296015296141_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl296013296148_))
                                        (let ((_e296018296151_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl296013296148_))))
                                          (let ((_tl296016296158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e296018296151_)))
                                                (_hd296017296155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e296018296151_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl296016296158_))
                                                (let ((_e296021296161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl296016296158_))))
                                                  (let ((_tl296019296168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e296021296161_)))
                                                        (_hd296020296165_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e296021296161_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl296019296168_))
                                                        (___match304761304762_
                                                         _e296009296121_
                                                         _hd296008296125_
                                                         _tl296007296128_
                                                         _e296012296131_
                                                         _hd296011296135_
                                                         _tl296010296138_
                                                         _e296015296141_
                                                         _hd296014296145_
                                                         _tl296013296148_
                                                         _e296018296151_
                                                         _hd296017296155_
                                                         _tl296016296158_
                                                         _e296021296161_
                                                         _hd296020296165_
                                                         _tl296019296168_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g296001296043_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296016296158_))
                                                    (___kont304727304728_
                                                     _hd296017296155_
                                                     _hd296014296145_
                                                     _hd296011296135_
                                                     _hd296008296125_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296001296043_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g296001296043_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g296001296043_)))))
                        (let () (declare (not safe)) (_g296001296043_)))))
                (let () (declare (not safe)) (_g296001296043_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx296200_)
      (let* ((_g296204296239_
              (lambda (_g296205296235_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296205296235_))))
             (_g296203296358_
              (lambda (_g296205296243_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296205296243_))
                    (let ((_e296211296246_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296205296243_))))
                      (let ((_hd296210296250_
                             (let ()
                               (declare (not safe))
                               (##car _e296211296246_)))
                            (_tl296209296253_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296211296246_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296209296253_))
                            (let ((_g305615_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296209296253_
                                      '0))))
                              (begin
                                (let ((_g305616_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305615_)
                                             (##vector-length _g305615_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305616_ 2)))
                                      (error "Context expects 2 values"
                                             _g305616_)))
                                (let ((_target296212296256_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305615_ 0)))
                                      (_tl296214296259_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305615_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296214296259_))
                                      (letrec ((_loop296215296262_
                                                (lambda (_hd296213296266_
                                                         _symbol296219296269_
                                                         _method296220296271_
                                                         _type-t296221296273_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296213296266_))
                                                      (let ((_e296216296276_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296213296266_))))
                (let ((_lp-hd296217296280_
                       (let () (declare (not safe)) (##car _e296216296276_)))
                      (_lp-tl296218296283_
                       (let () (declare (not safe)) (##cdr _e296216296276_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296217296280_))
                      (let ((_e296227296286_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296217296280_))))
                        (let ((_hd296226296290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296227296286_)))
                              (_tl296225296293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296227296286_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl296225296293_))
                              (let ((_e296230296296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl296225296293_))))
                                (let ((_hd296229296300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296230296296_)))
                                      (_tl296228296303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296230296296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl296228296303_))
                                      (let ((_e296233296306_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl296228296303_))))
                                        (let ((_hd296232296310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e296233296306_)))
                                              (_tl296231296313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e296233296306_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl296231296313_))
                                              (_loop296215296262_
                                               _lp-tl296218296283_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd296232296310_
                                                       _symbol296219296269_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd296229296300_
                                                       _method296220296271_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd296226296290_
                                                       _type-t296221296273_)))
                                              (_g296204296239_
                                               _g296205296243_))))
                                      (_g296204296239_ _g296205296243_))))
                              (_g296204296239_ _g296205296243_))))
                      (_g296204296239_ _g296205296243_))))
              (let ((_symbol296222296316_ (reverse _symbol296219296269_))
                    (_method296223296319_ (reverse _method296220296271_))
                    (_type-t296224296321_ (reverse _type-t296221296273_)))
                ((lambda (_L296324_ _L296326_ _L296327_)
                   (let ((__tmp305624
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305617
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296324_
                               _L296326_
                               _L296327_))
                            (let ((__tmp305618
                                   (lambda (_g296343296348_
                                            _g296344296351_
                                            _g296345296353_
                                            _g296346296355_)
                                     (let ((__tmp305619
                                            (let ((__tmp305623
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp305620
                                                   (let ((__tmp305621
                                                          (let ((__tmp305622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g296343296348_ '()))))
                    (declare (not safe))
                    (cons _g296344296351_ __tmp305622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296345296353_
                                                           __tmp305621))))
                                              (declare (not safe))
                                              (cons __tmp305623 __tmp305620))))
                                       (declare (not safe))
                                       (cons __tmp305619 _g296346296355_)))))
                              (declare (not safe))
                              (foldr* __tmp305618
                                      '()
                                      _L296324_
                                      _L296326_
                                      _L296327_)))))
                     (declare (not safe))
                     (cons __tmp305624 __tmp305617)))
                 _symbol296222296316_
                 _method296223296319_
                 _type-t296224296321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296215296262_
                                         _target296212296256_
                                         '()
                                         '()
                                         '()))
                                      (_g296204296239_ _g296205296243_)))))
                            (_g296204296239_ _g296205296243_))))
                    (_g296204296239_ _g296205296243_)))))
        (_g296203296358_ _$stx296200_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx296363_)
      (let* ((_g296367296400_
              (lambda (_g296368296396_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296368296396_))))
             (_g296366296514_
              (lambda (_g296368296404_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296368296404_))
                    (let ((_e296374296407_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296368296404_))))
                      (let ((_hd296373296411_
                             (let ()
                               (declare (not safe))
                               (##car _e296374296407_)))
                            (_tl296372296414_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296374296407_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296372296414_))
                            (let ((_e296377296417_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296372296414_))))
                              (let ((_hd296376296421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296377296417_)))
                                    (_tl296375296424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296377296417_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl296375296424_))
                                    (let ((_g305625_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl296375296424_
                                              '0))))
                                      (begin
                                        (let ((_g305626_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g305625_)
                                                     (##vector-length
                                                      _g305625_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g305626_ 2)))
                                              (error "Context expects 2 values"
                                                     _g305626_)))
                                        (let ((_target296378296427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g305625_ 0)))
                                              (_tl296380296430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g305625_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl296380296430_))
                                              (letrec ((_loop296381296433_
                                                        (lambda (_hd296379296437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol296385296440_
                         _method296386296442_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd296379296437_))
                      (let ((_e296382296445_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd296379296437_))))
                        (let ((_lp-hd296383296449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296382296445_)))
                              (_lp-tl296384296452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296382296445_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd296383296449_))
                              (let ((_e296391296455_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd296383296449_))))
                                (let ((_hd296390296459_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296391296455_)))
                                      (_tl296389296462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296391296455_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl296389296462_))
                                      (let ((_e296394296465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl296389296462_))))
                                        (let ((_hd296393296469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e296394296465_)))
                                              (_tl296392296472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e296394296465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl296392296472_))
                                              (_loop296381296433_
                                               _lp-tl296384296452_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd296393296469_
                                                       _symbol296385296440_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd296390296459_
                                                       _method296386296442_)))
                                              (_g296367296400_
                                               _g296368296404_))))
                                      (_g296367296400_ _g296368296404_))))
                              (_g296367296400_ _g296368296404_))))
                      (let ((_symbol296387296475_
                             (reverse _symbol296385296440_))
                            (_method296388296478_
                             (reverse _method296386296442_)))
                        ((lambda (_L296481_ _L296483_ _L296484_)
                           (let ((__tmp305634
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp305627
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L296481_
                                       _L296483_))
                                    (let ((__tmp305628
                                           (lambda (_g296502296506_
                                                    _g296503296509_
                                                    _g296504296511_)
                                             (let ((__tmp305629
                                                    (let ((__tmp305633
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp305630
                                                           (let ((__tmp305631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp305632
                                 (let ()
                                   (declare (not safe))
                                   (cons _g296502296506_ '()))))
                            (declare (not safe))
                            (cons _g296503296509_ __tmp305632))))
                     (declare (not safe))
                     (cons _L296484_ __tmp305631))))
              (declare (not safe))
              (cons __tmp305633 __tmp305630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305629
                                                     _g296504296511_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp305628
                                              '()
                                              _L296481_
                                              _L296483_)))))
                             (declare (not safe))
                             (cons __tmp305634 __tmp305627)))
                         _symbol296387296475_
                         _method296388296478_
                         _hd296376296421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop296381296433_
                                                 _target296378296427_
                                                 '()
                                                 '()))
                                              (_g296367296400_
                                               _g296368296404_)))))
                                    (_g296367296400_ _g296368296404_))))
                            (_g296367296400_ _g296368296404_))))
                    (_g296367296400_ _g296368296404_)))))
        (_g296366296514_ _$stx296363_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx296519_)
      (let* ((_g296523296537_
              (lambda (_g296524296533_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296524296533_))))
             (_g296522296578_
              (lambda (_g296524296541_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296524296541_))
                    (let ((_e296528296544_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296524296541_))))
                      (let ((_hd296527296548_
                             (let ()
                               (declare (not safe))
                               (##car _e296528296544_)))
                            (_tl296526296551_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296528296544_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296526296551_))
                            (let ((_e296531296554_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296526296551_))))
                              (let ((_hd296530296558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296531296554_)))
                                    (_tl296529296561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296531296554_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl296529296561_))
                                    ((lambda (_L296564_)
                                       (let ((__tmp305639
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp305635
                                              (let ((__tmp305636
                                                     (let ((__tmp305638
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305637
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L296564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305638 __tmp305637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305636 '()))))
                                         (declare (not safe))
                                         (cons __tmp305639 __tmp305635)))
                                     _hd296530296558_)
                                    (_g296523296537_ _g296524296541_))))
                            (_g296523296537_ _g296524296541_))))
                    (_g296523296537_ _g296524296541_)))))
        (_g296522296578_ _$stx296519_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx296582_)
      (let* ((_g296586296632_
              (lambda (_g296587296628_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296587296628_))))
             (_g296585296785_
              (lambda (_g296587296636_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296587296636_))
                    (let ((_e296599296639_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296587296636_))))
                      (let ((_hd296598296643_
                             (let ()
                               (declare (not safe))
                               (##car _e296599296639_)))
                            (_tl296597296646_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296599296639_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296597296646_))
                            (let ((_e296602296649_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296597296646_))))
                              (let ((_hd296601296653_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296602296649_)))
                                    (_tl296600296656_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296602296649_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296600296656_))
                                    (let ((_e296605296659_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296600296656_))))
                                      (let ((_hd296604296663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296605296659_)))
                                            (_tl296603296666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296605296659_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl296603296666_))
                                            (let ((_e296608296669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl296603296666_))))
                                              (let ((_hd296607296673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e296608296669_)))
                                                    (_tl296606296676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e296608296669_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl296606296676_))
                                                    (let ((_e296611296679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl296606296676_))))
                                                      (let ((_hd296610296683_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e296611296679_)))
                    (_tl296609296686_
                     (let () (declare (not safe)) (##cdr _e296611296679_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl296609296686_))
                    (let ((_e296614296689_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl296609296686_))))
                      (let ((_hd296613296693_
                             (let ()
                               (declare (not safe))
                               (##car _e296614296689_)))
                            (_tl296612296696_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296614296689_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296612296696_))
                            (let ((_e296617296699_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296612296696_))))
                              (let ((_hd296616296703_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296617296699_)))
                                    (_tl296615296706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296617296699_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296615296706_))
                                    (let ((_e296620296709_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296615296706_))))
                                      (let ((_hd296619296713_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296620296709_)))
                                            (_tl296618296716_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296620296709_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl296618296716_))
                                            (let ((_e296623296719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl296618296716_))))
                                              (let ((_hd296622296723_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e296623296719_)))
                                                    (_tl296621296726_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e296623296719_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl296621296726_))
                                                    (let ((_e296626296729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl296621296726_))))
                                                      (let ((_hd296625296733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e296626296729_)))
                    (_tl296624296736_
                     (let () (declare (not safe)) (##cdr _e296626296729_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl296624296736_))
                    ((lambda (_L296739_
                              _L296741_
                              _L296742_
                              _L296743_
                              _L296744_
                              _L296745_
                              _L296746_
                              _L296747_
                              _L296748_)
                       (let ((__tmp305677
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp305640
                              (let ((__tmp305674
                                     (let ((__tmp305676
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp305675
                                            (let ()
                                              (declare (not safe))
                                              (cons _L296748_ '()))))
                                       (declare (not safe))
                                       (cons __tmp305676 __tmp305675)))
                                    (__tmp305641
                                     (let ((__tmp305671
                                            (let ((__tmp305673
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp305672
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L296747_ '()))))
                                              (declare (not safe))
                                              (cons __tmp305673 __tmp305672)))
                                           (__tmp305642
                                            (let ((__tmp305667
                                                   (let ((__tmp305670
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp305668
                                                          (let ((__tmp305669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'precedence-lists))))
                    (declare (not safe))
                    (cons __tmp305669 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp305670
                                                           __tmp305668)))
                                                  (__tmp305643
                                                   (let ((__tmp305664
                                                          (let ((__tmp305666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp305665
                         (let () (declare (not safe)) (cons _L296745_ '()))))
                    (declare (not safe))
                    (cons __tmp305666 __tmp305665)))
                 (__tmp305644
                  (let ((__tmp305661
                         (let ((__tmp305663
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp305662
                                (let ()
                                  (declare (not safe))
                                  (cons _L296744_ '()))))
                           (declare (not safe))
                           (cons __tmp305663 __tmp305662)))
                        (__tmp305645
                         (let ((__tmp305658
                                (let ((__tmp305660
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp305659
                                       (let ()
                                         (declare (not safe))
                                         (cons _L296743_ '()))))
                                  (declare (not safe))
                                  (cons __tmp305660 __tmp305659)))
                               (__tmp305646
                                (let ((__tmp305655
                                       (let ((__tmp305657
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp305656
                                              (let ()
                                                (declare (not safe))
                                                (cons _L296742_ '()))))
                                         (declare (not safe))
                                         (cons __tmp305657 __tmp305656)))
                                      (__tmp305647
                                       (let ((__tmp305652
                                              (let ((__tmp305654
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp305653
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L296741_ '()))))
                                                (declare (not safe))
                                                (cons __tmp305654
                                                      __tmp305653)))
                                             (__tmp305648
                                              (let ((__tmp305649
                                                     (let ((__tmp305651
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305650
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L296739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305651 __tmp305650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305649 '()))))
                                         (declare (not safe))
                                         (cons __tmp305652 __tmp305648))))
                                  (declare (not safe))
                                  (cons __tmp305655 __tmp305647))))
                           (declare (not safe))
                           (cons __tmp305658 __tmp305646))))
                    (declare (not safe))
                    (cons __tmp305661 __tmp305645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp305664
                                                           __tmp305644))))
                                              (declare (not safe))
                                              (cons __tmp305667 __tmp305643))))
                                       (declare (not safe))
                                       (cons __tmp305671 __tmp305642))))
                                (declare (not safe))
                                (cons __tmp305674 __tmp305641))))
                         (declare (not safe))
                         (cons __tmp305677 __tmp305640)))
                     _hd296625296733_
                     _hd296622296723_
                     _hd296619296713_
                     _hd296616296703_
                     _hd296613296693_
                     _hd296610296683_
                     _hd296607296673_
                     _hd296604296663_
                     _hd296601296653_)
                    (_g296586296632_ _g296587296636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g296586296632_
                                                     _g296587296636_))))
                                            (_g296586296632_
                                             _g296587296636_))))
                                    (_g296586296632_ _g296587296636_))))
                            (_g296586296632_ _g296587296636_))))
                    (_g296586296632_ _g296587296636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g296586296632_
                                                     _g296587296636_))))
                                            (_g296586296632_
                                             _g296587296636_))))
                                    (_g296586296632_ _g296587296636_))))
                            (_g296586296632_ _g296587296636_))))
                    (_g296586296632_ _g296587296636_)))))
        (_g296585296785_ _$stx296582_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx296789_)
      (let* ((_g296793296807_
              (lambda (_g296794296803_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296794296803_))))
             (_g296792296848_
              (lambda (_g296794296811_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296794296811_))
                    (let ((_e296798296814_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296794296811_))))
                      (let ((_hd296797296818_
                             (let ()
                               (declare (not safe))
                               (##car _e296798296814_)))
                            (_tl296796296821_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296798296814_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296796296821_))
                            (let ((_e296801296824_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296796296821_))))
                              (let ((_hd296800296828_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296801296824_)))
                                    (_tl296799296831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296801296824_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl296799296831_))
                                    ((lambda (_L296834_)
                                       (let ((__tmp305682
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp305678
                                              (let ((__tmp305679
                                                     (let ((__tmp305681
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305680
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L296834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305681 __tmp305680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305679 '()))))
                                         (declare (not safe))
                                         (cons __tmp305682 __tmp305678)))
                                     _hd296800296828_)
                                    (_g296793296807_ _g296794296811_))))
                            (_g296793296807_ _g296794296811_))))
                    (_g296793296807_ _g296794296811_)))))
        (_g296792296848_ _$stx296789_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx296852_)
      (let* ((_g296856296870_
              (lambda (_g296857296866_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296857296866_))))
             (_g296855296911_
              (lambda (_g296857296874_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296857296874_))
                    (let ((_e296861296877_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296857296874_))))
                      (let ((_hd296860296881_
                             (let ()
                               (declare (not safe))
                               (##car _e296861296877_)))
                            (_tl296859296884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296861296877_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296859296884_))
                            (let ((_e296864296887_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296859296884_))))
                              (let ((_hd296863296891_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296864296887_)))
                                    (_tl296862296894_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296864296887_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl296862296894_))
                                    ((lambda (_L296897_)
                                       (let ((__tmp305687
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp305683
                                              (let ((__tmp305684
                                                     (let ((__tmp305686
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L296897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305686 __tmp305685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305684 '()))))
                                         (declare (not safe))
                                         (cons __tmp305687 __tmp305683)))
                                     _hd296863296891_)
                                    (_g296856296870_ _g296857296874_))))
                            (_g296856296870_ _g296857296874_))))
                    (_g296856296870_ _g296857296874_)))))
        (_g296855296911_ _$stx296852_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx296915_)
      (let* ((_g296919296941_
              (lambda (_g296920296937_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296920296937_))))
             (_g296918297010_
              (lambda (_g296920296945_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296920296945_))
                    (let ((_e296926296948_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296920296945_))))
                      (let ((_hd296925296952_
                             (let ()
                               (declare (not safe))
                               (##car _e296926296948_)))
                            (_tl296924296955_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296926296948_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296924296955_))
                            (let ((_e296929296958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296924296955_))))
                              (let ((_hd296928296962_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296929296958_)))
                                    (_tl296927296965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296929296958_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296927296965_))
                                    (let ((_e296932296968_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296927296965_))))
                                      (let ((_hd296931296972_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296932296968_)))
                                            (_tl296930296975_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296932296968_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl296930296975_))
                                            (let ((_e296935296978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl296930296975_))))
                                              (let ((_hd296934296982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e296935296978_)))
                                                    (_tl296933296985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e296935296978_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296933296985_))
                                                    ((lambda (_L296988_
                                                              _L296990_
                                                              _L296991_)
                                                       (let ((__tmp305697
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp305688
                      (let ((__tmp305694
                             (let ((__tmp305696
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp305695
                                    (let ()
                                      (declare (not safe))
                                      (cons _L296991_ '()))))
                               (declare (not safe))
                               (cons __tmp305696 __tmp305695)))
                            (__tmp305689
                             (let ((__tmp305691
                                    (let ((__tmp305693
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp305692
                                           (let ()
                                             (declare (not safe))
                                             (cons _L296990_ '()))))
                                      (declare (not safe))
                                      (cons __tmp305693 __tmp305692)))
                                   (__tmp305690
                                    (let ()
                                      (declare (not safe))
                                      (cons _L296988_ '()))))
                               (declare (not safe))
                               (cons __tmp305691 __tmp305690))))
                        (declare (not safe))
                        (cons __tmp305694 __tmp305689))))
                 (declare (not safe))
                 (cons __tmp305697 __tmp305688)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd296934296982_
                                                     _hd296931296972_
                                                     _hd296928296962_)
                                                    (_g296919296941_
                                                     _g296920296945_))))
                                            (_g296919296941_
                                             _g296920296945_))))
                                    (_g296919296941_ _g296920296945_))))
                            (_g296919296941_ _g296920296945_))))
                    (_g296919296941_ _g296920296945_)))))
        (_g296918297010_ _$stx296915_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx297014_)
      (let* ((_g297018297040_
              (lambda (_g297019297036_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297019297036_))))
             (_g297017297109_
              (lambda (_g297019297044_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297019297044_))
                    (let ((_e297025297047_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297019297044_))))
                      (let ((_hd297024297051_
                             (let ()
                               (declare (not safe))
                               (##car _e297025297047_)))
                            (_tl297023297054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297025297047_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297023297054_))
                            (let ((_e297028297057_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297023297054_))))
                              (let ((_hd297027297061_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297028297057_)))
                                    (_tl297026297064_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297028297057_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297026297064_))
                                    (let ((_e297031297067_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297026297064_))))
                                      (let ((_hd297030297071_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297031297067_)))
                                            (_tl297029297074_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297031297067_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297029297074_))
                                            (let ((_e297034297077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297029297074_))))
                                              (let ((_hd297033297081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297034297077_)))
                                                    (_tl297032297084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297034297077_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297032297084_))
                                                    ((lambda (_L297087_
                                                              _L297089_
                                                              _L297090_)
                                                       (let ((__tmp305707
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp305698
                      (let ((__tmp305704
                             (let ((__tmp305706
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp305705
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297090_ '()))))
                               (declare (not safe))
                               (cons __tmp305706 __tmp305705)))
                            (__tmp305699
                             (let ((__tmp305701
                                    (let ((__tmp305703
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp305702
                                           (let ()
                                             (declare (not safe))
                                             (cons _L297089_ '()))))
                                      (declare (not safe))
                                      (cons __tmp305703 __tmp305702)))
                                   (__tmp305700
                                    (let ()
                                      (declare (not safe))
                                      (cons _L297087_ '()))))
                               (declare (not safe))
                               (cons __tmp305701 __tmp305700))))
                        (declare (not safe))
                        (cons __tmp305704 __tmp305699))))
                 (declare (not safe))
                 (cons __tmp305707 __tmp305698)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297033297081_
                                                     _hd297030297071_
                                                     _hd297027297061_)
                                                    (_g297018297040_
                                                     _g297019297044_))))
                                            (_g297018297040_
                                             _g297019297044_))))
                                    (_g297018297040_ _g297019297044_))))
                            (_g297018297040_ _g297019297044_))))
                    (_g297018297040_ _g297019297044_)))))
        (_g297017297109_ _$stx297014_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx297113_)
      (let* ((___stx304790304791_ _$stx297113_)
             (_g297119297185_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304790304791_)))))
        (let ((___kont304793304794_
               (lambda (_L297407_ _L297409_ _L297410_ _L297411_ _L297412_)
                 (let ((__tmp305713
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp305708
                        (let ((__tmp305709
                               (let ((__tmp305710
                                      (let ((__tmp305711
                                             (let ((__tmp305712
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L297407_ '()))))
                                               (declare (not safe))
                                               (cons _L297409_ __tmp305712))))
                                        (declare (not safe))
                                        (cons _L297410_ __tmp305711))))
                                 (declare (not safe))
                                 (cons _L297411_ __tmp305710))))
                          (declare (not safe))
                          (cons _L297412_ __tmp305709))))
                   (declare (not safe))
                   (cons __tmp305713 __tmp305708))))
              (___kont304795304796_
               (lambda (_L297317_ _L297319_ _L297320_ _L297321_)
                 (let ((__tmp305714
                        (let ((__tmp305715
                               (let ((__tmp305716
                                      (let ((__tmp305717
                                             (let ((__tmp305718
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp305718))))
                                        (declare (not safe))
                                        (cons _L297317_ __tmp305717))))
                                 (declare (not safe))
                                 (cons _L297319_ __tmp305716))))
                          (declare (not safe))
                          (cons _L297320_ __tmp305715))))
                   (declare (not safe))
                   (cons _L297321_ __tmp305714))))
              (___kont304797304798_
               (lambda (_L297242_ _L297244_ _L297245_ _L297246_ _L297247_)
                 (let ((__tmp305719
                        (let ((__tmp305724
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp305720
                               (let ((__tmp305721
                                      (let ((__tmp305722
                                             (let ((__tmp305723
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L297242_ __tmp305723))))
                                        (declare (not safe))
                                        (cons _L297244_ __tmp305722))))
                                 (declare (not safe))
                                 (cons _L297245_ __tmp305721))))
                          (declare (not safe))
                          (cons __tmp305724 __tmp305720))))
                   (declare (not safe))
                   (cons _L297247_ __tmp305719)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304790304791_))
              (let ((_e297128297347_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304790304791_))))
                (let ((_tl297126297354_
                       (let () (declare (not safe)) (##cdr _e297128297347_)))
                      (_hd297127297351_
                       (let () (declare (not safe)) (##car _e297128297347_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297126297354_))
                      (let ((_e297131297357_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297126297354_))))
                        (let ((_tl297129297364_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297131297357_)))
                              (_hd297130297361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297131297357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297129297364_))
                              (let ((_e297134297367_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297129297364_))))
                                (let ((_tl297132297374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297134297367_)))
                                      (_hd297133297371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297134297367_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297132297374_))
                                      (let ((_e297137297377_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297132297374_))))
                                        (let ((_tl297135297384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297137297377_)))
                                              (_hd297136297381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297137297377_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl297135297384_))
                                              (let ((_e297140297387_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl297135297384_))))
                                                (let ((_tl297138297394_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e297140297387_)))
                                                      (_hd297139297391_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e297140297387_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl297138297394_))
                                                      (let ((_e297143297397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl297138297394_))))
                (let ((_tl297141297404_
                       (let () (declare (not safe)) (##cdr _e297143297397_)))
                      (_hd297142297401_
                       (let () (declare (not safe)) (##car _e297143297397_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl297141297404_))
                      (___kont304793304794_
                       _hd297142297401_
                       _hd297139297391_
                       _hd297136297381_
                       _hd297133297371_
                       _hd297130297361_)
                      (let () (declare (not safe)) (_g297119297185_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl297138297394_))
                  (___kont304797304798_
                   _hd297139297391_
                   _hd297136297381_
                   _hd297133297371_
                   _hd297130297361_
                   _hd297127297351_)
                  (let () (declare (not safe)) (_g297119297185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl297135297384_))
                                                  (___kont304795304796_
                                                   _hd297136297381_
                                                   _hd297133297371_
                                                   _hd297130297361_
                                                   _hd297127297351_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g297119297185_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g297119297185_)))))
                              (let ()
                                (declare (not safe))
                                (_g297119297185_)))))
                      (let () (declare (not safe)) (_g297119297185_)))))
              (let () (declare (not safe)) (_g297119297185_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx297440_)
      (let* ((___stx304898304899_ _$stx297440_)
             (_g297445297498_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304898304899_)))))
        (let ((___kont304901304902_
               (lambda (_L297666_ _L297668_ _L297669_ _L297670_)
                 (let ((__tmp305740
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp305725
                        (let ((__tmp305737
                               (let ((__tmp305739
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305738
                                      (let ()
                                        (declare (not safe))
                                        (cons _L297670_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305739 __tmp305738)))
                              (__tmp305726
                               (let ((__tmp305727
                                      (let ((__tmp305728
                                             (let ((__tmp305729
                                                    (let ((__tmp305734
                                                           (let ((__tmp305736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp305735
                          (let () (declare (not safe)) (cons _L297668_ '()))))
                     (declare (not safe))
                     (cons __tmp305736 __tmp305735)))
                  (__tmp305730
                   (let ((__tmp305731
                          (let ((__tmp305733
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp305732
                                 (let ()
                                   (declare (not safe))
                                   (cons _L297666_ '()))))
                            (declare (not safe))
                            (cons __tmp305733 __tmp305732))))
                     (declare (not safe))
                     (cons __tmp305731 '()))))
              (declare (not safe))
              (cons __tmp305734 __tmp305730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp305729))))
                                        (declare (not safe))
                                        (cons _L297669_ __tmp305728))))
                                 (declare (not safe))
                                 (cons '#f __tmp305727))))
                          (declare (not safe))
                          (cons __tmp305737 __tmp305726))))
                   (declare (not safe))
                   (cons __tmp305740 __tmp305725))))
              (___kont304903304904_
               (lambda (_L297565_ _L297567_ _L297568_ _L297569_ _L297570_)
                 (let ((__tmp305822
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp305741
                        (let ((__tmp305762
                               (let ((__tmp305813
                                      (let ((__tmp305821
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp305814
                                             (let ((__tmp305815
                                                    (let ((__tmp305820
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp305816
                                                           (let ((__tmp305817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp305819
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp305818
                                 (let ()
                                   (declare (not safe))
                                   (cons _L297569_ '()))))
                            (declare (not safe))
                            (cons __tmp305819 __tmp305818))))
                     (declare (not safe))
                     (cons __tmp305817 '()))))
              (declare (not safe))
              (cons __tmp305820 __tmp305816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305815 '()))))
                                        (declare (not safe))
                                        (cons __tmp305821 __tmp305814)))
                                     (__tmp305763
                                      (let ((__tmp305785
                                             (let ((__tmp305812
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp305786
                                                    (let ((__tmp305787
                                                           (let ((__tmp305811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp305788
                          (let ((__tmp305810
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp305789
                                 (let ((__tmp305790
                                        (let ((__tmp305809
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp305791
                                               (let ((__tmp305802
                                                      (let ((__tmp305808
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp305803
                     (let ((__tmp305804
                            (let ((__tmp305807
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp305805
                                   (let ((__tmp305806
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp305806 '()))))
                              (declare (not safe))
                              (cons __tmp305807 __tmp305805))))
                       (declare (not safe))
                       (cons __tmp305804 '()))))
                (declare (not safe))
                (cons __tmp305808 __tmp305803)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp305792
                                                      (let ((__tmp305793
                                                             (let ((__tmp305801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp305794
                            (let ((__tmp305800
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp305795
                                   (let ((__tmp305796
                                          (let ((__tmp305799
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp305797
                                                 (let ((__tmp305798
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp305798 '()))))
                                            (declare (not safe))
                                            (cons __tmp305799 __tmp305797))))
                                     (declare (not safe))
                                     (cons __tmp305796 '()))))
                              (declare (not safe))
                              (cons __tmp305800 __tmp305795))))
                       (declare (not safe))
                       (cons __tmp305801 __tmp305794))))
                (declare (not safe))
                (cons __tmp305793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305802
                                                       __tmp305792))))
                                          (declare (not safe))
                                          (cons __tmp305809 __tmp305791))))
                                   (declare (not safe))
                                   (cons __tmp305790 '()))))
                            (declare (not safe))
                            (cons __tmp305810 __tmp305789))))
                     (declare (not safe))
                     (cons __tmp305811 __tmp305788))))
              (declare (not safe))
              (cons __tmp305787 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305812 __tmp305786)))
                                            (__tmp305764
                                             (let ((__tmp305765
                                                    (let ((__tmp305784
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp305766
                                                           (let ((__tmp305767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp305783
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp305768
                                 (let ((__tmp305780
                                        (let ((__tmp305782
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp305781
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L297567_ '()))))
                                          (declare (not safe))
                                          (cons __tmp305782 __tmp305781)))
                                       (__tmp305769
                                        (let ((__tmp305770
                                               (let ((__tmp305779
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp305771
                                                      (let ((__tmp305778
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp305772
                     (let ((__tmp305774
                            (let ((__tmp305777
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp305775
                                   (let ((__tmp305776
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp305776 '()))))
                              (declare (not safe))
                              (cons __tmp305777 __tmp305775)))
                           (__tmp305773
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp305774 __tmp305773))))
                (declare (not safe))
                (cons __tmp305778 __tmp305772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305779
                                                       __tmp305771))))
                                          (declare (not safe))
                                          (cons __tmp305770 '()))))
                                   (declare (not safe))
                                   (cons __tmp305780 __tmp305769))))
                            (declare (not safe))
                            (cons __tmp305783 __tmp305768))))
                     (declare (not safe))
                     (cons __tmp305767 '()))))
              (declare (not safe))
              (cons __tmp305784 __tmp305766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305765 '()))))
                                        (declare (not safe))
                                        (cons __tmp305785 __tmp305764))))
                                 (declare (not safe))
                                 (cons __tmp305813 __tmp305763)))
                              (__tmp305742
                               (let ((__tmp305743
                                      (let ((__tmp305761
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp305744
                                             (let ((__tmp305758
                                                    (let ((__tmp305760
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp305759
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L297570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp305760 __tmp305759)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp305745
                                                    (let ((__tmp305755
                                                           (let ((__tmp305757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp305756
                          (let () (declare (not safe)) (cons _L297569_ '()))))
                     (declare (not safe))
                     (cons __tmp305757 __tmp305756)))
                  (__tmp305746
                   (let ((__tmp305747
                          (let ((__tmp305754
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp305748
                                 (let ((__tmp305753
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp305749
                                        (let ((__tmp305750
                                               (let ((__tmp305752
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp305751
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L297565_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp305752
                                                       __tmp305751))))
                                          (declare (not safe))
                                          (cons __tmp305750 '()))))
                                   (declare (not safe))
                                   (cons __tmp305753 __tmp305749))))
                            (declare (not safe))
                            (cons __tmp305754 __tmp305748))))
                     (declare (not safe))
                     (cons _L297568_ __tmp305747))))
              (declare (not safe))
              (cons __tmp305755 __tmp305746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp305758
                                                     __tmp305745))))
                                        (declare (not safe))
                                        (cons __tmp305761 __tmp305744))))
                                 (declare (not safe))
                                 (cons __tmp305743 '()))))
                          (declare (not safe))
                          (cons __tmp305762 __tmp305742))))
                   (declare (not safe))
                   (cons __tmp305822 __tmp305741)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304898304899_))
              (let ((_e297453297602_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304898304899_))))
                (let ((_tl297451297609_
                       (let () (declare (not safe)) (##cdr _e297453297602_)))
                      (_hd297452297606_
                       (let () (declare (not safe)) (##car _e297453297602_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297451297609_))
                      (let ((_e297456297612_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297451297609_))))
                        (let ((_tl297454297619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297456297612_)))
                              (_hd297455297616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297456297612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297454297619_))
                              (let ((_e297459297622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297454297619_))))
                                (let ((_tl297457297629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297459297622_)))
                                      (_hd297458297626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297459297622_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd297458297626_))
                                      (let ((_e297460297632_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd297458297626_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e297460297632_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297457297629_))
                                                (let ((_e297463297636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297457297629_))))
                                                  (let ((_tl297461297643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297463297636_)))
                                                        (_hd297462297640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297463297636_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl297461297643_))
                                                        (let ((_e297466297646_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl297461297643_))))
                  (let ((_tl297464297653_
                         (let () (declare (not safe)) (##cdr _e297466297646_)))
                        (_hd297465297650_
                         (let ()
                           (declare (not safe))
                           (##car _e297466297646_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl297464297653_))
                        (let ((_e297469297656_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl297464297653_))))
                          (let ((_tl297467297663_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e297469297656_)))
                                (_hd297468297660_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e297469297656_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl297467297663_))
                                (___kont304901304902_
                                 _hd297468297660_
                                 _hd297465297650_
                                 _hd297462297640_
                                 _hd297455297616_)
                                (let ()
                                  (declare (not safe))
                                  (_g297445297498_)))))
                        (let () (declare (not safe)) (_g297445297498_)))))
                (let () (declare (not safe)) (_g297445297498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g297445297498_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297457297629_))
                                                (let ((_e297486297535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297457297629_))))
                                                  (let ((_tl297484297542_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297486297535_)))
                                                        (_hd297485297539_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297486297535_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl297484297542_))
                                                        (let ((_e297489297545_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl297484297542_))))
                  (let ((_tl297487297552_
                         (let () (declare (not safe)) (##cdr _e297489297545_)))
                        (_hd297488297549_
                         (let ()
                           (declare (not safe))
                           (##car _e297489297545_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl297487297552_))
                        (let ((_e297492297555_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl297487297552_))))
                          (let ((_tl297490297562_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e297492297555_)))
                                (_hd297491297559_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e297492297555_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl297490297562_))
                                (___kont304903304904_
                                 _hd297491297559_
                                 _hd297488297549_
                                 _hd297485297539_
                                 _hd297458297626_
                                 _hd297455297616_)
                                (let ()
                                  (declare (not safe))
                                  (_g297445297498_)))))
                        (let () (declare (not safe)) (_g297445297498_)))))
                (let () (declare (not safe)) (_g297445297498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g297445297498_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl297457297629_))
                                          (let ((_e297486297535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl297457297629_))))
                                            (let ((_tl297484297542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e297486297535_)))
                                                  (_hd297485297539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e297486297535_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl297484297542_))
                                                  (let ((_e297489297545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl297484297542_))))
                                                    (let ((_tl297487297552_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e297489297545_)))
                                                          (_hd297488297549_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e297489297545_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl297487297552_))
                                                          (let ((_e297492297555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl297487297552_))))
                    (let ((_tl297490297562_
                           (let ()
                             (declare (not safe))
                             (##cdr _e297492297555_)))
                          (_hd297491297559_
                           (let ()
                             (declare (not safe))
                             (##car _e297492297555_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl297490297562_))
                          (___kont304903304904_
                           _hd297491297559_
                           _hd297488297549_
                           _hd297485297539_
                           _hd297458297626_
                           _hd297455297616_)
                          (let () (declare (not safe)) (_g297445297498_)))))
                  (let () (declare (not safe)) (_g297445297498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g297445297498_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g297445297498_))))))
                              (let ()
                                (declare (not safe))
                                (_g297445297498_)))))
                      (let () (declare (not safe)) (_g297445297498_)))))
              (let () (declare (not safe)) (_g297445297498_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx297698_)
      (let* ((_g297702297716_
              (lambda (_g297703297712_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297703297712_))))
             (_g297701297757_
              (lambda (_g297703297720_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297703297720_))
                    (let ((_e297707297723_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297703297720_))))
                      (let ((_hd297706297727_
                             (let ()
                               (declare (not safe))
                               (##car _e297707297723_)))
                            (_tl297705297730_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297707297723_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297705297730_))
                            (let ((_e297710297733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297705297730_))))
                              (let ((_hd297709297737_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297710297733_)))
                                    (_tl297708297740_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297710297733_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297708297740_))
                                    ((lambda (_L297743_)
                                       (let ((__tmp305827
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp305823
                                              (let ((__tmp305824
                                                     (let ((__tmp305826
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305825
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305826 __tmp305825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305824 '()))))
                                         (declare (not safe))
                                         (cons __tmp305827 __tmp305823)))
                                     _hd297709297737_)
                                    (_g297702297716_ _g297703297720_))))
                            (_g297702297716_ _g297703297720_))))
                    (_g297702297716_ _g297703297720_)))))
        (_g297701297757_ _$stx297698_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx297761_)
      (let* ((_g297765297779_
              (lambda (_g297766297775_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297766297775_))))
             (_g297764297820_
              (lambda (_g297766297783_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297766297783_))
                    (let ((_e297770297786_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297766297783_))))
                      (let ((_hd297769297790_
                             (let ()
                               (declare (not safe))
                               (##car _e297770297786_)))
                            (_tl297768297793_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297770297786_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297768297793_))
                            (let ((_e297773297796_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297768297793_))))
                              (let ((_hd297772297800_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297773297796_)))
                                    (_tl297771297803_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297773297796_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297771297803_))
                                    ((lambda (_L297806_)
                                       (let ((__tmp305832
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp305828
                                              (let ((__tmp305829
                                                     (let ((__tmp305831
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305830
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305831 __tmp305830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305829 '()))))
                                         (declare (not safe))
                                         (cons __tmp305832 __tmp305828)))
                                     _hd297772297800_)
                                    (_g297765297779_ _g297766297783_))))
                            (_g297765297779_ _g297766297783_))))
                    (_g297765297779_ _g297766297783_)))))
        (_g297764297820_ _$stx297761_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx297824_)
      (let* ((___stx304990304991_ _$stx297824_)
             (_g297829297862_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304990304991_)))))
        (let ((___kont304993304994_
               (lambda (_L297964_ _L297966_ _L297967_)
                 (let ((__tmp305839
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp305833
                        (let ((__tmp305836
                               (let ((__tmp305838
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305837
                                      (let ()
                                        (declare (not safe))
                                        (cons _L297967_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305838 __tmp305837)))
                              (__tmp305834
                               (let ((__tmp305835
                                      (let ()
                                        (declare (not safe))
                                        (cons _L297964_ '()))))
                                 (declare (not safe))
                                 (cons _L297966_ __tmp305835))))
                          (declare (not safe))
                          (cons __tmp305836 __tmp305834))))
                   (declare (not safe))
                   (cons __tmp305839 __tmp305833))))
              (___kont304995304996_
               (lambda (_L297899_ _L297901_)
                 (let ((__tmp305846
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp305840
                        (let ((__tmp305843
                               (let ((__tmp305845
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305844
                                      (let ()
                                        (declare (not safe))
                                        (cons _L297901_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305845 __tmp305844)))
                              (__tmp305841
                               (let ((__tmp305842
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L297899_ __tmp305842))))
                          (declare (not safe))
                          (cons __tmp305843 __tmp305841))))
                   (declare (not safe))
                   (cons __tmp305846 __tmp305840)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304990304991_))
              (let ((_e297836297924_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304990304991_))))
                (let ((_tl297834297931_
                       (let () (declare (not safe)) (##cdr _e297836297924_)))
                      (_hd297835297928_
                       (let () (declare (not safe)) (##car _e297836297924_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297834297931_))
                      (let ((_e297839297934_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297834297931_))))
                        (let ((_tl297837297941_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297839297934_)))
                              (_hd297838297938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297839297934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297837297941_))
                              (let ((_e297842297944_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297837297941_))))
                                (let ((_tl297840297951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297842297944_)))
                                      (_hd297841297948_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297842297944_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297840297951_))
                                      (let ((_e297845297954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297840297951_))))
                                        (let ((_tl297843297961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297845297954_)))
                                              (_hd297844297958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297845297954_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297843297961_))
                                              (___kont304993304994_
                                               _hd297844297958_
                                               _hd297841297948_
                                               _hd297838297938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g297829297862_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl297840297951_))
                                          (___kont304995304996_
                                           _hd297841297948_
                                           _hd297838297938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g297829297862_))))))
                              (let ()
                                (declare (not safe))
                                (_g297829297862_)))))
                      (let () (declare (not safe)) (_g297829297862_)))))
              (let () (declare (not safe)) (_g297829297862_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx297989_)
      (let* ((___stx305046305047_ _$stx297989_)
             (_g297994298027_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305046305047_)))))
        (let ((___kont305049305050_
               (lambda (_L298129_ _L298131_ _L298132_)
                 (let ((__tmp305853
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp305847
                        (let ((__tmp305850
                               (let ((__tmp305852
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305851
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298132_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305852 __tmp305851)))
                              (__tmp305848
                               (let ((__tmp305849
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298129_ '()))))
                                 (declare (not safe))
                                 (cons _L298131_ __tmp305849))))
                          (declare (not safe))
                          (cons __tmp305850 __tmp305848))))
                   (declare (not safe))
                   (cons __tmp305853 __tmp305847))))
              (___kont305051305052_
               (lambda (_L298064_ _L298066_)
                 (let ((__tmp305860
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp305854
                        (let ((__tmp305857
                               (let ((__tmp305859
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305858
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298066_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305859 __tmp305858)))
                              (__tmp305855
                               (let ((__tmp305856
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L298064_ __tmp305856))))
                          (declare (not safe))
                          (cons __tmp305857 __tmp305855))))
                   (declare (not safe))
                   (cons __tmp305860 __tmp305854)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305046305047_))
              (let ((_e298001298089_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305046305047_))))
                (let ((_tl297999298096_
                       (let () (declare (not safe)) (##cdr _e298001298089_)))
                      (_hd298000298093_
                       (let () (declare (not safe)) (##car _e298001298089_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl297999298096_))
                      (let ((_e298004298099_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl297999298096_))))
                        (let ((_tl298002298106_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298004298099_)))
                              (_hd298003298103_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298004298099_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298002298106_))
                              (let ((_e298007298109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298002298106_))))
                                (let ((_tl298005298116_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298007298109_)))
                                      (_hd298006298113_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298007298109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298005298116_))
                                      (let ((_e298010298119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298005298116_))))
                                        (let ((_tl298008298126_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298010298119_)))
                                              (_hd298009298123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298010298119_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298008298126_))
                                              (___kont305049305050_
                                               _hd298009298123_
                                               _hd298006298113_
                                               _hd298003298103_)
                                              (let ()
                                                (declare (not safe))
                                                (_g297994298027_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298005298116_))
                                          (___kont305051305052_
                                           _hd298006298113_
                                           _hd298003298103_)
                                          (let ()
                                            (declare (not safe))
                                            (_g297994298027_))))))
                              (let ()
                                (declare (not safe))
                                (_g297994298027_)))))
                      (let () (declare (not safe)) (_g297994298027_)))))
              (let () (declare (not safe)) (_g297994298027_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx298154_)
      (let* ((_g298158298196_
              (lambda (_g298159298192_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298159298192_))))
             (_g298157298321_
              (lambda (_g298159298200_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298159298200_))
                    (let ((_e298169298203_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298159298200_))))
                      (let ((_hd298168298207_
                             (let ()
                               (declare (not safe))
                               (##car _e298169298203_)))
                            (_tl298167298210_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298169298203_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298167298210_))
                            (let ((_e298172298213_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298167298210_))))
                              (let ((_hd298171298217_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298172298213_)))
                                    (_tl298170298220_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298172298213_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298170298220_))
                                    (let ((_e298175298223_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298170298220_))))
                                      (let ((_hd298174298227_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298175298223_)))
                                            (_tl298173298230_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298175298223_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298173298230_))
                                            (let ((_e298178298233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298173298230_))))
                                              (let ((_hd298177298237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298178298233_)))
                                                    (_tl298176298240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298178298233_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298176298240_))
                                                    (let ((_e298181298243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298176298240_))))
                                                      (let ((_hd298180298247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298181298243_)))
                    (_tl298179298250_
                     (let () (declare (not safe)) (##cdr _e298181298243_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298179298250_))
                    (let ((_e298184298253_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298179298250_))))
                      (let ((_hd298183298257_
                             (let ()
                               (declare (not safe))
                               (##car _e298184298253_)))
                            (_tl298182298260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298184298253_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298182298260_))
                            (let ((_e298187298263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298182298260_))))
                              (let ((_hd298186298267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298187298263_)))
                                    (_tl298185298270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298187298263_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298185298270_))
                                    (let ((_e298190298273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298185298270_))))
                                      (let ((_hd298189298277_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298190298273_)))
                                            (_tl298188298280_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298190298273_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298188298280_))
                                            ((lambda (_L298283_
                                                      _L298285_
                                                      _L298286_
                                                      _L298287_
                                                      _L298288_
                                                      _L298289_
                                                      _L298290_)
                                               (let ((__tmp305889
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp305861
                                                      (let ((__tmp305886
                                                             (let ((__tmp305888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp305887
                            (let ()
                              (declare (not safe))
                              (cons _L298290_ '()))))
                       (declare (not safe))
                       (cons __tmp305888 __tmp305887)))
                    (__tmp305862
                     (let ((__tmp305883
                            (let ((__tmp305885
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp305884
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298289_ '()))))
                              (declare (not safe))
                              (cons __tmp305885 __tmp305884)))
                           (__tmp305863
                            (let ((__tmp305880
                                   (let ((__tmp305882
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp305881
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298288_ '()))))
                                     (declare (not safe))
                                     (cons __tmp305882 __tmp305881)))
                                  (__tmp305864
                                   (let ((__tmp305877
                                          (let ((__tmp305879
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp305878
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L298287_ '()))))
                                            (declare (not safe))
                                            (cons __tmp305879 __tmp305878)))
                                         (__tmp305865
                                          (let ((__tmp305874
                                                 (let ((__tmp305876
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp305875
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L298286_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp305876
                                                         __tmp305875)))
                                                (__tmp305866
                                                 (let ((__tmp305871
                                                        (let ((__tmp305873
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp305872
                       (let () (declare (not safe)) (cons _L298285_ '()))))
                  (declare (not safe))
                  (cons __tmp305873 __tmp305872)))
               (__tmp305867
                (let ((__tmp305868
                       (let ((__tmp305870
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp305869
                              (let ()
                                (declare (not safe))
                                (cons _L298283_ '()))))
                         (declare (not safe))
                         (cons __tmp305870 __tmp305869))))
                  (declare (not safe))
                  (cons __tmp305868 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp305871
                                                         __tmp305867))))
                                            (declare (not safe))
                                            (cons __tmp305874 __tmp305866))))
                                     (declare (not safe))
                                     (cons __tmp305877 __tmp305865))))
                              (declare (not safe))
                              (cons __tmp305880 __tmp305864))))
                       (declare (not safe))
                       (cons __tmp305883 __tmp305863))))
                (declare (not safe))
                (cons __tmp305886 __tmp305862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305889
                                                       __tmp305861)))
                                             _hd298189298277_
                                             _hd298186298267_
                                             _hd298183298257_
                                             _hd298180298247_
                                             _hd298177298237_
                                             _hd298174298227_
                                             _hd298171298217_)
                                            (_g298158298196_
                                             _g298159298200_))))
                                    (_g298158298196_ _g298159298200_))))
                            (_g298158298196_ _g298159298200_))))
                    (_g298158298196_ _g298159298200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298158298196_
                                                     _g298159298200_))))
                                            (_g298158298196_
                                             _g298159298200_))))
                                    (_g298158298196_ _g298159298200_))))
                            (_g298158298196_ _g298159298200_))))
                    (_g298158298196_ _g298159298200_)))))
        (_g298157298321_ _$stx298154_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx298325_)
      (let* ((_g298329298343_
              (lambda (_g298330298339_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298330298339_))))
             (_g298328298384_
              (lambda (_g298330298347_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298330298347_))
                    (let ((_e298334298350_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298330298347_))))
                      (let ((_hd298333298354_
                             (let ()
                               (declare (not safe))
                               (##car _e298334298350_)))
                            (_tl298332298357_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298334298350_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298332298357_))
                            (let ((_e298337298360_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298332298357_))))
                              (let ((_hd298336298364_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298337298360_)))
                                    (_tl298335298367_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298337298360_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298335298367_))
                                    ((lambda (_L298370_)
                                       (let ((__tmp305894
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp305890
                                              (let ((__tmp305891
                                                     (let ((__tmp305893
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305892
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305893 __tmp305892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305891 '()))))
                                         (declare (not safe))
                                         (cons __tmp305894 __tmp305890)))
                                     _hd298336298364_)
                                    (_g298329298343_ _g298330298347_))))
                            (_g298329298343_ _g298330298347_))))
                    (_g298329298343_ _g298330298347_)))))
        (_g298328298384_ _$stx298325_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx298388_)
      (let* ((_g298392298406_
              (lambda (_g298393298402_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298393298402_))))
             (_g298391298447_
              (lambda (_g298393298410_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298393298410_))
                    (let ((_e298397298413_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298393298410_))))
                      (let ((_hd298396298417_
                             (let ()
                               (declare (not safe))
                               (##car _e298397298413_)))
                            (_tl298395298420_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298397298413_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298395298420_))
                            (let ((_e298400298423_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298395298420_))))
                              (let ((_hd298399298427_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298400298423_)))
                                    (_tl298398298430_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298400298423_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298398298430_))
                                    ((lambda (_L298433_)
                                       (let ((__tmp305899
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp305895
                                              (let ((__tmp305896
                                                     (let ((__tmp305898
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305897
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305898 __tmp305897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305896 '()))))
                                         (declare (not safe))
                                         (cons __tmp305899 __tmp305895)))
                                     _hd298399298427_)
                                    (_g298392298406_ _g298393298410_))))
                            (_g298392298406_ _g298393298410_))))
                    (_g298392298406_ _g298393298410_)))))
        (_g298391298447_ _$stx298388_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx298451_)
      (let* ((___stx305102305103_ _$stx298451_)
             (_g298456298489_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305102305103_)))))
        (let ((___kont305105305106_
               (lambda (_L298591_ _L298593_ _L298594_)
                 (let ((__tmp305909
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp305900
                        (let ((__tmp305906
                               (let ((__tmp305908
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305907
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298594_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305908 __tmp305907)))
                              (__tmp305901
                               (let ((__tmp305903
                                      (let ((__tmp305905
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305904
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298593_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305905 __tmp305904)))
                                     (__tmp305902
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298591_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305903 __tmp305902))))
                          (declare (not safe))
                          (cons __tmp305906 __tmp305901))))
                   (declare (not safe))
                   (cons __tmp305909 __tmp305900))))
              (___kont305107305108_
               (lambda (_L298526_ _L298528_)
                 (let ((__tmp305919
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp305910
                        (let ((__tmp305916
                               (let ((__tmp305918
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305917
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298528_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305918 __tmp305917)))
                              (__tmp305911
                               (let ((__tmp305913
                                      (let ((__tmp305915
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305914
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298526_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305915 __tmp305914)))
                                     (__tmp305912
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp305913 __tmp305912))))
                          (declare (not safe))
                          (cons __tmp305916 __tmp305911))))
                   (declare (not safe))
                   (cons __tmp305919 __tmp305910)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305102305103_))
              (let ((_e298463298551_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305102305103_))))
                (let ((_tl298461298558_
                       (let () (declare (not safe)) (##cdr _e298463298551_)))
                      (_hd298462298555_
                       (let () (declare (not safe)) (##car _e298463298551_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl298461298558_))
                      (let ((_e298466298561_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298461298558_))))
                        (let ((_tl298464298568_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298466298561_)))
                              (_hd298465298565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298466298561_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298464298568_))
                              (let ((_e298469298571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298464298568_))))
                                (let ((_tl298467298578_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298469298571_)))
                                      (_hd298468298575_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298469298571_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298467298578_))
                                      (let ((_e298472298581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298467298578_))))
                                        (let ((_tl298470298588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298472298581_)))
                                              (_hd298471298585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298472298581_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298470298588_))
                                              (___kont305105305106_
                                               _hd298471298585_
                                               _hd298468298575_
                                               _hd298465298565_)
                                              (let ()
                                                (declare (not safe))
                                                (_g298456298489_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298467298578_))
                                          (___kont305107305108_
                                           _hd298468298575_
                                           _hd298465298565_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298456298489_))))))
                              (let ()
                                (declare (not safe))
                                (_g298456298489_)))))
                      (let () (declare (not safe)) (_g298456298489_)))))
              (let () (declare (not safe)) (_g298456298489_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx298616_)
      (let* ((___stx305158305159_ _$stx298616_)
             (_g298621298654_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305158305159_)))))
        (let ((___kont305161305162_
               (lambda (_L298756_ _L298758_ _L298759_)
                 (let ((__tmp305929
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp305920
                        (let ((__tmp305926
                               (let ((__tmp305928
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305927
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298759_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305928 __tmp305927)))
                              (__tmp305921
                               (let ((__tmp305923
                                      (let ((__tmp305925
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305924
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298758_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305925 __tmp305924)))
                                     (__tmp305922
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298756_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305923 __tmp305922))))
                          (declare (not safe))
                          (cons __tmp305926 __tmp305921))))
                   (declare (not safe))
                   (cons __tmp305929 __tmp305920))))
              (___kont305163305164_
               (lambda (_L298691_ _L298693_)
                 (let ((__tmp305939
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp305930
                        (let ((__tmp305936
                               (let ((__tmp305938
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305937
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298693_ '()))))
                                 (declare (not safe))
                                 (cons __tmp305938 __tmp305937)))
                              (__tmp305931
                               (let ((__tmp305933
                                      (let ((__tmp305935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305934
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298691_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305935 __tmp305934)))
                                     (__tmp305932
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp305933 __tmp305932))))
                          (declare (not safe))
                          (cons __tmp305936 __tmp305931))))
                   (declare (not safe))
                   (cons __tmp305939 __tmp305930)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305158305159_))
              (let ((_e298628298716_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305158305159_))))
                (let ((_tl298626298723_
                       (let () (declare (not safe)) (##cdr _e298628298716_)))
                      (_hd298627298720_
                       (let () (declare (not safe)) (##car _e298628298716_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl298626298723_))
                      (let ((_e298631298726_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298626298723_))))
                        (let ((_tl298629298733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298631298726_)))
                              (_hd298630298730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298631298726_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298629298733_))
                              (let ((_e298634298736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298629298733_))))
                                (let ((_tl298632298743_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298634298736_)))
                                      (_hd298633298740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298634298736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298632298743_))
                                      (let ((_e298637298746_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298632298743_))))
                                        (let ((_tl298635298753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298637298746_)))
                                              (_hd298636298750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298637298746_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298635298753_))
                                              (___kont305161305162_
                                               _hd298636298750_
                                               _hd298633298740_
                                               _hd298630298730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g298621298654_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl298632298743_))
                                          (___kont305163305164_
                                           _hd298633298740_
                                           _hd298630298730_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298621298654_))))))
                              (let ()
                                (declare (not safe))
                                (_g298621298654_)))))
                      (let () (declare (not safe)) (_g298621298654_)))))
              (let () (declare (not safe)) (_g298621298654_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx298781_)
      (let* ((___stx305214305215_ _$stx298781_)
             (_g298789298857_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305214305215_)))))
        (let ((___kont305217305218_
               (lambda (_L299135_ _L299137_)
                 (let ((__tmp305955
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp305940
                        (let ((__tmp305951
                               (let ((__tmp305954
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305952
                                      (let ((__tmp305953
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305953 '()))))
                                 (declare (not safe))
                                 (cons __tmp305954 __tmp305952)))
                              (__tmp305941
                               (let ((__tmp305948
                                      (let ((__tmp305950
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305949
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299137_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305950 __tmp305949)))
                                     (__tmp305942
                                      (let ((__tmp305943
                                             (let ((__tmp305944
                                                    (let ((__tmp305945
                                                           (let ((__tmp305947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp305946
                          (let () (declare (not safe)) (cons _L299135_ '()))))
                     (declare (not safe))
                     (cons __tmp305947 __tmp305946))))
              (declare (not safe))
              (cons __tmp305945 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299135_ __tmp305944))))
                                        (declare (not safe))
                                        (cons '#f __tmp305943))))
                                 (declare (not safe))
                                 (cons __tmp305948 __tmp305942))))
                          (declare (not safe))
                          (cons __tmp305951 __tmp305941))))
                   (declare (not safe))
                   (cons __tmp305955 __tmp305940))))
              (___kont305219305220_
               (lambda (_L299066_ _L299068_)
                 (let ((__tmp305956
                        (let ((__tmp305957
                               (let ((__tmp305958
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299066_ __tmp305958))))
                          (declare (not safe))
                          (cons 'primitive: __tmp305957))))
                   (declare (not safe))
                   (cons _L299068_ __tmp305956))))
              (___kont305221305222_
               (lambda (_L299005_ _L299007_)
                 (let ((__tmp305972
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp305959
                        (let ((__tmp305968
                               (let ((__tmp305971
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305969
                                      (let ((__tmp305970
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305970 '()))))
                                 (declare (not safe))
                                 (cons __tmp305971 __tmp305969)))
                              (__tmp305960
                               (let ((__tmp305965
                                      (let ((__tmp305967
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305966
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299007_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305967 __tmp305966)))
                                     (__tmp305961
                                      (let ((__tmp305962
                                             (let ((__tmp305964
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305963
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299005_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305964
                                                     __tmp305963))))
                                        (declare (not safe))
                                        (cons __tmp305962 '()))))
                                 (declare (not safe))
                                 (cons __tmp305965 __tmp305961))))
                          (declare (not safe))
                          (cons __tmp305968 __tmp305960))))
                   (declare (not safe))
                   (cons __tmp305972 __tmp305959))))
              (___kont305223305224_
               (lambda (_L298937_ _L298939_)
                 (let ((__tmp305986
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp305973
                        (let ((__tmp305982
                               (let ((__tmp305985
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305983
                                      (let ((__tmp305984
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305984 '()))))
                                 (declare (not safe))
                                 (cons __tmp305985 __tmp305983)))
                              (__tmp305974
                               (let ((__tmp305979
                                      (let ((__tmp305981
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305980
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298939_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305981 __tmp305980)))
                                     (__tmp305975
                                      (let ((__tmp305976
                                             (let ((__tmp305978
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305977
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298937_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305978
                                                     __tmp305977))))
                                        (declare (not safe))
                                        (cons __tmp305976 '()))))
                                 (declare (not safe))
                                 (cons __tmp305979 __tmp305975))))
                          (declare (not safe))
                          (cons __tmp305982 __tmp305974))))
                   (declare (not safe))
                   (cons __tmp305986 __tmp305973))))
              (___kont305225305226_
               (lambda (_L298884_ _L298886_)
                 (let ((__tmp305987
                        (let ((__tmp305988
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298884_ __tmp305988))))
                   (declare (not safe))
                   (cons _L298886_ __tmp305987)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305214305215_))
              (let ((_e298795299091_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305214305215_))))
                (let ((_tl298793299098_
                       (let () (declare (not safe)) (##cdr _e298795299091_)))
                      (_hd298794299095_
                       (let () (declare (not safe)) (##car _e298795299091_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl298793299098_))
                      (let ((_e298798299101_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298793299098_))))
                        (let ((_tl298796299108_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298798299101_)))
                              (_hd298797299105_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298798299101_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298796299108_))
                              (let ((_e298801299111_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298796299108_))))
                                (let ((_tl298799299118_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298801299111_)))
                                      (_hd298800299115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298801299111_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd298800299115_))
                                      (let ((_e298802299121_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd298800299115_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e298802299121_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298799299118_))
                                                (let ((_e298805299125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298799299118_))))
                                                  (let ((_tl298803299132_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298805299125_)))
                                                        (_hd298804299129_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298805299125_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298803299132_))
                                                        (___kont305217305218_
                                                         _hd298804299129_
                                                         _hd298797299105_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd298797299105_))
                                                            (let ((_e298814299052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd298797299105_))))
                      (declare (not safe))
                      (_g298789298857_))
                    (let () (declare (not safe)) (_g298789298857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd298797299105_))
                                                    (let ((_e298814299052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd298797299105_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e298814299052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298799299118_))
                      (___kont305219305220_ _hd298800299115_ _hd298794299095_)
                      (let () (declare (not safe)) (_g298789298857_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298799299118_))
                      (___kont305223305224_ _hd298800299115_ _hd298797299105_)
                      (let () (declare (not safe)) (_g298789298857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298799299118_))
                                                        (___kont305223305224_
                                                         _hd298800299115_
                                                         _hd298797299105_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298789298857_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd298797299105_))
                                                (let ((_e298814299052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd298797299105_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e298814299052_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298799299118_))
                                                          (___kont305219305220_
                                                           _hd298800299115_
                                                           _hd298794299095_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl298799299118_))
                      (let ((_e298832298995_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298799299118_))))
                        (let ((_tl298830299002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298832298995_)))
                              (_hd298831298999_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298832298995_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298830299002_))
                              (___kont305221305222_
                               _hd298831298999_
                               _hd298800299115_)
                              (let ()
                                (declare (not safe))
                                (_g298789298857_)))))
                      (let () (declare (not safe)) (_g298789298857_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298799299118_))
                  (___kont305223305224_ _hd298800299115_ _hd298797299105_)
                  (let () (declare (not safe)) (_g298789298857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298799299118_))
                                                    (___kont305223305224_
                                                     _hd298800299115_
                                                     _hd298797299105_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298789298857_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd298797299105_))
                                          (let ((_e298814299052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd298797299105_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e298814299052_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298799299118_))
                                                    (___kont305219305220_
                                                     _hd298800299115_
                                                     _hd298794299095_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl298799299118_))
                                                        (let ((_e298832298995_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl298799299118_))))
                  (let ((_tl298830299002_
                         (let () (declare (not safe)) (##cdr _e298832298995_)))
                        (_hd298831298999_
                         (let ()
                           (declare (not safe))
                           (##car _e298832298995_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl298830299002_))
                        (___kont305221305222_
                         _hd298831298999_
                         _hd298800299115_)
                        (let () (declare (not safe)) (_g298789298857_)))))
                (let () (declare (not safe)) (_g298789298857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298799299118_))
                                                    (___kont305223305224_
                                                     _hd298800299115_
                                                     _hd298797299105_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298789298857_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298799299118_))
                                              (___kont305223305224_
                                               _hd298800299115_
                                               _hd298797299105_)
                                              (let ()
                                                (declare (not safe))
                                                (_g298789298857_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd298797299105_))
                                  (let ((_e298814299052_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd298797299105_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl298796299108_))
                                        (___kont305225305226_
                                         _hd298797299105_
                                         _hd298794299095_)
                                        (let ()
                                          (declare (not safe))
                                          (_g298789298857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298796299108_))
                                      (___kont305225305226_
                                       _hd298797299105_
                                       _hd298794299095_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298789298857_)))))))
                      (let () (declare (not safe)) (_g298789298857_)))))
              (let () (declare (not safe)) (_g298789298857_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299159_)
      (let* ((___stx305354305355_ _$stx299159_)
             (_g299164299219_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305354305355_)))))
        (let ((___kont305357305358_
               (lambda (_L299404_ _L299406_)
                 (let ((__tmp306004
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp305989
                        (let ((__tmp306000
                               (let ((__tmp306003
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306001
                                      (let ((__tmp306002
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306002 '()))))
                                 (declare (not safe))
                                 (cons __tmp306003 __tmp306001)))
                              (__tmp305990
                               (let ((__tmp305991
                                      (let ((__tmp305999
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp305992
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299404_
                                                  _L299406_))
                                               (let ((__tmp305993
                                                      (lambda (_g299423299427_
                                                               _g299424299430_
                                                               _g299425299432_)
                                                        (let ((__tmp305994
                                                               (let ((__tmp305998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp305995
                              (let ((__tmp305996
                                     (let ((__tmp305997
                                            (let ()
                                              (declare (not safe))
                                              (cons _g299423299427_ '()))))
                                       (declare (not safe))
                                       (cons _g299424299430_ __tmp305997))))
                                (declare (not safe))
                                (cons 'primitive: __tmp305996))))
                         (declare (not safe))
                         (cons __tmp305998 __tmp305995))))
                  (declare (not safe))
                  (cons __tmp305994 _g299425299432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp305993
                                                         '()
                                                         _L299404_
                                                         _L299406_)))))
                                        (declare (not safe))
                                        (cons __tmp305999 __tmp305992))))
                                 (declare (not safe))
                                 (cons __tmp305991 '()))))
                          (declare (not safe))
                          (cons __tmp306000 __tmp305990))))
                   (declare (not safe))
                   (cons __tmp306004 __tmp305989))))
              (___kont305361305362_
               (lambda (_L299290_ _L299292_)
                 (let ((__tmp306019
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306005
                        (let ((__tmp306015
                               (let ((__tmp306018
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306016
                                      (let ((__tmp306017
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306017 '()))))
                                 (declare (not safe))
                                 (cons __tmp306018 __tmp306016)))
                              (__tmp306006
                               (let ((__tmp306007
                                      (let ((__tmp306014
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306008
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299290_
                                                  _L299292_))
                                               (let ((__tmp306009
                                                      (lambda (_g299307299311_
                                                               _g299308299314_
                                                               _g299309299316_)
                                                        (let ((__tmp306010
                                                               (let ((__tmp306013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306011
                              (let ((__tmp306012
                                     (let ()
                                       (declare (not safe))
                                       (cons _g299307299311_ '()))))
                                (declare (not safe))
                                (cons _g299308299314_ __tmp306012))))
                         (declare (not safe))
                         (cons __tmp306013 __tmp306011))))
                  (declare (not safe))
                  (cons __tmp306010 _g299309299316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306009
                                                         '()
                                                         _L299290_
                                                         _L299292_)))))
                                        (declare (not safe))
                                        (cons __tmp306014 __tmp306008))))
                                 (declare (not safe))
                                 (cons __tmp306007 '()))))
                          (declare (not safe))
                          (cons __tmp306015 __tmp306006))))
                   (declare (not safe))
                   (cons __tmp306019 __tmp306005)))))
          (let* ((___match305405305406_
                  (lambda (_e299196299226_
                           _hd299195299230_
                           _tl299194299233_
                           ___splice305363305364_
                           _target299197299236_
                           _tl299199299239_)
                    (letrec ((_loop299200299242_
                              (lambda (_hd299198299246_
                                       _dispatch299204299249_
                                       _arity299205299251_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299198299246_))
                                    (let ((_e299201299254_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299198299246_))))
                                      (let ((_lp-tl299203299261_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299201299254_)))
                                            (_lp-hd299202299258_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299201299254_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299202299258_))
                                            (let ((_e299210299264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299202299258_))))
                                              (let ((_tl299208299271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299210299264_)))
                                                    (_hd299209299268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299210299264_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299208299271_))
                                                    (let ((_e299213299274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299208299271_))))
                                                      (let ((_tl299211299281_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299213299274_)))
                    (_hd299212299278_
                     (let () (declare (not safe)) (##car _e299213299274_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299211299281_))
                    (_loop299200299242_
                     _lp-tl299203299261_
                     (let ()
                       (declare (not safe))
                       (cons _hd299212299278_ _dispatch299204299249_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299209299268_ _arity299205299251_)))
                    (let () (declare (not safe)) (_g299164299219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299164299219_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299164299219_)))))
                                    (let ((_arity299207299287_
                                           (reverse _arity299205299251_))
                                          (_dispatch299206299284_
                                           (reverse _dispatch299204299249_)))
                                      (___kont305361305362_
                                       _dispatch299206299284_
                                       _arity299207299287_))))))
                      (_loop299200299242_ _target299197299236_ '() '()))))
                 (___match305397305398_
                  (lambda (_e299196299226_ _hd299195299230_ _tl299194299233_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299194299233_))
                        (let ((___splice305363305364_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299194299233_
                                  '0))))
                          (let ((_tl299199299239_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice305363305364_ '1)))
                                (_target299197299236_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice305363305364_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299199299239_))
                                (___match305405305406_
                                 _e299196299226_
                                 _hd299195299230_
                                 _tl299194299233_
                                 ___splice305363305364_
                                 _target299197299236_
                                 _tl299199299239_)
                                (let ()
                                  (declare (not safe))
                                  (_g299164299219_)))))
                        (let () (declare (not safe)) (_g299164299219_)))))
                 (___match305391305392_
                  (lambda (_e299170299326_
                           _hd299169299330_
                           _tl299168299333_
                           _e299173299336_
                           _hd299172299340_
                           _tl299171299343_
                           _e299174299346_
                           ___splice305359305360_
                           _target299175299350_
                           _tl299177299353_)
                    (letrec ((_loop299178299356_
                              (lambda (_hd299176299360_
                                       _dispatch299182299363_
                                       _arity299183299365_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299176299360_))
                                    (let ((_e299179299368_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299176299360_))))
                                      (let ((_lp-tl299181299375_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299179299368_)))
                                            (_lp-hd299180299372_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299179299368_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299180299372_))
                                            (let ((_e299188299378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299180299372_))))
                                              (let ((_tl299186299385_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299188299378_)))
                                                    (_hd299187299382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299188299378_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299186299385_))
                                                    (let ((_e299191299388_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299186299385_))))
                                                      (let ((_tl299189299395_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299191299388_)))
                    (_hd299190299392_
                     (let () (declare (not safe)) (##car _e299191299388_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299189299395_))
                    (_loop299178299356_
                     _lp-tl299181299375_
                     (let ()
                       (declare (not safe))
                       (cons _hd299190299392_ _dispatch299182299363_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299187299382_ _arity299183299365_)))
                    (___match305397305398_
                     _e299170299326_
                     _hd299169299330_
                     _tl299168299333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match305397305398_
                                                     _e299170299326_
                                                     _hd299169299330_
                                                     _tl299168299333_))))
                                            (___match305397305398_
                                             _e299170299326_
                                             _hd299169299330_
                                             _tl299168299333_))))
                                    (let ((_arity299185299401_
                                           (reverse _arity299183299365_))
                                          (_dispatch299184299398_
                                           (reverse _dispatch299182299363_)))
                                      (___kont305357305358_
                                       _dispatch299184299398_
                                       _arity299185299401_))))))
                      (_loop299178299356_ _target299175299350_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305354305355_))
                (let ((_e299170299326_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305354305355_))))
                  (let ((_tl299168299333_
                         (let () (declare (not safe)) (##cdr _e299170299326_)))
                        (_hd299169299330_
                         (let ()
                           (declare (not safe))
                           (##car _e299170299326_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299168299333_))
                        (let ((_e299173299336_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299168299333_))))
                          (let ((_tl299171299343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299173299336_)))
                                (_hd299172299340_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299173299336_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299172299340_))
                                (let ((_e299174299346_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299172299340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299174299346_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299171299343_))
                                          (let ((___splice305359305360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299171299343_
                                                    '0))))
                                            (let ((_tl299177299353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305359305360_
                                                      '1)))
                                                  (_target299175299350_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305359305360_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299177299353_))
                                                  (___match305391305392_
                                                   _e299170299326_
                                                   _hd299169299330_
                                                   _tl299168299333_
                                                   _e299173299336_
                                                   _hd299172299340_
                                                   _tl299171299343_
                                                   _e299174299346_
                                                   ___splice305359305360_
                                                   _target299175299350_
                                                   _tl299177299353_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299168299333_))
                                                      (let ((___splice305363305364_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299168299333_ '0))))
                (let ((_tl299199299239_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305363305364_ '1)))
                      (_target299197299236_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305363305364_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299199299239_))
                      (___match305405305406_
                       _e299170299326_
                       _hd299169299330_
                       _tl299168299333_
                       ___splice305363305364_
                       _target299197299236_
                       _tl299199299239_)
                      (let () (declare (not safe)) (_g299164299219_)))))
              (let () (declare (not safe)) (_g299164299219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299168299333_))
                                              (let ((___splice305363305364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299168299333_
                                                        '0))))
                                                (let ((_tl299199299239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice305363305364_
                                                          '1)))
                                                      (_target299197299236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice305363305364_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299199299239_))
                                                      (___match305405305406_
                                                       _e299170299326_
                                                       _hd299169299330_
                                                       _tl299168299333_
                                                       ___splice305363305364_
                                                       _target299197299236_
                                                       _tl299199299239_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299164299219_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299164299219_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299168299333_))
                                          (let ((___splice305363305364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299168299333_
                                                    '0))))
                                            (let ((_tl299199299239_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305363305364_
                                                      '1)))
                                                  (_target299197299236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305363305364_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299199299239_))
                                                  (___match305405305406_
                                                   _e299170299326_
                                                   _hd299169299330_
                                                   _tl299168299333_
                                                   ___splice305363305364_
                                                   _target299197299236_
                                                   _tl299199299239_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299164299219_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299164299219_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299168299333_))
                                    (let ((___splice305363305364_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299168299333_
                                              '0))))
                                      (let ((_tl299199299239_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305363305364_
                                                '1)))
                                            (_target299197299236_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305363305364_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299199299239_))
                                            (___match305405305406_
                                             _e299170299326_
                                             _hd299169299330_
                                             _tl299168299333_
                                             ___splice305363305364_
                                             _target299197299236_
                                             _tl299199299239_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299164299219_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299164299219_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299168299333_))
                            (let ((___splice305363305364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299168299333_
                                      '0))))
                              (let ((_tl299199299239_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice305363305364_
                                        '1)))
                                    (_target299197299236_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice305363305364_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299199299239_))
                                    (___match305405305406_
                                     _e299170299326_
                                     _hd299169299330_
                                     _tl299168299333_
                                     ___splice305363305364_
                                     _target299197299236_
                                     _tl299199299239_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299164299219_)))))
                            (let () (declare (not safe)) (_g299164299219_))))))
                (let () (declare (not safe)) (_g299164299219_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx299441_)
      (let* ((_g299445299463_
              (lambda (_g299446299459_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299446299459_))))
             (_g299444299518_
              (lambda (_g299446299467_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299446299467_))
                    (let ((_e299451299470_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299446299467_))))
                      (let ((_hd299450299474_
                             (let ()
                               (declare (not safe))
                               (##car _e299451299470_)))
                            (_tl299449299477_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299451299470_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299449299477_))
                            (let ((_e299454299480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299449299477_))))
                              (let ((_hd299453299484_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299454299480_)))
                                    (_tl299452299487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299454299480_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299452299487_))
                                    (let ((_e299457299490_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299452299487_))))
                                      (let ((_hd299456299494_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299457299490_)))
                                            (_tl299455299497_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299457299490_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299455299497_))
                                            ((lambda (_L299500_ _L299502_)
                                               (let ((__tmp306033
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306020
                                                      (let ((__tmp306029
                                                             (let ((__tmp306032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306030
                            (let ((__tmp306031
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306031 '()))))
                       (declare (not safe))
                       (cons __tmp306032 __tmp306030)))
                    (__tmp306021
                     (let ((__tmp306026
                            (let ((__tmp306028
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306027
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299502_ '()))))
                              (declare (not safe))
                              (cons __tmp306028 __tmp306027)))
                           (__tmp306022
                            (let ((__tmp306023
                                   (let ((__tmp306025
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306024
                                          (let ()
                                            (declare (not safe))
                                            (cons _L299500_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306025 __tmp306024))))
                              (declare (not safe))
                              (cons __tmp306023 '()))))
                       (declare (not safe))
                       (cons __tmp306026 __tmp306022))))
                (declare (not safe))
                (cons __tmp306029 __tmp306021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306033
                                                       __tmp306020)))
                                             _hd299456299494_
                                             _hd299453299484_)
                                            (_g299445299463_
                                             _g299446299467_))))
                                    (_g299445299463_ _g299446299467_))))
                            (_g299445299463_ _g299446299467_))))
                    (_g299445299463_ _g299446299467_)))))
        (_g299444299518_ _$stx299441_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx299522_)
      (let* ((_g299526299544_
              (lambda (_g299527299540_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299527299540_))))
             (_g299525299599_
              (lambda (_g299527299548_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299527299548_))
                    (let ((_e299532299551_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299527299548_))))
                      (let ((_hd299531299555_
                             (let ()
                               (declare (not safe))
                               (##car _e299532299551_)))
                            (_tl299530299558_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299532299551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299530299558_))
                            (let ((_e299535299561_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299530299558_))))
                              (let ((_hd299534299565_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299535299561_)))
                                    (_tl299533299568_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299535299561_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299533299568_))
                                    (let ((_e299538299571_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299533299568_))))
                                      (let ((_hd299537299575_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299538299571_)))
                                            (_tl299536299578_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299538299571_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299536299578_))
                                            ((lambda (_L299581_ _L299583_)
                                               (let ((__tmp306047
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306034
                                                      (let ((__tmp306043
                                                             (let ((__tmp306046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306044
                            (let ((__tmp306045
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306045 '()))))
                       (declare (not safe))
                       (cons __tmp306046 __tmp306044)))
                    (__tmp306035
                     (let ((__tmp306040
                            (let ((__tmp306042
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306041
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299583_ '()))))
                              (declare (not safe))
                              (cons __tmp306042 __tmp306041)))
                           (__tmp306036
                            (let ((__tmp306037
                                   (let ((__tmp306039
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306038
                                          (let ()
                                            (declare (not safe))
                                            (cons _L299581_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306039 __tmp306038))))
                              (declare (not safe))
                              (cons __tmp306037 '()))))
                       (declare (not safe))
                       (cons __tmp306040 __tmp306036))))
                (declare (not safe))
                (cons __tmp306043 __tmp306035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306047
                                                       __tmp306034)))
                                             _hd299537299575_
                                             _hd299534299565_)
                                            (_g299526299544_
                                             _g299527299548_))))
                                    (_g299526299544_ _g299527299548_))))
                            (_g299526299544_ _g299527299548_))))
                    (_g299526299544_ _g299527299548_)))))
        (_g299525299599_ _$stx299522_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx299603_)
      (let* ((___stx305408305409_ _$stx299603_)
             (_g299610299681_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305408305409_)))))
        (let ((___kont305411305412_
               (lambda (_L299972_ _L299974_)
                 (let ((__tmp306053
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306048
                        (let ((__tmp306049
                               (let ((__tmp306050
                                      (let ((__tmp306052
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306051
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299972_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306052 __tmp306051))))
                                 (declare (not safe))
                                 (cons __tmp306050 '()))))
                          (declare (not safe))
                          (cons _L299974_ __tmp306049))))
                   (declare (not safe))
                   (cons __tmp306053 __tmp306048))))
              (___kont305413305414_
               (lambda (_L299891_ _L299893_)
                 (let ((__tmp306062
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306054
                        (let ((__tmp306055
                               (let ((__tmp306056
                                      (let ((__tmp306061
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306057
                                             (let ((__tmp306058
                                                    (lambda (_g299912299915_
                                                             _g299913299918_)
                                                      (let ((__tmp306059
                                                             (let ((__tmp306060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299912299915_ __tmp306060))))
                (declare (not safe))
                (cons __tmp306059 _g299913299918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306058
                                                       '()
                                                       _L299891_))))
                                        (declare (not safe))
                                        (cons __tmp306061 __tmp306057))))
                                 (declare (not safe))
                                 (cons __tmp306056 '()))))
                          (declare (not safe))
                          (cons _L299893_ __tmp306055))))
                   (declare (not safe))
                   (cons __tmp306062 __tmp306054))))
              (___kont305417305418_
               (lambda (_L299803_ _L299805_)
                 (let ((__tmp306069
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306063
                        (let ((__tmp306064
                               (let ((__tmp306065
                                      (let ((__tmp306068
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306066
                                             (let ((__tmp306067
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299803_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306067))))
                                        (declare (not safe))
                                        (cons __tmp306068 __tmp306066))))
                                 (declare (not safe))
                                 (cons __tmp306065 '()))))
                          (declare (not safe))
                          (cons _L299805_ __tmp306064))))
                   (declare (not safe))
                   (cons __tmp306069 __tmp306063))))
              (___kont305419305420_
               (lambda (_L299738_ _L299740_)
                 (let ((__tmp306079
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306070
                        (let ((__tmp306071
                               (let ((__tmp306072
                                      (let ((__tmp306078
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306073
                                             (let ((__tmp306074
                                                    (let ((__tmp306075
                                                           (lambda (_g299757299760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g299758299763_)
                     (let ((__tmp306076
                            (let ((__tmp306077
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g299757299760_ __tmp306077))))
                       (declare (not safe))
                       (cons __tmp306076 _g299758299763_)))))
              (declare (not safe))
              (foldr1 __tmp306075 '() _L299738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306074))))
                                        (declare (not safe))
                                        (cons __tmp306078 __tmp306073))))
                                 (declare (not safe))
                                 (cons __tmp306072 '()))))
                          (declare (not safe))
                          (cons _L299740_ __tmp306071))))
                   (declare (not safe))
                   (cons __tmp306079 __tmp306070)))))
          (let* ((___match305527305528_
                  (lambda (_e299663299688_
                           _hd299662299692_
                           _tl299661299695_
                           _e299666299698_
                           _hd299665299702_
                           _tl299664299705_
                           ___splice305421305422_
                           _target299667299708_
                           _tl299669299711_)
                    (letrec ((_loop299670299714_
                              (lambda (_hd299668299718_ _arity299674299721_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299668299718_))
                                    (let ((_e299671299724_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299668299718_))))
                                      (let ((_lp-tl299673299731_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299671299724_)))
                                            (_lp-hd299672299728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299671299724_))))
                                        (_loop299670299714_
                                         _lp-tl299673299731_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd299672299728_
                                                 _arity299674299721_)))))
                                    (let ((_arity299675299734_
                                           (reverse _arity299674299721_)))
                                      (___kont305419305420_
                                       _arity299675299734_
                                       _hd299665299702_))))))
                      (_loop299670299714_ _target299667299708_ '()))))
                 (___match305487305488_
                  (lambda (_e299631299827_
                           _hd299630299831_
                           _tl299629299834_
                           _e299634299837_
                           _hd299633299841_
                           _tl299632299844_
                           _e299637299847_
                           _hd299636299851_
                           _tl299635299854_
                           _e299638299857_
                           ___splice305415305416_
                           _target299639299861_
                           _tl299641299864_)
                    (letrec ((_loop299642299867_
                              (lambda (_hd299640299871_ _arity299646299874_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299640299871_))
                                    (let ((_e299643299877_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299640299871_))))
                                      (let ((_lp-tl299645299884_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299643299877_)))
                                            (_lp-hd299644299881_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299643299877_))))
                                        (_loop299642299867_
                                         _lp-tl299645299884_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd299644299881_
                                                 _arity299646299874_)))))
                                    (let ((_arity299647299887_
                                           (reverse _arity299646299874_)))
                                      (___kont305413305414_
                                       _arity299647299887_
                                       _hd299633299841_))))))
                      (_loop299642299867_ _target299639299861_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305408305409_))
                (let ((_e299616299928_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305408305409_))))
                  (let ((_tl299614299935_
                         (let () (declare (not safe)) (##cdr _e299616299928_)))
                        (_hd299615299932_
                         (let ()
                           (declare (not safe))
                           (##car _e299616299928_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299614299935_))
                        (let ((_e299619299938_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299614299935_))))
                          (let ((_tl299617299945_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299619299938_)))
                                (_hd299618299942_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299619299938_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299617299945_))
                                (let ((_e299622299948_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299617299945_))))
                                  (let ((_tl299620299955_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299622299948_)))
                                        (_hd299621299952_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299622299948_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd299621299952_))
                                        (let ((_e299623299958_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd299621299952_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e299623299958_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl299620299955_))
                                                  (let ((_e299626299962_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl299620299955_))))
                                                    (let ((_tl299624299969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e299626299962_)))
                                                          (_hd299625299966_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e299626299962_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299624299969_))
                                                          (___kont305411305412_
                                                           _hd299625299966_
                                                           _hd299618299942_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl299620299955_))
                      (let ((___splice305415305416_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl299620299955_ '0))))
                        (let ((_tl299641299864_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305415305416_ '1)))
                              (_target299639299861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305415305416_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299641299864_))
                              (___match305487305488_
                               _e299616299928_
                               _hd299615299932_
                               _tl299614299935_
                               _e299619299938_
                               _hd299618299942_
                               _tl299617299945_
                               _e299622299948_
                               _hd299621299952_
                               _tl299620299955_
                               _e299623299958_
                               ___splice305415305416_
                               _target299639299861_
                               _tl299641299864_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl299617299945_))
                                  (let ((___splice305421305422_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl299617299945_
                                            '0))))
                                    (let ((_tl299669299711_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice305421305422_
                                              '1)))
                                          (_target299667299708_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice305421305422_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl299669299711_))
                                          (___match305527305528_
                                           _e299616299928_
                                           _hd299615299932_
                                           _tl299614299935_
                                           _e299619299938_
                                           _hd299618299942_
                                           _tl299617299945_
                                           ___splice305421305422_
                                           _target299667299708_
                                           _tl299669299711_)
                                          (let ()
                                            (declare (not safe))
                                            (_g299610299681_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g299610299681_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl299617299945_))
                          (let ((___splice305421305422_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl299617299945_
                                    '0))))
                            (let ((_tl299669299711_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice305421305422_ '1)))
                                  (_target299667299708_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice305421305422_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl299669299711_))
                                  (___match305527305528_
                                   _e299616299928_
                                   _hd299615299932_
                                   _tl299614299935_
                                   _e299619299938_
                                   _hd299618299942_
                                   _tl299617299945_
                                   ___splice305421305422_
                                   _target299667299708_
                                   _tl299669299711_)
                                  (let ()
                                    (declare (not safe))
                                    (_g299610299681_)))))
                          (let () (declare (not safe)) (_g299610299681_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299620299955_))
                                                      (let ((___splice305415305416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299620299955_ '0))))
                (let ((_tl299641299864_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305415305416_ '1)))
                      (_target299639299861_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305415305416_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299641299864_))
                      (___match305487305488_
                       _e299616299928_
                       _hd299615299932_
                       _tl299614299935_
                       _e299619299938_
                       _hd299618299942_
                       _tl299617299945_
                       _e299622299948_
                       _hd299621299952_
                       _tl299620299955_
                       _e299623299958_
                       ___splice305415305416_
                       _target299639299861_
                       _tl299641299864_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl299620299955_))
                          (___kont305417305418_
                           _hd299621299952_
                           _hd299618299942_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299617299945_))
                              (let ((___splice305421305422_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299617299945_
                                        '0))))
                                (let ((_tl299669299711_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice305421305422_
                                          '1)))
                                      (_target299667299708_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice305421305422_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299669299711_))
                                      (___match305527305528_
                                       _e299616299928_
                                       _hd299615299932_
                                       _tl299614299935_
                                       _e299619299938_
                                       _hd299618299942_
                                       _tl299617299945_
                                       ___splice305421305422_
                                       _target299667299708_
                                       _tl299669299711_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299610299681_)))))
                              (let ()
                                (declare (not safe))
                                (_g299610299681_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299620299955_))
                  (___kont305417305418_ _hd299621299952_ _hd299618299942_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl299617299945_))
                      (let ((___splice305421305422_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl299617299945_ '0))))
                        (let ((_tl299669299711_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305421305422_ '1)))
                              (_target299667299708_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice305421305422_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299669299711_))
                              (___match305527305528_
                               _e299616299928_
                               _hd299615299932_
                               _tl299614299935_
                               _e299619299938_
                               _hd299618299942_
                               _tl299617299945_
                               ___splice305421305422_
                               _target299667299708_
                               _tl299669299711_)
                              (let ()
                                (declare (not safe))
                                (_g299610299681_)))))
                      (let () (declare (not safe)) (_g299610299681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299620299955_))
                                                  (___kont305417305418_
                                                   _hd299621299952_
                                                   _hd299618299942_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299617299945_))
                                                      (let ((___splice305421305422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299617299945_ '0))))
                (let ((_tl299669299711_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305421305422_ '1)))
                      (_target299667299708_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice305421305422_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299669299711_))
                      (___match305527305528_
                       _e299616299928_
                       _hd299615299932_
                       _tl299614299935_
                       _e299619299938_
                       _hd299618299942_
                       _tl299617299945_
                       ___splice305421305422_
                       _target299667299708_
                       _tl299669299711_)
                      (let () (declare (not safe)) (_g299610299681_)))))
              (let () (declare (not safe)) (_g299610299681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299620299955_))
                                            (___kont305417305418_
                                             _hd299621299952_
                                             _hd299618299942_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl299617299945_))
                                                (let ((___splice305421305422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl299617299945_
                                                          '0))))
                                                  (let ((_tl299669299711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice305421305422_
                                                            '1)))
                                                        (_target299667299708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice305421305422_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299669299711_))
                                                        (___match305527305528_
                                                         _e299616299928_
                                                         _hd299615299932_
                                                         _tl299614299935_
                                                         _e299619299938_
                                                         _hd299618299942_
                                                         _tl299617299945_
                                                         ___splice305421305422_
                                                         _target299667299708_
                                                         _tl299669299711_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299610299681_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g299610299681_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299617299945_))
                                    (let ((___splice305421305422_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299617299945_
                                              '0))))
                                      (let ((_tl299669299711_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305421305422_
                                                '1)))
                                            (_target299667299708_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305421305422_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299669299711_))
                                            (___match305527305528_
                                             _e299616299928_
                                             _hd299615299932_
                                             _tl299614299935_
                                             _e299619299938_
                                             _hd299618299942_
                                             _tl299617299945_
                                             ___splice305421305422_
                                             _target299667299708_
                                             _tl299669299711_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299610299681_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299610299681_))))))
                        (let () (declare (not safe)) (_g299610299681_)))))
                (let () (declare (not safe)) (_g299610299681_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx299998_)
      (let* ((___stx305530305531_ _$stx299998_)
             (_g300003300038_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305530305531_)))))
        (let ((___kont305533305534_
               (lambda (_L300160_ _L300162_)
                 (let ((__tmp306085
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306080
                        (let ((__tmp306081
                               (let ((__tmp306082
                                      (let ((__tmp306084
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306083
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300160_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306084 __tmp306083))))
                                 (declare (not safe))
                                 (cons __tmp306082 '()))))
                          (declare (not safe))
                          (cons _L300162_ __tmp306081))))
                   (declare (not safe))
                   (cons __tmp306085 __tmp306080))))
              (___kont305535305536_
               (lambda (_L300095_ _L300097_)
                 (let ((__tmp306094
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306086
                        (let ((__tmp306087
                               (let ((__tmp306088
                                      (let ((__tmp306093
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306089
                                             (let ((__tmp306090
                                                    (lambda (_g300114300117_
                                                             _g300115300120_)
                                                      (let ((__tmp306091
                                                             (let ((__tmp306092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300114300117_ __tmp306092))))
                (declare (not safe))
                (cons __tmp306091 _g300115300120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306090
                                                       '()
                                                       _L300095_))))
                                        (declare (not safe))
                                        (cons __tmp306093 __tmp306089))))
                                 (declare (not safe))
                                 (cons __tmp306088 '()))))
                          (declare (not safe))
                          (cons _L300097_ __tmp306087))))
                   (declare (not safe))
                   (cons __tmp306094 __tmp306086)))))
          (let ((___match305579305580_
                 (lambda (_e300020300045_
                          _hd300019300049_
                          _tl300018300052_
                          _e300023300055_
                          _hd300022300059_
                          _tl300021300062_
                          ___splice305537305538_
                          _target300024300065_
                          _tl300026300068_)
                   (letrec ((_loop300027300071_
                             (lambda (_hd300025300075_ _arity300031300078_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300025300075_))
                                   (let ((_e300028300081_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300025300075_))))
                                     (let ((_lp-tl300030300088_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300028300081_)))
                                           (_lp-hd300029300085_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300028300081_))))
                                       (_loop300027300071_
                                        _lp-tl300030300088_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300029300085_
                                                _arity300031300078_)))))
                                   (let ((_arity300032300091_
                                          (reverse _arity300031300078_)))
                                     (___kont305535305536_
                                      _arity300032300091_
                                      _hd300022300059_))))))
                     (_loop300027300071_ _target300024300065_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305530305531_))
                (let ((_e300009300130_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305530305531_))))
                  (let ((_tl300007300137_
                         (let () (declare (not safe)) (##cdr _e300009300130_)))
                        (_hd300008300134_
                         (let ()
                           (declare (not safe))
                           (##car _e300009300130_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300007300137_))
                        (let ((_e300012300140_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300007300137_))))
                          (let ((_tl300010300147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300012300140_)))
                                (_hd300011300144_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300012300140_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300010300147_))
                                (let ((_e300015300150_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300010300147_))))
                                  (let ((_tl300013300157_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300015300150_)))
                                        (_hd300014300154_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300015300150_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300013300157_))
                                        (___kont305533305534_
                                         _hd300014300154_
                                         _hd300011300144_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300010300147_))
                                            (let ((___splice305537305538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300010300147_
                                                      '0))))
                                              (let ((_tl300026300068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice305537305538_
                                                        '1)))
                                                    (_target300024300065_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice305537305538_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300026300068_))
                                                    (___match305579305580_
                                                     _e300009300130_
                                                     _hd300008300134_
                                                     _tl300007300137_
                                                     _e300012300140_
                                                     _hd300011300144_
                                                     _tl300010300147_
                                                     ___splice305537305538_
                                                     _target300024300065_
                                                     _tl300026300068_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300003300038_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300003300038_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300010300147_))
                                    (let ((___splice305537305538_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300010300147_
                                              '0))))
                                      (let ((_tl300026300068_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305537305538_
                                                '1)))
                                            (_target300024300065_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice305537305538_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300026300068_))
                                            (___match305579305580_
                                             _e300009300130_
                                             _hd300008300134_
                                             _tl300007300137_
                                             _e300012300140_
                                             _hd300011300144_
                                             _tl300010300147_
                                             ___splice305537305538_
                                             _target300024300065_
                                             _tl300026300068_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300003300038_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300003300038_))))))
                        (let () (declare (not safe)) (_g300003300038_)))))
                (let () (declare (not safe)) (_g300003300038_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300182_)
      (let* ((_g300186300221_
              (lambda (_g300187300217_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300187300217_))))
             (_g300185300349_
              (lambda (_g300187300225_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300187300225_))
                    (let ((_e300192300228_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300187300225_))))
                      (let ((_hd300191300232_
                             (let ()
                               (declare (not safe))
                               (##car _e300192300228_)))
                            (_tl300190300235_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300192300228_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300190300235_))
                            (let ((_g306095_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300190300235_
                                      '0))))
                              (begin
                                (let ((_g306096_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306095_)
                                             (##vector-length _g306095_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306096_ 2)))
                                      (error "Context expects 2 values"
                                             _g306096_)))
                                (let ((_target300193300238_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306095_ 0)))
                                      (_tl300195300241_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306095_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300195300241_))
                                      (letrec ((_loop300196300244_
                                                (lambda (_hd300194300248_
                                                         _arity300200300251_
                                                         _prim300201300253_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300194300248_))
                                                      (let ((_e300197300256_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300194300248_))))
                (let ((_lp-hd300198300260_
                       (let () (declare (not safe)) (##car _e300197300256_)))
                      (_lp-tl300199300263_
                       (let () (declare (not safe)) (##cdr _e300197300256_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300198300260_))
                      (let ((_e300206300266_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300198300260_))))
                        (let ((_hd300205300270_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300206300266_)))
                              (_tl300204300273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300206300266_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300204300273_))
                              (let ((_g306105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300204300273_
                                        '0))))
                                (begin
                                  (let ((_g306106_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306105_)
                                               (##vector-length _g306105_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306106_ 2)))
                                        (error "Context expects 2 values"
                                               _g306106_)))
                                  (let ((_target300207300276_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306105_ 0)))
                                        (_tl300209300279_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306105_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300209300279_))
                                        (letrec ((_loop300210300282_
                                                  (lambda (_hd300208300286_
                                                           _arity300214300289_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300208300286_))
                                                        (let ((_e300211300292_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300208300286_))))
                  (let ((_lp-hd300212300296_
                         (let () (declare (not safe)) (##car _e300211300292_)))
                        (_lp-tl300213300299_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300211300292_))))
                    (_loop300210300282_
                     _lp-tl300213300299_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300212300296_ _arity300214300289_)))))
                (let ((_arity300215300302_ (reverse _arity300214300289_)))
                  (_loop300196300244_
                   _lp-tl300199300263_
                   (let ()
                     (declare (not safe))
                     (cons _arity300215300302_ _arity300200300251_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300205300270_ _prim300201300253_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300210300282_
                                           _target300207300276_
                                           '()))
                                        (_g300186300221_ _g300187300225_)))))
                              (_g300186300221_ _g300187300225_))))
                      (_g300186300221_ _g300187300225_))))
              (let ((_arity300202300306_ (reverse _arity300200300251_))
                    (_prim300203300309_ (reverse _prim300201300253_)))
                ((lambda (_L300312_ _L300314_)
                   (let ((__tmp306104
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306097
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300312_
                               _L300314_))
                            (let ((__tmp306098
                                   (lambda (_g300329300335_
                                            _g300330300338_
                                            _g300331300340_)
                                     (let ((__tmp306099
                                            (let ((__tmp306103
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306100
                                                   (let ((__tmp306101
                                                          (let ((__tmp306102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g300332300343_ _g300333300346_)
                           (let ()
                             (declare (not safe))
                             (cons _g300332300343_ _g300333300346_)))))
                    (declare (not safe))
                    (foldr1 __tmp306102 '() _g300329300335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300330300338_
                                                           __tmp306101))))
                                              (declare (not safe))
                                              (cons __tmp306103 __tmp306100))))
                                       (declare (not safe))
                                       (cons __tmp306099 _g300331300340_)))))
                              (declare (not safe))
                              (foldr2 __tmp306098 '() _L300312_ _L300314_)))))
                     (declare (not safe))
                     (cons __tmp306104 __tmp306097)))
                 _arity300202300306_
                 _prim300203300309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300196300244_
                                         _target300193300238_
                                         '()
                                         '()))
                                      (_g300186300221_ _g300187300225_)))))
                            (_g300186300221_ _g300187300225_))))
                    (_g300186300221_ _g300187300225_)))))
        (_g300185300349_ _$stx300182_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx300355_)
      (let* ((_g300359300394_
              (lambda (_g300360300390_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300360300390_))))
             (_g300358300522_
              (lambda (_g300360300398_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300360300398_))
                    (let ((_e300365300401_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300360300398_))))
                      (let ((_hd300364300405_
                             (let ()
                               (declare (not safe))
                               (##car _e300365300401_)))
                            (_tl300363300408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300365300401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300363300408_))
                            (let ((_g306107_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300363300408_
                                      '0))))
                              (begin
                                (let ((_g306108_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306107_)
                                             (##vector-length _g306107_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306108_ 2)))
                                      (error "Context expects 2 values"
                                             _g306108_)))
                                (let ((_target300366300411_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306107_ 0)))
                                      (_tl300368300414_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306107_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300368300414_))
                                      (letrec ((_loop300369300417_
                                                (lambda (_hd300367300421_
                                                         _arity300373300424_
                                                         _prim300374300426_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300367300421_))
                                                      (let ((_e300370300429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300367300421_))))
                (let ((_lp-hd300371300433_
                       (let () (declare (not safe)) (##car _e300370300429_)))
                      (_lp-tl300372300436_
                       (let () (declare (not safe)) (##cdr _e300370300429_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300371300433_))
                      (let ((_e300379300439_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300371300433_))))
                        (let ((_hd300378300443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300379300439_)))
                              (_tl300377300446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300379300439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300377300446_))
                              (let ((_g306117_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300377300446_
                                        '0))))
                                (begin
                                  (let ((_g306118_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306117_)
                                               (##vector-length _g306117_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306118_ 2)))
                                        (error "Context expects 2 values"
                                               _g306118_)))
                                  (let ((_target300380300449_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306117_ 0)))
                                        (_tl300382300452_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306117_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300382300452_))
                                        (letrec ((_loop300383300455_
                                                  (lambda (_hd300381300459_
                                                           _arity300387300462_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300381300459_))
                                                        (let ((_e300384300465_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300381300459_))))
                  (let ((_lp-hd300385300469_
                         (let () (declare (not safe)) (##car _e300384300465_)))
                        (_lp-tl300386300472_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300384300465_))))
                    (_loop300383300455_
                     _lp-tl300386300472_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300385300469_ _arity300387300462_)))))
                (let ((_arity300388300475_ (reverse _arity300387300462_)))
                  (_loop300369300417_
                   _lp-tl300372300436_
                   (let ()
                     (declare (not safe))
                     (cons _arity300388300475_ _arity300373300424_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300378300443_ _prim300374300426_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300383300455_
                                           _target300380300449_
                                           '()))
                                        (_g300359300394_ _g300360300398_)))))
                              (_g300359300394_ _g300360300398_))))
                      (_g300359300394_ _g300360300398_))))
              (let ((_arity300375300479_ (reverse _arity300373300424_))
                    (_prim300376300482_ (reverse _prim300374300426_)))
                ((lambda (_L300485_ _L300487_)
                   (let ((__tmp306116
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306109
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300485_
                               _L300487_))
                            (let ((__tmp306110
                                   (lambda (_g300502300508_
                                            _g300503300511_
                                            _g300504300513_)
                                     (let ((__tmp306111
                                            (let ((__tmp306115
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306112
                                                   (let ((__tmp306113
                                                          (let ((__tmp306114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g300505300516_ _g300506300519_)
                           (let ()
                             (declare (not safe))
                             (cons _g300505300516_ _g300506300519_)))))
                    (declare (not safe))
                    (foldr1 __tmp306114 '() _g300502300508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300503300511_
                                                           __tmp306113))))
                                              (declare (not safe))
                                              (cons __tmp306115 __tmp306112))))
                                       (declare (not safe))
                                       (cons __tmp306111 _g300504300513_)))))
                              (declare (not safe))
                              (foldr2 __tmp306110 '() _L300485_ _L300487_)))))
                     (declare (not safe))
                     (cons __tmp306116 __tmp306109)))
                 _arity300375300479_
                 _prim300376300482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300369300417_
                                         _target300366300411_
                                         '()
                                         '()))
                                      (_g300359300394_ _g300360300398_)))))
                            (_g300359300394_ _g300360300398_))))
                    (_g300359300394_ _g300360300398_)))))
        (_g300358300522_ _$stx300355_)))))
