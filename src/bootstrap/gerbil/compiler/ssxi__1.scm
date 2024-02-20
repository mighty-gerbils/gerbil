(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157976_)
      (let* ((_g157980157998_
              (lambda (_g157981157994_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157981157994_))))
             (_g157979158053_
              (lambda (_g157981158002_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157981158002_))
                    (let ((_e157986158005_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157981158002_))))
                      (let ((_hd157985158009_
                             (let ()
                               (declare (not safe))
                               (##car _e157986158005_)))
                            (_tl157984158012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157986158005_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157984158012_))
                            (let ((_e157989158015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157984158012_))))
                              (let ((_hd157988158019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157989158015_)))
                                    (_tl157987158022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157989158015_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157987158022_))
                                    (let ((_e157992158025_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157987158022_))))
                                      (let ((_hd157991158029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157992158025_)))
                                            (_tl157990158032_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157992158025_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157990158032_))
                                            ((lambda (_L158035_ _L158037_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158037_))
                                                   (let ((__tmp161517
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161512
                                                          (let ((__tmp161514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161516
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161515
                                (let ()
                                  (declare (not safe))
                                  (cons _L158037_ '()))))
                           (declare (not safe))
                           (cons __tmp161516 __tmp161515)))
                        (__tmp161513
                         (let () (declare (not safe)) (cons _L158035_ '()))))
                    (declare (not safe))
                    (cons __tmp161514 __tmp161513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161517
                                                           __tmp161512))
                                                   (_g157980157998_
                                                    _g157981158002_)))
                                             _hd157991158029_
                                             _hd157988158019_)
                                            (_g157980157998_
                                             _g157981158002_))))
                                    (_g157980157998_ _g157981158002_))))
                            (_g157980157998_ _g157981158002_))))
                    (_g157980157998_ _g157981158002_)))))
        (_g157979158053_ _$stx157976_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158057_)
      (let* ((_g158061158090_
              (lambda (_g158062158086_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158062158086_))))
             (_g158060158190_
              (lambda (_g158062158094_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158062158094_))
                    (let ((_e158067158097_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158062158094_))))
                      (let ((_hd158066158101_
                             (let ()
                               (declare (not safe))
                               (##car _e158067158097_)))
                            (_tl158065158104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158067158097_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158065158104_))
                            (let ((_g161518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158065158104_
                                      '0))))
                              (begin
                                (let ((_g161519_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161518_)
                                             (##vector-length _g161518_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161519_ 2)))
                                      (error "Context expects 2 values"
                                             _g161519_)))
                                (let ((_target158068158107_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161518_ 0)))
                                      (_tl158070158110_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161518_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158070158110_))
                                      (letrec ((_loop158071158113_
                                                (lambda (_hd158069158117_
                                                         _type158075158120_
                                                         _symbol158076158122_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158069158117_))
                                                      (let ((_e158072158125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158069158117_))))
                (let ((_lp-hd158073158129_
                       (let () (declare (not safe)) (##car _e158072158125_)))
                      (_lp-tl158074158132_
                       (let () (declare (not safe)) (##cdr _e158072158125_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158073158129_))
                      (let ((_e158081158135_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158073158129_))))
                        (let ((_hd158080158139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158081158135_)))
                              (_tl158079158142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158081158135_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158079158142_))
                              (let ((_e158084158145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158079158142_))))
                                (let ((_hd158083158149_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158084158145_)))
                                      (_tl158082158152_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158084158145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158082158152_))
                                      (_loop158071158113_
                                       _lp-tl158074158132_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158083158149_
                                               _type158075158120_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158080158139_
                                               _symbol158076158122_)))
                                      (_g158061158090_ _g158062158094_))))
                              (_g158061158090_ _g158062158094_))))
                      (_g158061158090_ _g158062158094_))))
              (let ((_type158077158155_ (reverse _type158075158120_))
                    (_symbol158078158158_ (reverse _symbol158076158122_)))
                ((lambda (_L158161_ _L158163_)
                   (let ((__tmp161526
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161520
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158161_
                               _L158163_))
                            (let ((__tmp161521
                                   (lambda (_g158178158182_
                                            _g158179158185_
                                            _g158180158187_)
                                     (let ((__tmp161522
                                            (let ((__tmp161525
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161523
                                                   (let ((__tmp161524
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158178158182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158179158185_
                                                           __tmp161524))))
                                              (declare (not safe))
                                              (cons __tmp161525 __tmp161523))))
                                       (declare (not safe))
                                       (cons __tmp161522 _g158180158187_)))))
                              (declare (not safe))
                              (foldr2 __tmp161521 '() _L158161_ _L158163_)))))
                     (declare (not safe))
                     (cons __tmp161526 __tmp161520)))
                 _type158077158155_
                 _symbol158078158158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158071158113_
                                         _target158068158107_
                                         '()
                                         '()))
                                      (_g158061158090_ _g158062158094_)))))
                            (_g158061158090_ _g158062158094_))))
                    (_g158061158090_ _g158062158094_)))))
        (_g158060158190_ _$stx158057_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158195_)
      (let* ((___stx161077161078_ _$stx158195_)
             (_g158200158242_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161077161078_)))))
        (let ((___kont161080161081_
               (lambda (_L158370_ _L158372_ _L158373_ _L158374_)
                 (let ((__tmp161540
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161527
                        (let ((__tmp161537
                               (let ((__tmp161539
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161538
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158374_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161539 __tmp161538)))
                              (__tmp161528
                               (let ((__tmp161534
                                      (let ((__tmp161536
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161535
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158373_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161536 __tmp161535)))
                                     (__tmp161529
                                      (let ((__tmp161531
                                             (let ((__tmp161533
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161532
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158372_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161533 __tmp161532)))
                                            (__tmp161530
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158370_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161531 __tmp161530))))
                                 (declare (not safe))
                                 (cons __tmp161534 __tmp161529))))
                          (declare (not safe))
                          (cons __tmp161537 __tmp161528))))
                   (declare (not safe))
                   (cons __tmp161540 __tmp161527))))
              (___kont161082161083_
               (lambda (_L158289_ _L158291_ _L158292_ _L158293_)
                 (let ((__tmp161541
                        (let ((__tmp161542
                               (let ((__tmp161543
                                      (let ((__tmp161544
                                             (let ((__tmp161545
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161545 '()))))
                                        (declare (not safe))
                                        (cons _L158289_ __tmp161544))))
                                 (declare (not safe))
                                 (cons _L158291_ __tmp161543))))
                          (declare (not safe))
                          (cons _L158292_ __tmp161542))))
                   (declare (not safe))
                   (cons _L158293_ __tmp161541)))))
          (let ((___match161116161117_
                 (lambda (_e158208158320_
                          _hd158207158324_
                          _tl158206158327_
                          _e158211158330_
                          _hd158210158334_
                          _tl158209158337_
                          _e158214158340_
                          _hd158213158344_
                          _tl158212158347_
                          _e158217158350_
                          _hd158216158354_
                          _tl158215158357_
                          _e158220158360_
                          _hd158219158364_
                          _tl158218158367_)
                   (let ((_L158370_ _hd158219158364_)
                         (_L158372_ _hd158216158354_)
                         (_L158373_ _hd158213158344_)
                         (_L158374_ _hd158210158334_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158374_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158373_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158372_)))
                         (___kont161080161081_
                          _L158370_
                          _L158372_
                          _L158373_
                          _L158374_)
                         (let () (declare (not safe)) (_g158200158242_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161077161078_))
                (let ((_e158208158320_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161077161078_))))
                  (let ((_tl158206158327_
                         (let () (declare (not safe)) (##cdr _e158208158320_)))
                        (_hd158207158324_
                         (let ()
                           (declare (not safe))
                           (##car _e158208158320_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158206158327_))
                        (let ((_e158211158330_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158206158327_))))
                          (let ((_tl158209158337_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158211158330_)))
                                (_hd158210158334_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158211158330_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158209158337_))
                                (let ((_e158214158340_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158209158337_))))
                                  (let ((_tl158212158347_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158214158340_)))
                                        (_hd158213158344_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158214158340_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158212158347_))
                                        (let ((_e158217158350_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158212158347_))))
                                          (let ((_tl158215158357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158217158350_)))
                                                (_hd158216158354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158217158350_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158215158357_))
                                                (let ((_e158220158360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158215158357_))))
                                                  (let ((_tl158218158367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158220158360_)))
                                                        (_hd158219158364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158220158360_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158218158367_))
                                                        (___match161116161117_
                                                         _e158208158320_
                                                         _hd158207158324_
                                                         _tl158206158327_
                                                         _e158211158330_
                                                         _hd158210158334_
                                                         _tl158209158337_
                                                         _e158214158340_
                                                         _hd158213158344_
                                                         _tl158212158347_
                                                         _e158217158350_
                                                         _hd158216158354_
                                                         _tl158215158357_
                                                         _e158220158360_
                                                         _hd158219158364_
                                                         _tl158218158367_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158200158242_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158215158357_))
                                                    (___kont161082161083_
                                                     _hd158216158354_
                                                     _hd158213158344_
                                                     _hd158210158334_
                                                     _hd158207158324_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158200158242_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158200158242_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158200158242_)))))
                        (let () (declare (not safe)) (_g158200158242_)))))
                (let () (declare (not safe)) (_g158200158242_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158399_)
      (let* ((_g158403158438_
              (lambda (_g158404158434_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158404158434_))))
             (_g158402158557_
              (lambda (_g158404158442_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158404158442_))
                    (let ((_e158410158445_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158404158442_))))
                      (let ((_hd158409158449_
                             (let ()
                               (declare (not safe))
                               (##car _e158410158445_)))
                            (_tl158408158452_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158410158445_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158408158452_))
                            (let ((_g161546_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158408158452_
                                      '0))))
                              (begin
                                (let ((_g161547_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161546_)
                                             (##vector-length _g161546_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161547_ 2)))
                                      (error "Context expects 2 values"
                                             _g161547_)))
                                (let ((_target158411158455_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161546_ 0)))
                                      (_tl158413158458_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161546_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158413158458_))
                                      (letrec ((_loop158414158461_
                                                (lambda (_hd158412158465_
                                                         _symbol158418158468_
                                                         _method158419158470_
                                                         _type-t158420158472_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158412158465_))
                                                      (let ((_e158415158475_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158412158465_))))
                (let ((_lp-hd158416158479_
                       (let () (declare (not safe)) (##car _e158415158475_)))
                      (_lp-tl158417158482_
                       (let () (declare (not safe)) (##cdr _e158415158475_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158416158479_))
                      (let ((_e158426158485_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158416158479_))))
                        (let ((_hd158425158489_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158426158485_)))
                              (_tl158424158492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158426158485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158424158492_))
                              (let ((_e158429158495_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158424158492_))))
                                (let ((_hd158428158499_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158429158495_)))
                                      (_tl158427158502_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158429158495_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158427158502_))
                                      (let ((_e158432158505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158427158502_))))
                                        (let ((_hd158431158509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158432158505_)))
                                              (_tl158430158512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158432158505_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158430158512_))
                                              (_loop158414158461_
                                               _lp-tl158417158482_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158431158509_
                                                       _symbol158418158468_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158428158499_
                                                       _method158419158470_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158425158489_
                                                       _type-t158420158472_)))
                                              (_g158403158438_
                                               _g158404158442_))))
                                      (_g158403158438_ _g158404158442_))))
                              (_g158403158438_ _g158404158442_))))
                      (_g158403158438_ _g158404158442_))))
              (let ((_symbol158421158515_ (reverse _symbol158418158468_))
                    (_method158422158518_ (reverse _method158419158470_))
                    (_type-t158423158520_ (reverse _type-t158420158472_)))
                ((lambda (_L158523_ _L158525_ _L158526_)
                   (let ((__tmp161555
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161548
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158523_
                               _L158525_
                               _L158526_))
                            (let ((__tmp161549
                                   (lambda (_g158542158547_
                                            _g158543158550_
                                            _g158544158552_
                                            _g158545158554_)
                                     (let ((__tmp161550
                                            (let ((__tmp161554
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161551
                                                   (let ((__tmp161552
                                                          (let ((__tmp161553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158542158547_ '()))))
                    (declare (not safe))
                    (cons _g158543158550_ __tmp161553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158544158552_
                                                           __tmp161552))))
                                              (declare (not safe))
                                              (cons __tmp161554 __tmp161551))))
                                       (declare (not safe))
                                       (cons __tmp161550 _g158545158554_)))))
                              (declare (not safe))
                              (foldr* __tmp161549
                                      '()
                                      _L158523_
                                      _L158525_
                                      _L158526_)))))
                     (declare (not safe))
                     (cons __tmp161555 __tmp161548)))
                 _symbol158421158515_
                 _method158422158518_
                 _type-t158423158520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158414158461_
                                         _target158411158455_
                                         '()
                                         '()
                                         '()))
                                      (_g158403158438_ _g158404158442_)))))
                            (_g158403158438_ _g158404158442_))))
                    (_g158403158438_ _g158404158442_)))))
        (_g158402158557_ _$stx158399_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158562_)
      (let* ((_g158566158599_
              (lambda (_g158567158595_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158567158595_))))
             (_g158565158713_
              (lambda (_g158567158603_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158567158603_))
                    (let ((_e158573158606_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158567158603_))))
                      (let ((_hd158572158610_
                             (let ()
                               (declare (not safe))
                               (##car _e158573158606_)))
                            (_tl158571158613_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158573158606_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158571158613_))
                            (let ((_e158576158616_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158571158613_))))
                              (let ((_hd158575158620_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158576158616_)))
                                    (_tl158574158623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158576158616_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158574158623_))
                                    (let ((_g161556_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158574158623_
                                              '0))))
                                      (begin
                                        (let ((_g161557_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161556_)
                                                     (##vector-length
                                                      _g161556_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161557_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161557_)))
                                        (let ((_target158577158626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161556_ 0)))
                                              (_tl158579158629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161556_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158579158629_))
                                              (letrec ((_loop158580158632_
                                                        (lambda (_hd158578158636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158584158639_
                         _method158585158641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158578158636_))
                      (let ((_e158581158644_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158578158636_))))
                        (let ((_lp-hd158582158648_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158581158644_)))
                              (_lp-tl158583158651_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158581158644_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158582158648_))
                              (let ((_e158590158654_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158582158648_))))
                                (let ((_hd158589158658_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158590158654_)))
                                      (_tl158588158661_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158590158654_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158588158661_))
                                      (let ((_e158593158664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158588158661_))))
                                        (let ((_hd158592158668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158593158664_)))
                                              (_tl158591158671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158593158664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158591158671_))
                                              (_loop158580158632_
                                               _lp-tl158583158651_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158592158668_
                                                       _symbol158584158639_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158589158658_
                                                       _method158585158641_)))
                                              (_g158566158599_
                                               _g158567158603_))))
                                      (_g158566158599_ _g158567158603_))))
                              (_g158566158599_ _g158567158603_))))
                      (let ((_symbol158586158674_
                             (reverse _symbol158584158639_))
                            (_method158587158677_
                             (reverse _method158585158641_)))
                        ((lambda (_L158680_ _L158682_ _L158683_)
                           (let ((__tmp161565
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161558
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158680_
                                       _L158682_))
                                    (let ((__tmp161559
                                           (lambda (_g158701158705_
                                                    _g158702158708_
                                                    _g158703158710_)
                                             (let ((__tmp161560
                                                    (let ((__tmp161564
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161561
                                                           (let ((__tmp161562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161563
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158701158705_ '()))))
                            (declare (not safe))
                            (cons _g158702158708_ __tmp161563))))
                     (declare (not safe))
                     (cons _L158683_ __tmp161562))))
              (declare (not safe))
              (cons __tmp161564 __tmp161561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161560
                                                     _g158703158710_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161559
                                              '()
                                              _L158680_
                                              _L158682_)))))
                             (declare (not safe))
                             (cons __tmp161565 __tmp161558)))
                         _symbol158586158674_
                         _method158587158677_
                         _hd158575158620_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158580158632_
                                                 _target158577158626_
                                                 '()
                                                 '()))
                                              (_g158566158599_
                                               _g158567158603_)))))
                                    (_g158566158599_ _g158567158603_))))
                            (_g158566158599_ _g158567158603_))))
                    (_g158566158599_ _g158567158603_)))))
        (_g158565158713_ _$stx158562_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158718_)
      (let* ((_g158722158736_
              (lambda (_g158723158732_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158723158732_))))
             (_g158721158777_
              (lambda (_g158723158740_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158723158740_))
                    (let ((_e158727158743_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158723158740_))))
                      (let ((_hd158726158747_
                             (let ()
                               (declare (not safe))
                               (##car _e158727158743_)))
                            (_tl158725158750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158727158743_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158725158750_))
                            (let ((_e158730158753_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158725158750_))))
                              (let ((_hd158729158757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158730158753_)))
                                    (_tl158728158760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158730158753_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158728158760_))
                                    ((lambda (_L158763_)
                                       (let ((__tmp161570
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161566
                                              (let ((__tmp161567
                                                     (let ((__tmp161569
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161568
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161569 __tmp161568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161567 '()))))
                                         (declare (not safe))
                                         (cons __tmp161570 __tmp161566)))
                                     _hd158729158757_)
                                    (_g158722158736_ _g158723158740_))))
                            (_g158722158736_ _g158723158740_))))
                    (_g158722158736_ _g158723158740_)))))
        (_g158721158777_ _$stx158718_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158781_)
      (let* ((_g158785158835_
              (lambda (_g158786158831_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158786158831_))))
             (_g158784159002_
              (lambda (_g158786158839_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158786158839_))
                    (let ((_e158799158842_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158786158839_))))
                      (let ((_hd158798158846_
                             (let ()
                               (declare (not safe))
                               (##car _e158799158842_)))
                            (_tl158797158849_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158799158842_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158797158849_))
                            (let ((_e158802158852_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158797158849_))))
                              (let ((_hd158801158856_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158802158852_)))
                                    (_tl158800158859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158802158852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158800158859_))
                                    (let ((_e158805158862_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158800158859_))))
                                      (let ((_hd158804158866_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158805158862_)))
                                            (_tl158803158869_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158805158862_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158803158869_))
                                            (let ((_e158808158872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158803158869_))))
                                              (let ((_hd158807158876_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158808158872_)))
                                                    (_tl158806158879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158808158872_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158806158879_))
                                                    (let ((_e158811158882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158806158879_))))
                                                      (let ((_hd158810158886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158811158882_)))
                    (_tl158809158889_
                     (let () (declare (not safe)) (##cdr _e158811158882_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158809158889_))
                    (let ((_e158814158892_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158809158889_))))
                      (let ((_hd158813158896_
                             (let ()
                               (declare (not safe))
                               (##car _e158814158892_)))
                            (_tl158812158899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158814158892_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158812158899_))
                            (let ((_e158817158902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158812158899_))))
                              (let ((_hd158816158906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158817158902_)))
                                    (_tl158815158909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158817158902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158815158909_))
                                    (let ((_e158820158912_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158815158909_))))
                                      (let ((_hd158819158916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158820158912_)))
                                            (_tl158818158919_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158820158912_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158818158919_))
                                            (let ((_e158823158922_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158818158919_))))
                                              (let ((_hd158822158926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158823158922_)))
                                                    (_tl158821158929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158823158922_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158821158929_))
                                                    (let ((_e158826158932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158821158929_))))
                                                      (let ((_hd158825158936_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158826158932_)))
                    (_tl158824158939_
                     (let () (declare (not safe)) (##cdr _e158826158932_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158824158939_))
                    (let ((_e158829158942_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158824158939_))))
                      (let ((_hd158828158946_
                             (let ()
                               (declare (not safe))
                               (##car _e158829158942_)))
                            (_tl158827158949_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158829158942_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158827158949_))
                            ((lambda (_L158952_
                                      _L158954_
                                      _L158955_
                                      _L158956_
                                      _L158957_
                                      _L158958_
                                      _L158959_
                                      _L158960_
                                      _L158961_
                                      _L158962_)
                               (let ((__tmp161605
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161571
                                      (let ((__tmp161602
                                             (let ((__tmp161604
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161603
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158962_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161604 __tmp161603)))
                                            (__tmp161572
                                             (let ((__tmp161599
                                                    (let ((__tmp161601
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161600
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L158961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161601 __tmp161600)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161573
                                                    (let ((__tmp161596
                                                           (let ((__tmp161598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161597
                          (let () (declare (not safe)) (cons _L158960_ '()))))
                     (declare (not safe))
                     (cons __tmp161598 __tmp161597)))
                  (__tmp161574
                   (let ((__tmp161593
                          (let ((__tmp161595
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161594
                                 (let ()
                                   (declare (not safe))
                                   (cons _L158959_ '()))))
                            (declare (not safe))
                            (cons __tmp161595 __tmp161594)))
                         (__tmp161575
                          (let ((__tmp161590
                                 (let ((__tmp161592
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161591
                                        (let ()
                                          (declare (not safe))
                                          (cons _L158958_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161592 __tmp161591)))
                                (__tmp161576
                                 (let ((__tmp161587
                                        (let ((__tmp161589
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161588
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L158957_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161589 __tmp161588)))
                                       (__tmp161577
                                        (let ((__tmp161578
                                               (let ((__tmp161579
                                                      (let ((__tmp161584
                                                             (let ((__tmp161586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161585
                            (let ()
                              (declare (not safe))
                              (cons _L158954_ '()))))
                       (declare (not safe))
                       (cons __tmp161586 __tmp161585)))
                    (__tmp161580
                     (let ((__tmp161581
                            (let ((__tmp161583
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161582
                                   (let ()
                                     (declare (not safe))
                                     (cons _L158952_ '()))))
                              (declare (not safe))
                              (cons __tmp161583 __tmp161582))))
                       (declare (not safe))
                       (cons __tmp161581 '()))))
                (declare (not safe))
                (cons __tmp161584 __tmp161580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L158955_
                                                       __tmp161579))))
                                          (declare (not safe))
                                          (cons _L158956_ __tmp161578))))
                                   (declare (not safe))
                                   (cons __tmp161587 __tmp161577))))
                            (declare (not safe))
                            (cons __tmp161590 __tmp161576))))
                     (declare (not safe))
                     (cons __tmp161593 __tmp161575))))
              (declare (not safe))
              (cons __tmp161596 __tmp161574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161599
                                                     __tmp161573))))
                                        (declare (not safe))
                                        (cons __tmp161602 __tmp161572))))
                                 (declare (not safe))
                                 (cons __tmp161605 __tmp161571)))
                             _hd158828158946_
                             _hd158825158936_
                             _hd158822158926_
                             _hd158819158916_
                             _hd158816158906_
                             _hd158813158896_
                             _hd158810158886_
                             _hd158807158876_
                             _hd158804158866_
                             _hd158801158856_)
                            (_g158785158835_ _g158786158839_))))
                    (_g158785158835_ _g158786158839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158785158835_
                                                     _g158786158839_))))
                                            (_g158785158835_
                                             _g158786158839_))))
                                    (_g158785158835_ _g158786158839_))))
                            (_g158785158835_ _g158786158839_))))
                    (_g158785158835_ _g158786158839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158785158835_
                                                     _g158786158839_))))
                                            (_g158785158835_
                                             _g158786158839_))))
                                    (_g158785158835_ _g158786158839_))))
                            (_g158785158835_ _g158786158839_))))
                    (_g158785158835_ _g158786158839_)))))
        (_g158784159002_ _$stx158781_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159006_)
      (let* ((_g159010159024_
              (lambda (_g159011159020_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159011159020_))))
             (_g159009159065_
              (lambda (_g159011159028_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159011159028_))
                    (let ((_e159015159031_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159011159028_))))
                      (let ((_hd159014159035_
                             (let ()
                               (declare (not safe))
                               (##car _e159015159031_)))
                            (_tl159013159038_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159015159031_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159013159038_))
                            (let ((_e159018159041_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159013159038_))))
                              (let ((_hd159017159045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159018159041_)))
                                    (_tl159016159048_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159018159041_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159016159048_))
                                    ((lambda (_L159051_)
                                       (let ((__tmp161610
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161606
                                              (let ((__tmp161607
                                                     (let ((__tmp161609
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161608
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161609 __tmp161608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161607 '()))))
                                         (declare (not safe))
                                         (cons __tmp161610 __tmp161606)))
                                     _hd159017159045_)
                                    (_g159010159024_ _g159011159028_))))
                            (_g159010159024_ _g159011159028_))))
                    (_g159010159024_ _g159011159028_)))))
        (_g159009159065_ _$stx159006_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159069_)
      (let* ((_g159073159087_
              (lambda (_g159074159083_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159074159083_))))
             (_g159072159128_
              (lambda (_g159074159091_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159074159091_))
                    (let ((_e159078159094_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159074159091_))))
                      (let ((_hd159077159098_
                             (let ()
                               (declare (not safe))
                               (##car _e159078159094_)))
                            (_tl159076159101_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159078159094_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159076159101_))
                            (let ((_e159081159104_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159076159101_))))
                              (let ((_hd159080159108_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159081159104_)))
                                    (_tl159079159111_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159081159104_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159079159111_))
                                    ((lambda (_L159114_)
                                       (let ((__tmp161615
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161611
                                              (let ((__tmp161612
                                                     (let ((__tmp161614
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161613
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161614 __tmp161613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161612 '()))))
                                         (declare (not safe))
                                         (cons __tmp161615 __tmp161611)))
                                     _hd159080159108_)
                                    (_g159073159087_ _g159074159091_))))
                            (_g159073159087_ _g159074159091_))))
                    (_g159073159087_ _g159074159091_)))))
        (_g159072159128_ _$stx159069_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159132_)
      (let* ((_g159136159158_
              (lambda (_g159137159154_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159137159154_))))
             (_g159135159227_
              (lambda (_g159137159162_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159137159162_))
                    (let ((_e159143159165_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159137159162_))))
                      (let ((_hd159142159169_
                             (let ()
                               (declare (not safe))
                               (##car _e159143159165_)))
                            (_tl159141159172_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159143159165_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159141159172_))
                            (let ((_e159146159175_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159141159172_))))
                              (let ((_hd159145159179_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159146159175_)))
                                    (_tl159144159182_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159146159175_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159144159182_))
                                    (let ((_e159149159185_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159144159182_))))
                                      (let ((_hd159148159189_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159149159185_)))
                                            (_tl159147159192_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159149159185_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159147159192_))
                                            (let ((_e159152159195_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159147159192_))))
                                              (let ((_hd159151159199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159152159195_)))
                                                    (_tl159150159202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159152159195_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159150159202_))
                                                    ((lambda (_L159205_
                                                              _L159207_
                                                              _L159208_)
                                                       (let ((__tmp161625
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161616
                      (let ((__tmp161622
                             (let ((__tmp161624
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161623
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159208_ '()))))
                               (declare (not safe))
                               (cons __tmp161624 __tmp161623)))
                            (__tmp161617
                             (let ((__tmp161619
                                    (let ((__tmp161621
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161620
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159207_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161621 __tmp161620)))
                                   (__tmp161618
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159205_ '()))))
                               (declare (not safe))
                               (cons __tmp161619 __tmp161618))))
                        (declare (not safe))
                        (cons __tmp161622 __tmp161617))))
                 (declare (not safe))
                 (cons __tmp161625 __tmp161616)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159151159199_
                                                     _hd159148159189_
                                                     _hd159145159179_)
                                                    (_g159136159158_
                                                     _g159137159162_))))
                                            (_g159136159158_
                                             _g159137159162_))))
                                    (_g159136159158_ _g159137159162_))))
                            (_g159136159158_ _g159137159162_))))
                    (_g159136159158_ _g159137159162_)))))
        (_g159135159227_ _$stx159132_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159231_)
      (let* ((_g159235159257_
              (lambda (_g159236159253_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159236159253_))))
             (_g159234159326_
              (lambda (_g159236159261_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159236159261_))
                    (let ((_e159242159264_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159236159261_))))
                      (let ((_hd159241159268_
                             (let ()
                               (declare (not safe))
                               (##car _e159242159264_)))
                            (_tl159240159271_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159242159264_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159240159271_))
                            (let ((_e159245159274_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159240159271_))))
                              (let ((_hd159244159278_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159245159274_)))
                                    (_tl159243159281_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159245159274_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159243159281_))
                                    (let ((_e159248159284_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159243159281_))))
                                      (let ((_hd159247159288_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159248159284_)))
                                            (_tl159246159291_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159248159284_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159246159291_))
                                            (let ((_e159251159294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159246159291_))))
                                              (let ((_hd159250159298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159251159294_)))
                                                    (_tl159249159301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159251159294_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159249159301_))
                                                    ((lambda (_L159304_
                                                              _L159306_
                                                              _L159307_)
                                                       (let ((__tmp161635
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161626
                      (let ((__tmp161632
                             (let ((__tmp161634
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161633
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159307_ '()))))
                               (declare (not safe))
                               (cons __tmp161634 __tmp161633)))
                            (__tmp161627
                             (let ((__tmp161629
                                    (let ((__tmp161631
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161630
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159306_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161631 __tmp161630)))
                                   (__tmp161628
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159304_ '()))))
                               (declare (not safe))
                               (cons __tmp161629 __tmp161628))))
                        (declare (not safe))
                        (cons __tmp161632 __tmp161627))))
                 (declare (not safe))
                 (cons __tmp161635 __tmp161626)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159250159298_
                                                     _hd159247159288_
                                                     _hd159244159278_)
                                                    (_g159235159257_
                                                     _g159236159261_))))
                                            (_g159235159257_
                                             _g159236159261_))))
                                    (_g159235159257_ _g159236159261_))))
                            (_g159235159257_ _g159236159261_))))
                    (_g159235159257_ _g159236159261_)))))
        (_g159234159326_ _$stx159231_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159330_)
      (let* ((___stx161145161146_ _$stx159330_)
             (_g159338159406_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161145161146_)))))
        (let ((___kont161148161149_
               (lambda (_L159684_ _L159686_)
                 (let ((__tmp161651
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161636
                        (let ((__tmp161647
                               (let ((__tmp161650
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161648
                                      (let ((__tmp161649
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161649 '()))))
                                 (declare (not safe))
                                 (cons __tmp161650 __tmp161648)))
                              (__tmp161637
                               (let ((__tmp161644
                                      (let ((__tmp161646
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161645
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159686_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161646 __tmp161645)))
                                     (__tmp161638
                                      (let ((__tmp161639
                                             (let ((__tmp161640
                                                    (let ((__tmp161641
                                                           (let ((__tmp161643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161642
                          (let () (declare (not safe)) (cons _L159684_ '()))))
                     (declare (not safe))
                     (cons __tmp161643 __tmp161642))))
              (declare (not safe))
              (cons __tmp161641 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159684_ __tmp161640))))
                                        (declare (not safe))
                                        (cons '#f __tmp161639))))
                                 (declare (not safe))
                                 (cons __tmp161644 __tmp161638))))
                          (declare (not safe))
                          (cons __tmp161647 __tmp161637))))
                   (declare (not safe))
                   (cons __tmp161651 __tmp161636))))
              (___kont161150161151_
               (lambda (_L159615_ _L159617_)
                 (let ((__tmp161652
                        (let ((__tmp161653
                               (let ((__tmp161654
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159615_ __tmp161654))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161653))))
                   (declare (not safe))
                   (cons _L159617_ __tmp161652))))
              (___kont161152161153_
               (lambda (_L159554_ _L159556_)
                 (let ((__tmp161668
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161655
                        (let ((__tmp161664
                               (let ((__tmp161667
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161665
                                      (let ((__tmp161666
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161666 '()))))
                                 (declare (not safe))
                                 (cons __tmp161667 __tmp161665)))
                              (__tmp161656
                               (let ((__tmp161661
                                      (let ((__tmp161663
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161662
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159556_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161663 __tmp161662)))
                                     (__tmp161657
                                      (let ((__tmp161658
                                             (let ((__tmp161660
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161659
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159554_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161660
                                                     __tmp161659))))
                                        (declare (not safe))
                                        (cons __tmp161658 '()))))
                                 (declare (not safe))
                                 (cons __tmp161661 __tmp161657))))
                          (declare (not safe))
                          (cons __tmp161664 __tmp161656))))
                   (declare (not safe))
                   (cons __tmp161668 __tmp161655))))
              (___kont161154161155_
               (lambda (_L159486_ _L159488_)
                 (let ((__tmp161682
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161669
                        (let ((__tmp161678
                               (let ((__tmp161681
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161679
                                      (let ((__tmp161680
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161680 '()))))
                                 (declare (not safe))
                                 (cons __tmp161681 __tmp161679)))
                              (__tmp161670
                               (let ((__tmp161675
                                      (let ((__tmp161677
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161676
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159488_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161677 __tmp161676)))
                                     (__tmp161671
                                      (let ((__tmp161672
                                             (let ((__tmp161674
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161673
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159486_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161674
                                                     __tmp161673))))
                                        (declare (not safe))
                                        (cons __tmp161672 '()))))
                                 (declare (not safe))
                                 (cons __tmp161675 __tmp161671))))
                          (declare (not safe))
                          (cons __tmp161678 __tmp161670))))
                   (declare (not safe))
                   (cons __tmp161682 __tmp161669))))
              (___kont161156161157_
               (lambda (_L159433_ _L159435_)
                 (let ((__tmp161683
                        (let ((__tmp161684
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159433_ __tmp161684))))
                   (declare (not safe))
                   (cons _L159435_ __tmp161683)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161145161146_))
              (let ((_e159344159640_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161145161146_))))
                (let ((_tl159342159647_
                       (let () (declare (not safe)) (##cdr _e159344159640_)))
                      (_hd159343159644_
                       (let () (declare (not safe)) (##car _e159344159640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159342159647_))
                      (let ((_e159347159650_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159342159647_))))
                        (let ((_tl159345159657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159347159650_)))
                              (_hd159346159654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159347159650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159345159657_))
                              (let ((_e159350159660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159345159657_))))
                                (let ((_tl159348159667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159350159660_)))
                                      (_hd159349159664_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159350159660_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159349159664_))
                                      (let ((_e159351159670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159349159664_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159351159670_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159348159667_))
                                                (let ((_e159354159674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159348159667_))))
                                                  (let ((_tl159352159681_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159354159674_)))
                                                        (_hd159353159678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159354159674_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159352159681_))
                                                        (___kont161148161149_
                                                         _hd159353159678_
                                                         _hd159346159654_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159346159654_))
                                                            (let ((_e159363159601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159346159654_))))
                      (declare (not safe))
                      (_g159338159406_))
                    (let () (declare (not safe)) (_g159338159406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159346159654_))
                                                    (let ((_e159363159601_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159346159654_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159363159601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159348159667_))
                      (___kont161150161151_ _hd159349159664_ _hd159343159644_)
                      (let () (declare (not safe)) (_g159338159406_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159348159667_))
                      (___kont161154161155_ _hd159349159664_ _hd159346159654_)
                      (let () (declare (not safe)) (_g159338159406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159348159667_))
                                                        (___kont161154161155_
                                                         _hd159349159664_
                                                         _hd159346159654_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159338159406_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159346159654_))
                                                (let ((_e159363159601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159346159654_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159363159601_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159348159667_))
                                                          (___kont161150161151_
                                                           _hd159349159664_
                                                           _hd159343159644_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159348159667_))
                      (let ((_e159381159544_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159348159667_))))
                        (let ((_tl159379159551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159381159544_)))
                              (_hd159380159548_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159381159544_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159379159551_))
                              (___kont161152161153_
                               _hd159380159548_
                               _hd159349159664_)
                              (let ()
                                (declare (not safe))
                                (_g159338159406_)))))
                      (let () (declare (not safe)) (_g159338159406_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159348159667_))
                  (___kont161154161155_ _hd159349159664_ _hd159346159654_)
                  (let () (declare (not safe)) (_g159338159406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159348159667_))
                                                    (___kont161154161155_
                                                     _hd159349159664_
                                                     _hd159346159654_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159338159406_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159346159654_))
                                          (let ((_e159363159601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159346159654_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159363159601_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159348159667_))
                                                    (___kont161150161151_
                                                     _hd159349159664_
                                                     _hd159343159644_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159348159667_))
                                                        (let ((_e159381159544_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159348159667_))))
                  (let ((_tl159379159551_
                         (let () (declare (not safe)) (##cdr _e159381159544_)))
                        (_hd159380159548_
                         (let ()
                           (declare (not safe))
                           (##car _e159381159544_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159379159551_))
                        (___kont161152161153_
                         _hd159380159548_
                         _hd159349159664_)
                        (let () (declare (not safe)) (_g159338159406_)))))
                (let () (declare (not safe)) (_g159338159406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159348159667_))
                                                    (___kont161154161155_
                                                     _hd159349159664_
                                                     _hd159346159654_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159338159406_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159348159667_))
                                              (___kont161154161155_
                                               _hd159349159664_
                                               _hd159346159654_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159338159406_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159346159654_))
                                  (let ((_e159363159601_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159346159654_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159345159657_))
                                        (___kont161156161157_
                                         _hd159346159654_
                                         _hd159343159644_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159338159406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159345159657_))
                                      (___kont161156161157_
                                       _hd159346159654_
                                       _hd159343159644_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159338159406_)))))))
                      (let () (declare (not safe)) (_g159338159406_)))))
              (let () (declare (not safe)) (_g159338159406_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159708_)
      (let* ((___stx161285161286_ _$stx159708_)
             (_g159713159768_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161285161286_)))))
        (let ((___kont161288161289_
               (lambda (_L159953_ _L159955_)
                 (let ((__tmp161700
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161685
                        (let ((__tmp161696
                               (let ((__tmp161699
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161697
                                      (let ((__tmp161698
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161698 '()))))
                                 (declare (not safe))
                                 (cons __tmp161699 __tmp161697)))
                              (__tmp161686
                               (let ((__tmp161687
                                      (let ((__tmp161695
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161688
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159953_
                                                  _L159955_))
                                               (let ((__tmp161689
                                                      (lambda (_g159972159976_
                                                               _g159973159979_
                                                               _g159974159981_)
                                                        (let ((__tmp161690
                                                               (let ((__tmp161694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161691
                              (let ((__tmp161692
                                     (let ((__tmp161693
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159972159976_ '()))))
                                       (declare (not safe))
                                       (cons _g159973159979_ __tmp161693))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161692))))
                         (declare (not safe))
                         (cons __tmp161694 __tmp161691))))
                  (declare (not safe))
                  (cons __tmp161690 _g159974159981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161689
                                                         '()
                                                         _L159953_
                                                         _L159955_)))))
                                        (declare (not safe))
                                        (cons __tmp161695 __tmp161688))))
                                 (declare (not safe))
                                 (cons __tmp161687 '()))))
                          (declare (not safe))
                          (cons __tmp161696 __tmp161686))))
                   (declare (not safe))
                   (cons __tmp161700 __tmp161685))))
              (___kont161292161293_
               (lambda (_L159839_ _L159841_)
                 (let ((__tmp161715
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161701
                        (let ((__tmp161711
                               (let ((__tmp161714
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161712
                                      (let ((__tmp161713
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161713 '()))))
                                 (declare (not safe))
                                 (cons __tmp161714 __tmp161712)))
                              (__tmp161702
                               (let ((__tmp161703
                                      (let ((__tmp161710
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161704
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159839_
                                                  _L159841_))
                                               (let ((__tmp161705
                                                      (lambda (_g159856159860_
                                                               _g159857159863_
                                                               _g159858159865_)
                                                        (let ((__tmp161706
                                                               (let ((__tmp161709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161707
                              (let ((__tmp161708
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159856159860_ '()))))
                                (declare (not safe))
                                (cons _g159857159863_ __tmp161708))))
                         (declare (not safe))
                         (cons __tmp161709 __tmp161707))))
                  (declare (not safe))
                  (cons __tmp161706 _g159858159865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161705
                                                         '()
                                                         _L159839_
                                                         _L159841_)))))
                                        (declare (not safe))
                                        (cons __tmp161710 __tmp161704))))
                                 (declare (not safe))
                                 (cons __tmp161703 '()))))
                          (declare (not safe))
                          (cons __tmp161711 __tmp161702))))
                   (declare (not safe))
                   (cons __tmp161715 __tmp161701)))))
          (let* ((___match161336161337_
                  (lambda (_e159745159775_
                           _hd159744159779_
                           _tl159743159782_
                           ___splice161294161295_
                           _target159746159785_
                           _tl159748159788_)
                    (letrec ((_loop159749159791_
                              (lambda (_hd159747159795_
                                       _dispatch159753159798_
                                       _arity159754159800_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159747159795_))
                                    (let ((_e159750159803_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159747159795_))))
                                      (let ((_lp-tl159752159810_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159750159803_)))
                                            (_lp-hd159751159807_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159750159803_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159751159807_))
                                            (let ((_e159759159813_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159751159807_))))
                                              (let ((_tl159757159820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159759159813_)))
                                                    (_hd159758159817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159759159813_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159757159820_))
                                                    (let ((_e159762159823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159757159820_))))
                                                      (let ((_tl159760159830_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159762159823_)))
                    (_hd159761159827_
                     (let () (declare (not safe)) (##car _e159762159823_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159760159830_))
                    (_loop159749159791_
                     _lp-tl159752159810_
                     (let ()
                       (declare (not safe))
                       (cons _hd159761159827_ _dispatch159753159798_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159758159817_ _arity159754159800_)))
                    (let () (declare (not safe)) (_g159713159768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159713159768_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159713159768_)))))
                                    (let ((_arity159756159836_
                                           (reverse _arity159754159800_))
                                          (_dispatch159755159833_
                                           (reverse _dispatch159753159798_)))
                                      (___kont161292161293_
                                       _dispatch159755159833_
                                       _arity159756159836_))))))
                      (_loop159749159791_ _target159746159785_ '() '()))))
                 (___match161328161329_
                  (lambda (_e159745159775_ _hd159744159779_ _tl159743159782_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159743159782_))
                        (let ((___splice161294161295_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159743159782_
                                  '0))))
                          (let ((_tl159748159788_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161294161295_ '1)))
                                (_target159746159785_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161294161295_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159748159788_))
                                (___match161336161337_
                                 _e159745159775_
                                 _hd159744159779_
                                 _tl159743159782_
                                 ___splice161294161295_
                                 _target159746159785_
                                 _tl159748159788_)
                                (let ()
                                  (declare (not safe))
                                  (_g159713159768_)))))
                        (let () (declare (not safe)) (_g159713159768_)))))
                 (___match161322161323_
                  (lambda (_e159719159875_
                           _hd159718159879_
                           _tl159717159882_
                           _e159722159885_
                           _hd159721159889_
                           _tl159720159892_
                           _e159723159895_
                           ___splice161290161291_
                           _target159724159899_
                           _tl159726159902_)
                    (letrec ((_loop159727159905_
                              (lambda (_hd159725159909_
                                       _dispatch159731159912_
                                       _arity159732159914_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159725159909_))
                                    (let ((_e159728159917_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159725159909_))))
                                      (let ((_lp-tl159730159924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159728159917_)))
                                            (_lp-hd159729159921_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159728159917_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159729159921_))
                                            (let ((_e159737159927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159729159921_))))
                                              (let ((_tl159735159934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159737159927_)))
                                                    (_hd159736159931_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159737159927_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159735159934_))
                                                    (let ((_e159740159937_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159735159934_))))
                                                      (let ((_tl159738159944_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159740159937_)))
                    (_hd159739159941_
                     (let () (declare (not safe)) (##car _e159740159937_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159738159944_))
                    (_loop159727159905_
                     _lp-tl159730159924_
                     (let ()
                       (declare (not safe))
                       (cons _hd159739159941_ _dispatch159731159912_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159736159931_ _arity159732159914_)))
                    (___match161328161329_
                     _e159719159875_
                     _hd159718159879_
                     _tl159717159882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161328161329_
                                                     _e159719159875_
                                                     _hd159718159879_
                                                     _tl159717159882_))))
                                            (___match161328161329_
                                             _e159719159875_
                                             _hd159718159879_
                                             _tl159717159882_))))
                                    (let ((_arity159734159950_
                                           (reverse _arity159732159914_))
                                          (_dispatch159733159947_
                                           (reverse _dispatch159731159912_)))
                                      (___kont161288161289_
                                       _dispatch159733159947_
                                       _arity159734159950_))))))
                      (_loop159727159905_ _target159724159899_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161285161286_))
                (let ((_e159719159875_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161285161286_))))
                  (let ((_tl159717159882_
                         (let () (declare (not safe)) (##cdr _e159719159875_)))
                        (_hd159718159879_
                         (let ()
                           (declare (not safe))
                           (##car _e159719159875_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159717159882_))
                        (let ((_e159722159885_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159717159882_))))
                          (let ((_tl159720159892_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159722159885_)))
                                (_hd159721159889_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159722159885_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159721159889_))
                                (let ((_e159723159895_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159721159889_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159723159895_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159720159892_))
                                          (let ((___splice161290161291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159720159892_
                                                    '0))))
                                            (let ((_tl159726159902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161290161291_
                                                      '1)))
                                                  (_target159724159899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161290161291_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159726159902_))
                                                  (___match161322161323_
                                                   _e159719159875_
                                                   _hd159718159879_
                                                   _tl159717159882_
                                                   _e159722159885_
                                                   _hd159721159889_
                                                   _tl159720159892_
                                                   _e159723159895_
                                                   ___splice161290161291_
                                                   _target159724159899_
                                                   _tl159726159902_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159717159882_))
                                                      (let ((___splice161294161295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159717159882_ '0))))
                (let ((_tl159748159788_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161294161295_ '1)))
                      (_target159746159785_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161294161295_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159748159788_))
                      (___match161336161337_
                       _e159719159875_
                       _hd159718159879_
                       _tl159717159882_
                       ___splice161294161295_
                       _target159746159785_
                       _tl159748159788_)
                      (let () (declare (not safe)) (_g159713159768_)))))
              (let () (declare (not safe)) (_g159713159768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159717159882_))
                                              (let ((___splice161294161295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159717159882_
                                                        '0))))
                                                (let ((_tl159748159788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161294161295_
                                                          '1)))
                                                      (_target159746159785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161294161295_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159748159788_))
                                                      (___match161336161337_
                                                       _e159719159875_
                                                       _hd159718159879_
                                                       _tl159717159882_
                                                       ___splice161294161295_
                                                       _target159746159785_
                                                       _tl159748159788_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159713159768_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159713159768_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159717159882_))
                                          (let ((___splice161294161295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159717159882_
                                                    '0))))
                                            (let ((_tl159748159788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161294161295_
                                                      '1)))
                                                  (_target159746159785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161294161295_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159748159788_))
                                                  (___match161336161337_
                                                   _e159719159875_
                                                   _hd159718159879_
                                                   _tl159717159882_
                                                   ___splice161294161295_
                                                   _target159746159785_
                                                   _tl159748159788_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159713159768_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159713159768_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159717159882_))
                                    (let ((___splice161294161295_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159717159882_
                                              '0))))
                                      (let ((_tl159748159788_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161294161295_
                                                '1)))
                                            (_target159746159785_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161294161295_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159748159788_))
                                            (___match161336161337_
                                             _e159719159875_
                                             _hd159718159879_
                                             _tl159717159882_
                                             ___splice161294161295_
                                             _target159746159785_
                                             _tl159748159788_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159713159768_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159713159768_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159717159882_))
                            (let ((___splice161294161295_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159717159882_
                                      '0))))
                              (let ((_tl159748159788_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161294161295_
                                        '1)))
                                    (_target159746159785_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161294161295_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159748159788_))
                                    (___match161336161337_
                                     _e159719159875_
                                     _hd159718159879_
                                     _tl159717159882_
                                     ___splice161294161295_
                                     _target159746159785_
                                     _tl159748159788_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159713159768_)))))
                            (let () (declare (not safe)) (_g159713159768_))))))
                (let () (declare (not safe)) (_g159713159768_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159990_)
      (let* ((_g159994160012_
              (lambda (_g159995160008_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159995160008_))))
             (_g159993160067_
              (lambda (_g159995160016_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159995160016_))
                    (let ((_e160000160019_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159995160016_))))
                      (let ((_hd159999160023_
                             (let ()
                               (declare (not safe))
                               (##car _e160000160019_)))
                            (_tl159998160026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160000160019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159998160026_))
                            (let ((_e160003160029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159998160026_))))
                              (let ((_hd160002160033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160003160029_)))
                                    (_tl160001160036_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160003160029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160001160036_))
                                    (let ((_e160006160039_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160001160036_))))
                                      (let ((_hd160005160043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160006160039_)))
                                            (_tl160004160046_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160006160039_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160004160046_))
                                            ((lambda (_L160049_ _L160051_)
                                               (let ((__tmp161729
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161716
                                                      (let ((__tmp161725
                                                             (let ((__tmp161728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161726
                            (let ((__tmp161727
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161727 '()))))
                       (declare (not safe))
                       (cons __tmp161728 __tmp161726)))
                    (__tmp161717
                     (let ((__tmp161722
                            (let ((__tmp161724
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161723
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160051_ '()))))
                              (declare (not safe))
                              (cons __tmp161724 __tmp161723)))
                           (__tmp161718
                            (let ((__tmp161719
                                   (let ((__tmp161721
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161720
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160049_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161721 __tmp161720))))
                              (declare (not safe))
                              (cons __tmp161719 '()))))
                       (declare (not safe))
                       (cons __tmp161722 __tmp161718))))
                (declare (not safe))
                (cons __tmp161725 __tmp161717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161729
                                                       __tmp161716)))
                                             _hd160005160043_
                                             _hd160002160033_)
                                            (_g159994160012_
                                             _g159995160016_))))
                                    (_g159994160012_ _g159995160016_))))
                            (_g159994160012_ _g159995160016_))))
                    (_g159994160012_ _g159995160016_)))))
        (_g159993160067_ _$stx159990_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160071_)
      (let* ((_g160075160093_
              (lambda (_g160076160089_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160076160089_))))
             (_g160074160148_
              (lambda (_g160076160097_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160076160097_))
                    (let ((_e160081160100_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160076160097_))))
                      (let ((_hd160080160104_
                             (let ()
                               (declare (not safe))
                               (##car _e160081160100_)))
                            (_tl160079160107_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160081160100_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160079160107_))
                            (let ((_e160084160110_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160079160107_))))
                              (let ((_hd160083160114_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160084160110_)))
                                    (_tl160082160117_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160084160110_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160082160117_))
                                    (let ((_e160087160120_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160082160117_))))
                                      (let ((_hd160086160124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160087160120_)))
                                            (_tl160085160127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160087160120_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160085160127_))
                                            ((lambda (_L160130_ _L160132_)
                                               (let ((__tmp161743
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161730
                                                      (let ((__tmp161739
                                                             (let ((__tmp161742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161740
                            (let ((__tmp161741
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161741 '()))))
                       (declare (not safe))
                       (cons __tmp161742 __tmp161740)))
                    (__tmp161731
                     (let ((__tmp161736
                            (let ((__tmp161738
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161737
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160132_ '()))))
                              (declare (not safe))
                              (cons __tmp161738 __tmp161737)))
                           (__tmp161732
                            (let ((__tmp161733
                                   (let ((__tmp161735
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161734
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160130_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161735 __tmp161734))))
                              (declare (not safe))
                              (cons __tmp161733 '()))))
                       (declare (not safe))
                       (cons __tmp161736 __tmp161732))))
                (declare (not safe))
                (cons __tmp161739 __tmp161731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161743
                                                       __tmp161730)))
                                             _hd160086160124_
                                             _hd160083160114_)
                                            (_g160075160093_
                                             _g160076160097_))))
                                    (_g160075160093_ _g160076160097_))))
                            (_g160075160093_ _g160076160097_))))
                    (_g160075160093_ _g160076160097_)))))
        (_g160074160148_ _$stx160071_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160152_)
      (let* ((___stx161339161340_ _$stx160152_)
             (_g160159160230_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161339161340_)))))
        (let ((___kont161342161343_
               (lambda (_L160521_ _L160523_)
                 (let ((__tmp161749
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161744
                        (let ((__tmp161745
                               (let ((__tmp161746
                                      (let ((__tmp161748
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161747
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160521_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161748 __tmp161747))))
                                 (declare (not safe))
                                 (cons __tmp161746 '()))))
                          (declare (not safe))
                          (cons _L160523_ __tmp161745))))
                   (declare (not safe))
                   (cons __tmp161749 __tmp161744))))
              (___kont161344161345_
               (lambda (_L160440_ _L160442_)
                 (let ((__tmp161758
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161750
                        (let ((__tmp161751
                               (let ((__tmp161752
                                      (let ((__tmp161757
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161753
                                             (let ((__tmp161754
                                                    (lambda (_g160461160464_
                                                             _g160462160467_)
                                                      (let ((__tmp161755
                                                             (let ((__tmp161756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160461160464_ __tmp161756))))
                (declare (not safe))
                (cons __tmp161755 _g160462160467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161754
                                                       '()
                                                       _L160440_))))
                                        (declare (not safe))
                                        (cons __tmp161757 __tmp161753))))
                                 (declare (not safe))
                                 (cons __tmp161752 '()))))
                          (declare (not safe))
                          (cons _L160442_ __tmp161751))))
                   (declare (not safe))
                   (cons __tmp161758 __tmp161750))))
              (___kont161348161349_
               (lambda (_L160352_ _L160354_)
                 (let ((__tmp161765
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161759
                        (let ((__tmp161760
                               (let ((__tmp161761
                                      (let ((__tmp161764
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161762
                                             (let ((__tmp161763
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160352_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161763))))
                                        (declare (not safe))
                                        (cons __tmp161764 __tmp161762))))
                                 (declare (not safe))
                                 (cons __tmp161761 '()))))
                          (declare (not safe))
                          (cons _L160354_ __tmp161760))))
                   (declare (not safe))
                   (cons __tmp161765 __tmp161759))))
              (___kont161350161351_
               (lambda (_L160287_ _L160289_)
                 (let ((__tmp161775
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161766
                        (let ((__tmp161767
                               (let ((__tmp161768
                                      (let ((__tmp161774
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161769
                                             (let ((__tmp161770
                                                    (let ((__tmp161771
                                                           (lambda (_g160306160309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160307160312_)
                     (let ((__tmp161772
                            (let ((__tmp161773
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160306160309_ __tmp161773))))
                       (declare (not safe))
                       (cons __tmp161772 _g160307160312_)))))
              (declare (not safe))
              (foldr1 __tmp161771 '() _L160287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161770))))
                                        (declare (not safe))
                                        (cons __tmp161774 __tmp161769))))
                                 (declare (not safe))
                                 (cons __tmp161768 '()))))
                          (declare (not safe))
                          (cons _L160289_ __tmp161767))))
                   (declare (not safe))
                   (cons __tmp161775 __tmp161766)))))
          (let* ((___match161458161459_
                  (lambda (_e160212160237_
                           _hd160211160241_
                           _tl160210160244_
                           _e160215160247_
                           _hd160214160251_
                           _tl160213160254_
                           ___splice161352161353_
                           _target160216160257_
                           _tl160218160260_)
                    (letrec ((_loop160219160263_
                              (lambda (_hd160217160267_ _arity160223160270_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160217160267_))
                                    (let ((_e160220160273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160217160267_))))
                                      (let ((_lp-tl160222160280_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160220160273_)))
                                            (_lp-hd160221160277_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160220160273_))))
                                        (_loop160219160263_
                                         _lp-tl160222160280_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160221160277_
                                                 _arity160223160270_)))))
                                    (let ((_arity160224160283_
                                           (reverse _arity160223160270_)))
                                      (___kont161350161351_
                                       _arity160224160283_
                                       _hd160214160251_))))))
                      (_loop160219160263_ _target160216160257_ '()))))
                 (___match161418161419_
                  (lambda (_e160180160376_
                           _hd160179160380_
                           _tl160178160383_
                           _e160183160386_
                           _hd160182160390_
                           _tl160181160393_
                           _e160186160396_
                           _hd160185160400_
                           _tl160184160403_
                           _e160187160406_
                           ___splice161346161347_
                           _target160188160410_
                           _tl160190160413_)
                    (letrec ((_loop160191160416_
                              (lambda (_hd160189160420_ _arity160195160423_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160189160420_))
                                    (let ((_e160192160426_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160189160420_))))
                                      (let ((_lp-tl160194160433_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160192160426_)))
                                            (_lp-hd160193160430_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160192160426_))))
                                        (_loop160191160416_
                                         _lp-tl160194160433_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160193160430_
                                                 _arity160195160423_)))))
                                    (let ((_arity160196160436_
                                           (reverse _arity160195160423_)))
                                      (___kont161344161345_
                                       _arity160196160436_
                                       _hd160182160390_))))))
                      (_loop160191160416_ _target160188160410_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161339161340_))
                (let ((_e160165160477_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161339161340_))))
                  (let ((_tl160163160484_
                         (let () (declare (not safe)) (##cdr _e160165160477_)))
                        (_hd160164160481_
                         (let ()
                           (declare (not safe))
                           (##car _e160165160477_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160163160484_))
                        (let ((_e160168160487_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160163160484_))))
                          (let ((_tl160166160494_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160168160487_)))
                                (_hd160167160491_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160168160487_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160166160494_))
                                (let ((_e160171160497_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160166160494_))))
                                  (let ((_tl160169160504_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160171160497_)))
                                        (_hd160170160501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160171160497_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160170160501_))
                                        (let ((_e160172160507_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160170160501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160172160507_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160169160504_))
                                                  (let ((_e160175160511_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160169160504_))))
                                                    (let ((_tl160173160518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160175160511_)))
                                                          (_hd160174160515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160175160511_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160173160518_))
                                                          (___kont161342161343_
                                                           _hd160174160515_
                                                           _hd160167160491_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160169160504_))
                      (let ((___splice161346161347_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160169160504_ '0))))
                        (let ((_tl160190160413_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161346161347_ '1)))
                              (_target160188160410_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161346161347_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160190160413_))
                              (___match161418161419_
                               _e160165160477_
                               _hd160164160481_
                               _tl160163160484_
                               _e160168160487_
                               _hd160167160491_
                               _tl160166160494_
                               _e160171160497_
                               _hd160170160501_
                               _tl160169160504_
                               _e160172160507_
                               ___splice161346161347_
                               _target160188160410_
                               _tl160190160413_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160166160494_))
                                  (let ((___splice161352161353_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160166160494_
                                            '0))))
                                    (let ((_tl160218160260_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161352161353_
                                              '1)))
                                          (_target160216160257_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161352161353_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160218160260_))
                                          (___match161458161459_
                                           _e160165160477_
                                           _hd160164160481_
                                           _tl160163160484_
                                           _e160168160487_
                                           _hd160167160491_
                                           _tl160166160494_
                                           ___splice161352161353_
                                           _target160216160257_
                                           _tl160218160260_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160159160230_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160159160230_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160166160494_))
                          (let ((___splice161352161353_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160166160494_
                                    '0))))
                            (let ((_tl160218160260_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161352161353_ '1)))
                                  (_target160216160257_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161352161353_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160218160260_))
                                  (___match161458161459_
                                   _e160165160477_
                                   _hd160164160481_
                                   _tl160163160484_
                                   _e160168160487_
                                   _hd160167160491_
                                   _tl160166160494_
                                   ___splice161352161353_
                                   _target160216160257_
                                   _tl160218160260_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160159160230_)))))
                          (let () (declare (not safe)) (_g160159160230_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160169160504_))
                                                      (let ((___splice161346161347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160169160504_ '0))))
                (let ((_tl160190160413_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161346161347_ '1)))
                      (_target160188160410_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161346161347_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160190160413_))
                      (___match161418161419_
                       _e160165160477_
                       _hd160164160481_
                       _tl160163160484_
                       _e160168160487_
                       _hd160167160491_
                       _tl160166160494_
                       _e160171160497_
                       _hd160170160501_
                       _tl160169160504_
                       _e160172160507_
                       ___splice161346161347_
                       _target160188160410_
                       _tl160190160413_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160169160504_))
                          (___kont161348161349_
                           _hd160170160501_
                           _hd160167160491_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160166160494_))
                              (let ((___splice161352161353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160166160494_
                                        '0))))
                                (let ((_tl160218160260_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161352161353_
                                          '1)))
                                      (_target160216160257_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161352161353_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160218160260_))
                                      (___match161458161459_
                                       _e160165160477_
                                       _hd160164160481_
                                       _tl160163160484_
                                       _e160168160487_
                                       _hd160167160491_
                                       _tl160166160494_
                                       ___splice161352161353_
                                       _target160216160257_
                                       _tl160218160260_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160159160230_)))))
                              (let ()
                                (declare (not safe))
                                (_g160159160230_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160169160504_))
                  (___kont161348161349_ _hd160170160501_ _hd160167160491_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160166160494_))
                      (let ((___splice161352161353_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160166160494_ '0))))
                        (let ((_tl160218160260_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161352161353_ '1)))
                              (_target160216160257_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161352161353_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160218160260_))
                              (___match161458161459_
                               _e160165160477_
                               _hd160164160481_
                               _tl160163160484_
                               _e160168160487_
                               _hd160167160491_
                               _tl160166160494_
                               ___splice161352161353_
                               _target160216160257_
                               _tl160218160260_)
                              (let ()
                                (declare (not safe))
                                (_g160159160230_)))))
                      (let () (declare (not safe)) (_g160159160230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160169160504_))
                                                  (___kont161348161349_
                                                   _hd160170160501_
                                                   _hd160167160491_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160166160494_))
                                                      (let ((___splice161352161353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160166160494_ '0))))
                (let ((_tl160218160260_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161352161353_ '1)))
                      (_target160216160257_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161352161353_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160218160260_))
                      (___match161458161459_
                       _e160165160477_
                       _hd160164160481_
                       _tl160163160484_
                       _e160168160487_
                       _hd160167160491_
                       _tl160166160494_
                       ___splice161352161353_
                       _target160216160257_
                       _tl160218160260_)
                      (let () (declare (not safe)) (_g160159160230_)))))
              (let () (declare (not safe)) (_g160159160230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160169160504_))
                                            (___kont161348161349_
                                             _hd160170160501_
                                             _hd160167160491_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160166160494_))
                                                (let ((___splice161352161353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160166160494_
                                                          '0))))
                                                  (let ((_tl160218160260_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161352161353_
                                                            '1)))
                                                        (_target160216160257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161352161353_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160218160260_))
                                                        (___match161458161459_
                                                         _e160165160477_
                                                         _hd160164160481_
                                                         _tl160163160484_
                                                         _e160168160487_
                                                         _hd160167160491_
                                                         _tl160166160494_
                                                         ___splice161352161353_
                                                         _target160216160257_
                                                         _tl160218160260_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160159160230_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160159160230_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160166160494_))
                                    (let ((___splice161352161353_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160166160494_
                                              '0))))
                                      (let ((_tl160218160260_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161352161353_
                                                '1)))
                                            (_target160216160257_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161352161353_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160218160260_))
                                            (___match161458161459_
                                             _e160165160477_
                                             _hd160164160481_
                                             _tl160163160484_
                                             _e160168160487_
                                             _hd160167160491_
                                             _tl160166160494_
                                             ___splice161352161353_
                                             _target160216160257_
                                             _tl160218160260_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160159160230_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160159160230_))))))
                        (let () (declare (not safe)) (_g160159160230_)))))
                (let () (declare (not safe)) (_g160159160230_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160547_)
      (let* ((___stx161461161462_ _$stx160547_)
             (_g160552160587_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161461161462_)))))
        (let ((___kont161464161465_
               (lambda (_L160709_ _L160711_)
                 (let ((__tmp161781
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161776
                        (let ((__tmp161777
                               (let ((__tmp161778
                                      (let ((__tmp161780
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161779
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160709_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161780 __tmp161779))))
                                 (declare (not safe))
                                 (cons __tmp161778 '()))))
                          (declare (not safe))
                          (cons _L160711_ __tmp161777))))
                   (declare (not safe))
                   (cons __tmp161781 __tmp161776))))
              (___kont161466161467_
               (lambda (_L160644_ _L160646_)
                 (let ((__tmp161790
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161782
                        (let ((__tmp161783
                               (let ((__tmp161784
                                      (let ((__tmp161789
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161785
                                             (let ((__tmp161786
                                                    (lambda (_g160663160666_
                                                             _g160664160669_)
                                                      (let ((__tmp161787
                                                             (let ((__tmp161788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160663160666_ __tmp161788))))
                (declare (not safe))
                (cons __tmp161787 _g160664160669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161786
                                                       '()
                                                       _L160644_))))
                                        (declare (not safe))
                                        (cons __tmp161789 __tmp161785))))
                                 (declare (not safe))
                                 (cons __tmp161784 '()))))
                          (declare (not safe))
                          (cons _L160646_ __tmp161783))))
                   (declare (not safe))
                   (cons __tmp161790 __tmp161782)))))
          (let ((___match161510161511_
                 (lambda (_e160569160594_
                          _hd160568160598_
                          _tl160567160601_
                          _e160572160604_
                          _hd160571160608_
                          _tl160570160611_
                          ___splice161468161469_
                          _target160573160614_
                          _tl160575160617_)
                   (letrec ((_loop160576160620_
                             (lambda (_hd160574160624_ _arity160580160627_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160574160624_))
                                   (let ((_e160577160630_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160574160624_))))
                                     (let ((_lp-tl160579160637_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160577160630_)))
                                           (_lp-hd160578160634_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160577160630_))))
                                       (_loop160576160620_
                                        _lp-tl160579160637_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160578160634_
                                                _arity160580160627_)))))
                                   (let ((_arity160581160640_
                                          (reverse _arity160580160627_)))
                                     (___kont161466161467_
                                      _arity160581160640_
                                      _hd160571160608_))))))
                     (_loop160576160620_ _target160573160614_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161461161462_))
                (let ((_e160558160679_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161461161462_))))
                  (let ((_tl160556160686_
                         (let () (declare (not safe)) (##cdr _e160558160679_)))
                        (_hd160557160683_
                         (let ()
                           (declare (not safe))
                           (##car _e160558160679_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160556160686_))
                        (let ((_e160561160689_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160556160686_))))
                          (let ((_tl160559160696_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160561160689_)))
                                (_hd160560160693_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160561160689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160559160696_))
                                (let ((_e160564160699_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160559160696_))))
                                  (let ((_tl160562160706_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160564160699_)))
                                        (_hd160563160703_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160564160699_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160562160706_))
                                        (___kont161464161465_
                                         _hd160563160703_
                                         _hd160560160693_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160559160696_))
                                            (let ((___splice161468161469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160559160696_
                                                      '0))))
                                              (let ((_tl160575160617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161468161469_
                                                        '1)))
                                                    (_target160573160614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161468161469_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160575160617_))
                                                    (___match161510161511_
                                                     _e160558160679_
                                                     _hd160557160683_
                                                     _tl160556160686_
                                                     _e160561160689_
                                                     _hd160560160693_
                                                     _tl160559160696_
                                                     ___splice161468161469_
                                                     _target160573160614_
                                                     _tl160575160617_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160552160587_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160552160587_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160559160696_))
                                    (let ((___splice161468161469_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160559160696_
                                              '0))))
                                      (let ((_tl160575160617_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161468161469_
                                                '1)))
                                            (_target160573160614_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161468161469_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160575160617_))
                                            (___match161510161511_
                                             _e160558160679_
                                             _hd160557160683_
                                             _tl160556160686_
                                             _e160561160689_
                                             _hd160560160693_
                                             _tl160559160696_
                                             ___splice161468161469_
                                             _target160573160614_
                                             _tl160575160617_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160552160587_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160552160587_))))))
                        (let () (declare (not safe)) (_g160552160587_)))))
                (let () (declare (not safe)) (_g160552160587_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160731_)
      (let* ((_g160735160770_
              (lambda (_g160736160766_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160736160766_))))
             (_g160734160898_
              (lambda (_g160736160774_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160736160774_))
                    (let ((_e160741160777_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160736160774_))))
                      (let ((_hd160740160781_
                             (let ()
                               (declare (not safe))
                               (##car _e160741160777_)))
                            (_tl160739160784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160741160777_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160739160784_))
                            (let ((_g161791_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160739160784_
                                      '0))))
                              (begin
                                (let ((_g161792_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161791_)
                                             (##vector-length _g161791_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161792_ 2)))
                                      (error "Context expects 2 values"
                                             _g161792_)))
                                (let ((_target160742160787_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161791_ 0)))
                                      (_tl160744160790_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161791_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160744160790_))
                                      (letrec ((_loop160745160793_
                                                (lambda (_hd160743160797_
                                                         _arity160749160800_
                                                         _prim160750160802_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160743160797_))
                                                      (let ((_e160746160805_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160743160797_))))
                (let ((_lp-hd160747160809_
                       (let () (declare (not safe)) (##car _e160746160805_)))
                      (_lp-tl160748160812_
                       (let () (declare (not safe)) (##cdr _e160746160805_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160747160809_))
                      (let ((_e160755160815_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160747160809_))))
                        (let ((_hd160754160819_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160755160815_)))
                              (_tl160753160822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160755160815_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160753160822_))
                              (let ((_g161801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160753160822_
                                        '0))))
                                (begin
                                  (let ((_g161802_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161801_)
                                               (##vector-length _g161801_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161802_ 2)))
                                        (error "Context expects 2 values"
                                               _g161802_)))
                                  (let ((_target160756160825_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161801_ 0)))
                                        (_tl160758160828_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161801_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160758160828_))
                                        (letrec ((_loop160759160831_
                                                  (lambda (_hd160757160835_
                                                           _arity160763160838_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160757160835_))
                                                        (let ((_e160760160841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160757160835_))))
                  (let ((_lp-hd160761160845_
                         (let () (declare (not safe)) (##car _e160760160841_)))
                        (_lp-tl160762160848_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160760160841_))))
                    (_loop160759160831_
                     _lp-tl160762160848_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160761160845_ _arity160763160838_)))))
                (let ((_arity160764160851_ (reverse _arity160763160838_)))
                  (_loop160745160793_
                   _lp-tl160748160812_
                   (let ()
                     (declare (not safe))
                     (cons _arity160764160851_ _arity160749160800_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160754160819_ _prim160750160802_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160759160831_
                                           _target160756160825_
                                           '()))
                                        (_g160735160770_ _g160736160774_)))))
                              (_g160735160770_ _g160736160774_))))
                      (_g160735160770_ _g160736160774_))))
              (let ((_arity160751160855_ (reverse _arity160749160800_))
                    (_prim160752160858_ (reverse _prim160750160802_)))
                ((lambda (_L160861_ _L160863_)
                   (let ((__tmp161800
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161793
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160861_
                               _L160863_))
                            (let ((__tmp161794
                                   (lambda (_g160878160884_
                                            _g160879160887_
                                            _g160880160889_)
                                     (let ((__tmp161795
                                            (let ((__tmp161799
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161796
                                                   (let ((__tmp161797
                                                          (let ((__tmp161798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160881160892_ _g160882160895_)
                           (let ()
                             (declare (not safe))
                             (cons _g160881160892_ _g160882160895_)))))
                    (declare (not safe))
                    (foldr1 __tmp161798 '() _g160878160884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160879160887_
                                                           __tmp161797))))
                                              (declare (not safe))
                                              (cons __tmp161799 __tmp161796))))
                                       (declare (not safe))
                                       (cons __tmp161795 _g160880160889_)))))
                              (declare (not safe))
                              (foldr2 __tmp161794 '() _L160861_ _L160863_)))))
                     (declare (not safe))
                     (cons __tmp161800 __tmp161793)))
                 _arity160751160855_
                 _prim160752160858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160745160793_
                                         _target160742160787_
                                         '()
                                         '()))
                                      (_g160735160770_ _g160736160774_)))))
                            (_g160735160770_ _g160736160774_))))
                    (_g160735160770_ _g160736160774_)))))
        (_g160734160898_ _$stx160731_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160904_)
      (let* ((_g160908160943_
              (lambda (_g160909160939_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160909160939_))))
             (_g160907161071_
              (lambda (_g160909160947_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160909160947_))
                    (let ((_e160914160950_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160909160947_))))
                      (let ((_hd160913160954_
                             (let ()
                               (declare (not safe))
                               (##car _e160914160950_)))
                            (_tl160912160957_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160914160950_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160912160957_))
                            (let ((_g161803_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160912160957_
                                      '0))))
                              (begin
                                (let ((_g161804_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161803_)
                                             (##vector-length _g161803_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161804_ 2)))
                                      (error "Context expects 2 values"
                                             _g161804_)))
                                (let ((_target160915160960_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161803_ 0)))
                                      (_tl160917160963_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161803_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160917160963_))
                                      (letrec ((_loop160918160966_
                                                (lambda (_hd160916160970_
                                                         _arity160922160973_
                                                         _prim160923160975_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160916160970_))
                                                      (let ((_e160919160978_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160916160970_))))
                (let ((_lp-hd160920160982_
                       (let () (declare (not safe)) (##car _e160919160978_)))
                      (_lp-tl160921160985_
                       (let () (declare (not safe)) (##cdr _e160919160978_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160920160982_))
                      (let ((_e160928160988_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160920160982_))))
                        (let ((_hd160927160992_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160928160988_)))
                              (_tl160926160995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160928160988_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160926160995_))
                              (let ((_g161813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160926160995_
                                        '0))))
                                (begin
                                  (let ((_g161814_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161813_)
                                               (##vector-length _g161813_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161814_ 2)))
                                        (error "Context expects 2 values"
                                               _g161814_)))
                                  (let ((_target160929160998_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161813_ 0)))
                                        (_tl160931161001_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161813_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160931161001_))
                                        (letrec ((_loop160932161004_
                                                  (lambda (_hd160930161008_
                                                           _arity160936161011_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160930161008_))
                                                        (let ((_e160933161014_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160930161008_))))
                  (let ((_lp-hd160934161018_
                         (let () (declare (not safe)) (##car _e160933161014_)))
                        (_lp-tl160935161021_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160933161014_))))
                    (_loop160932161004_
                     _lp-tl160935161021_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160934161018_ _arity160936161011_)))))
                (let ((_arity160937161024_ (reverse _arity160936161011_)))
                  (_loop160918160966_
                   _lp-tl160921160985_
                   (let ()
                     (declare (not safe))
                     (cons _arity160937161024_ _arity160922160973_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160927160992_ _prim160923160975_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160932161004_
                                           _target160929160998_
                                           '()))
                                        (_g160908160943_ _g160909160947_)))))
                              (_g160908160943_ _g160909160947_))))
                      (_g160908160943_ _g160909160947_))))
              (let ((_arity160924161028_ (reverse _arity160922160973_))
                    (_prim160925161031_ (reverse _prim160923160975_)))
                ((lambda (_L161034_ _L161036_)
                   (let ((__tmp161812
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161805
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161034_
                               _L161036_))
                            (let ((__tmp161806
                                   (lambda (_g161051161057_
                                            _g161052161060_
                                            _g161053161062_)
                                     (let ((__tmp161807
                                            (let ((__tmp161811
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161808
                                                   (let ((__tmp161809
                                                          (let ((__tmp161810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161054161065_ _g161055161068_)
                           (let ()
                             (declare (not safe))
                             (cons _g161054161065_ _g161055161068_)))))
                    (declare (not safe))
                    (foldr1 __tmp161810 '() _g161051161057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161052161060_
                                                           __tmp161809))))
                                              (declare (not safe))
                                              (cons __tmp161811 __tmp161808))))
                                       (declare (not safe))
                                       (cons __tmp161807 _g161053161062_)))))
                              (declare (not safe))
                              (foldr2 __tmp161806 '() _L161034_ _L161036_)))))
                     (declare (not safe))
                     (cons __tmp161812 __tmp161805)))
                 _arity160924161028_
                 _prim160925161031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160918160966_
                                         _target160915160960_
                                         '()
                                         '()))
                                      (_g160908160943_ _g160909160947_)))))
                            (_g160908160943_ _g160909160947_))))
                    (_g160908160943_ _g160909160947_)))))
        (_g160907161071_ _$stx160904_)))))
