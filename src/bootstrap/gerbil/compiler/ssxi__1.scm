(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157965_)
      (let* ((_g157969157987_
              (lambda (_g157970157983_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157970157983_))))
             (_g157968158042_
              (lambda (_g157970157991_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157970157991_))
                    (let ((_e157975157994_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157970157991_))))
                      (let ((_hd157974157998_
                             (let ()
                               (declare (not safe))
                               (##car _e157975157994_)))
                            (_tl157973158001_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157975157994_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157973158001_))
                            (let ((_e157978158004_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157973158001_))))
                              (let ((_hd157977158008_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157978158004_)))
                                    (_tl157976158011_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157978158004_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157976158011_))
                                    (let ((_e157981158014_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157976158011_))))
                                      (let ((_hd157980158018_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157981158014_)))
                                            (_tl157979158021_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157981158014_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157979158021_))
                                            ((lambda (_L158024_ _L158026_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158026_))
                                                   (let ((__tmp161506
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161501
                                                          (let ((__tmp161503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161505
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161504
                                (let ()
                                  (declare (not safe))
                                  (cons _L158026_ '()))))
                           (declare (not safe))
                           (cons __tmp161505 __tmp161504)))
                        (__tmp161502
                         (let () (declare (not safe)) (cons _L158024_ '()))))
                    (declare (not safe))
                    (cons __tmp161503 __tmp161502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161506
                                                           __tmp161501))
                                                   (_g157969157987_
                                                    _g157970157991_)))
                                             _hd157980158018_
                                             _hd157977158008_)
                                            (_g157969157987_
                                             _g157970157991_))))
                                    (_g157969157987_ _g157970157991_))))
                            (_g157969157987_ _g157970157991_))))
                    (_g157969157987_ _g157970157991_)))))
        (_g157968158042_ _$stx157965_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158046_)
      (let* ((_g158050158079_
              (lambda (_g158051158075_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158051158075_))))
             (_g158049158179_
              (lambda (_g158051158083_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158051158083_))
                    (let ((_e158056158086_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158051158083_))))
                      (let ((_hd158055158090_
                             (let ()
                               (declare (not safe))
                               (##car _e158056158086_)))
                            (_tl158054158093_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158056158086_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158054158093_))
                            (let ((_g161507_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158054158093_
                                      '0))))
                              (begin
                                (let ((_g161508_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161507_)
                                             (##vector-length _g161507_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161508_ 2)))
                                      (error "Context expects 2 values"
                                             _g161508_)))
                                (let ((_target158057158096_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161507_ 0)))
                                      (_tl158059158099_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161507_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158059158099_))
                                      (letrec ((_loop158060158102_
                                                (lambda (_hd158058158106_
                                                         _type158064158109_
                                                         _symbol158065158111_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158058158106_))
                                                      (let ((_e158061158114_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158058158106_))))
                (let ((_lp-hd158062158118_
                       (let () (declare (not safe)) (##car _e158061158114_)))
                      (_lp-tl158063158121_
                       (let () (declare (not safe)) (##cdr _e158061158114_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158062158118_))
                      (let ((_e158070158124_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158062158118_))))
                        (let ((_hd158069158128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158070158124_)))
                              (_tl158068158131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158070158124_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158068158131_))
                              (let ((_e158073158134_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158068158131_))))
                                (let ((_hd158072158138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158073158134_)))
                                      (_tl158071158141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158073158134_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158071158141_))
                                      (_loop158060158102_
                                       _lp-tl158063158121_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158072158138_
                                               _type158064158109_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158069158128_
                                               _symbol158065158111_)))
                                      (_g158050158079_ _g158051158083_))))
                              (_g158050158079_ _g158051158083_))))
                      (_g158050158079_ _g158051158083_))))
              (let ((_type158066158144_ (reverse _type158064158109_))
                    (_symbol158067158147_ (reverse _symbol158065158111_)))
                ((lambda (_L158150_ _L158152_)
                   (let ((__tmp161515
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161509
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158150_
                               _L158152_))
                            (let ((__tmp161510
                                   (lambda (_g158167158171_
                                            _g158168158174_
                                            _g158169158176_)
                                     (let ((__tmp161511
                                            (let ((__tmp161514
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161512
                                                   (let ((__tmp161513
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158167158171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158168158174_
                                                           __tmp161513))))
                                              (declare (not safe))
                                              (cons __tmp161514 __tmp161512))))
                                       (declare (not safe))
                                       (cons __tmp161511 _g158169158176_)))))
                              (declare (not safe))
                              (foldr2 __tmp161510 '() _L158150_ _L158152_)))))
                     (declare (not safe))
                     (cons __tmp161515 __tmp161509)))
                 _type158066158144_
                 _symbol158067158147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158060158102_
                                         _target158057158096_
                                         '()
                                         '()))
                                      (_g158050158079_ _g158051158083_)))))
                            (_g158050158079_ _g158051158083_))))
                    (_g158050158079_ _g158051158083_)))))
        (_g158049158179_ _$stx158046_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158184_)
      (let* ((___stx161066161067_ _$stx158184_)
             (_g158189158231_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161066161067_)))))
        (let ((___kont161069161070_
               (lambda (_L158359_ _L158361_ _L158362_ _L158363_)
                 (let ((__tmp161529
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161516
                        (let ((__tmp161526
                               (let ((__tmp161528
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161527
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158363_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161528 __tmp161527)))
                              (__tmp161517
                               (let ((__tmp161523
                                      (let ((__tmp161525
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161524
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158362_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161525 __tmp161524)))
                                     (__tmp161518
                                      (let ((__tmp161520
                                             (let ((__tmp161522
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161521
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158361_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161522 __tmp161521)))
                                            (__tmp161519
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158359_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161520 __tmp161519))))
                                 (declare (not safe))
                                 (cons __tmp161523 __tmp161518))))
                          (declare (not safe))
                          (cons __tmp161526 __tmp161517))))
                   (declare (not safe))
                   (cons __tmp161529 __tmp161516))))
              (___kont161071161072_
               (lambda (_L158278_ _L158280_ _L158281_ _L158282_)
                 (let ((__tmp161530
                        (let ((__tmp161531
                               (let ((__tmp161532
                                      (let ((__tmp161533
                                             (let ((__tmp161534
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161534 '()))))
                                        (declare (not safe))
                                        (cons _L158278_ __tmp161533))))
                                 (declare (not safe))
                                 (cons _L158280_ __tmp161532))))
                          (declare (not safe))
                          (cons _L158281_ __tmp161531))))
                   (declare (not safe))
                   (cons _L158282_ __tmp161530)))))
          (let ((___match161105161106_
                 (lambda (_e158197158309_
                          _hd158196158313_
                          _tl158195158316_
                          _e158200158319_
                          _hd158199158323_
                          _tl158198158326_
                          _e158203158329_
                          _hd158202158333_
                          _tl158201158336_
                          _e158206158339_
                          _hd158205158343_
                          _tl158204158346_
                          _e158209158349_
                          _hd158208158353_
                          _tl158207158356_)
                   (let ((_L158359_ _hd158208158353_)
                         (_L158361_ _hd158205158343_)
                         (_L158362_ _hd158202158333_)
                         (_L158363_ _hd158199158323_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158363_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158362_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158361_)))
                         (___kont161069161070_
                          _L158359_
                          _L158361_
                          _L158362_
                          _L158363_)
                         (let () (declare (not safe)) (_g158189158231_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161066161067_))
                (let ((_e158197158309_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161066161067_))))
                  (let ((_tl158195158316_
                         (let () (declare (not safe)) (##cdr _e158197158309_)))
                        (_hd158196158313_
                         (let ()
                           (declare (not safe))
                           (##car _e158197158309_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158195158316_))
                        (let ((_e158200158319_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158195158316_))))
                          (let ((_tl158198158326_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158200158319_)))
                                (_hd158199158323_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158200158319_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158198158326_))
                                (let ((_e158203158329_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158198158326_))))
                                  (let ((_tl158201158336_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158203158329_)))
                                        (_hd158202158333_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158203158329_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158201158336_))
                                        (let ((_e158206158339_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158201158336_))))
                                          (let ((_tl158204158346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158206158339_)))
                                                (_hd158205158343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158206158339_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158204158346_))
                                                (let ((_e158209158349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158204158346_))))
                                                  (let ((_tl158207158356_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158209158349_)))
                                                        (_hd158208158353_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158209158349_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158207158356_))
                                                        (___match161105161106_
                                                         _e158197158309_
                                                         _hd158196158313_
                                                         _tl158195158316_
                                                         _e158200158319_
                                                         _hd158199158323_
                                                         _tl158198158326_
                                                         _e158203158329_
                                                         _hd158202158333_
                                                         _tl158201158336_
                                                         _e158206158339_
                                                         _hd158205158343_
                                                         _tl158204158346_
                                                         _e158209158349_
                                                         _hd158208158353_
                                                         _tl158207158356_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158189158231_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158204158346_))
                                                    (___kont161071161072_
                                                     _hd158205158343_
                                                     _hd158202158333_
                                                     _hd158199158323_
                                                     _hd158196158313_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158189158231_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158189158231_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158189158231_)))))
                        (let () (declare (not safe)) (_g158189158231_)))))
                (let () (declare (not safe)) (_g158189158231_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158388_)
      (let* ((_g158392158427_
              (lambda (_g158393158423_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158393158423_))))
             (_g158391158546_
              (lambda (_g158393158431_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158393158431_))
                    (let ((_e158399158434_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158393158431_))))
                      (let ((_hd158398158438_
                             (let ()
                               (declare (not safe))
                               (##car _e158399158434_)))
                            (_tl158397158441_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158399158434_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158397158441_))
                            (let ((_g161535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158397158441_
                                      '0))))
                              (begin
                                (let ((_g161536_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161535_)
                                             (##vector-length _g161535_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161536_ 2)))
                                      (error "Context expects 2 values"
                                             _g161536_)))
                                (let ((_target158400158444_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161535_ 0)))
                                      (_tl158402158447_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161535_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158402158447_))
                                      (letrec ((_loop158403158450_
                                                (lambda (_hd158401158454_
                                                         _symbol158407158457_
                                                         _method158408158459_
                                                         _type-t158409158461_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158401158454_))
                                                      (let ((_e158404158464_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158401158454_))))
                (let ((_lp-hd158405158468_
                       (let () (declare (not safe)) (##car _e158404158464_)))
                      (_lp-tl158406158471_
                       (let () (declare (not safe)) (##cdr _e158404158464_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158405158468_))
                      (let ((_e158415158474_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158405158468_))))
                        (let ((_hd158414158478_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158415158474_)))
                              (_tl158413158481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158415158474_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158413158481_))
                              (let ((_e158418158484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158413158481_))))
                                (let ((_hd158417158488_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158418158484_)))
                                      (_tl158416158491_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158418158484_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158416158491_))
                                      (let ((_e158421158494_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158416158491_))))
                                        (let ((_hd158420158498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158421158494_)))
                                              (_tl158419158501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158421158494_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158419158501_))
                                              (_loop158403158450_
                                               _lp-tl158406158471_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158420158498_
                                                       _symbol158407158457_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158417158488_
                                                       _method158408158459_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158414158478_
                                                       _type-t158409158461_)))
                                              (_g158392158427_
                                               _g158393158431_))))
                                      (_g158392158427_ _g158393158431_))))
                              (_g158392158427_ _g158393158431_))))
                      (_g158392158427_ _g158393158431_))))
              (let ((_symbol158410158504_ (reverse _symbol158407158457_))
                    (_method158411158507_ (reverse _method158408158459_))
                    (_type-t158412158509_ (reverse _type-t158409158461_)))
                ((lambda (_L158512_ _L158514_ _L158515_)
                   (let ((__tmp161544
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161537
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158512_
                               _L158514_
                               _L158515_))
                            (let ((__tmp161538
                                   (lambda (_g158531158536_
                                            _g158532158539_
                                            _g158533158541_
                                            _g158534158543_)
                                     (let ((__tmp161539
                                            (let ((__tmp161543
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161540
                                                   (let ((__tmp161541
                                                          (let ((__tmp161542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158531158536_ '()))))
                    (declare (not safe))
                    (cons _g158532158539_ __tmp161542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158533158541_
                                                           __tmp161541))))
                                              (declare (not safe))
                                              (cons __tmp161543 __tmp161540))))
                                       (declare (not safe))
                                       (cons __tmp161539 _g158534158543_)))))
                              (declare (not safe))
                              (foldr* __tmp161538
                                      '()
                                      _L158512_
                                      _L158514_
                                      _L158515_)))))
                     (declare (not safe))
                     (cons __tmp161544 __tmp161537)))
                 _symbol158410158504_
                 _method158411158507_
                 _type-t158412158509_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158403158450_
                                         _target158400158444_
                                         '()
                                         '()
                                         '()))
                                      (_g158392158427_ _g158393158431_)))))
                            (_g158392158427_ _g158393158431_))))
                    (_g158392158427_ _g158393158431_)))))
        (_g158391158546_ _$stx158388_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158551_)
      (let* ((_g158555158588_
              (lambda (_g158556158584_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158556158584_))))
             (_g158554158702_
              (lambda (_g158556158592_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158556158592_))
                    (let ((_e158562158595_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158556158592_))))
                      (let ((_hd158561158599_
                             (let ()
                               (declare (not safe))
                               (##car _e158562158595_)))
                            (_tl158560158602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158562158595_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158560158602_))
                            (let ((_e158565158605_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158560158602_))))
                              (let ((_hd158564158609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158565158605_)))
                                    (_tl158563158612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158565158605_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158563158612_))
                                    (let ((_g161545_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158563158612_
                                              '0))))
                                      (begin
                                        (let ((_g161546_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161545_)
                                                     (##vector-length
                                                      _g161545_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161546_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161546_)))
                                        (let ((_target158566158615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161545_ 0)))
                                              (_tl158568158618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161545_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158568158618_))
                                              (letrec ((_loop158569158621_
                                                        (lambda (_hd158567158625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158573158628_
                         _method158574158630_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158567158625_))
                      (let ((_e158570158633_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158567158625_))))
                        (let ((_lp-hd158571158637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158570158633_)))
                              (_lp-tl158572158640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158570158633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158571158637_))
                              (let ((_e158579158643_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158571158637_))))
                                (let ((_hd158578158647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158579158643_)))
                                      (_tl158577158650_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158579158643_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158577158650_))
                                      (let ((_e158582158653_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158577158650_))))
                                        (let ((_hd158581158657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158582158653_)))
                                              (_tl158580158660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158582158653_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158580158660_))
                                              (_loop158569158621_
                                               _lp-tl158572158640_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158581158657_
                                                       _symbol158573158628_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158578158647_
                                                       _method158574158630_)))
                                              (_g158555158588_
                                               _g158556158592_))))
                                      (_g158555158588_ _g158556158592_))))
                              (_g158555158588_ _g158556158592_))))
                      (let ((_symbol158575158663_
                             (reverse _symbol158573158628_))
                            (_method158576158666_
                             (reverse _method158574158630_)))
                        ((lambda (_L158669_ _L158671_ _L158672_)
                           (let ((__tmp161554
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161547
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158669_
                                       _L158671_))
                                    (let ((__tmp161548
                                           (lambda (_g158690158694_
                                                    _g158691158697_
                                                    _g158692158699_)
                                             (let ((__tmp161549
                                                    (let ((__tmp161553
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161550
                                                           (let ((__tmp161551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161552
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158690158694_ '()))))
                            (declare (not safe))
                            (cons _g158691158697_ __tmp161552))))
                     (declare (not safe))
                     (cons _L158672_ __tmp161551))))
              (declare (not safe))
              (cons __tmp161553 __tmp161550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161549
                                                     _g158692158699_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161548
                                              '()
                                              _L158669_
                                              _L158671_)))))
                             (declare (not safe))
                             (cons __tmp161554 __tmp161547)))
                         _symbol158575158663_
                         _method158576158666_
                         _hd158564158609_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158569158621_
                                                 _target158566158615_
                                                 '()
                                                 '()))
                                              (_g158555158588_
                                               _g158556158592_)))))
                                    (_g158555158588_ _g158556158592_))))
                            (_g158555158588_ _g158556158592_))))
                    (_g158555158588_ _g158556158592_)))))
        (_g158554158702_ _$stx158551_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158707_)
      (let* ((_g158711158725_
              (lambda (_g158712158721_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158712158721_))))
             (_g158710158766_
              (lambda (_g158712158729_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158712158729_))
                    (let ((_e158716158732_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158712158729_))))
                      (let ((_hd158715158736_
                             (let ()
                               (declare (not safe))
                               (##car _e158716158732_)))
                            (_tl158714158739_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158716158732_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158714158739_))
                            (let ((_e158719158742_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158714158739_))))
                              (let ((_hd158718158746_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158719158742_)))
                                    (_tl158717158749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158719158742_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158717158749_))
                                    ((lambda (_L158752_)
                                       (let ((__tmp161559
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161555
                                              (let ((__tmp161556
                                                     (let ((__tmp161558
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161558 __tmp161557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161556 '()))))
                                         (declare (not safe))
                                         (cons __tmp161559 __tmp161555)))
                                     _hd158718158746_)
                                    (_g158711158725_ _g158712158729_))))
                            (_g158711158725_ _g158712158729_))))
                    (_g158711158725_ _g158712158729_)))))
        (_g158710158766_ _$stx158707_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158770_)
      (let* ((_g158774158824_
              (lambda (_g158775158820_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158775158820_))))
             (_g158773158991_
              (lambda (_g158775158828_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158775158828_))
                    (let ((_e158788158831_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158775158828_))))
                      (let ((_hd158787158835_
                             (let ()
                               (declare (not safe))
                               (##car _e158788158831_)))
                            (_tl158786158838_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158788158831_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158786158838_))
                            (let ((_e158791158841_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158786158838_))))
                              (let ((_hd158790158845_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158791158841_)))
                                    (_tl158789158848_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158791158841_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158789158848_))
                                    (let ((_e158794158851_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158789158848_))))
                                      (let ((_hd158793158855_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158794158851_)))
                                            (_tl158792158858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158794158851_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158792158858_))
                                            (let ((_e158797158861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158792158858_))))
                                              (let ((_hd158796158865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158797158861_)))
                                                    (_tl158795158868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158797158861_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158795158868_))
                                                    (let ((_e158800158871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158795158868_))))
                                                      (let ((_hd158799158875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158800158871_)))
                    (_tl158798158878_
                     (let () (declare (not safe)) (##cdr _e158800158871_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158798158878_))
                    (let ((_e158803158881_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158798158878_))))
                      (let ((_hd158802158885_
                             (let ()
                               (declare (not safe))
                               (##car _e158803158881_)))
                            (_tl158801158888_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158803158881_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158801158888_))
                            (let ((_e158806158891_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158801158888_))))
                              (let ((_hd158805158895_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158806158891_)))
                                    (_tl158804158898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158806158891_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158804158898_))
                                    (let ((_e158809158901_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158804158898_))))
                                      (let ((_hd158808158905_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158809158901_)))
                                            (_tl158807158908_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158809158901_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158807158908_))
                                            (let ((_e158812158911_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158807158908_))))
                                              (let ((_hd158811158915_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158812158911_)))
                                                    (_tl158810158918_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158812158911_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158810158918_))
                                                    (let ((_e158815158921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158810158918_))))
                                                      (let ((_hd158814158925_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158815158921_)))
                    (_tl158813158928_
                     (let () (declare (not safe)) (##cdr _e158815158921_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158813158928_))
                    (let ((_e158818158931_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158813158928_))))
                      (let ((_hd158817158935_
                             (let ()
                               (declare (not safe))
                               (##car _e158818158931_)))
                            (_tl158816158938_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158818158931_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158816158938_))
                            ((lambda (_L158941_
                                      _L158943_
                                      _L158944_
                                      _L158945_
                                      _L158946_
                                      _L158947_
                                      _L158948_
                                      _L158949_
                                      _L158950_
                                      _L158951_)
                               (let ((__tmp161594
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161560
                                      (let ((__tmp161591
                                             (let ((__tmp161593
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161592
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158951_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161593 __tmp161592)))
                                            (__tmp161561
                                             (let ((__tmp161588
                                                    (let ((__tmp161590
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161589
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L158950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161590 __tmp161589)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161562
                                                    (let ((__tmp161585
                                                           (let ((__tmp161587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161586
                          (let () (declare (not safe)) (cons _L158949_ '()))))
                     (declare (not safe))
                     (cons __tmp161587 __tmp161586)))
                  (__tmp161563
                   (let ((__tmp161582
                          (let ((__tmp161584
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161583
                                 (let ()
                                   (declare (not safe))
                                   (cons _L158948_ '()))))
                            (declare (not safe))
                            (cons __tmp161584 __tmp161583)))
                         (__tmp161564
                          (let ((__tmp161579
                                 (let ((__tmp161581
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161580
                                        (let ()
                                          (declare (not safe))
                                          (cons _L158947_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161581 __tmp161580)))
                                (__tmp161565
                                 (let ((__tmp161576
                                        (let ((__tmp161578
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161577
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L158946_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161578 __tmp161577)))
                                       (__tmp161566
                                        (let ((__tmp161567
                                               (let ((__tmp161568
                                                      (let ((__tmp161573
                                                             (let ((__tmp161575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161574
                            (let ()
                              (declare (not safe))
                              (cons _L158943_ '()))))
                       (declare (not safe))
                       (cons __tmp161575 __tmp161574)))
                    (__tmp161569
                     (let ((__tmp161570
                            (let ((__tmp161572
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161571
                                   (let ()
                                     (declare (not safe))
                                     (cons _L158941_ '()))))
                              (declare (not safe))
                              (cons __tmp161572 __tmp161571))))
                       (declare (not safe))
                       (cons __tmp161570 '()))))
                (declare (not safe))
                (cons __tmp161573 __tmp161569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L158944_
                                                       __tmp161568))))
                                          (declare (not safe))
                                          (cons _L158945_ __tmp161567))))
                                   (declare (not safe))
                                   (cons __tmp161576 __tmp161566))))
                            (declare (not safe))
                            (cons __tmp161579 __tmp161565))))
                     (declare (not safe))
                     (cons __tmp161582 __tmp161564))))
              (declare (not safe))
              (cons __tmp161585 __tmp161563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161588
                                                     __tmp161562))))
                                        (declare (not safe))
                                        (cons __tmp161591 __tmp161561))))
                                 (declare (not safe))
                                 (cons __tmp161594 __tmp161560)))
                             _hd158817158935_
                             _hd158814158925_
                             _hd158811158915_
                             _hd158808158905_
                             _hd158805158895_
                             _hd158802158885_
                             _hd158799158875_
                             _hd158796158865_
                             _hd158793158855_
                             _hd158790158845_)
                            (_g158774158824_ _g158775158828_))))
                    (_g158774158824_ _g158775158828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158774158824_
                                                     _g158775158828_))))
                                            (_g158774158824_
                                             _g158775158828_))))
                                    (_g158774158824_ _g158775158828_))))
                            (_g158774158824_ _g158775158828_))))
                    (_g158774158824_ _g158775158828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158774158824_
                                                     _g158775158828_))))
                                            (_g158774158824_
                                             _g158775158828_))))
                                    (_g158774158824_ _g158775158828_))))
                            (_g158774158824_ _g158775158828_))))
                    (_g158774158824_ _g158775158828_)))))
        (_g158773158991_ _$stx158770_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx158995_)
      (let* ((_g158999159013_
              (lambda (_g159000159009_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159000159009_))))
             (_g158998159054_
              (lambda (_g159000159017_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159000159017_))
                    (let ((_e159004159020_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159000159017_))))
                      (let ((_hd159003159024_
                             (let ()
                               (declare (not safe))
                               (##car _e159004159020_)))
                            (_tl159002159027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159004159020_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159002159027_))
                            (let ((_e159007159030_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159002159027_))))
                              (let ((_hd159006159034_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159007159030_)))
                                    (_tl159005159037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159007159030_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159005159037_))
                                    ((lambda (_L159040_)
                                       (let ((__tmp161599
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161595
                                              (let ((__tmp161596
                                                     (let ((__tmp161598
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161597
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161598 __tmp161597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161596 '()))))
                                         (declare (not safe))
                                         (cons __tmp161599 __tmp161595)))
                                     _hd159006159034_)
                                    (_g158999159013_ _g159000159017_))))
                            (_g158999159013_ _g159000159017_))))
                    (_g158999159013_ _g159000159017_)))))
        (_g158998159054_ _$stx158995_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159058_)
      (let* ((_g159062159076_
              (lambda (_g159063159072_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159063159072_))))
             (_g159061159117_
              (lambda (_g159063159080_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159063159080_))
                    (let ((_e159067159083_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159063159080_))))
                      (let ((_hd159066159087_
                             (let ()
                               (declare (not safe))
                               (##car _e159067159083_)))
                            (_tl159065159090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159067159083_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159065159090_))
                            (let ((_e159070159093_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159065159090_))))
                              (let ((_hd159069159097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159070159093_)))
                                    (_tl159068159100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159070159093_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159068159100_))
                                    ((lambda (_L159103_)
                                       (let ((__tmp161604
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161600
                                              (let ((__tmp161601
                                                     (let ((__tmp161603
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161602
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161603 __tmp161602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161601 '()))))
                                         (declare (not safe))
                                         (cons __tmp161604 __tmp161600)))
                                     _hd159069159097_)
                                    (_g159062159076_ _g159063159080_))))
                            (_g159062159076_ _g159063159080_))))
                    (_g159062159076_ _g159063159080_)))))
        (_g159061159117_ _$stx159058_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159121_)
      (let* ((_g159125159147_
              (lambda (_g159126159143_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159126159143_))))
             (_g159124159216_
              (lambda (_g159126159151_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159126159151_))
                    (let ((_e159132159154_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159126159151_))))
                      (let ((_hd159131159158_
                             (let ()
                               (declare (not safe))
                               (##car _e159132159154_)))
                            (_tl159130159161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159132159154_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159130159161_))
                            (let ((_e159135159164_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159130159161_))))
                              (let ((_hd159134159168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159135159164_)))
                                    (_tl159133159171_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159135159164_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159133159171_))
                                    (let ((_e159138159174_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159133159171_))))
                                      (let ((_hd159137159178_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159138159174_)))
                                            (_tl159136159181_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159138159174_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159136159181_))
                                            (let ((_e159141159184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159136159181_))))
                                              (let ((_hd159140159188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159141159184_)))
                                                    (_tl159139159191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159141159184_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159139159191_))
                                                    ((lambda (_L159194_
                                                              _L159196_
                                                              _L159197_)
                                                       (let ((__tmp161614
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161605
                      (let ((__tmp161611
                             (let ((__tmp161613
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161612
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159197_ '()))))
                               (declare (not safe))
                               (cons __tmp161613 __tmp161612)))
                            (__tmp161606
                             (let ((__tmp161608
                                    (let ((__tmp161610
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161609
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159196_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161610 __tmp161609)))
                                   (__tmp161607
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159194_ '()))))
                               (declare (not safe))
                               (cons __tmp161608 __tmp161607))))
                        (declare (not safe))
                        (cons __tmp161611 __tmp161606))))
                 (declare (not safe))
                 (cons __tmp161614 __tmp161605)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159140159188_
                                                     _hd159137159178_
                                                     _hd159134159168_)
                                                    (_g159125159147_
                                                     _g159126159151_))))
                                            (_g159125159147_
                                             _g159126159151_))))
                                    (_g159125159147_ _g159126159151_))))
                            (_g159125159147_ _g159126159151_))))
                    (_g159125159147_ _g159126159151_)))))
        (_g159124159216_ _$stx159121_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159220_)
      (let* ((_g159224159246_
              (lambda (_g159225159242_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159225159242_))))
             (_g159223159315_
              (lambda (_g159225159250_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159225159250_))
                    (let ((_e159231159253_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159225159250_))))
                      (let ((_hd159230159257_
                             (let ()
                               (declare (not safe))
                               (##car _e159231159253_)))
                            (_tl159229159260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159231159253_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159229159260_))
                            (let ((_e159234159263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159229159260_))))
                              (let ((_hd159233159267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159234159263_)))
                                    (_tl159232159270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159234159263_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159232159270_))
                                    (let ((_e159237159273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159232159270_))))
                                      (let ((_hd159236159277_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159237159273_)))
                                            (_tl159235159280_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159237159273_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159235159280_))
                                            (let ((_e159240159283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159235159280_))))
                                              (let ((_hd159239159287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159240159283_)))
                                                    (_tl159238159290_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159240159283_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159238159290_))
                                                    ((lambda (_L159293_
                                                              _L159295_
                                                              _L159296_)
                                                       (let ((__tmp161624
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161615
                      (let ((__tmp161621
                             (let ((__tmp161623
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161622
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159296_ '()))))
                               (declare (not safe))
                               (cons __tmp161623 __tmp161622)))
                            (__tmp161616
                             (let ((__tmp161618
                                    (let ((__tmp161620
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161619
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159295_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161620 __tmp161619)))
                                   (__tmp161617
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159293_ '()))))
                               (declare (not safe))
                               (cons __tmp161618 __tmp161617))))
                        (declare (not safe))
                        (cons __tmp161621 __tmp161616))))
                 (declare (not safe))
                 (cons __tmp161624 __tmp161615)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159239159287_
                                                     _hd159236159277_
                                                     _hd159233159267_)
                                                    (_g159224159246_
                                                     _g159225159250_))))
                                            (_g159224159246_
                                             _g159225159250_))))
                                    (_g159224159246_ _g159225159250_))))
                            (_g159224159246_ _g159225159250_))))
                    (_g159224159246_ _g159225159250_)))))
        (_g159223159315_ _$stx159220_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159319_)
      (let* ((___stx161134161135_ _$stx159319_)
             (_g159327159395_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161134161135_)))))
        (let ((___kont161137161138_
               (lambda (_L159673_ _L159675_)
                 (let ((__tmp161640
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161625
                        (let ((__tmp161636
                               (let ((__tmp161639
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161637
                                      (let ((__tmp161638
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161638 '()))))
                                 (declare (not safe))
                                 (cons __tmp161639 __tmp161637)))
                              (__tmp161626
                               (let ((__tmp161633
                                      (let ((__tmp161635
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161634
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159675_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161635 __tmp161634)))
                                     (__tmp161627
                                      (let ((__tmp161628
                                             (let ((__tmp161629
                                                    (let ((__tmp161630
                                                           (let ((__tmp161632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161631
                          (let () (declare (not safe)) (cons _L159673_ '()))))
                     (declare (not safe))
                     (cons __tmp161632 __tmp161631))))
              (declare (not safe))
              (cons __tmp161630 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159673_ __tmp161629))))
                                        (declare (not safe))
                                        (cons '#f __tmp161628))))
                                 (declare (not safe))
                                 (cons __tmp161633 __tmp161627))))
                          (declare (not safe))
                          (cons __tmp161636 __tmp161626))))
                   (declare (not safe))
                   (cons __tmp161640 __tmp161625))))
              (___kont161139161140_
               (lambda (_L159604_ _L159606_)
                 (let ((__tmp161641
                        (let ((__tmp161642
                               (let ((__tmp161643
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159604_ __tmp161643))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161642))))
                   (declare (not safe))
                   (cons _L159606_ __tmp161641))))
              (___kont161141161142_
               (lambda (_L159543_ _L159545_)
                 (let ((__tmp161657
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161644
                        (let ((__tmp161653
                               (let ((__tmp161656
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161654
                                      (let ((__tmp161655
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161655 '()))))
                                 (declare (not safe))
                                 (cons __tmp161656 __tmp161654)))
                              (__tmp161645
                               (let ((__tmp161650
                                      (let ((__tmp161652
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161651
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159545_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161652 __tmp161651)))
                                     (__tmp161646
                                      (let ((__tmp161647
                                             (let ((__tmp161649
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161648
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159543_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161649
                                                     __tmp161648))))
                                        (declare (not safe))
                                        (cons __tmp161647 '()))))
                                 (declare (not safe))
                                 (cons __tmp161650 __tmp161646))))
                          (declare (not safe))
                          (cons __tmp161653 __tmp161645))))
                   (declare (not safe))
                   (cons __tmp161657 __tmp161644))))
              (___kont161143161144_
               (lambda (_L159475_ _L159477_)
                 (let ((__tmp161671
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161658
                        (let ((__tmp161667
                               (let ((__tmp161670
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161668
                                      (let ((__tmp161669
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161669 '()))))
                                 (declare (not safe))
                                 (cons __tmp161670 __tmp161668)))
                              (__tmp161659
                               (let ((__tmp161664
                                      (let ((__tmp161666
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161665
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159477_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161666 __tmp161665)))
                                     (__tmp161660
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
                                                      (cons _L159475_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161663
                                                     __tmp161662))))
                                        (declare (not safe))
                                        (cons __tmp161661 '()))))
                                 (declare (not safe))
                                 (cons __tmp161664 __tmp161660))))
                          (declare (not safe))
                          (cons __tmp161667 __tmp161659))))
                   (declare (not safe))
                   (cons __tmp161671 __tmp161658))))
              (___kont161145161146_
               (lambda (_L159422_ _L159424_)
                 (let ((__tmp161672
                        (let ((__tmp161673
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159422_ __tmp161673))))
                   (declare (not safe))
                   (cons _L159424_ __tmp161672)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161134161135_))
              (let ((_e159333159629_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161134161135_))))
                (let ((_tl159331159636_
                       (let () (declare (not safe)) (##cdr _e159333159629_)))
                      (_hd159332159633_
                       (let () (declare (not safe)) (##car _e159333159629_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159331159636_))
                      (let ((_e159336159639_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159331159636_))))
                        (let ((_tl159334159646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159336159639_)))
                              (_hd159335159643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159336159639_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159334159646_))
                              (let ((_e159339159649_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159334159646_))))
                                (let ((_tl159337159656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159339159649_)))
                                      (_hd159338159653_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159339159649_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159338159653_))
                                      (let ((_e159340159659_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159338159653_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159340159659_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159337159656_))
                                                (let ((_e159343159663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159337159656_))))
                                                  (let ((_tl159341159670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159343159663_)))
                                                        (_hd159342159667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159343159663_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159341159670_))
                                                        (___kont161137161138_
                                                         _hd159342159667_
                                                         _hd159335159643_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159335159643_))
                                                            (let ((_e159352159590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159335159643_))))
                      (declare (not safe))
                      (_g159327159395_))
                    (let () (declare (not safe)) (_g159327159395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159335159643_))
                                                    (let ((_e159352159590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159335159643_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159352159590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159337159656_))
                      (___kont161139161140_ _hd159338159653_ _hd159332159633_)
                      (let () (declare (not safe)) (_g159327159395_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159337159656_))
                      (___kont161143161144_ _hd159338159653_ _hd159335159643_)
                      (let () (declare (not safe)) (_g159327159395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159337159656_))
                                                        (___kont161143161144_
                                                         _hd159338159653_
                                                         _hd159335159643_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159327159395_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159335159643_))
                                                (let ((_e159352159590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159335159643_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159352159590_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159337159656_))
                                                          (___kont161139161140_
                                                           _hd159338159653_
                                                           _hd159332159633_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159337159656_))
                      (let ((_e159370159533_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159337159656_))))
                        (let ((_tl159368159540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159370159533_)))
                              (_hd159369159537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159370159533_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159368159540_))
                              (___kont161141161142_
                               _hd159369159537_
                               _hd159338159653_)
                              (let ()
                                (declare (not safe))
                                (_g159327159395_)))))
                      (let () (declare (not safe)) (_g159327159395_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159337159656_))
                  (___kont161143161144_ _hd159338159653_ _hd159335159643_)
                  (let () (declare (not safe)) (_g159327159395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159337159656_))
                                                    (___kont161143161144_
                                                     _hd159338159653_
                                                     _hd159335159643_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159327159395_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159335159643_))
                                          (let ((_e159352159590_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159335159643_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159352159590_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159337159656_))
                                                    (___kont161139161140_
                                                     _hd159338159653_
                                                     _hd159332159633_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159337159656_))
                                                        (let ((_e159370159533_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159337159656_))))
                  (let ((_tl159368159540_
                         (let () (declare (not safe)) (##cdr _e159370159533_)))
                        (_hd159369159537_
                         (let ()
                           (declare (not safe))
                           (##car _e159370159533_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159368159540_))
                        (___kont161141161142_
                         _hd159369159537_
                         _hd159338159653_)
                        (let () (declare (not safe)) (_g159327159395_)))))
                (let () (declare (not safe)) (_g159327159395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159337159656_))
                                                    (___kont161143161144_
                                                     _hd159338159653_
                                                     _hd159335159643_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159327159395_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159337159656_))
                                              (___kont161143161144_
                                               _hd159338159653_
                                               _hd159335159643_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159327159395_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159335159643_))
                                  (let ((_e159352159590_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159335159643_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159334159646_))
                                        (___kont161145161146_
                                         _hd159335159643_
                                         _hd159332159633_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159327159395_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159334159646_))
                                      (___kont161145161146_
                                       _hd159335159643_
                                       _hd159332159633_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159327159395_)))))))
                      (let () (declare (not safe)) (_g159327159395_)))))
              (let () (declare (not safe)) (_g159327159395_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159697_)
      (let* ((___stx161274161275_ _$stx159697_)
             (_g159702159757_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161274161275_)))))
        (let ((___kont161277161278_
               (lambda (_L159942_ _L159944_)
                 (let ((__tmp161689
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161674
                        (let ((__tmp161685
                               (let ((__tmp161688
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161686
                                      (let ((__tmp161687
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161687 '()))))
                                 (declare (not safe))
                                 (cons __tmp161688 __tmp161686)))
                              (__tmp161675
                               (let ((__tmp161676
                                      (let ((__tmp161684
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161677
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159942_
                                                  _L159944_))
                                               (let ((__tmp161678
                                                      (lambda (_g159961159965_
                                                               _g159962159968_
                                                               _g159963159970_)
                                                        (let ((__tmp161679
                                                               (let ((__tmp161683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161680
                              (let ((__tmp161681
                                     (let ((__tmp161682
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159961159965_ '()))))
                                       (declare (not safe))
                                       (cons _g159962159968_ __tmp161682))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161681))))
                         (declare (not safe))
                         (cons __tmp161683 __tmp161680))))
                  (declare (not safe))
                  (cons __tmp161679 _g159963159970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161678
                                                         '()
                                                         _L159942_
                                                         _L159944_)))))
                                        (declare (not safe))
                                        (cons __tmp161684 __tmp161677))))
                                 (declare (not safe))
                                 (cons __tmp161676 '()))))
                          (declare (not safe))
                          (cons __tmp161685 __tmp161675))))
                   (declare (not safe))
                   (cons __tmp161689 __tmp161674))))
              (___kont161281161282_
               (lambda (_L159828_ _L159830_)
                 (let ((__tmp161704
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161690
                        (let ((__tmp161700
                               (let ((__tmp161703
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161701
                                      (let ((__tmp161702
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161702 '()))))
                                 (declare (not safe))
                                 (cons __tmp161703 __tmp161701)))
                              (__tmp161691
                               (let ((__tmp161692
                                      (let ((__tmp161699
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161693
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159828_
                                                  _L159830_))
                                               (let ((__tmp161694
                                                      (lambda (_g159845159849_
                                                               _g159846159852_
                                                               _g159847159854_)
                                                        (let ((__tmp161695
                                                               (let ((__tmp161698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161696
                              (let ((__tmp161697
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159845159849_ '()))))
                                (declare (not safe))
                                (cons _g159846159852_ __tmp161697))))
                         (declare (not safe))
                         (cons __tmp161698 __tmp161696))))
                  (declare (not safe))
                  (cons __tmp161695 _g159847159854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161694
                                                         '()
                                                         _L159828_
                                                         _L159830_)))))
                                        (declare (not safe))
                                        (cons __tmp161699 __tmp161693))))
                                 (declare (not safe))
                                 (cons __tmp161692 '()))))
                          (declare (not safe))
                          (cons __tmp161700 __tmp161691))))
                   (declare (not safe))
                   (cons __tmp161704 __tmp161690)))))
          (let* ((___match161325161326_
                  (lambda (_e159734159764_
                           _hd159733159768_
                           _tl159732159771_
                           ___splice161283161284_
                           _target159735159774_
                           _tl159737159777_)
                    (letrec ((_loop159738159780_
                              (lambda (_hd159736159784_
                                       _dispatch159742159787_
                                       _arity159743159789_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159736159784_))
                                    (let ((_e159739159792_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159736159784_))))
                                      (let ((_lp-tl159741159799_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159739159792_)))
                                            (_lp-hd159740159796_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159739159792_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159740159796_))
                                            (let ((_e159748159802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159740159796_))))
                                              (let ((_tl159746159809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159748159802_)))
                                                    (_hd159747159806_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159748159802_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159746159809_))
                                                    (let ((_e159751159812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159746159809_))))
                                                      (let ((_tl159749159819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159751159812_)))
                    (_hd159750159816_
                     (let () (declare (not safe)) (##car _e159751159812_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159749159819_))
                    (_loop159738159780_
                     _lp-tl159741159799_
                     (let ()
                       (declare (not safe))
                       (cons _hd159750159816_ _dispatch159742159787_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159747159806_ _arity159743159789_)))
                    (let () (declare (not safe)) (_g159702159757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159702159757_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159702159757_)))))
                                    (let ((_arity159745159825_
                                           (reverse _arity159743159789_))
                                          (_dispatch159744159822_
                                           (reverse _dispatch159742159787_)))
                                      (___kont161281161282_
                                       _dispatch159744159822_
                                       _arity159745159825_))))))
                      (_loop159738159780_ _target159735159774_ '() '()))))
                 (___match161317161318_
                  (lambda (_e159734159764_ _hd159733159768_ _tl159732159771_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159732159771_))
                        (let ((___splice161283161284_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159732159771_
                                  '0))))
                          (let ((_tl159737159777_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161283161284_ '1)))
                                (_target159735159774_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161283161284_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159737159777_))
                                (___match161325161326_
                                 _e159734159764_
                                 _hd159733159768_
                                 _tl159732159771_
                                 ___splice161283161284_
                                 _target159735159774_
                                 _tl159737159777_)
                                (let ()
                                  (declare (not safe))
                                  (_g159702159757_)))))
                        (let () (declare (not safe)) (_g159702159757_)))))
                 (___match161311161312_
                  (lambda (_e159708159864_
                           _hd159707159868_
                           _tl159706159871_
                           _e159711159874_
                           _hd159710159878_
                           _tl159709159881_
                           _e159712159884_
                           ___splice161279161280_
                           _target159713159888_
                           _tl159715159891_)
                    (letrec ((_loop159716159894_
                              (lambda (_hd159714159898_
                                       _dispatch159720159901_
                                       _arity159721159903_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159714159898_))
                                    (let ((_e159717159906_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159714159898_))))
                                      (let ((_lp-tl159719159913_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159717159906_)))
                                            (_lp-hd159718159910_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159717159906_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159718159910_))
                                            (let ((_e159726159916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159718159910_))))
                                              (let ((_tl159724159923_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159726159916_)))
                                                    (_hd159725159920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159726159916_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159724159923_))
                                                    (let ((_e159729159926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159724159923_))))
                                                      (let ((_tl159727159933_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159729159926_)))
                    (_hd159728159930_
                     (let () (declare (not safe)) (##car _e159729159926_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159727159933_))
                    (_loop159716159894_
                     _lp-tl159719159913_
                     (let ()
                       (declare (not safe))
                       (cons _hd159728159930_ _dispatch159720159901_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159725159920_ _arity159721159903_)))
                    (___match161317161318_
                     _e159708159864_
                     _hd159707159868_
                     _tl159706159871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161317161318_
                                                     _e159708159864_
                                                     _hd159707159868_
                                                     _tl159706159871_))))
                                            (___match161317161318_
                                             _e159708159864_
                                             _hd159707159868_
                                             _tl159706159871_))))
                                    (let ((_arity159723159939_
                                           (reverse _arity159721159903_))
                                          (_dispatch159722159936_
                                           (reverse _dispatch159720159901_)))
                                      (___kont161277161278_
                                       _dispatch159722159936_
                                       _arity159723159939_))))))
                      (_loop159716159894_ _target159713159888_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161274161275_))
                (let ((_e159708159864_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161274161275_))))
                  (let ((_tl159706159871_
                         (let () (declare (not safe)) (##cdr _e159708159864_)))
                        (_hd159707159868_
                         (let ()
                           (declare (not safe))
                           (##car _e159708159864_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159706159871_))
                        (let ((_e159711159874_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159706159871_))))
                          (let ((_tl159709159881_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159711159874_)))
                                (_hd159710159878_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159711159874_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159710159878_))
                                (let ((_e159712159884_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159710159878_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159712159884_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159709159881_))
                                          (let ((___splice161279161280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159709159881_
                                                    '0))))
                                            (let ((_tl159715159891_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161279161280_
                                                      '1)))
                                                  (_target159713159888_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161279161280_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159715159891_))
                                                  (___match161311161312_
                                                   _e159708159864_
                                                   _hd159707159868_
                                                   _tl159706159871_
                                                   _e159711159874_
                                                   _hd159710159878_
                                                   _tl159709159881_
                                                   _e159712159884_
                                                   ___splice161279161280_
                                                   _target159713159888_
                                                   _tl159715159891_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159706159871_))
                                                      (let ((___splice161283161284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159706159871_ '0))))
                (let ((_tl159737159777_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161283161284_ '1)))
                      (_target159735159774_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161283161284_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159737159777_))
                      (___match161325161326_
                       _e159708159864_
                       _hd159707159868_
                       _tl159706159871_
                       ___splice161283161284_
                       _target159735159774_
                       _tl159737159777_)
                      (let () (declare (not safe)) (_g159702159757_)))))
              (let () (declare (not safe)) (_g159702159757_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159706159871_))
                                              (let ((___splice161283161284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159706159871_
                                                        '0))))
                                                (let ((_tl159737159777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161283161284_
                                                          '1)))
                                                      (_target159735159774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161283161284_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159737159777_))
                                                      (___match161325161326_
                                                       _e159708159864_
                                                       _hd159707159868_
                                                       _tl159706159871_
                                                       ___splice161283161284_
                                                       _target159735159774_
                                                       _tl159737159777_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159702159757_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159702159757_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159706159871_))
                                          (let ((___splice161283161284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159706159871_
                                                    '0))))
                                            (let ((_tl159737159777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161283161284_
                                                      '1)))
                                                  (_target159735159774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161283161284_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159737159777_))
                                                  (___match161325161326_
                                                   _e159708159864_
                                                   _hd159707159868_
                                                   _tl159706159871_
                                                   ___splice161283161284_
                                                   _target159735159774_
                                                   _tl159737159777_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159702159757_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159702159757_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159706159871_))
                                    (let ((___splice161283161284_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159706159871_
                                              '0))))
                                      (let ((_tl159737159777_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161283161284_
                                                '1)))
                                            (_target159735159774_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161283161284_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159737159777_))
                                            (___match161325161326_
                                             _e159708159864_
                                             _hd159707159868_
                                             _tl159706159871_
                                             ___splice161283161284_
                                             _target159735159774_
                                             _tl159737159777_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159702159757_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159702159757_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159706159871_))
                            (let ((___splice161283161284_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159706159871_
                                      '0))))
                              (let ((_tl159737159777_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161283161284_
                                        '1)))
                                    (_target159735159774_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161283161284_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159737159777_))
                                    (___match161325161326_
                                     _e159708159864_
                                     _hd159707159868_
                                     _tl159706159871_
                                     ___splice161283161284_
                                     _target159735159774_
                                     _tl159737159777_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159702159757_)))))
                            (let () (declare (not safe)) (_g159702159757_))))))
                (let () (declare (not safe)) (_g159702159757_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159979_)
      (let* ((_g159983160001_
              (lambda (_g159984159997_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159984159997_))))
             (_g159982160056_
              (lambda (_g159984160005_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159984160005_))
                    (let ((_e159989160008_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159984160005_))))
                      (let ((_hd159988160012_
                             (let ()
                               (declare (not safe))
                               (##car _e159989160008_)))
                            (_tl159987160015_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159989160008_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159987160015_))
                            (let ((_e159992160018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159987160015_))))
                              (let ((_hd159991160022_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159992160018_)))
                                    (_tl159990160025_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159992160018_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159990160025_))
                                    (let ((_e159995160028_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159990160025_))))
                                      (let ((_hd159994160032_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159995160028_)))
                                            (_tl159993160035_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159995160028_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159993160035_))
                                            ((lambda (_L160038_ _L160040_)
                                               (let ((__tmp161718
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161705
                                                      (let ((__tmp161714
                                                             (let ((__tmp161717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161715
                            (let ((__tmp161716
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161716 '()))))
                       (declare (not safe))
                       (cons __tmp161717 __tmp161715)))
                    (__tmp161706
                     (let ((__tmp161711
                            (let ((__tmp161713
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161712
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160040_ '()))))
                              (declare (not safe))
                              (cons __tmp161713 __tmp161712)))
                           (__tmp161707
                            (let ((__tmp161708
                                   (let ((__tmp161710
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161709
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160038_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161710 __tmp161709))))
                              (declare (not safe))
                              (cons __tmp161708 '()))))
                       (declare (not safe))
                       (cons __tmp161711 __tmp161707))))
                (declare (not safe))
                (cons __tmp161714 __tmp161706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161718
                                                       __tmp161705)))
                                             _hd159994160032_
                                             _hd159991160022_)
                                            (_g159983160001_
                                             _g159984160005_))))
                                    (_g159983160001_ _g159984160005_))))
                            (_g159983160001_ _g159984160005_))))
                    (_g159983160001_ _g159984160005_)))))
        (_g159982160056_ _$stx159979_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160060_)
      (let* ((_g160064160082_
              (lambda (_g160065160078_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160065160078_))))
             (_g160063160137_
              (lambda (_g160065160086_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160065160086_))
                    (let ((_e160070160089_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160065160086_))))
                      (let ((_hd160069160093_
                             (let ()
                               (declare (not safe))
                               (##car _e160070160089_)))
                            (_tl160068160096_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160070160089_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160068160096_))
                            (let ((_e160073160099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160068160096_))))
                              (let ((_hd160072160103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160073160099_)))
                                    (_tl160071160106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160073160099_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160071160106_))
                                    (let ((_e160076160109_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160071160106_))))
                                      (let ((_hd160075160113_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160076160109_)))
                                            (_tl160074160116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160076160109_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160074160116_))
                                            ((lambda (_L160119_ _L160121_)
                                               (let ((__tmp161732
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161719
                                                      (let ((__tmp161728
                                                             (let ((__tmp161731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161729
                            (let ((__tmp161730
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161730 '()))))
                       (declare (not safe))
                       (cons __tmp161731 __tmp161729)))
                    (__tmp161720
                     (let ((__tmp161725
                            (let ((__tmp161727
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161726
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160121_ '()))))
                              (declare (not safe))
                              (cons __tmp161727 __tmp161726)))
                           (__tmp161721
                            (let ((__tmp161722
                                   (let ((__tmp161724
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161723
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160119_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161724 __tmp161723))))
                              (declare (not safe))
                              (cons __tmp161722 '()))))
                       (declare (not safe))
                       (cons __tmp161725 __tmp161721))))
                (declare (not safe))
                (cons __tmp161728 __tmp161720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161732
                                                       __tmp161719)))
                                             _hd160075160113_
                                             _hd160072160103_)
                                            (_g160064160082_
                                             _g160065160086_))))
                                    (_g160064160082_ _g160065160086_))))
                            (_g160064160082_ _g160065160086_))))
                    (_g160064160082_ _g160065160086_)))))
        (_g160063160137_ _$stx160060_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160141_)
      (let* ((___stx161328161329_ _$stx160141_)
             (_g160148160219_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161328161329_)))))
        (let ((___kont161331161332_
               (lambda (_L160510_ _L160512_)
                 (let ((__tmp161738
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161733
                        (let ((__tmp161734
                               (let ((__tmp161735
                                      (let ((__tmp161737
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161736
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160510_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161737 __tmp161736))))
                                 (declare (not safe))
                                 (cons __tmp161735 '()))))
                          (declare (not safe))
                          (cons _L160512_ __tmp161734))))
                   (declare (not safe))
                   (cons __tmp161738 __tmp161733))))
              (___kont161333161334_
               (lambda (_L160429_ _L160431_)
                 (let ((__tmp161747
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161739
                        (let ((__tmp161740
                               (let ((__tmp161741
                                      (let ((__tmp161746
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161742
                                             (let ((__tmp161743
                                                    (lambda (_g160450160453_
                                                             _g160451160456_)
                                                      (let ((__tmp161744
                                                             (let ((__tmp161745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160450160453_ __tmp161745))))
                (declare (not safe))
                (cons __tmp161744 _g160451160456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161743
                                                       '()
                                                       _L160429_))))
                                        (declare (not safe))
                                        (cons __tmp161746 __tmp161742))))
                                 (declare (not safe))
                                 (cons __tmp161741 '()))))
                          (declare (not safe))
                          (cons _L160431_ __tmp161740))))
                   (declare (not safe))
                   (cons __tmp161747 __tmp161739))))
              (___kont161337161338_
               (lambda (_L160341_ _L160343_)
                 (let ((__tmp161754
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161748
                        (let ((__tmp161749
                               (let ((__tmp161750
                                      (let ((__tmp161753
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161751
                                             (let ((__tmp161752
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160341_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161752))))
                                        (declare (not safe))
                                        (cons __tmp161753 __tmp161751))))
                                 (declare (not safe))
                                 (cons __tmp161750 '()))))
                          (declare (not safe))
                          (cons _L160343_ __tmp161749))))
                   (declare (not safe))
                   (cons __tmp161754 __tmp161748))))
              (___kont161339161340_
               (lambda (_L160276_ _L160278_)
                 (let ((__tmp161764
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161755
                        (let ((__tmp161756
                               (let ((__tmp161757
                                      (let ((__tmp161763
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161758
                                             (let ((__tmp161759
                                                    (let ((__tmp161760
                                                           (lambda (_g160295160298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160296160301_)
                     (let ((__tmp161761
                            (let ((__tmp161762
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160295160298_ __tmp161762))))
                       (declare (not safe))
                       (cons __tmp161761 _g160296160301_)))))
              (declare (not safe))
              (foldr1 __tmp161760 '() _L160276_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161759))))
                                        (declare (not safe))
                                        (cons __tmp161763 __tmp161758))))
                                 (declare (not safe))
                                 (cons __tmp161757 '()))))
                          (declare (not safe))
                          (cons _L160278_ __tmp161756))))
                   (declare (not safe))
                   (cons __tmp161764 __tmp161755)))))
          (let* ((___match161447161448_
                  (lambda (_e160201160226_
                           _hd160200160230_
                           _tl160199160233_
                           _e160204160236_
                           _hd160203160240_
                           _tl160202160243_
                           ___splice161341161342_
                           _target160205160246_
                           _tl160207160249_)
                    (letrec ((_loop160208160252_
                              (lambda (_hd160206160256_ _arity160212160259_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160206160256_))
                                    (let ((_e160209160262_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160206160256_))))
                                      (let ((_lp-tl160211160269_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160209160262_)))
                                            (_lp-hd160210160266_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160209160262_))))
                                        (_loop160208160252_
                                         _lp-tl160211160269_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160210160266_
                                                 _arity160212160259_)))))
                                    (let ((_arity160213160272_
                                           (reverse _arity160212160259_)))
                                      (___kont161339161340_
                                       _arity160213160272_
                                       _hd160203160240_))))))
                      (_loop160208160252_ _target160205160246_ '()))))
                 (___match161407161408_
                  (lambda (_e160169160365_
                           _hd160168160369_
                           _tl160167160372_
                           _e160172160375_
                           _hd160171160379_
                           _tl160170160382_
                           _e160175160385_
                           _hd160174160389_
                           _tl160173160392_
                           _e160176160395_
                           ___splice161335161336_
                           _target160177160399_
                           _tl160179160402_)
                    (letrec ((_loop160180160405_
                              (lambda (_hd160178160409_ _arity160184160412_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160178160409_))
                                    (let ((_e160181160415_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160178160409_))))
                                      (let ((_lp-tl160183160422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160181160415_)))
                                            (_lp-hd160182160419_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160181160415_))))
                                        (_loop160180160405_
                                         _lp-tl160183160422_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160182160419_
                                                 _arity160184160412_)))))
                                    (let ((_arity160185160425_
                                           (reverse _arity160184160412_)))
                                      (___kont161333161334_
                                       _arity160185160425_
                                       _hd160171160379_))))))
                      (_loop160180160405_ _target160177160399_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161328161329_))
                (let ((_e160154160466_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161328161329_))))
                  (let ((_tl160152160473_
                         (let () (declare (not safe)) (##cdr _e160154160466_)))
                        (_hd160153160470_
                         (let ()
                           (declare (not safe))
                           (##car _e160154160466_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160152160473_))
                        (let ((_e160157160476_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160152160473_))))
                          (let ((_tl160155160483_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160157160476_)))
                                (_hd160156160480_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160157160476_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160155160483_))
                                (let ((_e160160160486_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160155160483_))))
                                  (let ((_tl160158160493_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160160160486_)))
                                        (_hd160159160490_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160160160486_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160159160490_))
                                        (let ((_e160161160496_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160159160490_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160161160496_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160158160493_))
                                                  (let ((_e160164160500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160158160493_))))
                                                    (let ((_tl160162160507_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160164160500_)))
                                                          (_hd160163160504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160164160500_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160162160507_))
                                                          (___kont161331161332_
                                                           _hd160163160504_
                                                           _hd160156160480_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160158160493_))
                      (let ((___splice161335161336_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160158160493_ '0))))
                        (let ((_tl160179160402_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161335161336_ '1)))
                              (_target160177160399_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161335161336_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160179160402_))
                              (___match161407161408_
                               _e160154160466_
                               _hd160153160470_
                               _tl160152160473_
                               _e160157160476_
                               _hd160156160480_
                               _tl160155160483_
                               _e160160160486_
                               _hd160159160490_
                               _tl160158160493_
                               _e160161160496_
                               ___splice161335161336_
                               _target160177160399_
                               _tl160179160402_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160155160483_))
                                  (let ((___splice161341161342_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160155160483_
                                            '0))))
                                    (let ((_tl160207160249_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161341161342_
                                              '1)))
                                          (_target160205160246_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161341161342_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160207160249_))
                                          (___match161447161448_
                                           _e160154160466_
                                           _hd160153160470_
                                           _tl160152160473_
                                           _e160157160476_
                                           _hd160156160480_
                                           _tl160155160483_
                                           ___splice161341161342_
                                           _target160205160246_
                                           _tl160207160249_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160148160219_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160148160219_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160155160483_))
                          (let ((___splice161341161342_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160155160483_
                                    '0))))
                            (let ((_tl160207160249_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161341161342_ '1)))
                                  (_target160205160246_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161341161342_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160207160249_))
                                  (___match161447161448_
                                   _e160154160466_
                                   _hd160153160470_
                                   _tl160152160473_
                                   _e160157160476_
                                   _hd160156160480_
                                   _tl160155160483_
                                   ___splice161341161342_
                                   _target160205160246_
                                   _tl160207160249_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160148160219_)))))
                          (let () (declare (not safe)) (_g160148160219_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160158160493_))
                                                      (let ((___splice161335161336_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160158160493_ '0))))
                (let ((_tl160179160402_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161335161336_ '1)))
                      (_target160177160399_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161335161336_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160179160402_))
                      (___match161407161408_
                       _e160154160466_
                       _hd160153160470_
                       _tl160152160473_
                       _e160157160476_
                       _hd160156160480_
                       _tl160155160483_
                       _e160160160486_
                       _hd160159160490_
                       _tl160158160493_
                       _e160161160496_
                       ___splice161335161336_
                       _target160177160399_
                       _tl160179160402_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160158160493_))
                          (___kont161337161338_
                           _hd160159160490_
                           _hd160156160480_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160155160483_))
                              (let ((___splice161341161342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160155160483_
                                        '0))))
                                (let ((_tl160207160249_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161341161342_
                                          '1)))
                                      (_target160205160246_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161341161342_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160207160249_))
                                      (___match161447161448_
                                       _e160154160466_
                                       _hd160153160470_
                                       _tl160152160473_
                                       _e160157160476_
                                       _hd160156160480_
                                       _tl160155160483_
                                       ___splice161341161342_
                                       _target160205160246_
                                       _tl160207160249_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160148160219_)))))
                              (let ()
                                (declare (not safe))
                                (_g160148160219_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160158160493_))
                  (___kont161337161338_ _hd160159160490_ _hd160156160480_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160155160483_))
                      (let ((___splice161341161342_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160155160483_ '0))))
                        (let ((_tl160207160249_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161341161342_ '1)))
                              (_target160205160246_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161341161342_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160207160249_))
                              (___match161447161448_
                               _e160154160466_
                               _hd160153160470_
                               _tl160152160473_
                               _e160157160476_
                               _hd160156160480_
                               _tl160155160483_
                               ___splice161341161342_
                               _target160205160246_
                               _tl160207160249_)
                              (let ()
                                (declare (not safe))
                                (_g160148160219_)))))
                      (let () (declare (not safe)) (_g160148160219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160158160493_))
                                                  (___kont161337161338_
                                                   _hd160159160490_
                                                   _hd160156160480_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160155160483_))
                                                      (let ((___splice161341161342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160155160483_ '0))))
                (let ((_tl160207160249_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161341161342_ '1)))
                      (_target160205160246_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161341161342_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160207160249_))
                      (___match161447161448_
                       _e160154160466_
                       _hd160153160470_
                       _tl160152160473_
                       _e160157160476_
                       _hd160156160480_
                       _tl160155160483_
                       ___splice161341161342_
                       _target160205160246_
                       _tl160207160249_)
                      (let () (declare (not safe)) (_g160148160219_)))))
              (let () (declare (not safe)) (_g160148160219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160158160493_))
                                            (___kont161337161338_
                                             _hd160159160490_
                                             _hd160156160480_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160155160483_))
                                                (let ((___splice161341161342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160155160483_
                                                          '0))))
                                                  (let ((_tl160207160249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161341161342_
                                                            '1)))
                                                        (_target160205160246_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161341161342_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160207160249_))
                                                        (___match161447161448_
                                                         _e160154160466_
                                                         _hd160153160470_
                                                         _tl160152160473_
                                                         _e160157160476_
                                                         _hd160156160480_
                                                         _tl160155160483_
                                                         ___splice161341161342_
                                                         _target160205160246_
                                                         _tl160207160249_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160148160219_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160148160219_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160155160483_))
                                    (let ((___splice161341161342_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160155160483_
                                              '0))))
                                      (let ((_tl160207160249_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161341161342_
                                                '1)))
                                            (_target160205160246_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161341161342_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160207160249_))
                                            (___match161447161448_
                                             _e160154160466_
                                             _hd160153160470_
                                             _tl160152160473_
                                             _e160157160476_
                                             _hd160156160480_
                                             _tl160155160483_
                                             ___splice161341161342_
                                             _target160205160246_
                                             _tl160207160249_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160148160219_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160148160219_))))))
                        (let () (declare (not safe)) (_g160148160219_)))))
                (let () (declare (not safe)) (_g160148160219_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160536_)
      (let* ((___stx161450161451_ _$stx160536_)
             (_g160541160576_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161450161451_)))))
        (let ((___kont161453161454_
               (lambda (_L160698_ _L160700_)
                 (let ((__tmp161770
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161765
                        (let ((__tmp161766
                               (let ((__tmp161767
                                      (let ((__tmp161769
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161768
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160698_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161769 __tmp161768))))
                                 (declare (not safe))
                                 (cons __tmp161767 '()))))
                          (declare (not safe))
                          (cons _L160700_ __tmp161766))))
                   (declare (not safe))
                   (cons __tmp161770 __tmp161765))))
              (___kont161455161456_
               (lambda (_L160633_ _L160635_)
                 (let ((__tmp161779
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161771
                        (let ((__tmp161772
                               (let ((__tmp161773
                                      (let ((__tmp161778
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161774
                                             (let ((__tmp161775
                                                    (lambda (_g160652160655_
                                                             _g160653160658_)
                                                      (let ((__tmp161776
                                                             (let ((__tmp161777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160652160655_ __tmp161777))))
                (declare (not safe))
                (cons __tmp161776 _g160653160658_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161775
                                                       '()
                                                       _L160633_))))
                                        (declare (not safe))
                                        (cons __tmp161778 __tmp161774))))
                                 (declare (not safe))
                                 (cons __tmp161773 '()))))
                          (declare (not safe))
                          (cons _L160635_ __tmp161772))))
                   (declare (not safe))
                   (cons __tmp161779 __tmp161771)))))
          (let ((___match161499161500_
                 (lambda (_e160558160583_
                          _hd160557160587_
                          _tl160556160590_
                          _e160561160593_
                          _hd160560160597_
                          _tl160559160600_
                          ___splice161457161458_
                          _target160562160603_
                          _tl160564160606_)
                   (letrec ((_loop160565160609_
                             (lambda (_hd160563160613_ _arity160569160616_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160563160613_))
                                   (let ((_e160566160619_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160563160613_))))
                                     (let ((_lp-tl160568160626_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160566160619_)))
                                           (_lp-hd160567160623_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160566160619_))))
                                       (_loop160565160609_
                                        _lp-tl160568160626_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160567160623_
                                                _arity160569160616_)))))
                                   (let ((_arity160570160629_
                                          (reverse _arity160569160616_)))
                                     (___kont161455161456_
                                      _arity160570160629_
                                      _hd160560160597_))))))
                     (_loop160565160609_ _target160562160603_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161450161451_))
                (let ((_e160547160668_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161450161451_))))
                  (let ((_tl160545160675_
                         (let () (declare (not safe)) (##cdr _e160547160668_)))
                        (_hd160546160672_
                         (let ()
                           (declare (not safe))
                           (##car _e160547160668_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160545160675_))
                        (let ((_e160550160678_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160545160675_))))
                          (let ((_tl160548160685_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160550160678_)))
                                (_hd160549160682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160550160678_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160548160685_))
                                (let ((_e160553160688_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160548160685_))))
                                  (let ((_tl160551160695_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160553160688_)))
                                        (_hd160552160692_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160553160688_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160551160695_))
                                        (___kont161453161454_
                                         _hd160552160692_
                                         _hd160549160682_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160548160685_))
                                            (let ((___splice161457161458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160548160685_
                                                      '0))))
                                              (let ((_tl160564160606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161457161458_
                                                        '1)))
                                                    (_target160562160603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161457161458_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160564160606_))
                                                    (___match161499161500_
                                                     _e160547160668_
                                                     _hd160546160672_
                                                     _tl160545160675_
                                                     _e160550160678_
                                                     _hd160549160682_
                                                     _tl160548160685_
                                                     ___splice161457161458_
                                                     _target160562160603_
                                                     _tl160564160606_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160541160576_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160541160576_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160548160685_))
                                    (let ((___splice161457161458_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160548160685_
                                              '0))))
                                      (let ((_tl160564160606_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161457161458_
                                                '1)))
                                            (_target160562160603_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161457161458_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160564160606_))
                                            (___match161499161500_
                                             _e160547160668_
                                             _hd160546160672_
                                             _tl160545160675_
                                             _e160550160678_
                                             _hd160549160682_
                                             _tl160548160685_
                                             ___splice161457161458_
                                             _target160562160603_
                                             _tl160564160606_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160541160576_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160541160576_))))))
                        (let () (declare (not safe)) (_g160541160576_)))))
                (let () (declare (not safe)) (_g160541160576_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160720_)
      (let* ((_g160724160759_
              (lambda (_g160725160755_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160725160755_))))
             (_g160723160887_
              (lambda (_g160725160763_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160725160763_))
                    (let ((_e160730160766_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160725160763_))))
                      (let ((_hd160729160770_
                             (let ()
                               (declare (not safe))
                               (##car _e160730160766_)))
                            (_tl160728160773_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160730160766_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160728160773_))
                            (let ((_g161780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160728160773_
                                      '0))))
                              (begin
                                (let ((_g161781_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161780_)
                                             (##vector-length _g161780_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161781_ 2)))
                                      (error "Context expects 2 values"
                                             _g161781_)))
                                (let ((_target160731160776_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161780_ 0)))
                                      (_tl160733160779_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161780_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160733160779_))
                                      (letrec ((_loop160734160782_
                                                (lambda (_hd160732160786_
                                                         _arity160738160789_
                                                         _prim160739160791_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160732160786_))
                                                      (let ((_e160735160794_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160732160786_))))
                (let ((_lp-hd160736160798_
                       (let () (declare (not safe)) (##car _e160735160794_)))
                      (_lp-tl160737160801_
                       (let () (declare (not safe)) (##cdr _e160735160794_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160736160798_))
                      (let ((_e160744160804_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160736160798_))))
                        (let ((_hd160743160808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160744160804_)))
                              (_tl160742160811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160744160804_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160742160811_))
                              (let ((_g161790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160742160811_
                                        '0))))
                                (begin
                                  (let ((_g161791_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161790_)
                                               (##vector-length _g161790_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161791_ 2)))
                                        (error "Context expects 2 values"
                                               _g161791_)))
                                  (let ((_target160745160814_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161790_ 0)))
                                        (_tl160747160817_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161790_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160747160817_))
                                        (letrec ((_loop160748160820_
                                                  (lambda (_hd160746160824_
                                                           _arity160752160827_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160746160824_))
                                                        (let ((_e160749160830_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160746160824_))))
                  (let ((_lp-hd160750160834_
                         (let () (declare (not safe)) (##car _e160749160830_)))
                        (_lp-tl160751160837_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160749160830_))))
                    (_loop160748160820_
                     _lp-tl160751160837_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160750160834_ _arity160752160827_)))))
                (let ((_arity160753160840_ (reverse _arity160752160827_)))
                  (_loop160734160782_
                   _lp-tl160737160801_
                   (let ()
                     (declare (not safe))
                     (cons _arity160753160840_ _arity160738160789_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160743160808_ _prim160739160791_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160748160820_
                                           _target160745160814_
                                           '()))
                                        (_g160724160759_ _g160725160763_)))))
                              (_g160724160759_ _g160725160763_))))
                      (_g160724160759_ _g160725160763_))))
              (let ((_arity160740160844_ (reverse _arity160738160789_))
                    (_prim160741160847_ (reverse _prim160739160791_)))
                ((lambda (_L160850_ _L160852_)
                   (let ((__tmp161789
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161782
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160850_
                               _L160852_))
                            (let ((__tmp161783
                                   (lambda (_g160867160873_
                                            _g160868160876_
                                            _g160869160878_)
                                     (let ((__tmp161784
                                            (let ((__tmp161788
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161785
                                                   (let ((__tmp161786
                                                          (let ((__tmp161787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160870160881_ _g160871160884_)
                           (let ()
                             (declare (not safe))
                             (cons _g160870160881_ _g160871160884_)))))
                    (declare (not safe))
                    (foldr1 __tmp161787 '() _g160867160873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160868160876_
                                                           __tmp161786))))
                                              (declare (not safe))
                                              (cons __tmp161788 __tmp161785))))
                                       (declare (not safe))
                                       (cons __tmp161784 _g160869160878_)))))
                              (declare (not safe))
                              (foldr2 __tmp161783 '() _L160850_ _L160852_)))))
                     (declare (not safe))
                     (cons __tmp161789 __tmp161782)))
                 _arity160740160844_
                 _prim160741160847_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160734160782_
                                         _target160731160776_
                                         '()
                                         '()))
                                      (_g160724160759_ _g160725160763_)))))
                            (_g160724160759_ _g160725160763_))))
                    (_g160724160759_ _g160725160763_)))))
        (_g160723160887_ _$stx160720_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160893_)
      (let* ((_g160897160932_
              (lambda (_g160898160928_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160898160928_))))
             (_g160896161060_
              (lambda (_g160898160936_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160898160936_))
                    (let ((_e160903160939_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160898160936_))))
                      (let ((_hd160902160943_
                             (let ()
                               (declare (not safe))
                               (##car _e160903160939_)))
                            (_tl160901160946_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160903160939_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160901160946_))
                            (let ((_g161792_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160901160946_
                                      '0))))
                              (begin
                                (let ((_g161793_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161792_)
                                             (##vector-length _g161792_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161793_ 2)))
                                      (error "Context expects 2 values"
                                             _g161793_)))
                                (let ((_target160904160949_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161792_ 0)))
                                      (_tl160906160952_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161792_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160906160952_))
                                      (letrec ((_loop160907160955_
                                                (lambda (_hd160905160959_
                                                         _arity160911160962_
                                                         _prim160912160964_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160905160959_))
                                                      (let ((_e160908160967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160905160959_))))
                (let ((_lp-hd160909160971_
                       (let () (declare (not safe)) (##car _e160908160967_)))
                      (_lp-tl160910160974_
                       (let () (declare (not safe)) (##cdr _e160908160967_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160909160971_))
                      (let ((_e160917160977_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160909160971_))))
                        (let ((_hd160916160981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160917160977_)))
                              (_tl160915160984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160917160977_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160915160984_))
                              (let ((_g161802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160915160984_
                                        '0))))
                                (begin
                                  (let ((_g161803_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161802_)
                                               (##vector-length _g161802_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161803_ 2)))
                                        (error "Context expects 2 values"
                                               _g161803_)))
                                  (let ((_target160918160987_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161802_ 0)))
                                        (_tl160920160990_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161802_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160920160990_))
                                        (letrec ((_loop160921160993_
                                                  (lambda (_hd160919160997_
                                                           _arity160925161000_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160919160997_))
                                                        (let ((_e160922161003_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160919160997_))))
                  (let ((_lp-hd160923161007_
                         (let () (declare (not safe)) (##car _e160922161003_)))
                        (_lp-tl160924161010_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160922161003_))))
                    (_loop160921160993_
                     _lp-tl160924161010_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160923161007_ _arity160925161000_)))))
                (let ((_arity160926161013_ (reverse _arity160925161000_)))
                  (_loop160907160955_
                   _lp-tl160910160974_
                   (let ()
                     (declare (not safe))
                     (cons _arity160926161013_ _arity160911160962_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160916160981_ _prim160912160964_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160921160993_
                                           _target160918160987_
                                           '()))
                                        (_g160897160932_ _g160898160936_)))))
                              (_g160897160932_ _g160898160936_))))
                      (_g160897160932_ _g160898160936_))))
              (let ((_arity160913161017_ (reverse _arity160911160962_))
                    (_prim160914161020_ (reverse _prim160912160964_)))
                ((lambda (_L161023_ _L161025_)
                   (let ((__tmp161801
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161794
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161023_
                               _L161025_))
                            (let ((__tmp161795
                                   (lambda (_g161040161046_
                                            _g161041161049_
                                            _g161042161051_)
                                     (let ((__tmp161796
                                            (let ((__tmp161800
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161797
                                                   (let ((__tmp161798
                                                          (let ((__tmp161799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161043161054_ _g161044161057_)
                           (let ()
                             (declare (not safe))
                             (cons _g161043161054_ _g161044161057_)))))
                    (declare (not safe))
                    (foldr1 __tmp161799 '() _g161040161046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161041161049_
                                                           __tmp161798))))
                                              (declare (not safe))
                                              (cons __tmp161800 __tmp161797))))
                                       (declare (not safe))
                                       (cons __tmp161796 _g161042161051_)))))
                              (declare (not safe))
                              (foldr2 __tmp161795 '() _L161023_ _L161025_)))))
                     (declare (not safe))
                     (cons __tmp161801 __tmp161794)))
                 _arity160913161017_
                 _prim160914161020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160907160955_
                                         _target160904160949_
                                         '()
                                         '()))
                                      (_g160897160932_ _g160898160936_)))))
                            (_g160897160932_ _g160898160936_))))
                    (_g160897160932_ _g160898160936_)))))
        (_g160896161060_ _$stx160893_)))))
