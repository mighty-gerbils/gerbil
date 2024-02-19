(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157964_)
      (let* ((_g157968157986_
              (lambda (_g157969157982_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157969157982_))))
             (_g157967158041_
              (lambda (_g157969157990_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157969157990_))
                    (let ((_e157974157993_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157969157990_))))
                      (let ((_hd157973157997_
                             (let ()
                               (declare (not safe))
                               (##car _e157974157993_)))
                            (_tl157972158000_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157974157993_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157972158000_))
                            (let ((_e157977158003_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157972158000_))))
                              (let ((_hd157976158007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157977158003_)))
                                    (_tl157975158010_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157977158003_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157975158010_))
                                    (let ((_e157980158013_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157975158010_))))
                                      (let ((_hd157979158017_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157980158013_)))
                                            (_tl157978158020_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157980158013_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157978158020_))
                                            ((lambda (_L158023_ _L158025_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158025_))
                                                   (let ((__tmp161505
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161500
                                                          (let ((__tmp161502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161504
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161503
                                (let ()
                                  (declare (not safe))
                                  (cons _L158025_ '()))))
                           (declare (not safe))
                           (cons __tmp161504 __tmp161503)))
                        (__tmp161501
                         (let () (declare (not safe)) (cons _L158023_ '()))))
                    (declare (not safe))
                    (cons __tmp161502 __tmp161501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161505
                                                           __tmp161500))
                                                   (_g157968157986_
                                                    _g157969157990_)))
                                             _hd157979158017_
                                             _hd157976158007_)
                                            (_g157968157986_
                                             _g157969157990_))))
                                    (_g157968157986_ _g157969157990_))))
                            (_g157968157986_ _g157969157990_))))
                    (_g157968157986_ _g157969157990_)))))
        (_g157967158041_ _$stx157964_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158045_)
      (let* ((_g158049158078_
              (lambda (_g158050158074_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158050158074_))))
             (_g158048158178_
              (lambda (_g158050158082_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158050158082_))
                    (let ((_e158055158085_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158050158082_))))
                      (let ((_hd158054158089_
                             (let ()
                               (declare (not safe))
                               (##car _e158055158085_)))
                            (_tl158053158092_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158055158085_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158053158092_))
                            (let ((_g161506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158053158092_
                                      '0))))
                              (begin
                                (let ((_g161507_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161506_)
                                             (##vector-length _g161506_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161507_ 2)))
                                      (error "Context expects 2 values"
                                             _g161507_)))
                                (let ((_target158056158095_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161506_ 0)))
                                      (_tl158058158098_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161506_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158058158098_))
                                      (letrec ((_loop158059158101_
                                                (lambda (_hd158057158105_
                                                         _type158063158108_
                                                         _symbol158064158110_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158057158105_))
                                                      (let ((_e158060158113_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158057158105_))))
                (let ((_lp-hd158061158117_
                       (let () (declare (not safe)) (##car _e158060158113_)))
                      (_lp-tl158062158120_
                       (let () (declare (not safe)) (##cdr _e158060158113_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158061158117_))
                      (let ((_e158069158123_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158061158117_))))
                        (let ((_hd158068158127_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158069158123_)))
                              (_tl158067158130_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158069158123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158067158130_))
                              (let ((_e158072158133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158067158130_))))
                                (let ((_hd158071158137_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158072158133_)))
                                      (_tl158070158140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158072158133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158070158140_))
                                      (_loop158059158101_
                                       _lp-tl158062158120_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158071158137_
                                               _type158063158108_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158068158127_
                                               _symbol158064158110_)))
                                      (_g158049158078_ _g158050158082_))))
                              (_g158049158078_ _g158050158082_))))
                      (_g158049158078_ _g158050158082_))))
              (let ((_type158065158143_ (reverse _type158063158108_))
                    (_symbol158066158146_ (reverse _symbol158064158110_)))
                ((lambda (_L158149_ _L158151_)
                   (let ((__tmp161514
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161508
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158149_
                               _L158151_))
                            (let ((__tmp161509
                                   (lambda (_g158166158170_
                                            _g158167158173_
                                            _g158168158175_)
                                     (let ((__tmp161510
                                            (let ((__tmp161513
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161511
                                                   (let ((__tmp161512
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158166158170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158167158173_
                                                           __tmp161512))))
                                              (declare (not safe))
                                              (cons __tmp161513 __tmp161511))))
                                       (declare (not safe))
                                       (cons __tmp161510 _g158168158175_)))))
                              (declare (not safe))
                              (foldr2 __tmp161509 '() _L158149_ _L158151_)))))
                     (declare (not safe))
                     (cons __tmp161514 __tmp161508)))
                 _type158065158143_
                 _symbol158066158146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158059158101_
                                         _target158056158095_
                                         '()
                                         '()))
                                      (_g158049158078_ _g158050158082_)))))
                            (_g158049158078_ _g158050158082_))))
                    (_g158049158078_ _g158050158082_)))))
        (_g158048158178_ _$stx158045_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158183_)
      (let* ((___stx161065161066_ _$stx158183_)
             (_g158188158230_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161065161066_)))))
        (let ((___kont161068161069_
               (lambda (_L158358_ _L158360_ _L158361_ _L158362_)
                 (let ((__tmp161528
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161515
                        (let ((__tmp161525
                               (let ((__tmp161527
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161526
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158362_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161527 __tmp161526)))
                              (__tmp161516
                               (let ((__tmp161522
                                      (let ((__tmp161524
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161523
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158361_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161524 __tmp161523)))
                                     (__tmp161517
                                      (let ((__tmp161519
                                             (let ((__tmp161521
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161520
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158360_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161521 __tmp161520)))
                                            (__tmp161518
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158358_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161519 __tmp161518))))
                                 (declare (not safe))
                                 (cons __tmp161522 __tmp161517))))
                          (declare (not safe))
                          (cons __tmp161525 __tmp161516))))
                   (declare (not safe))
                   (cons __tmp161528 __tmp161515))))
              (___kont161070161071_
               (lambda (_L158277_ _L158279_ _L158280_ _L158281_)
                 (let ((__tmp161529
                        (let ((__tmp161530
                               (let ((__tmp161531
                                      (let ((__tmp161532
                                             (let ((__tmp161533
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161533 '()))))
                                        (declare (not safe))
                                        (cons _L158277_ __tmp161532))))
                                 (declare (not safe))
                                 (cons _L158279_ __tmp161531))))
                          (declare (not safe))
                          (cons _L158280_ __tmp161530))))
                   (declare (not safe))
                   (cons _L158281_ __tmp161529)))))
          (let ((___match161104161105_
                 (lambda (_e158196158308_
                          _hd158195158312_
                          _tl158194158315_
                          _e158199158318_
                          _hd158198158322_
                          _tl158197158325_
                          _e158202158328_
                          _hd158201158332_
                          _tl158200158335_
                          _e158205158338_
                          _hd158204158342_
                          _tl158203158345_
                          _e158208158348_
                          _hd158207158352_
                          _tl158206158355_)
                   (let ((_L158358_ _hd158207158352_)
                         (_L158360_ _hd158204158342_)
                         (_L158361_ _hd158201158332_)
                         (_L158362_ _hd158198158322_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158362_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158361_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158360_)))
                         (___kont161068161069_
                          _L158358_
                          _L158360_
                          _L158361_
                          _L158362_)
                         (let () (declare (not safe)) (_g158188158230_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161065161066_))
                (let ((_e158196158308_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161065161066_))))
                  (let ((_tl158194158315_
                         (let () (declare (not safe)) (##cdr _e158196158308_)))
                        (_hd158195158312_
                         (let ()
                           (declare (not safe))
                           (##car _e158196158308_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158194158315_))
                        (let ((_e158199158318_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158194158315_))))
                          (let ((_tl158197158325_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158199158318_)))
                                (_hd158198158322_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158199158318_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158197158325_))
                                (let ((_e158202158328_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158197158325_))))
                                  (let ((_tl158200158335_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158202158328_)))
                                        (_hd158201158332_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158202158328_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158200158335_))
                                        (let ((_e158205158338_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158200158335_))))
                                          (let ((_tl158203158345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158205158338_)))
                                                (_hd158204158342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158205158338_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158203158345_))
                                                (let ((_e158208158348_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158203158345_))))
                                                  (let ((_tl158206158355_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158208158348_)))
                                                        (_hd158207158352_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158208158348_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158206158355_))
                                                        (___match161104161105_
                                                         _e158196158308_
                                                         _hd158195158312_
                                                         _tl158194158315_
                                                         _e158199158318_
                                                         _hd158198158322_
                                                         _tl158197158325_
                                                         _e158202158328_
                                                         _hd158201158332_
                                                         _tl158200158335_
                                                         _e158205158338_
                                                         _hd158204158342_
                                                         _tl158203158345_
                                                         _e158208158348_
                                                         _hd158207158352_
                                                         _tl158206158355_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158188158230_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158203158345_))
                                                    (___kont161070161071_
                                                     _hd158204158342_
                                                     _hd158201158332_
                                                     _hd158198158322_
                                                     _hd158195158312_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158188158230_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158188158230_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158188158230_)))))
                        (let () (declare (not safe)) (_g158188158230_)))))
                (let () (declare (not safe)) (_g158188158230_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158387_)
      (let* ((_g158391158426_
              (lambda (_g158392158422_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158392158422_))))
             (_g158390158545_
              (lambda (_g158392158430_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158392158430_))
                    (let ((_e158398158433_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158392158430_))))
                      (let ((_hd158397158437_
                             (let ()
                               (declare (not safe))
                               (##car _e158398158433_)))
                            (_tl158396158440_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158398158433_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158396158440_))
                            (let ((_g161534_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158396158440_
                                      '0))))
                              (begin
                                (let ((_g161535_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161534_)
                                             (##vector-length _g161534_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161535_ 2)))
                                      (error "Context expects 2 values"
                                             _g161535_)))
                                (let ((_target158399158443_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161534_ 0)))
                                      (_tl158401158446_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161534_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158401158446_))
                                      (letrec ((_loop158402158449_
                                                (lambda (_hd158400158453_
                                                         _symbol158406158456_
                                                         _method158407158458_
                                                         _type-t158408158460_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158400158453_))
                                                      (let ((_e158403158463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158400158453_))))
                (let ((_lp-hd158404158467_
                       (let () (declare (not safe)) (##car _e158403158463_)))
                      (_lp-tl158405158470_
                       (let () (declare (not safe)) (##cdr _e158403158463_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158404158467_))
                      (let ((_e158414158473_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158404158467_))))
                        (let ((_hd158413158477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158414158473_)))
                              (_tl158412158480_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158414158473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158412158480_))
                              (let ((_e158417158483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158412158480_))))
                                (let ((_hd158416158487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158417158483_)))
                                      (_tl158415158490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158417158483_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158415158490_))
                                      (let ((_e158420158493_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158415158490_))))
                                        (let ((_hd158419158497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158420158493_)))
                                              (_tl158418158500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158420158493_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158418158500_))
                                              (_loop158402158449_
                                               _lp-tl158405158470_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158419158497_
                                                       _symbol158406158456_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158416158487_
                                                       _method158407158458_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158413158477_
                                                       _type-t158408158460_)))
                                              (_g158391158426_
                                               _g158392158430_))))
                                      (_g158391158426_ _g158392158430_))))
                              (_g158391158426_ _g158392158430_))))
                      (_g158391158426_ _g158392158430_))))
              (let ((_symbol158409158503_ (reverse _symbol158406158456_))
                    (_method158410158506_ (reverse _method158407158458_))
                    (_type-t158411158508_ (reverse _type-t158408158460_)))
                ((lambda (_L158511_ _L158513_ _L158514_)
                   (let ((__tmp161543
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161536
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158511_
                               _L158513_
                               _L158514_))
                            (let ((__tmp161537
                                   (lambda (_g158530158535_
                                            _g158531158538_
                                            _g158532158540_
                                            _g158533158542_)
                                     (let ((__tmp161538
                                            (let ((__tmp161542
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161539
                                                   (let ((__tmp161540
                                                          (let ((__tmp161541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158530158535_ '()))))
                    (declare (not safe))
                    (cons _g158531158538_ __tmp161541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158532158540_
                                                           __tmp161540))))
                                              (declare (not safe))
                                              (cons __tmp161542 __tmp161539))))
                                       (declare (not safe))
                                       (cons __tmp161538 _g158533158542_)))))
                              (declare (not safe))
                              (foldr* __tmp161537
                                      '()
                                      _L158511_
                                      _L158513_
                                      _L158514_)))))
                     (declare (not safe))
                     (cons __tmp161543 __tmp161536)))
                 _symbol158409158503_
                 _method158410158506_
                 _type-t158411158508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158402158449_
                                         _target158399158443_
                                         '()
                                         '()
                                         '()))
                                      (_g158391158426_ _g158392158430_)))))
                            (_g158391158426_ _g158392158430_))))
                    (_g158391158426_ _g158392158430_)))))
        (_g158390158545_ _$stx158387_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158550_)
      (let* ((_g158554158587_
              (lambda (_g158555158583_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158555158583_))))
             (_g158553158701_
              (lambda (_g158555158591_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158555158591_))
                    (let ((_e158561158594_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158555158591_))))
                      (let ((_hd158560158598_
                             (let ()
                               (declare (not safe))
                               (##car _e158561158594_)))
                            (_tl158559158601_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158561158594_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158559158601_))
                            (let ((_e158564158604_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158559158601_))))
                              (let ((_hd158563158608_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158564158604_)))
                                    (_tl158562158611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158564158604_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158562158611_))
                                    (let ((_g161544_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158562158611_
                                              '0))))
                                      (begin
                                        (let ((_g161545_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161544_)
                                                     (##vector-length
                                                      _g161544_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161545_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161545_)))
                                        (let ((_target158565158614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161544_ 0)))
                                              (_tl158567158617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161544_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158567158617_))
                                              (letrec ((_loop158568158620_
                                                        (lambda (_hd158566158624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158572158627_
                         _method158573158629_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158566158624_))
                      (let ((_e158569158632_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158566158624_))))
                        (let ((_lp-hd158570158636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158569158632_)))
                              (_lp-tl158571158639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158569158632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158570158636_))
                              (let ((_e158578158642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158570158636_))))
                                (let ((_hd158577158646_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158578158642_)))
                                      (_tl158576158649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158578158642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158576158649_))
                                      (let ((_e158581158652_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158576158649_))))
                                        (let ((_hd158580158656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158581158652_)))
                                              (_tl158579158659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158581158652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158579158659_))
                                              (_loop158568158620_
                                               _lp-tl158571158639_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158580158656_
                                                       _symbol158572158627_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158577158646_
                                                       _method158573158629_)))
                                              (_g158554158587_
                                               _g158555158591_))))
                                      (_g158554158587_ _g158555158591_))))
                              (_g158554158587_ _g158555158591_))))
                      (let ((_symbol158574158662_
                             (reverse _symbol158572158627_))
                            (_method158575158665_
                             (reverse _method158573158629_)))
                        ((lambda (_L158668_ _L158670_ _L158671_)
                           (let ((__tmp161553
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161546
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158668_
                                       _L158670_))
                                    (let ((__tmp161547
                                           (lambda (_g158689158693_
                                                    _g158690158696_
                                                    _g158691158698_)
                                             (let ((__tmp161548
                                                    (let ((__tmp161552
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161549
                                                           (let ((__tmp161550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161551
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158689158693_ '()))))
                            (declare (not safe))
                            (cons _g158690158696_ __tmp161551))))
                     (declare (not safe))
                     (cons _L158671_ __tmp161550))))
              (declare (not safe))
              (cons __tmp161552 __tmp161549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161548
                                                     _g158691158698_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161547
                                              '()
                                              _L158668_
                                              _L158670_)))))
                             (declare (not safe))
                             (cons __tmp161553 __tmp161546)))
                         _symbol158574158662_
                         _method158575158665_
                         _hd158563158608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158568158620_
                                                 _target158565158614_
                                                 '()
                                                 '()))
                                              (_g158554158587_
                                               _g158555158591_)))))
                                    (_g158554158587_ _g158555158591_))))
                            (_g158554158587_ _g158555158591_))))
                    (_g158554158587_ _g158555158591_)))))
        (_g158553158701_ _$stx158550_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158706_)
      (let* ((_g158710158724_
              (lambda (_g158711158720_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158711158720_))))
             (_g158709158765_
              (lambda (_g158711158728_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158711158728_))
                    (let ((_e158715158731_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158711158728_))))
                      (let ((_hd158714158735_
                             (let ()
                               (declare (not safe))
                               (##car _e158715158731_)))
                            (_tl158713158738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158715158731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158713158738_))
                            (let ((_e158718158741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158713158738_))))
                              (let ((_hd158717158745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158718158741_)))
                                    (_tl158716158748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158718158741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158716158748_))
                                    ((lambda (_L158751_)
                                       (let ((__tmp161558
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161554
                                              (let ((__tmp161555
                                                     (let ((__tmp161557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161556
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161557 __tmp161556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161555 '()))))
                                         (declare (not safe))
                                         (cons __tmp161558 __tmp161554)))
                                     _hd158717158745_)
                                    (_g158710158724_ _g158711158728_))))
                            (_g158710158724_ _g158711158728_))))
                    (_g158710158724_ _g158711158728_)))))
        (_g158709158765_ _$stx158706_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158769_)
      (let* ((_g158773158823_
              (lambda (_g158774158819_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158774158819_))))
             (_g158772158990_
              (lambda (_g158774158827_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158774158827_))
                    (let ((_e158787158830_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158774158827_))))
                      (let ((_hd158786158834_
                             (let ()
                               (declare (not safe))
                               (##car _e158787158830_)))
                            (_tl158785158837_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158787158830_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158785158837_))
                            (let ((_e158790158840_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158785158837_))))
                              (let ((_hd158789158844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158790158840_)))
                                    (_tl158788158847_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158790158840_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158788158847_))
                                    (let ((_e158793158850_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158788158847_))))
                                      (let ((_hd158792158854_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158793158850_)))
                                            (_tl158791158857_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158793158850_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158791158857_))
                                            (let ((_e158796158860_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158791158857_))))
                                              (let ((_hd158795158864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158796158860_)))
                                                    (_tl158794158867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158796158860_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158794158867_))
                                                    (let ((_e158799158870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158794158867_))))
                                                      (let ((_hd158798158874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158799158870_)))
                    (_tl158797158877_
                     (let () (declare (not safe)) (##cdr _e158799158870_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158797158877_))
                    (let ((_e158802158880_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158797158877_))))
                      (let ((_hd158801158884_
                             (let ()
                               (declare (not safe))
                               (##car _e158802158880_)))
                            (_tl158800158887_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158802158880_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158800158887_))
                            (let ((_e158805158890_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158800158887_))))
                              (let ((_hd158804158894_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158805158890_)))
                                    (_tl158803158897_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158805158890_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158803158897_))
                                    (let ((_e158808158900_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158803158897_))))
                                      (let ((_hd158807158904_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158808158900_)))
                                            (_tl158806158907_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158808158900_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158806158907_))
                                            (let ((_e158811158910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158806158907_))))
                                              (let ((_hd158810158914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158811158910_)))
                                                    (_tl158809158917_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158811158910_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158809158917_))
                                                    (let ((_e158814158920_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158809158917_))))
                                                      (let ((_hd158813158924_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158814158920_)))
                    (_tl158812158927_
                     (let () (declare (not safe)) (##cdr _e158814158920_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158812158927_))
                    (let ((_e158817158930_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158812158927_))))
                      (let ((_hd158816158934_
                             (let ()
                               (declare (not safe))
                               (##car _e158817158930_)))
                            (_tl158815158937_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158817158930_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158815158937_))
                            ((lambda (_L158940_
                                      _L158942_
                                      _L158943_
                                      _L158944_
                                      _L158945_
                                      _L158946_
                                      _L158947_
                                      _L158948_
                                      _L158949_
                                      _L158950_)
                               (let ((__tmp161593
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp161559
                                      (let ((__tmp161590
                                             (let ((__tmp161592
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161591
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158950_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161592 __tmp161591)))
                                            (__tmp161560
                                             (let ((__tmp161587
                                                    (let ((__tmp161589
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp161588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L158949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp161589 __tmp161588)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp161561
                                                    (let ((__tmp161584
                                                           (let ((__tmp161586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161585
                          (let () (declare (not safe)) (cons _L158948_ '()))))
                     (declare (not safe))
                     (cons __tmp161586 __tmp161585)))
                  (__tmp161562
                   (let ((__tmp161581
                          (let ((__tmp161583
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp161582
                                 (let ()
                                   (declare (not safe))
                                   (cons _L158947_ '()))))
                            (declare (not safe))
                            (cons __tmp161583 __tmp161582)))
                         (__tmp161563
                          (let ((__tmp161578
                                 (let ((__tmp161580
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp161579
                                        (let ()
                                          (declare (not safe))
                                          (cons _L158946_ '()))))
                                   (declare (not safe))
                                   (cons __tmp161580 __tmp161579)))
                                (__tmp161564
                                 (let ((__tmp161575
                                        (let ((__tmp161577
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp161576
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L158945_ '()))))
                                          (declare (not safe))
                                          (cons __tmp161577 __tmp161576)))
                                       (__tmp161565
                                        (let ((__tmp161566
                                               (let ((__tmp161567
                                                      (let ((__tmp161572
                                                             (let ((__tmp161574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161573
                            (let ()
                              (declare (not safe))
                              (cons _L158942_ '()))))
                       (declare (not safe))
                       (cons __tmp161574 __tmp161573)))
                    (__tmp161568
                     (let ((__tmp161569
                            (let ((__tmp161571
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161570
                                   (let ()
                                     (declare (not safe))
                                     (cons _L158940_ '()))))
                              (declare (not safe))
                              (cons __tmp161571 __tmp161570))))
                       (declare (not safe))
                       (cons __tmp161569 '()))))
                (declare (not safe))
                (cons __tmp161572 __tmp161568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L158943_
                                                       __tmp161567))))
                                          (declare (not safe))
                                          (cons _L158944_ __tmp161566))))
                                   (declare (not safe))
                                   (cons __tmp161575 __tmp161565))))
                            (declare (not safe))
                            (cons __tmp161578 __tmp161564))))
                     (declare (not safe))
                     (cons __tmp161581 __tmp161563))))
              (declare (not safe))
              (cons __tmp161584 __tmp161562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161587
                                                     __tmp161561))))
                                        (declare (not safe))
                                        (cons __tmp161590 __tmp161560))))
                                 (declare (not safe))
                                 (cons __tmp161593 __tmp161559)))
                             _hd158816158934_
                             _hd158813158924_
                             _hd158810158914_
                             _hd158807158904_
                             _hd158804158894_
                             _hd158801158884_
                             _hd158798158874_
                             _hd158795158864_
                             _hd158792158854_
                             _hd158789158844_)
                            (_g158773158823_ _g158774158827_))))
                    (_g158773158823_ _g158774158827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158773158823_
                                                     _g158774158827_))))
                                            (_g158773158823_
                                             _g158774158827_))))
                                    (_g158773158823_ _g158774158827_))))
                            (_g158773158823_ _g158774158827_))))
                    (_g158773158823_ _g158774158827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158773158823_
                                                     _g158774158827_))))
                                            (_g158773158823_
                                             _g158774158827_))))
                                    (_g158773158823_ _g158774158827_))))
                            (_g158773158823_ _g158774158827_))))
                    (_g158773158823_ _g158774158827_)))))
        (_g158772158990_ _$stx158769_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx158994_)
      (let* ((_g158998159012_
              (lambda (_g158999159008_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158999159008_))))
             (_g158997159053_
              (lambda (_g158999159016_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158999159016_))
                    (let ((_e159003159019_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158999159016_))))
                      (let ((_hd159002159023_
                             (let ()
                               (declare (not safe))
                               (##car _e159003159019_)))
                            (_tl159001159026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159003159019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159001159026_))
                            (let ((_e159006159029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159001159026_))))
                              (let ((_hd159005159033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159006159029_)))
                                    (_tl159004159036_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159006159029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159004159036_))
                                    ((lambda (_L159039_)
                                       (let ((__tmp161598
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161594
                                              (let ((__tmp161595
                                                     (let ((__tmp161597
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161596
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161597 __tmp161596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161595 '()))))
                                         (declare (not safe))
                                         (cons __tmp161598 __tmp161594)))
                                     _hd159005159033_)
                                    (_g158998159012_ _g158999159016_))))
                            (_g158998159012_ _g158999159016_))))
                    (_g158998159012_ _g158999159016_)))))
        (_g158997159053_ _$stx158994_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159057_)
      (let* ((_g159061159075_
              (lambda (_g159062159071_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159062159071_))))
             (_g159060159116_
              (lambda (_g159062159079_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159062159079_))
                    (let ((_e159066159082_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159062159079_))))
                      (let ((_hd159065159086_
                             (let ()
                               (declare (not safe))
                               (##car _e159066159082_)))
                            (_tl159064159089_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159066159082_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159064159089_))
                            (let ((_e159069159092_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159064159089_))))
                              (let ((_hd159068159096_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159069159092_)))
                                    (_tl159067159099_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159069159092_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159067159099_))
                                    ((lambda (_L159102_)
                                       (let ((__tmp161603
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161599
                                              (let ((__tmp161600
                                                     (let ((__tmp161602
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161601
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161602 __tmp161601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161600 '()))))
                                         (declare (not safe))
                                         (cons __tmp161603 __tmp161599)))
                                     _hd159068159096_)
                                    (_g159061159075_ _g159062159079_))))
                            (_g159061159075_ _g159062159079_))))
                    (_g159061159075_ _g159062159079_)))))
        (_g159060159116_ _$stx159057_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159120_)
      (let* ((_g159124159146_
              (lambda (_g159125159142_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159125159142_))))
             (_g159123159215_
              (lambda (_g159125159150_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159125159150_))
                    (let ((_e159131159153_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159125159150_))))
                      (let ((_hd159130159157_
                             (let ()
                               (declare (not safe))
                               (##car _e159131159153_)))
                            (_tl159129159160_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159131159153_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159129159160_))
                            (let ((_e159134159163_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159129159160_))))
                              (let ((_hd159133159167_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159134159163_)))
                                    (_tl159132159170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159134159163_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159132159170_))
                                    (let ((_e159137159173_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159132159170_))))
                                      (let ((_hd159136159177_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159137159173_)))
                                            (_tl159135159180_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159137159173_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159135159180_))
                                            (let ((_e159140159183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159135159180_))))
                                              (let ((_hd159139159187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159140159183_)))
                                                    (_tl159138159190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159140159183_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159138159190_))
                                                    ((lambda (_L159193_
                                                              _L159195_
                                                              _L159196_)
                                                       (let ((__tmp161613
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161604
                      (let ((__tmp161610
                             (let ((__tmp161612
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161611
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159196_ '()))))
                               (declare (not safe))
                               (cons __tmp161612 __tmp161611)))
                            (__tmp161605
                             (let ((__tmp161607
                                    (let ((__tmp161609
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161608
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159195_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161609 __tmp161608)))
                                   (__tmp161606
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159193_ '()))))
                               (declare (not safe))
                               (cons __tmp161607 __tmp161606))))
                        (declare (not safe))
                        (cons __tmp161610 __tmp161605))))
                 (declare (not safe))
                 (cons __tmp161613 __tmp161604)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159139159187_
                                                     _hd159136159177_
                                                     _hd159133159167_)
                                                    (_g159124159146_
                                                     _g159125159150_))))
                                            (_g159124159146_
                                             _g159125159150_))))
                                    (_g159124159146_ _g159125159150_))))
                            (_g159124159146_ _g159125159150_))))
                    (_g159124159146_ _g159125159150_)))))
        (_g159123159215_ _$stx159120_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159219_)
      (let* ((_g159223159245_
              (lambda (_g159224159241_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159224159241_))))
             (_g159222159314_
              (lambda (_g159224159249_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159224159249_))
                    (let ((_e159230159252_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159224159249_))))
                      (let ((_hd159229159256_
                             (let ()
                               (declare (not safe))
                               (##car _e159230159252_)))
                            (_tl159228159259_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159230159252_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159228159259_))
                            (let ((_e159233159262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159228159259_))))
                              (let ((_hd159232159266_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159233159262_)))
                                    (_tl159231159269_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159233159262_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159231159269_))
                                    (let ((_e159236159272_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159231159269_))))
                                      (let ((_hd159235159276_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159236159272_)))
                                            (_tl159234159279_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159236159272_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159234159279_))
                                            (let ((_e159239159282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159234159279_))))
                                              (let ((_hd159238159286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159239159282_)))
                                                    (_tl159237159289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159239159282_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159237159289_))
                                                    ((lambda (_L159292_
                                                              _L159294_
                                                              _L159295_)
                                                       (let ((__tmp161623
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161614
                      (let ((__tmp161620
                             (let ((__tmp161622
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161621
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159295_ '()))))
                               (declare (not safe))
                               (cons __tmp161622 __tmp161621)))
                            (__tmp161615
                             (let ((__tmp161617
                                    (let ((__tmp161619
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161618
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159294_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161619 __tmp161618)))
                                   (__tmp161616
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159292_ '()))))
                               (declare (not safe))
                               (cons __tmp161617 __tmp161616))))
                        (declare (not safe))
                        (cons __tmp161620 __tmp161615))))
                 (declare (not safe))
                 (cons __tmp161623 __tmp161614)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159238159286_
                                                     _hd159235159276_
                                                     _hd159232159266_)
                                                    (_g159223159245_
                                                     _g159224159249_))))
                                            (_g159223159245_
                                             _g159224159249_))))
                                    (_g159223159245_ _g159224159249_))))
                            (_g159223159245_ _g159224159249_))))
                    (_g159223159245_ _g159224159249_)))))
        (_g159222159314_ _$stx159219_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159318_)
      (let* ((___stx161133161134_ _$stx159318_)
             (_g159326159394_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161133161134_)))))
        (let ((___kont161136161137_
               (lambda (_L159672_ _L159674_)
                 (let ((__tmp161639
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161624
                        (let ((__tmp161635
                               (let ((__tmp161638
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161636
                                      (let ((__tmp161637
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161637 '()))))
                                 (declare (not safe))
                                 (cons __tmp161638 __tmp161636)))
                              (__tmp161625
                               (let ((__tmp161632
                                      (let ((__tmp161634
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161633
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159674_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161634 __tmp161633)))
                                     (__tmp161626
                                      (let ((__tmp161627
                                             (let ((__tmp161628
                                                    (let ((__tmp161629
                                                           (let ((__tmp161631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161630
                          (let () (declare (not safe)) (cons _L159672_ '()))))
                     (declare (not safe))
                     (cons __tmp161631 __tmp161630))))
              (declare (not safe))
              (cons __tmp161629 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159672_ __tmp161628))))
                                        (declare (not safe))
                                        (cons '#f __tmp161627))))
                                 (declare (not safe))
                                 (cons __tmp161632 __tmp161626))))
                          (declare (not safe))
                          (cons __tmp161635 __tmp161625))))
                   (declare (not safe))
                   (cons __tmp161639 __tmp161624))))
              (___kont161138161139_
               (lambda (_L159603_ _L159605_)
                 (let ((__tmp161640
                        (let ((__tmp161641
                               (let ((__tmp161642
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159603_ __tmp161642))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161641))))
                   (declare (not safe))
                   (cons _L159605_ __tmp161640))))
              (___kont161140161141_
               (lambda (_L159542_ _L159544_)
                 (let ((__tmp161656
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161643
                        (let ((__tmp161652
                               (let ((__tmp161655
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161653
                                      (let ((__tmp161654
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161654 '()))))
                                 (declare (not safe))
                                 (cons __tmp161655 __tmp161653)))
                              (__tmp161644
                               (let ((__tmp161649
                                      (let ((__tmp161651
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161650
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159544_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161651 __tmp161650)))
                                     (__tmp161645
                                      (let ((__tmp161646
                                             (let ((__tmp161648
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161647
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159542_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161648
                                                     __tmp161647))))
                                        (declare (not safe))
                                        (cons __tmp161646 '()))))
                                 (declare (not safe))
                                 (cons __tmp161649 __tmp161645))))
                          (declare (not safe))
                          (cons __tmp161652 __tmp161644))))
                   (declare (not safe))
                   (cons __tmp161656 __tmp161643))))
              (___kont161142161143_
               (lambda (_L159474_ _L159476_)
                 (let ((__tmp161670
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161657
                        (let ((__tmp161666
                               (let ((__tmp161669
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161667
                                      (let ((__tmp161668
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161668 '()))))
                                 (declare (not safe))
                                 (cons __tmp161669 __tmp161667)))
                              (__tmp161658
                               (let ((__tmp161663
                                      (let ((__tmp161665
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161664
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159476_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161665 __tmp161664)))
                                     (__tmp161659
                                      (let ((__tmp161660
                                             (let ((__tmp161662
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161661
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159474_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161662
                                                     __tmp161661))))
                                        (declare (not safe))
                                        (cons __tmp161660 '()))))
                                 (declare (not safe))
                                 (cons __tmp161663 __tmp161659))))
                          (declare (not safe))
                          (cons __tmp161666 __tmp161658))))
                   (declare (not safe))
                   (cons __tmp161670 __tmp161657))))
              (___kont161144161145_
               (lambda (_L159421_ _L159423_)
                 (let ((__tmp161671
                        (let ((__tmp161672
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159421_ __tmp161672))))
                   (declare (not safe))
                   (cons _L159423_ __tmp161671)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161133161134_))
              (let ((_e159332159628_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161133161134_))))
                (let ((_tl159330159635_
                       (let () (declare (not safe)) (##cdr _e159332159628_)))
                      (_hd159331159632_
                       (let () (declare (not safe)) (##car _e159332159628_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159330159635_))
                      (let ((_e159335159638_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159330159635_))))
                        (let ((_tl159333159645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159335159638_)))
                              (_hd159334159642_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159335159638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159333159645_))
                              (let ((_e159338159648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159333159645_))))
                                (let ((_tl159336159655_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159338159648_)))
                                      (_hd159337159652_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159338159648_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159337159652_))
                                      (let ((_e159339159658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159337159652_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159339159658_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159336159655_))
                                                (let ((_e159342159662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159336159655_))))
                                                  (let ((_tl159340159669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159342159662_)))
                                                        (_hd159341159666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159342159662_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159340159669_))
                                                        (___kont161136161137_
                                                         _hd159341159666_
                                                         _hd159334159642_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159334159642_))
                                                            (let ((_e159351159589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159334159642_))))
                      (declare (not safe))
                      (_g159326159394_))
                    (let () (declare (not safe)) (_g159326159394_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159334159642_))
                                                    (let ((_e159351159589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159334159642_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159351159589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159336159655_))
                      (___kont161138161139_ _hd159337159652_ _hd159331159632_)
                      (let () (declare (not safe)) (_g159326159394_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159336159655_))
                      (___kont161142161143_ _hd159337159652_ _hd159334159642_)
                      (let () (declare (not safe)) (_g159326159394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159336159655_))
                                                        (___kont161142161143_
                                                         _hd159337159652_
                                                         _hd159334159642_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159326159394_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159334159642_))
                                                (let ((_e159351159589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159334159642_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159351159589_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159336159655_))
                                                          (___kont161138161139_
                                                           _hd159337159652_
                                                           _hd159331159632_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159336159655_))
                      (let ((_e159369159532_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159336159655_))))
                        (let ((_tl159367159539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159369159532_)))
                              (_hd159368159536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159369159532_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159367159539_))
                              (___kont161140161141_
                               _hd159368159536_
                               _hd159337159652_)
                              (let ()
                                (declare (not safe))
                                (_g159326159394_)))))
                      (let () (declare (not safe)) (_g159326159394_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159336159655_))
                  (___kont161142161143_ _hd159337159652_ _hd159334159642_)
                  (let () (declare (not safe)) (_g159326159394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159336159655_))
                                                    (___kont161142161143_
                                                     _hd159337159652_
                                                     _hd159334159642_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159326159394_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159334159642_))
                                          (let ((_e159351159589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159334159642_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159351159589_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159336159655_))
                                                    (___kont161138161139_
                                                     _hd159337159652_
                                                     _hd159331159632_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159336159655_))
                                                        (let ((_e159369159532_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159336159655_))))
                  (let ((_tl159367159539_
                         (let () (declare (not safe)) (##cdr _e159369159532_)))
                        (_hd159368159536_
                         (let ()
                           (declare (not safe))
                           (##car _e159369159532_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159367159539_))
                        (___kont161140161141_
                         _hd159368159536_
                         _hd159337159652_)
                        (let () (declare (not safe)) (_g159326159394_)))))
                (let () (declare (not safe)) (_g159326159394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159336159655_))
                                                    (___kont161142161143_
                                                     _hd159337159652_
                                                     _hd159334159642_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159326159394_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159336159655_))
                                              (___kont161142161143_
                                               _hd159337159652_
                                               _hd159334159642_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159326159394_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159334159642_))
                                  (let ((_e159351159589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159334159642_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159333159645_))
                                        (___kont161144161145_
                                         _hd159334159642_
                                         _hd159331159632_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159326159394_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159333159645_))
                                      (___kont161144161145_
                                       _hd159334159642_
                                       _hd159331159632_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159326159394_)))))))
                      (let () (declare (not safe)) (_g159326159394_)))))
              (let () (declare (not safe)) (_g159326159394_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159696_)
      (let* ((___stx161273161274_ _$stx159696_)
             (_g159701159756_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161273161274_)))))
        (let ((___kont161276161277_
               (lambda (_L159941_ _L159943_)
                 (let ((__tmp161688
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161673
                        (let ((__tmp161684
                               (let ((__tmp161687
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161685
                                      (let ((__tmp161686
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161686 '()))))
                                 (declare (not safe))
                                 (cons __tmp161687 __tmp161685)))
                              (__tmp161674
                               (let ((__tmp161675
                                      (let ((__tmp161683
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161676
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159941_
                                                  _L159943_))
                                               (let ((__tmp161677
                                                      (lambda (_g159960159964_
                                                               _g159961159967_
                                                               _g159962159969_)
                                                        (let ((__tmp161678
                                                               (let ((__tmp161682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161679
                              (let ((__tmp161680
                                     (let ((__tmp161681
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159960159964_ '()))))
                                       (declare (not safe))
                                       (cons _g159961159967_ __tmp161681))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161680))))
                         (declare (not safe))
                         (cons __tmp161682 __tmp161679))))
                  (declare (not safe))
                  (cons __tmp161678 _g159962159969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161677
                                                         '()
                                                         _L159941_
                                                         _L159943_)))))
                                        (declare (not safe))
                                        (cons __tmp161683 __tmp161676))))
                                 (declare (not safe))
                                 (cons __tmp161675 '()))))
                          (declare (not safe))
                          (cons __tmp161684 __tmp161674))))
                   (declare (not safe))
                   (cons __tmp161688 __tmp161673))))
              (___kont161280161281_
               (lambda (_L159827_ _L159829_)
                 (let ((__tmp161703
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161689
                        (let ((__tmp161699
                               (let ((__tmp161702
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161700
                                      (let ((__tmp161701
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161701 '()))))
                                 (declare (not safe))
                                 (cons __tmp161702 __tmp161700)))
                              (__tmp161690
                               (let ((__tmp161691
                                      (let ((__tmp161698
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161692
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159827_
                                                  _L159829_))
                                               (let ((__tmp161693
                                                      (lambda (_g159844159848_
                                                               _g159845159851_
                                                               _g159846159853_)
                                                        (let ((__tmp161694
                                                               (let ((__tmp161697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161695
                              (let ((__tmp161696
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159844159848_ '()))))
                                (declare (not safe))
                                (cons _g159845159851_ __tmp161696))))
                         (declare (not safe))
                         (cons __tmp161697 __tmp161695))))
                  (declare (not safe))
                  (cons __tmp161694 _g159846159853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161693
                                                         '()
                                                         _L159827_
                                                         _L159829_)))))
                                        (declare (not safe))
                                        (cons __tmp161698 __tmp161692))))
                                 (declare (not safe))
                                 (cons __tmp161691 '()))))
                          (declare (not safe))
                          (cons __tmp161699 __tmp161690))))
                   (declare (not safe))
                   (cons __tmp161703 __tmp161689)))))
          (let* ((___match161324161325_
                  (lambda (_e159733159763_
                           _hd159732159767_
                           _tl159731159770_
                           ___splice161282161283_
                           _target159734159773_
                           _tl159736159776_)
                    (letrec ((_loop159737159779_
                              (lambda (_hd159735159783_
                                       _dispatch159741159786_
                                       _arity159742159788_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159735159783_))
                                    (let ((_e159738159791_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159735159783_))))
                                      (let ((_lp-tl159740159798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159738159791_)))
                                            (_lp-hd159739159795_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159738159791_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159739159795_))
                                            (let ((_e159747159801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159739159795_))))
                                              (let ((_tl159745159808_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159747159801_)))
                                                    (_hd159746159805_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159747159801_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159745159808_))
                                                    (let ((_e159750159811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159745159808_))))
                                                      (let ((_tl159748159818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159750159811_)))
                    (_hd159749159815_
                     (let () (declare (not safe)) (##car _e159750159811_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159748159818_))
                    (_loop159737159779_
                     _lp-tl159740159798_
                     (let ()
                       (declare (not safe))
                       (cons _hd159749159815_ _dispatch159741159786_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159746159805_ _arity159742159788_)))
                    (let () (declare (not safe)) (_g159701159756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159701159756_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159701159756_)))))
                                    (let ((_arity159744159824_
                                           (reverse _arity159742159788_))
                                          (_dispatch159743159821_
                                           (reverse _dispatch159741159786_)))
                                      (___kont161280161281_
                                       _dispatch159743159821_
                                       _arity159744159824_))))))
                      (_loop159737159779_ _target159734159773_ '() '()))))
                 (___match161316161317_
                  (lambda (_e159733159763_ _hd159732159767_ _tl159731159770_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159731159770_))
                        (let ((___splice161282161283_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159731159770_
                                  '0))))
                          (let ((_tl159736159776_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161282161283_ '1)))
                                (_target159734159773_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161282161283_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159736159776_))
                                (___match161324161325_
                                 _e159733159763_
                                 _hd159732159767_
                                 _tl159731159770_
                                 ___splice161282161283_
                                 _target159734159773_
                                 _tl159736159776_)
                                (let ()
                                  (declare (not safe))
                                  (_g159701159756_)))))
                        (let () (declare (not safe)) (_g159701159756_)))))
                 (___match161310161311_
                  (lambda (_e159707159863_
                           _hd159706159867_
                           _tl159705159870_
                           _e159710159873_
                           _hd159709159877_
                           _tl159708159880_
                           _e159711159883_
                           ___splice161278161279_
                           _target159712159887_
                           _tl159714159890_)
                    (letrec ((_loop159715159893_
                              (lambda (_hd159713159897_
                                       _dispatch159719159900_
                                       _arity159720159902_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159713159897_))
                                    (let ((_e159716159905_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159713159897_))))
                                      (let ((_lp-tl159718159912_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159716159905_)))
                                            (_lp-hd159717159909_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159716159905_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159717159909_))
                                            (let ((_e159725159915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159717159909_))))
                                              (let ((_tl159723159922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159725159915_)))
                                                    (_hd159724159919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159725159915_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159723159922_))
                                                    (let ((_e159728159925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159723159922_))))
                                                      (let ((_tl159726159932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159728159925_)))
                    (_hd159727159929_
                     (let () (declare (not safe)) (##car _e159728159925_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159726159932_))
                    (_loop159715159893_
                     _lp-tl159718159912_
                     (let ()
                       (declare (not safe))
                       (cons _hd159727159929_ _dispatch159719159900_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159724159919_ _arity159720159902_)))
                    (___match161316161317_
                     _e159707159863_
                     _hd159706159867_
                     _tl159705159870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161316161317_
                                                     _e159707159863_
                                                     _hd159706159867_
                                                     _tl159705159870_))))
                                            (___match161316161317_
                                             _e159707159863_
                                             _hd159706159867_
                                             _tl159705159870_))))
                                    (let ((_arity159722159938_
                                           (reverse _arity159720159902_))
                                          (_dispatch159721159935_
                                           (reverse _dispatch159719159900_)))
                                      (___kont161276161277_
                                       _dispatch159721159935_
                                       _arity159722159938_))))))
                      (_loop159715159893_ _target159712159887_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161273161274_))
                (let ((_e159707159863_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161273161274_))))
                  (let ((_tl159705159870_
                         (let () (declare (not safe)) (##cdr _e159707159863_)))
                        (_hd159706159867_
                         (let ()
                           (declare (not safe))
                           (##car _e159707159863_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159705159870_))
                        (let ((_e159710159873_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159705159870_))))
                          (let ((_tl159708159880_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159710159873_)))
                                (_hd159709159877_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159710159873_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159709159877_))
                                (let ((_e159711159883_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159709159877_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159711159883_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159708159880_))
                                          (let ((___splice161278161279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159708159880_
                                                    '0))))
                                            (let ((_tl159714159890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161278161279_
                                                      '1)))
                                                  (_target159712159887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161278161279_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159714159890_))
                                                  (___match161310161311_
                                                   _e159707159863_
                                                   _hd159706159867_
                                                   _tl159705159870_
                                                   _e159710159873_
                                                   _hd159709159877_
                                                   _tl159708159880_
                                                   _e159711159883_
                                                   ___splice161278161279_
                                                   _target159712159887_
                                                   _tl159714159890_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159705159870_))
                                                      (let ((___splice161282161283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159705159870_ '0))))
                (let ((_tl159736159776_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161282161283_ '1)))
                      (_target159734159773_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161282161283_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159736159776_))
                      (___match161324161325_
                       _e159707159863_
                       _hd159706159867_
                       _tl159705159870_
                       ___splice161282161283_
                       _target159734159773_
                       _tl159736159776_)
                      (let () (declare (not safe)) (_g159701159756_)))))
              (let () (declare (not safe)) (_g159701159756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159705159870_))
                                              (let ((___splice161282161283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159705159870_
                                                        '0))))
                                                (let ((_tl159736159776_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161282161283_
                                                          '1)))
                                                      (_target159734159773_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161282161283_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159736159776_))
                                                      (___match161324161325_
                                                       _e159707159863_
                                                       _hd159706159867_
                                                       _tl159705159870_
                                                       ___splice161282161283_
                                                       _target159734159773_
                                                       _tl159736159776_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159701159756_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159701159756_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159705159870_))
                                          (let ((___splice161282161283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159705159870_
                                                    '0))))
                                            (let ((_tl159736159776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161282161283_
                                                      '1)))
                                                  (_target159734159773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161282161283_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159736159776_))
                                                  (___match161324161325_
                                                   _e159707159863_
                                                   _hd159706159867_
                                                   _tl159705159870_
                                                   ___splice161282161283_
                                                   _target159734159773_
                                                   _tl159736159776_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159701159756_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159701159756_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159705159870_))
                                    (let ((___splice161282161283_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159705159870_
                                              '0))))
                                      (let ((_tl159736159776_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161282161283_
                                                '1)))
                                            (_target159734159773_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161282161283_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159736159776_))
                                            (___match161324161325_
                                             _e159707159863_
                                             _hd159706159867_
                                             _tl159705159870_
                                             ___splice161282161283_
                                             _target159734159773_
                                             _tl159736159776_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159701159756_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159701159756_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159705159870_))
                            (let ((___splice161282161283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159705159870_
                                      '0))))
                              (let ((_tl159736159776_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161282161283_
                                        '1)))
                                    (_target159734159773_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161282161283_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159736159776_))
                                    (___match161324161325_
                                     _e159707159863_
                                     _hd159706159867_
                                     _tl159705159870_
                                     ___splice161282161283_
                                     _target159734159773_
                                     _tl159736159776_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159701159756_)))))
                            (let () (declare (not safe)) (_g159701159756_))))))
                (let () (declare (not safe)) (_g159701159756_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159978_)
      (let* ((_g159982160000_
              (lambda (_g159983159996_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159983159996_))))
             (_g159981160055_
              (lambda (_g159983160004_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159983160004_))
                    (let ((_e159988160007_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159983160004_))))
                      (let ((_hd159987160011_
                             (let ()
                               (declare (not safe))
                               (##car _e159988160007_)))
                            (_tl159986160014_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159988160007_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159986160014_))
                            (let ((_e159991160017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159986160014_))))
                              (let ((_hd159990160021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159991160017_)))
                                    (_tl159989160024_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159991160017_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159989160024_))
                                    (let ((_e159994160027_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159989160024_))))
                                      (let ((_hd159993160031_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159994160027_)))
                                            (_tl159992160034_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159994160027_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159992160034_))
                                            ((lambda (_L160037_ _L160039_)
                                               (let ((__tmp161717
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161704
                                                      (let ((__tmp161713
                                                             (let ((__tmp161716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161714
                            (let ((__tmp161715
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161715 '()))))
                       (declare (not safe))
                       (cons __tmp161716 __tmp161714)))
                    (__tmp161705
                     (let ((__tmp161710
                            (let ((__tmp161712
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161711
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160039_ '()))))
                              (declare (not safe))
                              (cons __tmp161712 __tmp161711)))
                           (__tmp161706
                            (let ((__tmp161707
                                   (let ((__tmp161709
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161708
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160037_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161709 __tmp161708))))
                              (declare (not safe))
                              (cons __tmp161707 '()))))
                       (declare (not safe))
                       (cons __tmp161710 __tmp161706))))
                (declare (not safe))
                (cons __tmp161713 __tmp161705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161717
                                                       __tmp161704)))
                                             _hd159993160031_
                                             _hd159990160021_)
                                            (_g159982160000_
                                             _g159983160004_))))
                                    (_g159982160000_ _g159983160004_))))
                            (_g159982160000_ _g159983160004_))))
                    (_g159982160000_ _g159983160004_)))))
        (_g159981160055_ _$stx159978_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160059_)
      (let* ((_g160063160081_
              (lambda (_g160064160077_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160064160077_))))
             (_g160062160136_
              (lambda (_g160064160085_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160064160085_))
                    (let ((_e160069160088_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160064160085_))))
                      (let ((_hd160068160092_
                             (let ()
                               (declare (not safe))
                               (##car _e160069160088_)))
                            (_tl160067160095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160069160088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160067160095_))
                            (let ((_e160072160098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160067160095_))))
                              (let ((_hd160071160102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160072160098_)))
                                    (_tl160070160105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160072160098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160070160105_))
                                    (let ((_e160075160108_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160070160105_))))
                                      (let ((_hd160074160112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160075160108_)))
                                            (_tl160073160115_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160075160108_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160073160115_))
                                            ((lambda (_L160118_ _L160120_)
                                               (let ((__tmp161731
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161718
                                                      (let ((__tmp161727
                                                             (let ((__tmp161730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161728
                            (let ((__tmp161729
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161729 '()))))
                       (declare (not safe))
                       (cons __tmp161730 __tmp161728)))
                    (__tmp161719
                     (let ((__tmp161724
                            (let ((__tmp161726
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161725
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160120_ '()))))
                              (declare (not safe))
                              (cons __tmp161726 __tmp161725)))
                           (__tmp161720
                            (let ((__tmp161721
                                   (let ((__tmp161723
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161722
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160118_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161723 __tmp161722))))
                              (declare (not safe))
                              (cons __tmp161721 '()))))
                       (declare (not safe))
                       (cons __tmp161724 __tmp161720))))
                (declare (not safe))
                (cons __tmp161727 __tmp161719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161731
                                                       __tmp161718)))
                                             _hd160074160112_
                                             _hd160071160102_)
                                            (_g160063160081_
                                             _g160064160085_))))
                                    (_g160063160081_ _g160064160085_))))
                            (_g160063160081_ _g160064160085_))))
                    (_g160063160081_ _g160064160085_)))))
        (_g160062160136_ _$stx160059_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160140_)
      (let* ((___stx161327161328_ _$stx160140_)
             (_g160147160218_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161327161328_)))))
        (let ((___kont161330161331_
               (lambda (_L160509_ _L160511_)
                 (let ((__tmp161737
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161732
                        (let ((__tmp161733
                               (let ((__tmp161734
                                      (let ((__tmp161736
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161735
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160509_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161736 __tmp161735))))
                                 (declare (not safe))
                                 (cons __tmp161734 '()))))
                          (declare (not safe))
                          (cons _L160511_ __tmp161733))))
                   (declare (not safe))
                   (cons __tmp161737 __tmp161732))))
              (___kont161332161333_
               (lambda (_L160428_ _L160430_)
                 (let ((__tmp161746
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161738
                        (let ((__tmp161739
                               (let ((__tmp161740
                                      (let ((__tmp161745
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161741
                                             (let ((__tmp161742
                                                    (lambda (_g160449160452_
                                                             _g160450160455_)
                                                      (let ((__tmp161743
                                                             (let ((__tmp161744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160449160452_ __tmp161744))))
                (declare (not safe))
                (cons __tmp161743 _g160450160455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161742
                                                       '()
                                                       _L160428_))))
                                        (declare (not safe))
                                        (cons __tmp161745 __tmp161741))))
                                 (declare (not safe))
                                 (cons __tmp161740 '()))))
                          (declare (not safe))
                          (cons _L160430_ __tmp161739))))
                   (declare (not safe))
                   (cons __tmp161746 __tmp161738))))
              (___kont161336161337_
               (lambda (_L160340_ _L160342_)
                 (let ((__tmp161753
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161747
                        (let ((__tmp161748
                               (let ((__tmp161749
                                      (let ((__tmp161752
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161750
                                             (let ((__tmp161751
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160340_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161751))))
                                        (declare (not safe))
                                        (cons __tmp161752 __tmp161750))))
                                 (declare (not safe))
                                 (cons __tmp161749 '()))))
                          (declare (not safe))
                          (cons _L160342_ __tmp161748))))
                   (declare (not safe))
                   (cons __tmp161753 __tmp161747))))
              (___kont161338161339_
               (lambda (_L160275_ _L160277_)
                 (let ((__tmp161763
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161754
                        (let ((__tmp161755
                               (let ((__tmp161756
                                      (let ((__tmp161762
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161757
                                             (let ((__tmp161758
                                                    (let ((__tmp161759
                                                           (lambda (_g160294160297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160295160300_)
                     (let ((__tmp161760
                            (let ((__tmp161761
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160294160297_ __tmp161761))))
                       (declare (not safe))
                       (cons __tmp161760 _g160295160300_)))))
              (declare (not safe))
              (foldr1 __tmp161759 '() _L160275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161758))))
                                        (declare (not safe))
                                        (cons __tmp161762 __tmp161757))))
                                 (declare (not safe))
                                 (cons __tmp161756 '()))))
                          (declare (not safe))
                          (cons _L160277_ __tmp161755))))
                   (declare (not safe))
                   (cons __tmp161763 __tmp161754)))))
          (let* ((___match161446161447_
                  (lambda (_e160200160225_
                           _hd160199160229_
                           _tl160198160232_
                           _e160203160235_
                           _hd160202160239_
                           _tl160201160242_
                           ___splice161340161341_
                           _target160204160245_
                           _tl160206160248_)
                    (letrec ((_loop160207160251_
                              (lambda (_hd160205160255_ _arity160211160258_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160205160255_))
                                    (let ((_e160208160261_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160205160255_))))
                                      (let ((_lp-tl160210160268_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160208160261_)))
                                            (_lp-hd160209160265_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160208160261_))))
                                        (_loop160207160251_
                                         _lp-tl160210160268_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160209160265_
                                                 _arity160211160258_)))))
                                    (let ((_arity160212160271_
                                           (reverse _arity160211160258_)))
                                      (___kont161338161339_
                                       _arity160212160271_
                                       _hd160202160239_))))))
                      (_loop160207160251_ _target160204160245_ '()))))
                 (___match161406161407_
                  (lambda (_e160168160364_
                           _hd160167160368_
                           _tl160166160371_
                           _e160171160374_
                           _hd160170160378_
                           _tl160169160381_
                           _e160174160384_
                           _hd160173160388_
                           _tl160172160391_
                           _e160175160394_
                           ___splice161334161335_
                           _target160176160398_
                           _tl160178160401_)
                    (letrec ((_loop160179160404_
                              (lambda (_hd160177160408_ _arity160183160411_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160177160408_))
                                    (let ((_e160180160414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160177160408_))))
                                      (let ((_lp-tl160182160421_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160180160414_)))
                                            (_lp-hd160181160418_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160180160414_))))
                                        (_loop160179160404_
                                         _lp-tl160182160421_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160181160418_
                                                 _arity160183160411_)))))
                                    (let ((_arity160184160424_
                                           (reverse _arity160183160411_)))
                                      (___kont161332161333_
                                       _arity160184160424_
                                       _hd160170160378_))))))
                      (_loop160179160404_ _target160176160398_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161327161328_))
                (let ((_e160153160465_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161327161328_))))
                  (let ((_tl160151160472_
                         (let () (declare (not safe)) (##cdr _e160153160465_)))
                        (_hd160152160469_
                         (let ()
                           (declare (not safe))
                           (##car _e160153160465_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160151160472_))
                        (let ((_e160156160475_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160151160472_))))
                          (let ((_tl160154160482_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160156160475_)))
                                (_hd160155160479_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160156160475_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160154160482_))
                                (let ((_e160159160485_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160154160482_))))
                                  (let ((_tl160157160492_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160159160485_)))
                                        (_hd160158160489_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160159160485_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160158160489_))
                                        (let ((_e160160160495_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160158160489_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160160160495_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160157160492_))
                                                  (let ((_e160163160499_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160157160492_))))
                                                    (let ((_tl160161160506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160163160499_)))
                                                          (_hd160162160503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160163160499_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160161160506_))
                                                          (___kont161330161331_
                                                           _hd160162160503_
                                                           _hd160155160479_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160157160492_))
                      (let ((___splice161334161335_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160157160492_ '0))))
                        (let ((_tl160178160401_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161334161335_ '1)))
                              (_target160176160398_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161334161335_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160178160401_))
                              (___match161406161407_
                               _e160153160465_
                               _hd160152160469_
                               _tl160151160472_
                               _e160156160475_
                               _hd160155160479_
                               _tl160154160482_
                               _e160159160485_
                               _hd160158160489_
                               _tl160157160492_
                               _e160160160495_
                               ___splice161334161335_
                               _target160176160398_
                               _tl160178160401_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160154160482_))
                                  (let ((___splice161340161341_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160154160482_
                                            '0))))
                                    (let ((_tl160206160248_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161340161341_
                                              '1)))
                                          (_target160204160245_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161340161341_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160206160248_))
                                          (___match161446161447_
                                           _e160153160465_
                                           _hd160152160469_
                                           _tl160151160472_
                                           _e160156160475_
                                           _hd160155160479_
                                           _tl160154160482_
                                           ___splice161340161341_
                                           _target160204160245_
                                           _tl160206160248_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160147160218_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160147160218_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160154160482_))
                          (let ((___splice161340161341_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160154160482_
                                    '0))))
                            (let ((_tl160206160248_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161340161341_ '1)))
                                  (_target160204160245_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161340161341_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160206160248_))
                                  (___match161446161447_
                                   _e160153160465_
                                   _hd160152160469_
                                   _tl160151160472_
                                   _e160156160475_
                                   _hd160155160479_
                                   _tl160154160482_
                                   ___splice161340161341_
                                   _target160204160245_
                                   _tl160206160248_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160147160218_)))))
                          (let () (declare (not safe)) (_g160147160218_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160157160492_))
                                                      (let ((___splice161334161335_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160157160492_ '0))))
                (let ((_tl160178160401_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161334161335_ '1)))
                      (_target160176160398_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161334161335_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160178160401_))
                      (___match161406161407_
                       _e160153160465_
                       _hd160152160469_
                       _tl160151160472_
                       _e160156160475_
                       _hd160155160479_
                       _tl160154160482_
                       _e160159160485_
                       _hd160158160489_
                       _tl160157160492_
                       _e160160160495_
                       ___splice161334161335_
                       _target160176160398_
                       _tl160178160401_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160157160492_))
                          (___kont161336161337_
                           _hd160158160489_
                           _hd160155160479_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160154160482_))
                              (let ((___splice161340161341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160154160482_
                                        '0))))
                                (let ((_tl160206160248_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161340161341_
                                          '1)))
                                      (_target160204160245_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161340161341_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160206160248_))
                                      (___match161446161447_
                                       _e160153160465_
                                       _hd160152160469_
                                       _tl160151160472_
                                       _e160156160475_
                                       _hd160155160479_
                                       _tl160154160482_
                                       ___splice161340161341_
                                       _target160204160245_
                                       _tl160206160248_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160147160218_)))))
                              (let ()
                                (declare (not safe))
                                (_g160147160218_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160157160492_))
                  (___kont161336161337_ _hd160158160489_ _hd160155160479_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160154160482_))
                      (let ((___splice161340161341_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160154160482_ '0))))
                        (let ((_tl160206160248_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161340161341_ '1)))
                              (_target160204160245_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161340161341_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160206160248_))
                              (___match161446161447_
                               _e160153160465_
                               _hd160152160469_
                               _tl160151160472_
                               _e160156160475_
                               _hd160155160479_
                               _tl160154160482_
                               ___splice161340161341_
                               _target160204160245_
                               _tl160206160248_)
                              (let ()
                                (declare (not safe))
                                (_g160147160218_)))))
                      (let () (declare (not safe)) (_g160147160218_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160157160492_))
                                                  (___kont161336161337_
                                                   _hd160158160489_
                                                   _hd160155160479_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160154160482_))
                                                      (let ((___splice161340161341_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160154160482_ '0))))
                (let ((_tl160206160248_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161340161341_ '1)))
                      (_target160204160245_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161340161341_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160206160248_))
                      (___match161446161447_
                       _e160153160465_
                       _hd160152160469_
                       _tl160151160472_
                       _e160156160475_
                       _hd160155160479_
                       _tl160154160482_
                       ___splice161340161341_
                       _target160204160245_
                       _tl160206160248_)
                      (let () (declare (not safe)) (_g160147160218_)))))
              (let () (declare (not safe)) (_g160147160218_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160157160492_))
                                            (___kont161336161337_
                                             _hd160158160489_
                                             _hd160155160479_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160154160482_))
                                                (let ((___splice161340161341_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160154160482_
                                                          '0))))
                                                  (let ((_tl160206160248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161340161341_
                                                            '1)))
                                                        (_target160204160245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161340161341_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160206160248_))
                                                        (___match161446161447_
                                                         _e160153160465_
                                                         _hd160152160469_
                                                         _tl160151160472_
                                                         _e160156160475_
                                                         _hd160155160479_
                                                         _tl160154160482_
                                                         ___splice161340161341_
                                                         _target160204160245_
                                                         _tl160206160248_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160147160218_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160147160218_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160154160482_))
                                    (let ((___splice161340161341_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160154160482_
                                              '0))))
                                      (let ((_tl160206160248_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161340161341_
                                                '1)))
                                            (_target160204160245_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161340161341_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160206160248_))
                                            (___match161446161447_
                                             _e160153160465_
                                             _hd160152160469_
                                             _tl160151160472_
                                             _e160156160475_
                                             _hd160155160479_
                                             _tl160154160482_
                                             ___splice161340161341_
                                             _target160204160245_
                                             _tl160206160248_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160147160218_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160147160218_))))))
                        (let () (declare (not safe)) (_g160147160218_)))))
                (let () (declare (not safe)) (_g160147160218_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160535_)
      (let* ((___stx161449161450_ _$stx160535_)
             (_g160540160575_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161449161450_)))))
        (let ((___kont161452161453_
               (lambda (_L160697_ _L160699_)
                 (let ((__tmp161769
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161764
                        (let ((__tmp161765
                               (let ((__tmp161766
                                      (let ((__tmp161768
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161767
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160697_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161768 __tmp161767))))
                                 (declare (not safe))
                                 (cons __tmp161766 '()))))
                          (declare (not safe))
                          (cons _L160699_ __tmp161765))))
                   (declare (not safe))
                   (cons __tmp161769 __tmp161764))))
              (___kont161454161455_
               (lambda (_L160632_ _L160634_)
                 (let ((__tmp161778
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161770
                        (let ((__tmp161771
                               (let ((__tmp161772
                                      (let ((__tmp161777
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161773
                                             (let ((__tmp161774
                                                    (lambda (_g160651160654_
                                                             _g160652160657_)
                                                      (let ((__tmp161775
                                                             (let ((__tmp161776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160651160654_ __tmp161776))))
                (declare (not safe))
                (cons __tmp161775 _g160652160657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161774
                                                       '()
                                                       _L160632_))))
                                        (declare (not safe))
                                        (cons __tmp161777 __tmp161773))))
                                 (declare (not safe))
                                 (cons __tmp161772 '()))))
                          (declare (not safe))
                          (cons _L160634_ __tmp161771))))
                   (declare (not safe))
                   (cons __tmp161778 __tmp161770)))))
          (let ((___match161498161499_
                 (lambda (_e160557160582_
                          _hd160556160586_
                          _tl160555160589_
                          _e160560160592_
                          _hd160559160596_
                          _tl160558160599_
                          ___splice161456161457_
                          _target160561160602_
                          _tl160563160605_)
                   (letrec ((_loop160564160608_
                             (lambda (_hd160562160612_ _arity160568160615_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160562160612_))
                                   (let ((_e160565160618_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160562160612_))))
                                     (let ((_lp-tl160567160625_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160565160618_)))
                                           (_lp-hd160566160622_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160565160618_))))
                                       (_loop160564160608_
                                        _lp-tl160567160625_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160566160622_
                                                _arity160568160615_)))))
                                   (let ((_arity160569160628_
                                          (reverse _arity160568160615_)))
                                     (___kont161454161455_
                                      _arity160569160628_
                                      _hd160559160596_))))))
                     (_loop160564160608_ _target160561160602_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161449161450_))
                (let ((_e160546160667_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161449161450_))))
                  (let ((_tl160544160674_
                         (let () (declare (not safe)) (##cdr _e160546160667_)))
                        (_hd160545160671_
                         (let ()
                           (declare (not safe))
                           (##car _e160546160667_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160544160674_))
                        (let ((_e160549160677_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160544160674_))))
                          (let ((_tl160547160684_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160549160677_)))
                                (_hd160548160681_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160549160677_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160547160684_))
                                (let ((_e160552160687_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160547160684_))))
                                  (let ((_tl160550160694_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160552160687_)))
                                        (_hd160551160691_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160552160687_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160550160694_))
                                        (___kont161452161453_
                                         _hd160551160691_
                                         _hd160548160681_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160547160684_))
                                            (let ((___splice161456161457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160547160684_
                                                      '0))))
                                              (let ((_tl160563160605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161456161457_
                                                        '1)))
                                                    (_target160561160602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161456161457_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160563160605_))
                                                    (___match161498161499_
                                                     _e160546160667_
                                                     _hd160545160671_
                                                     _tl160544160674_
                                                     _e160549160677_
                                                     _hd160548160681_
                                                     _tl160547160684_
                                                     ___splice161456161457_
                                                     _target160561160602_
                                                     _tl160563160605_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160540160575_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160540160575_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160547160684_))
                                    (let ((___splice161456161457_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160547160684_
                                              '0))))
                                      (let ((_tl160563160605_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161456161457_
                                                '1)))
                                            (_target160561160602_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161456161457_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160563160605_))
                                            (___match161498161499_
                                             _e160546160667_
                                             _hd160545160671_
                                             _tl160544160674_
                                             _e160549160677_
                                             _hd160548160681_
                                             _tl160547160684_
                                             ___splice161456161457_
                                             _target160561160602_
                                             _tl160563160605_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160540160575_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160540160575_))))))
                        (let () (declare (not safe)) (_g160540160575_)))))
                (let () (declare (not safe)) (_g160540160575_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160719_)
      (let* ((_g160723160758_
              (lambda (_g160724160754_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160724160754_))))
             (_g160722160886_
              (lambda (_g160724160762_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160724160762_))
                    (let ((_e160729160765_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160724160762_))))
                      (let ((_hd160728160769_
                             (let ()
                               (declare (not safe))
                               (##car _e160729160765_)))
                            (_tl160727160772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160729160765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160727160772_))
                            (let ((_g161779_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160727160772_
                                      '0))))
                              (begin
                                (let ((_g161780_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161779_)
                                             (##vector-length _g161779_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161780_ 2)))
                                      (error "Context expects 2 values"
                                             _g161780_)))
                                (let ((_target160730160775_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161779_ 0)))
                                      (_tl160732160778_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161779_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160732160778_))
                                      (letrec ((_loop160733160781_
                                                (lambda (_hd160731160785_
                                                         _arity160737160788_
                                                         _prim160738160790_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160731160785_))
                                                      (let ((_e160734160793_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160731160785_))))
                (let ((_lp-hd160735160797_
                       (let () (declare (not safe)) (##car _e160734160793_)))
                      (_lp-tl160736160800_
                       (let () (declare (not safe)) (##cdr _e160734160793_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160735160797_))
                      (let ((_e160743160803_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160735160797_))))
                        (let ((_hd160742160807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160743160803_)))
                              (_tl160741160810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160743160803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160741160810_))
                              (let ((_g161789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160741160810_
                                        '0))))
                                (begin
                                  (let ((_g161790_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161789_)
                                               (##vector-length _g161789_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161790_ 2)))
                                        (error "Context expects 2 values"
                                               _g161790_)))
                                  (let ((_target160744160813_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161789_ 0)))
                                        (_tl160746160816_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161789_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160746160816_))
                                        (letrec ((_loop160747160819_
                                                  (lambda (_hd160745160823_
                                                           _arity160751160826_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160745160823_))
                                                        (let ((_e160748160829_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160745160823_))))
                  (let ((_lp-hd160749160833_
                         (let () (declare (not safe)) (##car _e160748160829_)))
                        (_lp-tl160750160836_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160748160829_))))
                    (_loop160747160819_
                     _lp-tl160750160836_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160749160833_ _arity160751160826_)))))
                (let ((_arity160752160839_ (reverse _arity160751160826_)))
                  (_loop160733160781_
                   _lp-tl160736160800_
                   (let ()
                     (declare (not safe))
                     (cons _arity160752160839_ _arity160737160788_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160742160807_ _prim160738160790_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160747160819_
                                           _target160744160813_
                                           '()))
                                        (_g160723160758_ _g160724160762_)))))
                              (_g160723160758_ _g160724160762_))))
                      (_g160723160758_ _g160724160762_))))
              (let ((_arity160739160843_ (reverse _arity160737160788_))
                    (_prim160740160846_ (reverse _prim160738160790_)))
                ((lambda (_L160849_ _L160851_)
                   (let ((__tmp161788
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161781
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160849_
                               _L160851_))
                            (let ((__tmp161782
                                   (lambda (_g160866160872_
                                            _g160867160875_
                                            _g160868160877_)
                                     (let ((__tmp161783
                                            (let ((__tmp161787
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161784
                                                   (let ((__tmp161785
                                                          (let ((__tmp161786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160869160880_ _g160870160883_)
                           (let ()
                             (declare (not safe))
                             (cons _g160869160880_ _g160870160883_)))))
                    (declare (not safe))
                    (foldr1 __tmp161786 '() _g160866160872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160867160875_
                                                           __tmp161785))))
                                              (declare (not safe))
                                              (cons __tmp161787 __tmp161784))))
                                       (declare (not safe))
                                       (cons __tmp161783 _g160868160877_)))))
                              (declare (not safe))
                              (foldr2 __tmp161782 '() _L160849_ _L160851_)))))
                     (declare (not safe))
                     (cons __tmp161788 __tmp161781)))
                 _arity160739160843_
                 _prim160740160846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160733160781_
                                         _target160730160775_
                                         '()
                                         '()))
                                      (_g160723160758_ _g160724160762_)))))
                            (_g160723160758_ _g160724160762_))))
                    (_g160723160758_ _g160724160762_)))))
        (_g160722160886_ _$stx160719_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160892_)
      (let* ((_g160896160931_
              (lambda (_g160897160927_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160897160927_))))
             (_g160895161059_
              (lambda (_g160897160935_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160897160935_))
                    (let ((_e160902160938_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160897160935_))))
                      (let ((_hd160901160942_
                             (let ()
                               (declare (not safe))
                               (##car _e160902160938_)))
                            (_tl160900160945_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160902160938_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160900160945_))
                            (let ((_g161791_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160900160945_
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
                                (let ((_target160903160948_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161791_ 0)))
                                      (_tl160905160951_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161791_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160905160951_))
                                      (letrec ((_loop160906160954_
                                                (lambda (_hd160904160958_
                                                         _arity160910160961_
                                                         _prim160911160963_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160904160958_))
                                                      (let ((_e160907160966_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160904160958_))))
                (let ((_lp-hd160908160970_
                       (let () (declare (not safe)) (##car _e160907160966_)))
                      (_lp-tl160909160973_
                       (let () (declare (not safe)) (##cdr _e160907160966_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160908160970_))
                      (let ((_e160916160976_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160908160970_))))
                        (let ((_hd160915160980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160916160976_)))
                              (_tl160914160983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160916160976_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160914160983_))
                              (let ((_g161801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160914160983_
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
                                  (let ((_target160917160986_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161801_ 0)))
                                        (_tl160919160989_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161801_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160919160989_))
                                        (letrec ((_loop160920160992_
                                                  (lambda (_hd160918160996_
                                                           _arity160924160999_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160918160996_))
                                                        (let ((_e160921161002_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160918160996_))))
                  (let ((_lp-hd160922161006_
                         (let () (declare (not safe)) (##car _e160921161002_)))
                        (_lp-tl160923161009_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160921161002_))))
                    (_loop160920160992_
                     _lp-tl160923161009_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160922161006_ _arity160924160999_)))))
                (let ((_arity160925161012_ (reverse _arity160924160999_)))
                  (_loop160906160954_
                   _lp-tl160909160973_
                   (let ()
                     (declare (not safe))
                     (cons _arity160925161012_ _arity160910160961_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160915160980_ _prim160911160963_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160920160992_
                                           _target160917160986_
                                           '()))
                                        (_g160896160931_ _g160897160935_)))))
                              (_g160896160931_ _g160897160935_))))
                      (_g160896160931_ _g160897160935_))))
              (let ((_arity160912161016_ (reverse _arity160910160961_))
                    (_prim160913161019_ (reverse _prim160911160963_)))
                ((lambda (_L161022_ _L161024_)
                   (let ((__tmp161800
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161793
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161022_
                               _L161024_))
                            (let ((__tmp161794
                                   (lambda (_g161039161045_
                                            _g161040161048_
                                            _g161041161050_)
                                     (let ((__tmp161795
                                            (let ((__tmp161799
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161796
                                                   (let ((__tmp161797
                                                          (let ((__tmp161798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161042161053_ _g161043161056_)
                           (let ()
                             (declare (not safe))
                             (cons _g161042161053_ _g161043161056_)))))
                    (declare (not safe))
                    (foldr1 __tmp161798 '() _g161039161045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161040161048_
                                                           __tmp161797))))
                                              (declare (not safe))
                                              (cons __tmp161799 __tmp161796))))
                                       (declare (not safe))
                                       (cons __tmp161795 _g161041161050_)))))
                              (declare (not safe))
                              (foldr2 __tmp161794 '() _L161022_ _L161024_)))))
                     (declare (not safe))
                     (cons __tmp161800 __tmp161793)))
                 _arity160912161016_
                 _prim160913161019_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160906160954_
                                         _target160903160948_
                                         '()
                                         '()))
                                      (_g160896160931_ _g160897160935_)))))
                            (_g160896160931_ _g160897160935_))))
                    (_g160896160931_ _g160897160935_)))))
        (_g160895161059_ _$stx160892_)))))
