(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx74524_)
      (let* ((_g7452874546_
              (lambda (_g7452974542_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7452974542_))))
             (_g7452774601_
              (lambda (_g7452974550_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7452974550_))
                    (let ((_e7453474553_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7452974550_))))
                      (let ((_hd7453374557_
                             (let ()
                               (declare (not safe))
                               (##car _e7453474553_)))
                            (_tl7453274560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7453474553_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7453274560_))
                            (let ((_e7453774563_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7453274560_))))
                              (let ((_hd7453674567_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7453774563_)))
                                    (_tl7453574570_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7453774563_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7453574570_))
                                    (let ((_e7454074573_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7453574570_))))
                                      (let ((_hd7453974577_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7454074573_)))
                                            (_tl7453874580_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7454074573_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7453874580_))
                                            ((lambda (_L74583_ _L74585_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L74585_))
                                                   (let ((__tmp79608
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp79603
                                                          (let ((__tmp79605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79607
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp79606
                                (let ()
                                  (declare (not safe))
                                  (cons _L74585_ '()))))
                           (declare (not safe))
                           (cons __tmp79607 __tmp79606)))
                        (__tmp79604
                         (let () (declare (not safe)) (cons _L74583_ '()))))
                    (declare (not safe))
                    (cons __tmp79605 __tmp79604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79608
                                                           __tmp79603))
                                                   (_g7452874546_
                                                    _g7452974550_)))
                                             _hd7453974577_
                                             _hd7453674567_)
                                            (_g7452874546_ _g7452974550_))))
                                    (_g7452874546_ _g7452974550_))))
                            (_g7452874546_ _g7452974550_))))
                    (_g7452874546_ _g7452974550_)))))
        (_g7452774601_ _$stx74524_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx74605_)
      (let* ((_g7460974638_
              (lambda (_g7461074634_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7461074634_))))
             (_g7460874738_
              (lambda (_g7461074642_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7461074642_))
                    (let ((_e7461574645_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7461074642_))))
                      (let ((_hd7461474649_
                             (let ()
                               (declare (not safe))
                               (##car _e7461574645_)))
                            (_tl7461374652_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7461574645_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7461374652_))
                            (let ((_g79609_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7461374652_
                                      '0))))
                              (begin
                                (let ((_g79610_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79609_)
                                             (##vector-length _g79609_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79610_ 2)))
                                      (error "Context expects 2 values"
                                             _g79610_)))
                                (let ((_target7461674655_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79609_ 0)))
                                      (_tl7461874658_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79609_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7461874658_))
                                      (letrec ((_loop7461974661_
                                                (lambda (_hd7461774665_
                                                         _type7462374668_
                                                         _symbol7462474670_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7461774665_))
                                                      (let ((_e7462074673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7461774665_))))
                (let ((_lp-hd7462174677_
                       (let () (declare (not safe)) (##car _e7462074673_)))
                      (_lp-tl7462274680_
                       (let () (declare (not safe)) (##cdr _e7462074673_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7462174677_))
                      (let ((_e7462974683_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7462174677_))))
                        (let ((_hd7462874687_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7462974683_)))
                              (_tl7462774690_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7462974683_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7462774690_))
                              (let ((_e7463274693_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7462774690_))))
                                (let ((_hd7463174697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7463274693_)))
                                      (_tl7463074700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7463274693_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7463074700_))
                                      (_loop7461974661_
                                       _lp-tl7462274680_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7463174697_
                                               _type7462374668_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7462874687_
                                               _symbol7462474670_)))
                                      (_g7460974638_ _g7461074642_))))
                              (_g7460974638_ _g7461074642_))))
                      (_g7460974638_ _g7461074642_))))
              (let ((_type7462574703_ (reverse _type7462374668_))
                    (_symbol7462674706_ (reverse _symbol7462474670_)))
                ((lambda (_L74709_ _L74711_)
                   (let ((__tmp79617
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79611
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74709_
                               _L74711_))
                            (let ((__tmp79612
                                   (lambda (_g7472674730_
                                            _g7472774733_
                                            _g7472874735_)
                                     (let ((__tmp79613
                                            (let ((__tmp79616
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp79614
                                                   (let ((__tmp79615
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7472674730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7472774733_
                                                           __tmp79615))))
                                              (declare (not safe))
                                              (cons __tmp79616 __tmp79614))))
                                       (declare (not safe))
                                       (cons __tmp79613 _g7472874735_)))))
                              (declare (not safe))
                              (foldr2 __tmp79612 '() _L74709_ _L74711_)))))
                     (declare (not safe))
                     (cons __tmp79617 __tmp79611)))
                 _type7462574703_
                 _symbol7462674706_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7461974661_
                                         _target7461674655_
                                         '()
                                         '()))
                                      (_g7460974638_ _g7461074642_)))))
                            (_g7460974638_ _g7461074642_))))
                    (_g7460974638_ _g7461074642_)))))
        (_g7460874738_ _$stx74605_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx74743_)
      (let* ((___stx7874478745_ _$stx74743_)
             (_g7474874790_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7874478745_)))))
        (let ((___kont7874778748_
               (lambda (_L74918_ _L74920_ _L74921_ _L74922_)
                 (let ((__tmp79631
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp79618
                        (let ((__tmp79628
                               (let ((__tmp79630
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79629
                                      (let ()
                                        (declare (not safe))
                                        (cons _L74922_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79630 __tmp79629)))
                              (__tmp79619
                               (let ((__tmp79625
                                      (let ((__tmp79627
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79626
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74921_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79627 __tmp79626)))
                                     (__tmp79620
                                      (let ((__tmp79622
                                             (let ((__tmp79624
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79623
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L74920_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79624 __tmp79623)))
                                            (__tmp79621
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74918_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79622 __tmp79621))))
                                 (declare (not safe))
                                 (cons __tmp79625 __tmp79620))))
                          (declare (not safe))
                          (cons __tmp79628 __tmp79619))))
                   (declare (not safe))
                   (cons __tmp79631 __tmp79618))))
              (___kont7874978750_
               (lambda (_L74837_ _L74839_ _L74840_ _L74841_)
                 (let ((__tmp79632
                        (let ((__tmp79633
                               (let ((__tmp79634
                                      (let ((__tmp79635
                                             (let ((__tmp79636
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp79636 '()))))
                                        (declare (not safe))
                                        (cons _L74837_ __tmp79635))))
                                 (declare (not safe))
                                 (cons _L74839_ __tmp79634))))
                          (declare (not safe))
                          (cons _L74840_ __tmp79633))))
                   (declare (not safe))
                   (cons _L74841_ __tmp79632)))))
          (let ((___match7878378784_
                 (lambda (_e7475674868_
                          _hd7475574872_
                          _tl7475474875_
                          _e7475974878_
                          _hd7475874882_
                          _tl7475774885_
                          _e7476274888_
                          _hd7476174892_
                          _tl7476074895_
                          _e7476574898_
                          _hd7476474902_
                          _tl7476374905_
                          _e7476874908_
                          _hd7476774912_
                          _tl7476674915_)
                   (let ((_L74918_ _hd7476774912_)
                         (_L74920_ _hd7476474902_)
                         (_L74921_ _hd7476174892_)
                         (_L74922_ _hd7475874882_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L74922_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74921_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74920_)))
                         (___kont7874778748_
                          _L74918_
                          _L74920_
                          _L74921_
                          _L74922_)
                         (let () (declare (not safe)) (_g7474874790_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7874478745_))
                (let ((_e7475674868_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7874478745_))))
                  (let ((_tl7475474875_
                         (let () (declare (not safe)) (##cdr _e7475674868_)))
                        (_hd7475574872_
                         (let () (declare (not safe)) (##car _e7475674868_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7475474875_))
                        (let ((_e7475974878_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7475474875_))))
                          (let ((_tl7475774885_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7475974878_)))
                                (_hd7475874882_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7475974878_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7475774885_))
                                (let ((_e7476274888_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7475774885_))))
                                  (let ((_tl7476074895_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7476274888_)))
                                        (_hd7476174892_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7476274888_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7476074895_))
                                        (let ((_e7476574898_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7476074895_))))
                                          (let ((_tl7476374905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7476574898_)))
                                                (_hd7476474902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7476574898_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7476374905_))
                                                (let ((_e7476874908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7476374905_))))
                                                  (let ((_tl7476674915_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7476874908_)))
                                                        (_hd7476774912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7476874908_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7476674915_))
                                                        (___match7878378784_
                                                         _e7475674868_
                                                         _hd7475574872_
                                                         _tl7475474875_
                                                         _e7475974878_
                                                         _hd7475874882_
                                                         _tl7475774885_
                                                         _e7476274888_
                                                         _hd7476174892_
                                                         _tl7476074895_
                                                         _e7476574898_
                                                         _hd7476474902_
                                                         _tl7476374905_
                                                         _e7476874908_
                                                         _hd7476774912_
                                                         _tl7476674915_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7474874790_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7476374905_))
                                                    (___kont7874978750_
                                                     _hd7476474902_
                                                     _hd7476174892_
                                                     _hd7475874882_
                                                     _hd7475574872_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7474874790_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7474874790_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7474874790_)))))
                        (let () (declare (not safe)) (_g7474874790_)))))
                (let () (declare (not safe)) (_g7474874790_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx74947_)
      (let* ((_g7495174986_
              (lambda (_g7495274982_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7495274982_))))
             (_g7495075105_
              (lambda (_g7495274990_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7495274990_))
                    (let ((_e7495874993_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7495274990_))))
                      (let ((_hd7495774997_
                             (let ()
                               (declare (not safe))
                               (##car _e7495874993_)))
                            (_tl7495675000_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7495874993_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7495675000_))
                            (let ((_g79637_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7495675000_
                                      '0))))
                              (begin
                                (let ((_g79638_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79637_)
                                             (##vector-length _g79637_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79638_ 2)))
                                      (error "Context expects 2 values"
                                             _g79638_)))
                                (let ((_target7495975003_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79637_ 0)))
                                      (_tl7496175006_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79637_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7496175006_))
                                      (letrec ((_loop7496275009_
                                                (lambda (_hd7496075013_
                                                         _symbol7496675016_
                                                         _method7496775018_
                                                         _type-t7496875020_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7496075013_))
                                                      (let ((_e7496375023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7496075013_))))
                (let ((_lp-hd7496475027_
                       (let () (declare (not safe)) (##car _e7496375023_)))
                      (_lp-tl7496575030_
                       (let () (declare (not safe)) (##cdr _e7496375023_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7496475027_))
                      (let ((_e7497475033_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7496475027_))))
                        (let ((_hd7497375037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7497475033_)))
                              (_tl7497275040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7497475033_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7497275040_))
                              (let ((_e7497775043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7497275040_))))
                                (let ((_hd7497675047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7497775043_)))
                                      (_tl7497575050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7497775043_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7497575050_))
                                      (let ((_e7498075053_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7497575050_))))
                                        (let ((_hd7497975057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7498075053_)))
                                              (_tl7497875060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7498075053_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7497875060_))
                                              (_loop7496275009_
                                               _lp-tl7496575030_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7497975057_
                                                       _symbol7496675016_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7497675047_
                                                       _method7496775018_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7497375037_
                                                       _type-t7496875020_)))
                                              (_g7495174986_ _g7495274990_))))
                                      (_g7495174986_ _g7495274990_))))
                              (_g7495174986_ _g7495274990_))))
                      (_g7495174986_ _g7495274990_))))
              (let ((_symbol7496975063_ (reverse _symbol7496675016_))
                    (_method7497075066_ (reverse _method7496775018_))
                    (_type-t7497175068_ (reverse _type-t7496875020_)))
                ((lambda (_L75071_ _L75073_ _L75074_)
                   (let ((__tmp79646
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79639
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L75071_
                               _L75073_
                               _L75074_))
                            (let ((__tmp79640
                                   (lambda (_g7509075095_
                                            _g7509175098_
                                            _g7509275100_
                                            _g7509375102_)
                                     (let ((__tmp79641
                                            (let ((__tmp79645
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp79642
                                                   (let ((__tmp79643
                                                          (let ((__tmp79644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7509075095_ '()))))
                    (declare (not safe))
                    (cons _g7509175098_ __tmp79644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7509275100_
                                                           __tmp79643))))
                                              (declare (not safe))
                                              (cons __tmp79645 __tmp79642))))
                                       (declare (not safe))
                                       (cons __tmp79641 _g7509375102_)))))
                              (declare (not safe))
                              (foldr* __tmp79640
                                      '()
                                      _L75071_
                                      _L75073_
                                      _L75074_)))))
                     (declare (not safe))
                     (cons __tmp79646 __tmp79639)))
                 _symbol7496975063_
                 _method7497075066_
                 _type-t7497175068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7496275009_
                                         _target7495975003_
                                         '()
                                         '()
                                         '()))
                                      (_g7495174986_ _g7495274990_)))))
                            (_g7495174986_ _g7495274990_))))
                    (_g7495174986_ _g7495274990_)))))
        (_g7495075105_ _$stx74947_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx75110_)
      (let* ((_g7511475147_
              (lambda (_g7511575143_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7511575143_))))
             (_g7511375261_
              (lambda (_g7511575151_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7511575151_))
                    (let ((_e7512175154_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7511575151_))))
                      (let ((_hd7512075158_
                             (let ()
                               (declare (not safe))
                               (##car _e7512175154_)))
                            (_tl7511975161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7512175154_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7511975161_))
                            (let ((_e7512475164_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7511975161_))))
                              (let ((_hd7512375168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7512475164_)))
                                    (_tl7512275171_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7512475164_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7512275171_))
                                    (let ((_g79647_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7512275171_
                                              '0))))
                                      (begin
                                        (let ((_g79648_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79647_)
                                                     (##vector-length _g79647_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79648_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79648_)))
                                        (let ((_target7512575174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79647_ 0)))
                                              (_tl7512775177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79647_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7512775177_))
                                              (letrec ((_loop7512875180_
                                                        (lambda (_hd7512675184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7513275187_
                         _method7513375189_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7512675184_))
                      (let ((_e7512975192_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7512675184_))))
                        (let ((_lp-hd7513075196_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7512975192_)))
                              (_lp-tl7513175199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7512975192_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7513075196_))
                              (let ((_e7513875202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7513075196_))))
                                (let ((_hd7513775206_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7513875202_)))
                                      (_tl7513675209_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7513875202_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7513675209_))
                                      (let ((_e7514175212_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7513675209_))))
                                        (let ((_hd7514075216_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7514175212_)))
                                              (_tl7513975219_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7514175212_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7513975219_))
                                              (_loop7512875180_
                                               _lp-tl7513175199_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7514075216_
                                                       _symbol7513275187_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7513775206_
                                                       _method7513375189_)))
                                              (_g7511475147_ _g7511575151_))))
                                      (_g7511475147_ _g7511575151_))))
                              (_g7511475147_ _g7511575151_))))
                      (let ((_symbol7513475222_ (reverse _symbol7513275187_))
                            (_method7513575225_ (reverse _method7513375189_)))
                        ((lambda (_L75228_ _L75230_ _L75231_)
                           (let ((__tmp79656
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp79649
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L75228_
                                       _L75230_))
                                    (let ((__tmp79650
                                           (lambda (_g7524975253_
                                                    _g7525075256_
                                                    _g7525175258_)
                                             (let ((__tmp79651
                                                    (let ((__tmp79655
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp79652
                                                           (let ((__tmp79653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79654
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7524975253_ '()))))
                            (declare (not safe))
                            (cons _g7525075256_ __tmp79654))))
                     (declare (not safe))
                     (cons _L75231_ __tmp79653))))
              (declare (not safe))
              (cons __tmp79655 __tmp79652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79651
                                                     _g7525175258_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp79650
                                              '()
                                              _L75228_
                                              _L75230_)))))
                             (declare (not safe))
                             (cons __tmp79656 __tmp79649)))
                         _symbol7513475222_
                         _method7513575225_
                         _hd7512375168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7512875180_
                                                 _target7512575174_
                                                 '()
                                                 '()))
                                              (_g7511475147_ _g7511575151_)))))
                                    (_g7511475147_ _g7511575151_))))
                            (_g7511475147_ _g7511575151_))))
                    (_g7511475147_ _g7511575151_)))))
        (_g7511375261_ _$stx75110_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx75266_)
      (let* ((_g7527075284_
              (lambda (_g7527175280_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7527175280_))))
             (_g7526975325_
              (lambda (_g7527175288_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7527175288_))
                    (let ((_e7527575291_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7527175288_))))
                      (let ((_hd7527475295_
                             (let ()
                               (declare (not safe))
                               (##car _e7527575291_)))
                            (_tl7527375298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7527575291_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7527375298_))
                            (let ((_e7527875301_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7527375298_))))
                              (let ((_hd7527775305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7527875301_)))
                                    (_tl7527675308_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7527875301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7527675308_))
                                    ((lambda (_L75311_)
                                       (let ((__tmp79661
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp79657
                                              (let ((__tmp79658
                                                     (let ((__tmp79660
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79659
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79660 __tmp79659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79658 '()))))
                                         (declare (not safe))
                                         (cons __tmp79661 __tmp79657)))
                                     _hd7527775305_)
                                    (_g7527075284_ _g7527175288_))))
                            (_g7527075284_ _g7527175288_))))
                    (_g7527075284_ _g7527175288_)))))
        (_g7526975325_ _$stx75266_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx75329_)
      (let* ((___stx7881278813_ _$stx75329_)
             (_g7533575401_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7881278813_)))))
        (let ((___kont7881578816_
               (lambda (_L75623_ _L75625_ _L75626_ _L75627_ _L75628_)
                 (let ((__tmp79667
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp79662
                        (let ((__tmp79663
                               (let ((__tmp79664
                                      (let ((__tmp79665
                                             (let ((__tmp79666
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L75623_ '()))))
                                               (declare (not safe))
                                               (cons _L75625_ __tmp79666))))
                                        (declare (not safe))
                                        (cons _L75626_ __tmp79665))))
                                 (declare (not safe))
                                 (cons _L75627_ __tmp79664))))
                          (declare (not safe))
                          (cons _L75628_ __tmp79663))))
                   (declare (not safe))
                   (cons __tmp79667 __tmp79662))))
              (___kont7881778818_
               (lambda (_L75533_ _L75535_ _L75536_ _L75537_)
                 (let ((__tmp79668
                        (let ((__tmp79669
                               (let ((__tmp79670
                                      (let ((__tmp79671
                                             (let ((__tmp79672
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp79672))))
                                        (declare (not safe))
                                        (cons _L75533_ __tmp79671))))
                                 (declare (not safe))
                                 (cons _L75535_ __tmp79670))))
                          (declare (not safe))
                          (cons _L75536_ __tmp79669))))
                   (declare (not safe))
                   (cons _L75537_ __tmp79668))))
              (___kont7881978820_
               (lambda (_L75458_ _L75460_ _L75461_ _L75462_ _L75463_)
                 (let ((__tmp79673
                        (let ((__tmp79678
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp79674
                               (let ((__tmp79675
                                      (let ((__tmp79676
                                             (let ((__tmp79677
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L75458_ __tmp79677))))
                                        (declare (not safe))
                                        (cons _L75460_ __tmp79676))))
                                 (declare (not safe))
                                 (cons _L75461_ __tmp79675))))
                          (declare (not safe))
                          (cons __tmp79678 __tmp79674))))
                   (declare (not safe))
                   (cons _L75463_ __tmp79673)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7881278813_))
              (let ((_e7534475563_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7881278813_))))
                (let ((_tl7534275570_
                       (let () (declare (not safe)) (##cdr _e7534475563_)))
                      (_hd7534375567_
                       (let () (declare (not safe)) (##car _e7534475563_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7534275570_))
                      (let ((_e7534775573_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7534275570_))))
                        (let ((_tl7534575580_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7534775573_)))
                              (_hd7534675577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7534775573_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7534575580_))
                              (let ((_e7535075583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7534575580_))))
                                (let ((_tl7534875590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7535075583_)))
                                      (_hd7534975587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7535075583_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7534875590_))
                                      (let ((_e7535375593_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7534875590_))))
                                        (let ((_tl7535175600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7535375593_)))
                                              (_hd7535275597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7535375593_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7535175600_))
                                              (let ((_e7535675603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7535175600_))))
                                                (let ((_tl7535475610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7535675603_)))
                                                      (_hd7535575607_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7535675603_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7535475610_))
                                                      (let ((_e7535975613_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7535475610_))))
                (let ((_tl7535775620_
                       (let () (declare (not safe)) (##cdr _e7535975613_)))
                      (_hd7535875617_
                       (let () (declare (not safe)) (##car _e7535975613_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7535775620_))
                      (___kont7881578816_
                       _hd7535875617_
                       _hd7535575607_
                       _hd7535275597_
                       _hd7534975587_
                       _hd7534675577_)
                      (let () (declare (not safe)) (_g7533575401_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7535475610_))
                  (___kont7881978820_
                   _hd7535575607_
                   _hd7535275597_
                   _hd7534975587_
                   _hd7534675577_
                   _hd7534375567_)
                  (let () (declare (not safe)) (_g7533575401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7535175600_))
                                                  (___kont7881778818_
                                                   _hd7535275597_
                                                   _hd7534975587_
                                                   _hd7534675577_
                                                   _hd7534375567_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7533575401_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7533575401_)))))
                              (let () (declare (not safe)) (_g7533575401_)))))
                      (let () (declare (not safe)) (_g7533575401_)))))
              (let () (declare (not safe)) (_g7533575401_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx75656_)
      (let* ((___stx7892078921_ _$stx75656_)
             (_g7566175714_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7892078921_)))))
        (let ((___kont7892378924_
               (lambda (_L75882_ _L75884_ _L75885_ _L75886_)
                 (let ((__tmp79694
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp79679
                        (let ((__tmp79691
                               (let ((__tmp79693
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79692
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75886_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79693 __tmp79692)))
                              (__tmp79680
                               (let ((__tmp79681
                                      (let ((__tmp79682
                                             (let ((__tmp79683
                                                    (let ((__tmp79688
                                                           (let ((__tmp79690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79689
                          (let () (declare (not safe)) (cons _L75884_ '()))))
                     (declare (not safe))
                     (cons __tmp79690 __tmp79689)))
                  (__tmp79684
                   (let ((__tmp79685
                          (let ((__tmp79687
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79686
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75882_ '()))))
                            (declare (not safe))
                            (cons __tmp79687 __tmp79686))))
                     (declare (not safe))
                     (cons __tmp79685 '()))))
              (declare (not safe))
              (cons __tmp79688 __tmp79684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp79683))))
                                        (declare (not safe))
                                        (cons _L75885_ __tmp79682))))
                                 (declare (not safe))
                                 (cons '#f __tmp79681))))
                          (declare (not safe))
                          (cons __tmp79691 __tmp79680))))
                   (declare (not safe))
                   (cons __tmp79694 __tmp79679))))
              (___kont7892578926_
               (lambda (_L75781_ _L75783_ _L75784_ _L75785_ _L75786_)
                 (let ((__tmp79776
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp79695
                        (let ((__tmp79716
                               (let ((__tmp79767
                                      (let ((__tmp79775
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp79768
                                             (let ((__tmp79769
                                                    (let ((__tmp79774
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp79770
                                                           (let ((__tmp79771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79773
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79772
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75785_ '()))))
                            (declare (not safe))
                            (cons __tmp79773 __tmp79772))))
                     (declare (not safe))
                     (cons __tmp79771 '()))))
              (declare (not safe))
              (cons __tmp79774 __tmp79770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79769 '()))))
                                        (declare (not safe))
                                        (cons __tmp79775 __tmp79768)))
                                     (__tmp79717
                                      (let ((__tmp79739
                                             (let ((__tmp79766
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp79740
                                                    (let ((__tmp79741
                                                           (let ((__tmp79765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp79742
                          (let ((__tmp79764
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp79743
                                 (let ((__tmp79744
                                        (let ((__tmp79763
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp79745
                                               (let ((__tmp79756
                                                      (let ((__tmp79762
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp79757
                     (let ((__tmp79758
                            (let ((__tmp79761
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp79759
                                   (let ((__tmp79760
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79760 '()))))
                              (declare (not safe))
                              (cons __tmp79761 __tmp79759))))
                       (declare (not safe))
                       (cons __tmp79758 '()))))
                (declare (not safe))
                (cons __tmp79762 __tmp79757)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79746
                                                      (let ((__tmp79747
                                                             (let ((__tmp79755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp79748
                            (let ((__tmp79754
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp79749
                                   (let ((__tmp79750
                                          (let ((__tmp79753
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp79751
                                                 (let ((__tmp79752
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp79752 '()))))
                                            (declare (not safe))
                                            (cons __tmp79753 __tmp79751))))
                                     (declare (not safe))
                                     (cons __tmp79750 '()))))
                              (declare (not safe))
                              (cons __tmp79754 __tmp79749))))
                       (declare (not safe))
                       (cons __tmp79755 __tmp79748))))
                (declare (not safe))
                (cons __tmp79747 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79756
                                                       __tmp79746))))
                                          (declare (not safe))
                                          (cons __tmp79763 __tmp79745))))
                                   (declare (not safe))
                                   (cons __tmp79744 '()))))
                            (declare (not safe))
                            (cons __tmp79764 __tmp79743))))
                     (declare (not safe))
                     (cons __tmp79765 __tmp79742))))
              (declare (not safe))
              (cons __tmp79741 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79766 __tmp79740)))
                                            (__tmp79718
                                             (let ((__tmp79719
                                                    (let ((__tmp79738
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp79720
                                                           (let ((__tmp79721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79737
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp79722
                                 (let ((__tmp79734
                                        (let ((__tmp79736
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp79735
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L75783_ '()))))
                                          (declare (not safe))
                                          (cons __tmp79736 __tmp79735)))
                                       (__tmp79723
                                        (let ((__tmp79724
                                               (let ((__tmp79733
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp79725
                                                      (let ((__tmp79732
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp79726
                     (let ((__tmp79728
                            (let ((__tmp79731
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp79729
                                   (let ((__tmp79730
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79730 '()))))
                              (declare (not safe))
                              (cons __tmp79731 __tmp79729)))
                           (__tmp79727
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp79728 __tmp79727))))
                (declare (not safe))
                (cons __tmp79732 __tmp79726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79733
                                                       __tmp79725))))
                                          (declare (not safe))
                                          (cons __tmp79724 '()))))
                                   (declare (not safe))
                                   (cons __tmp79734 __tmp79723))))
                            (declare (not safe))
                            (cons __tmp79737 __tmp79722))))
                     (declare (not safe))
                     (cons __tmp79721 '()))))
              (declare (not safe))
              (cons __tmp79738 __tmp79720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79719 '()))))
                                        (declare (not safe))
                                        (cons __tmp79739 __tmp79718))))
                                 (declare (not safe))
                                 (cons __tmp79767 __tmp79717)))
                              (__tmp79696
                               (let ((__tmp79697
                                      (let ((__tmp79715
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp79698
                                             (let ((__tmp79712
                                                    (let ((__tmp79714
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp79713
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L75786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79714 __tmp79713)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79699
                                                    (let ((__tmp79709
                                                           (let ((__tmp79711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79710
                          (let () (declare (not safe)) (cons _L75785_ '()))))
                     (declare (not safe))
                     (cons __tmp79711 __tmp79710)))
                  (__tmp79700
                   (let ((__tmp79701
                          (let ((__tmp79708
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp79702
                                 (let ((__tmp79707
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp79703
                                        (let ((__tmp79704
                                               (let ((__tmp79706
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp79705
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L75781_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79706
                                                       __tmp79705))))
                                          (declare (not safe))
                                          (cons __tmp79704 '()))))
                                   (declare (not safe))
                                   (cons __tmp79707 __tmp79703))))
                            (declare (not safe))
                            (cons __tmp79708 __tmp79702))))
                     (declare (not safe))
                     (cons _L75784_ __tmp79701))))
              (declare (not safe))
              (cons __tmp79709 __tmp79700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79712 __tmp79699))))
                                        (declare (not safe))
                                        (cons __tmp79715 __tmp79698))))
                                 (declare (not safe))
                                 (cons __tmp79697 '()))))
                          (declare (not safe))
                          (cons __tmp79716 __tmp79696))))
                   (declare (not safe))
                   (cons __tmp79776 __tmp79695)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7892078921_))
              (let ((_e7566975818_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7892078921_))))
                (let ((_tl7566775825_
                       (let () (declare (not safe)) (##cdr _e7566975818_)))
                      (_hd7566875822_
                       (let () (declare (not safe)) (##car _e7566975818_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7566775825_))
                      (let ((_e7567275828_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7566775825_))))
                        (let ((_tl7567075835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7567275828_)))
                              (_hd7567175832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7567275828_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7567075835_))
                              (let ((_e7567575838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7567075835_))))
                                (let ((_tl7567375845_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7567575838_)))
                                      (_hd7567475842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7567575838_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7567475842_))
                                      (let ((_e7567675848_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7567475842_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7567675848_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7567375845_))
                                                (let ((_e7567975852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7567375845_))))
                                                  (let ((_tl7567775859_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7567975852_)))
                                                        (_hd7567875856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7567975852_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7567775859_))
                                                        (let ((_e7568275862_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7567775859_))))
                  (let ((_tl7568075869_
                         (let () (declare (not safe)) (##cdr _e7568275862_)))
                        (_hd7568175866_
                         (let () (declare (not safe)) (##car _e7568275862_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7568075869_))
                        (let ((_e7568575872_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7568075869_))))
                          (let ((_tl7568375879_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7568575872_)))
                                (_hd7568475876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7568575872_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7568375879_))
                                (___kont7892378924_
                                 _hd7568475876_
                                 _hd7568175866_
                                 _hd7567875856_
                                 _hd7567175832_)
                                (let ()
                                  (declare (not safe))
                                  (_g7566175714_)))))
                        (let () (declare (not safe)) (_g7566175714_)))))
                (let () (declare (not safe)) (_g7566175714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7566175714_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7567375845_))
                                                (let ((_e7570275751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7567375845_))))
                                                  (let ((_tl7570075758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7570275751_)))
                                                        (_hd7570175755_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7570275751_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7570075758_))
                                                        (let ((_e7570575761_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7570075758_))))
                  (let ((_tl7570375768_
                         (let () (declare (not safe)) (##cdr _e7570575761_)))
                        (_hd7570475765_
                         (let () (declare (not safe)) (##car _e7570575761_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7570375768_))
                        (let ((_e7570875771_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7570375768_))))
                          (let ((_tl7570675778_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7570875771_)))
                                (_hd7570775775_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7570875771_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7570675778_))
                                (___kont7892578926_
                                 _hd7570775775_
                                 _hd7570475765_
                                 _hd7570175755_
                                 _hd7567475842_
                                 _hd7567175832_)
                                (let ()
                                  (declare (not safe))
                                  (_g7566175714_)))))
                        (let () (declare (not safe)) (_g7566175714_)))))
                (let () (declare (not safe)) (_g7566175714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7566175714_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7567375845_))
                                          (let ((_e7570275751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7567375845_))))
                                            (let ((_tl7570075758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7570275751_)))
                                                  (_hd7570175755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7570275751_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7570075758_))
                                                  (let ((_e7570575761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7570075758_))))
                                                    (let ((_tl7570375768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7570575761_)))
                                                          (_hd7570475765_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7570575761_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7570375768_))
                                                          (let ((_e7570875771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7570375768_))))
                    (let ((_tl7570675778_
                           (let () (declare (not safe)) (##cdr _e7570875771_)))
                          (_hd7570775775_
                           (let ()
                             (declare (not safe))
                             (##car _e7570875771_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7570675778_))
                          (___kont7892578926_
                           _hd7570775775_
                           _hd7570475765_
                           _hd7570175755_
                           _hd7567475842_
                           _hd7567175832_)
                          (let () (declare (not safe)) (_g7566175714_)))))
                  (let () (declare (not safe)) (_g7566175714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7566175714_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7566175714_))))))
                              (let () (declare (not safe)) (_g7566175714_)))))
                      (let () (declare (not safe)) (_g7566175714_)))))
              (let () (declare (not safe)) (_g7566175714_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx75914_)
      (let* ((_g7591875932_
              (lambda (_g7591975928_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7591975928_))))
             (_g7591775973_
              (lambda (_g7591975936_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7591975936_))
                    (let ((_e7592375939_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7591975936_))))
                      (let ((_hd7592275943_
                             (let ()
                               (declare (not safe))
                               (##car _e7592375939_)))
                            (_tl7592175946_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7592375939_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7592175946_))
                            (let ((_e7592675949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7592175946_))))
                              (let ((_hd7592575953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7592675949_)))
                                    (_tl7592475956_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7592675949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7592475956_))
                                    ((lambda (_L75959_)
                                       (let ((__tmp79781
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp79777
                                              (let ((__tmp79778
                                                     (let ((__tmp79780
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79780 __tmp79779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79778 '()))))
                                         (declare (not safe))
                                         (cons __tmp79781 __tmp79777)))
                                     _hd7592575953_)
                                    (_g7591875932_ _g7591975936_))))
                            (_g7591875932_ _g7591975936_))))
                    (_g7591875932_ _g7591975936_)))))
        (_g7591775973_ _$stx75914_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx75977_)
      (let* ((_g7598175995_
              (lambda (_g7598275991_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7598275991_))))
             (_g7598076036_
              (lambda (_g7598275999_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7598275999_))
                    (let ((_e7598676002_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7598275999_))))
                      (let ((_hd7598576006_
                             (let ()
                               (declare (not safe))
                               (##car _e7598676002_)))
                            (_tl7598476009_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7598676002_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7598476009_))
                            (let ((_e7598976012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7598476009_))))
                              (let ((_hd7598876016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7598976012_)))
                                    (_tl7598776019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7598976012_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7598776019_))
                                    ((lambda (_L76022_)
                                       (let ((__tmp79786
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp79782
                                              (let ((__tmp79783
                                                     (let ((__tmp79785
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79784
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79785 __tmp79784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79783 '()))))
                                         (declare (not safe))
                                         (cons __tmp79786 __tmp79782)))
                                     _hd7598876016_)
                                    (_g7598175995_ _g7598275999_))))
                            (_g7598175995_ _g7598275999_))))
                    (_g7598175995_ _g7598275999_)))))
        (_g7598076036_ _$stx75977_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx76040_)
      (let* ((___stx7901279013_ _$stx76040_)
             (_g7604576078_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7901279013_)))))
        (let ((___kont7901579016_
               (lambda (_L76180_ _L76182_ _L76183_)
                 (let ((__tmp79793
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79787
                        (let ((__tmp79790
                               (let ((__tmp79792
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79791
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76183_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79792 __tmp79791)))
                              (__tmp79788
                               (let ((__tmp79789
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76180_ '()))))
                                 (declare (not safe))
                                 (cons _L76182_ __tmp79789))))
                          (declare (not safe))
                          (cons __tmp79790 __tmp79788))))
                   (declare (not safe))
                   (cons __tmp79793 __tmp79787))))
              (___kont7901779018_
               (lambda (_L76115_ _L76117_)
                 (let ((__tmp79800
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79794
                        (let ((__tmp79797
                               (let ((__tmp79799
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79798
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76117_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79799 __tmp79798)))
                              (__tmp79795
                               (let ((__tmp79796
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76115_ __tmp79796))))
                          (declare (not safe))
                          (cons __tmp79797 __tmp79795))))
                   (declare (not safe))
                   (cons __tmp79800 __tmp79794)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7901279013_))
              (let ((_e7605276140_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7901279013_))))
                (let ((_tl7605076147_
                       (let () (declare (not safe)) (##cdr _e7605276140_)))
                      (_hd7605176144_
                       (let () (declare (not safe)) (##car _e7605276140_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7605076147_))
                      (let ((_e7605576150_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7605076147_))))
                        (let ((_tl7605376157_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7605576150_)))
                              (_hd7605476154_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7605576150_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7605376157_))
                              (let ((_e7605876160_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7605376157_))))
                                (let ((_tl7605676167_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7605876160_)))
                                      (_hd7605776164_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7605876160_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7605676167_))
                                      (let ((_e7606176170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7605676167_))))
                                        (let ((_tl7605976177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7606176170_)))
                                              (_hd7606076174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7606176170_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7605976177_))
                                              (___kont7901579016_
                                               _hd7606076174_
                                               _hd7605776164_
                                               _hd7605476154_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7604576078_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7605676167_))
                                          (___kont7901779018_
                                           _hd7605776164_
                                           _hd7605476154_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7604576078_))))))
                              (let () (declare (not safe)) (_g7604576078_)))))
                      (let () (declare (not safe)) (_g7604576078_)))))
              (let () (declare (not safe)) (_g7604576078_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx76205_)
      (let* ((___stx7906879069_ _$stx76205_)
             (_g7621076243_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7906879069_)))))
        (let ((___kont7907179072_
               (lambda (_L76345_ _L76347_ _L76348_)
                 (let ((__tmp79807
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79801
                        (let ((__tmp79804
                               (let ((__tmp79806
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79805
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76348_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79806 __tmp79805)))
                              (__tmp79802
                               (let ((__tmp79803
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76345_ '()))))
                                 (declare (not safe))
                                 (cons _L76347_ __tmp79803))))
                          (declare (not safe))
                          (cons __tmp79804 __tmp79802))))
                   (declare (not safe))
                   (cons __tmp79807 __tmp79801))))
              (___kont7907379074_
               (lambda (_L76280_ _L76282_)
                 (let ((__tmp79814
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79808
                        (let ((__tmp79811
                               (let ((__tmp79813
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79812
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76282_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79813 __tmp79812)))
                              (__tmp79809
                               (let ((__tmp79810
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76280_ __tmp79810))))
                          (declare (not safe))
                          (cons __tmp79811 __tmp79809))))
                   (declare (not safe))
                   (cons __tmp79814 __tmp79808)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7906879069_))
              (let ((_e7621776305_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7906879069_))))
                (let ((_tl7621576312_
                       (let () (declare (not safe)) (##cdr _e7621776305_)))
                      (_hd7621676309_
                       (let () (declare (not safe)) (##car _e7621776305_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7621576312_))
                      (let ((_e7622076315_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7621576312_))))
                        (let ((_tl7621876322_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7622076315_)))
                              (_hd7621976319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7622076315_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7621876322_))
                              (let ((_e7622376325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7621876322_))))
                                (let ((_tl7622176332_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7622376325_)))
                                      (_hd7622276329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7622376325_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7622176332_))
                                      (let ((_e7622676335_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7622176332_))))
                                        (let ((_tl7622476342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7622676335_)))
                                              (_hd7622576339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7622676335_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7622476342_))
                                              (___kont7907179072_
                                               _hd7622576339_
                                               _hd7622276329_
                                               _hd7621976319_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7621076243_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7622176332_))
                                          (___kont7907379074_
                                           _hd7622276329_
                                           _hd7621976319_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7621076243_))))))
                              (let () (declare (not safe)) (_g7621076243_)))))
                      (let () (declare (not safe)) (_g7621076243_)))))
              (let () (declare (not safe)) (_g7621076243_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx76370_)
      (let* ((_g7637476412_
              (lambda (_g7637576408_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7637576408_))))
             (_g7637376537_
              (lambda (_g7637576416_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7637576416_))
                    (let ((_e7638576419_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7637576416_))))
                      (let ((_hd7638476423_
                             (let ()
                               (declare (not safe))
                               (##car _e7638576419_)))
                            (_tl7638376426_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7638576419_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7638376426_))
                            (let ((_e7638876429_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7638376426_))))
                              (let ((_hd7638776433_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7638876429_)))
                                    (_tl7638676436_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7638876429_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7638676436_))
                                    (let ((_e7639176439_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7638676436_))))
                                      (let ((_hd7639076443_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7639176439_)))
                                            (_tl7638976446_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7639176439_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7638976446_))
                                            (let ((_e7639476449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7638976446_))))
                                              (let ((_hd7639376453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7639476449_)))
                                                    (_tl7639276456_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7639476449_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7639276456_))
                                                    (let ((_e7639776459_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7639276456_))))
                                                      (let ((_hd7639676463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7639776459_)))
                    (_tl7639576466_
                     (let () (declare (not safe)) (##cdr _e7639776459_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7639576466_))
                    (let ((_e7640076469_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7639576466_))))
                      (let ((_hd7639976473_
                             (let ()
                               (declare (not safe))
                               (##car _e7640076469_)))
                            (_tl7639876476_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7640076469_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7639876476_))
                            (let ((_e7640376479_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7639876476_))))
                              (let ((_hd7640276483_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7640376479_)))
                                    (_tl7640176486_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7640376479_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7640176486_))
                                    (let ((_e7640676489_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7640176486_))))
                                      (let ((_hd7640576493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7640676489_)))
                                            (_tl7640476496_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7640676489_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7640476496_))
                                            ((lambda (_L76499_
                                                      _L76501_
                                                      _L76502_
                                                      _L76503_
                                                      _L76504_
                                                      _L76505_
                                                      _L76506_)
                                               (let ((__tmp79843
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp79815
                                                      (let ((__tmp79840
                                                             (let ((__tmp79842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79841
                            (let () (declare (not safe)) (cons _L76506_ '()))))
                       (declare (not safe))
                       (cons __tmp79842 __tmp79841)))
                    (__tmp79816
                     (let ((__tmp79837
                            (let ((__tmp79839
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79838
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76505_ '()))))
                              (declare (not safe))
                              (cons __tmp79839 __tmp79838)))
                           (__tmp79817
                            (let ((__tmp79834
                                   (let ((__tmp79836
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79835
                                          (let ()
                                            (declare (not safe))
                                            (cons _L76504_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79836 __tmp79835)))
                                  (__tmp79818
                                   (let ((__tmp79831
                                          (let ((__tmp79833
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp79832
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L76503_ '()))))
                                            (declare (not safe))
                                            (cons __tmp79833 __tmp79832)))
                                         (__tmp79819
                                          (let ((__tmp79828
                                                 (let ((__tmp79830
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp79829
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L76502_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp79830
                                                         __tmp79829)))
                                                (__tmp79820
                                                 (let ((__tmp79825
                                                        (let ((__tmp79827
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp79826
                       (let () (declare (not safe)) (cons _L76501_ '()))))
                  (declare (not safe))
                  (cons __tmp79827 __tmp79826)))
               (__tmp79821
                (let ((__tmp79822
                       (let ((__tmp79824
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp79823
                              (let ()
                                (declare (not safe))
                                (cons _L76499_ '()))))
                         (declare (not safe))
                         (cons __tmp79824 __tmp79823))))
                  (declare (not safe))
                  (cons __tmp79822 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79825
                                                         __tmp79821))))
                                            (declare (not safe))
                                            (cons __tmp79828 __tmp79820))))
                                     (declare (not safe))
                                     (cons __tmp79831 __tmp79819))))
                              (declare (not safe))
                              (cons __tmp79834 __tmp79818))))
                       (declare (not safe))
                       (cons __tmp79837 __tmp79817))))
                (declare (not safe))
                (cons __tmp79840 __tmp79816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79843 __tmp79815)))
                                             _hd7640576493_
                                             _hd7640276483_
                                             _hd7639976473_
                                             _hd7639676463_
                                             _hd7639376453_
                                             _hd7639076443_
                                             _hd7638776433_)
                                            (_g7637476412_ _g7637576416_))))
                                    (_g7637476412_ _g7637576416_))))
                            (_g7637476412_ _g7637576416_))))
                    (_g7637476412_ _g7637576416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7637476412_
                                                     _g7637576416_))))
                                            (_g7637476412_ _g7637576416_))))
                                    (_g7637476412_ _g7637576416_))))
                            (_g7637476412_ _g7637576416_))))
                    (_g7637476412_ _g7637576416_)))))
        (_g7637376537_ _$stx76370_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx76541_)
      (let* ((_g7654576559_
              (lambda (_g7654676555_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7654676555_))))
             (_g7654476600_
              (lambda (_g7654676563_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7654676563_))
                    (let ((_e7655076566_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7654676563_))))
                      (let ((_hd7654976570_
                             (let ()
                               (declare (not safe))
                               (##car _e7655076566_)))
                            (_tl7654876573_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7655076566_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7654876573_))
                            (let ((_e7655376576_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7654876573_))))
                              (let ((_hd7655276580_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7655376576_)))
                                    (_tl7655176583_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7655376576_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7655176583_))
                                    ((lambda (_L76586_)
                                       (let ((__tmp79848
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp79844
                                              (let ((__tmp79845
                                                     (let ((__tmp79847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79846
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79847 __tmp79846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79845 '()))))
                                         (declare (not safe))
                                         (cons __tmp79848 __tmp79844)))
                                     _hd7655276580_)
                                    (_g7654576559_ _g7654676563_))))
                            (_g7654576559_ _g7654676563_))))
                    (_g7654576559_ _g7654676563_)))))
        (_g7654476600_ _$stx76541_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx76604_)
      (let* ((_g7660876622_
              (lambda (_g7660976618_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7660976618_))))
             (_g7660776663_
              (lambda (_g7660976626_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7660976626_))
                    (let ((_e7661376629_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7660976626_))))
                      (let ((_hd7661276633_
                             (let ()
                               (declare (not safe))
                               (##car _e7661376629_)))
                            (_tl7661176636_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7661376629_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7661176636_))
                            (let ((_e7661676639_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7661176636_))))
                              (let ((_hd7661576643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7661676639_)))
                                    (_tl7661476646_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7661676639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7661476646_))
                                    ((lambda (_L76649_)
                                       (let ((__tmp79853
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp79849
                                              (let ((__tmp79850
                                                     (let ((__tmp79852
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79851
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79852 __tmp79851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79850 '()))))
                                         (declare (not safe))
                                         (cons __tmp79853 __tmp79849)))
                                     _hd7661576643_)
                                    (_g7660876622_ _g7660976626_))))
                            (_g7660876622_ _g7660976626_))))
                    (_g7660876622_ _g7660976626_)))))
        (_g7660776663_ _$stx76604_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx76667_)
      (let* ((___stx7912479125_ _$stx76667_)
             (_g7667276705_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7912479125_)))))
        (let ((___kont7912779128_
               (lambda (_L76807_ _L76809_ _L76810_)
                 (let ((__tmp79863
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79854
                        (let ((__tmp79860
                               (let ((__tmp79862
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79861
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76810_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79862 __tmp79861)))
                              (__tmp79855
                               (let ((__tmp79857
                                      (let ((__tmp79859
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79858
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76809_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79859 __tmp79858)))
                                     (__tmp79856
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76807_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79857 __tmp79856))))
                          (declare (not safe))
                          (cons __tmp79860 __tmp79855))))
                   (declare (not safe))
                   (cons __tmp79863 __tmp79854))))
              (___kont7912979130_
               (lambda (_L76742_ _L76744_)
                 (let ((__tmp79873
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79864
                        (let ((__tmp79870
                               (let ((__tmp79872
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79871
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76744_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79872 __tmp79871)))
                              (__tmp79865
                               (let ((__tmp79867
                                      (let ((__tmp79869
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79868
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76742_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79869 __tmp79868)))
                                     (__tmp79866
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79867 __tmp79866))))
                          (declare (not safe))
                          (cons __tmp79870 __tmp79865))))
                   (declare (not safe))
                   (cons __tmp79873 __tmp79864)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7912479125_))
              (let ((_e7667976767_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7912479125_))))
                (let ((_tl7667776774_
                       (let () (declare (not safe)) (##cdr _e7667976767_)))
                      (_hd7667876771_
                       (let () (declare (not safe)) (##car _e7667976767_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7667776774_))
                      (let ((_e7668276777_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7667776774_))))
                        (let ((_tl7668076784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7668276777_)))
                              (_hd7668176781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7668276777_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7668076784_))
                              (let ((_e7668576787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7668076784_))))
                                (let ((_tl7668376794_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7668576787_)))
                                      (_hd7668476791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7668576787_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7668376794_))
                                      (let ((_e7668876797_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7668376794_))))
                                        (let ((_tl7668676804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7668876797_)))
                                              (_hd7668776801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7668876797_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7668676804_))
                                              (___kont7912779128_
                                               _hd7668776801_
                                               _hd7668476791_
                                               _hd7668176781_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7667276705_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7668376794_))
                                          (___kont7912979130_
                                           _hd7668476791_
                                           _hd7668176781_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7667276705_))))))
                              (let () (declare (not safe)) (_g7667276705_)))))
                      (let () (declare (not safe)) (_g7667276705_)))))
              (let () (declare (not safe)) (_g7667276705_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx76832_)
      (let* ((___stx7918079181_ _$stx76832_)
             (_g7683776870_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7918079181_)))))
        (let ((___kont7918379184_
               (lambda (_L76972_ _L76974_ _L76975_)
                 (let ((__tmp79883
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79874
                        (let ((__tmp79880
                               (let ((__tmp79882
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79881
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76975_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79882 __tmp79881)))
                              (__tmp79875
                               (let ((__tmp79877
                                      (let ((__tmp79879
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79878
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76974_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79879 __tmp79878)))
                                     (__tmp79876
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76972_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79877 __tmp79876))))
                          (declare (not safe))
                          (cons __tmp79880 __tmp79875))))
                   (declare (not safe))
                   (cons __tmp79883 __tmp79874))))
              (___kont7918579186_
               (lambda (_L76907_ _L76909_)
                 (let ((__tmp79893
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79884
                        (let ((__tmp79890
                               (let ((__tmp79892
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79891
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76909_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79892 __tmp79891)))
                              (__tmp79885
                               (let ((__tmp79887
                                      (let ((__tmp79889
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79888
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76907_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79889 __tmp79888)))
                                     (__tmp79886
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79887 __tmp79886))))
                          (declare (not safe))
                          (cons __tmp79890 __tmp79885))))
                   (declare (not safe))
                   (cons __tmp79893 __tmp79884)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7918079181_))
              (let ((_e7684476932_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7918079181_))))
                (let ((_tl7684276939_
                       (let () (declare (not safe)) (##cdr _e7684476932_)))
                      (_hd7684376936_
                       (let () (declare (not safe)) (##car _e7684476932_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7684276939_))
                      (let ((_e7684776942_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7684276939_))))
                        (let ((_tl7684576949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7684776942_)))
                              (_hd7684676946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7684776942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7684576949_))
                              (let ((_e7685076952_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7684576949_))))
                                (let ((_tl7684876959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7685076952_)))
                                      (_hd7684976956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7685076952_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7684876959_))
                                      (let ((_e7685376962_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7684876959_))))
                                        (let ((_tl7685176969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7685376962_)))
                                              (_hd7685276966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7685376962_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7685176969_))
                                              (___kont7918379184_
                                               _hd7685276966_
                                               _hd7684976956_
                                               _hd7684676946_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7683776870_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7684876959_))
                                          (___kont7918579186_
                                           _hd7684976956_
                                           _hd7684676946_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7683776870_))))))
                              (let () (declare (not safe)) (_g7683776870_)))))
                      (let () (declare (not safe)) (_g7683776870_)))))
              (let () (declare (not safe)) (_g7683776870_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx76997_)
      (let* ((___stx7923679237_ _$stx76997_)
             (_g7700577073_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7923679237_)))))
        (let ((___kont7923979240_
               (lambda (_L77351_ _L77353_)
                 (let ((__tmp79909
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79894
                        (let ((__tmp79905
                               (let ((__tmp79908
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79906
                                      (let ((__tmp79907
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79907 '()))))
                                 (declare (not safe))
                                 (cons __tmp79908 __tmp79906)))
                              (__tmp79895
                               (let ((__tmp79902
                                      (let ((__tmp79904
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79903
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77353_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79904 __tmp79903)))
                                     (__tmp79896
                                      (let ((__tmp79897
                                             (let ((__tmp79898
                                                    (let ((__tmp79899
                                                           (let ((__tmp79901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79900
                          (let () (declare (not safe)) (cons _L77351_ '()))))
                     (declare (not safe))
                     (cons __tmp79901 __tmp79900))))
              (declare (not safe))
              (cons __tmp79899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L77351_ __tmp79898))))
                                        (declare (not safe))
                                        (cons '#f __tmp79897))))
                                 (declare (not safe))
                                 (cons __tmp79902 __tmp79896))))
                          (declare (not safe))
                          (cons __tmp79905 __tmp79895))))
                   (declare (not safe))
                   (cons __tmp79909 __tmp79894))))
              (___kont7924179242_
               (lambda (_L77282_ _L77284_)
                 (let ((__tmp79910
                        (let ((__tmp79911
                               (let ((__tmp79912
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L77282_ __tmp79912))))
                          (declare (not safe))
                          (cons 'primitive: __tmp79911))))
                   (declare (not safe))
                   (cons _L77284_ __tmp79910))))
              (___kont7924379244_
               (lambda (_L77221_ _L77223_)
                 (let ((__tmp79926
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp79913
                        (let ((__tmp79922
                               (let ((__tmp79925
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79923
                                      (let ((__tmp79924
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79924 '()))))
                                 (declare (not safe))
                                 (cons __tmp79925 __tmp79923)))
                              (__tmp79914
                               (let ((__tmp79919
                                      (let ((__tmp79921
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79920
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77223_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79921 __tmp79920)))
                                     (__tmp79915
                                      (let ((__tmp79916
                                             (let ((__tmp79918
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79917
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77221_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79918 __tmp79917))))
                                        (declare (not safe))
                                        (cons __tmp79916 '()))))
                                 (declare (not safe))
                                 (cons __tmp79919 __tmp79915))))
                          (declare (not safe))
                          (cons __tmp79922 __tmp79914))))
                   (declare (not safe))
                   (cons __tmp79926 __tmp79913))))
              (___kont7924579246_
               (lambda (_L77153_ _L77155_)
                 (let ((__tmp79940
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79927
                        (let ((__tmp79936
                               (let ((__tmp79939
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79937
                                      (let ((__tmp79938
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79938 '()))))
                                 (declare (not safe))
                                 (cons __tmp79939 __tmp79937)))
                              (__tmp79928
                               (let ((__tmp79933
                                      (let ((__tmp79935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79934
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77155_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79935 __tmp79934)))
                                     (__tmp79929
                                      (let ((__tmp79930
                                             (let ((__tmp79932
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79931
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77153_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79932 __tmp79931))))
                                        (declare (not safe))
                                        (cons __tmp79930 '()))))
                                 (declare (not safe))
                                 (cons __tmp79933 __tmp79929))))
                          (declare (not safe))
                          (cons __tmp79936 __tmp79928))))
                   (declare (not safe))
                   (cons __tmp79940 __tmp79927))))
              (___kont7924779248_
               (lambda (_L77100_ _L77102_)
                 (let ((__tmp79941
                        (let ((__tmp79942
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L77100_ __tmp79942))))
                   (declare (not safe))
                   (cons _L77102_ __tmp79941)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7923679237_))
              (let ((_e7701177307_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7923679237_))))
                (let ((_tl7700977314_
                       (let () (declare (not safe)) (##cdr _e7701177307_)))
                      (_hd7701077311_
                       (let () (declare (not safe)) (##car _e7701177307_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7700977314_))
                      (let ((_e7701477317_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7700977314_))))
                        (let ((_tl7701277324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7701477317_)))
                              (_hd7701377321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7701477317_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7701277324_))
                              (let ((_e7701777327_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7701277324_))))
                                (let ((_tl7701577334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7701777327_)))
                                      (_hd7701677331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7701777327_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7701677331_))
                                      (let ((_e7701877337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7701677331_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7701877337_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7701577334_))
                                                (let ((_e7702177341_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7701577334_))))
                                                  (let ((_tl7701977348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7702177341_)))
                                                        (_hd7702077345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7702177341_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7701977348_))
                                                        (___kont7923979240_
                                                         _hd7702077345_
                                                         _hd7701377321_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7701377321_))
                                                            (let ((_e7703077268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7701377321_))))
                      (declare (not safe))
                      (_g7700577073_))
                    (let () (declare (not safe)) (_g7700577073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7701377321_))
                                                    (let ((_e7703077268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7701377321_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7703077268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7701577334_))
                      (___kont7924179242_ _hd7701677331_ _hd7701077311_)
                      (let () (declare (not safe)) (_g7700577073_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7701577334_))
                      (___kont7924579246_ _hd7701677331_ _hd7701377321_)
                      (let () (declare (not safe)) (_g7700577073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7701577334_))
                                                        (___kont7924579246_
                                                         _hd7701677331_
                                                         _hd7701377321_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7700577073_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7701377321_))
                                                (let ((_e7703077268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7701377321_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7703077268_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7701577334_))
                                                          (___kont7924179242_
                                                           _hd7701677331_
                                                           _hd7701077311_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7701577334_))
                      (let ((_e7704877211_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7701577334_))))
                        (let ((_tl7704677218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7704877211_)))
                              (_hd7704777215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7704877211_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7704677218_))
                              (___kont7924379244_
                               _hd7704777215_
                               _hd7701677331_)
                              (let () (declare (not safe)) (_g7700577073_)))))
                      (let () (declare (not safe)) (_g7700577073_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7701577334_))
                  (___kont7924579246_ _hd7701677331_ _hd7701377321_)
                  (let () (declare (not safe)) (_g7700577073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7701577334_))
                                                    (___kont7924579246_
                                                     _hd7701677331_
                                                     _hd7701377321_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7700577073_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7701377321_))
                                          (let ((_e7703077268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7701377321_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7703077268_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7701577334_))
                                                    (___kont7924179242_
                                                     _hd7701677331_
                                                     _hd7701077311_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7701577334_))
                                                        (let ((_e7704877211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7701577334_))))
                  (let ((_tl7704677218_
                         (let () (declare (not safe)) (##cdr _e7704877211_)))
                        (_hd7704777215_
                         (let () (declare (not safe)) (##car _e7704877211_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7704677218_))
                        (___kont7924379244_ _hd7704777215_ _hd7701677331_)
                        (let () (declare (not safe)) (_g7700577073_)))))
                (let () (declare (not safe)) (_g7700577073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7701577334_))
                                                    (___kont7924579246_
                                                     _hd7701677331_
                                                     _hd7701377321_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7700577073_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7701577334_))
                                              (___kont7924579246_
                                               _hd7701677331_
                                               _hd7701377321_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7700577073_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7701377321_))
                                  (let ((_e7703077268_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7701377321_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7701277324_))
                                        (___kont7924779248_
                                         _hd7701377321_
                                         _hd7701077311_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7700577073_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7701277324_))
                                      (___kont7924779248_
                                       _hd7701377321_
                                       _hd7701077311_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7700577073_)))))))
                      (let () (declare (not safe)) (_g7700577073_)))))
              (let () (declare (not safe)) (_g7700577073_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx77375_)
      (let* ((___stx7937679377_ _$stx77375_)
             (_g7738077435_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7937679377_)))))
        (let ((___kont7937979380_
               (lambda (_L77620_ _L77622_)
                 (let ((__tmp79958
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp79943
                        (let ((__tmp79954
                               (let ((__tmp79957
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79955
                                      (let ((__tmp79956
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79956 '()))))
                                 (declare (not safe))
                                 (cons __tmp79957 __tmp79955)))
                              (__tmp79944
                               (let ((__tmp79945
                                      (let ((__tmp79953
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79946
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77620_
                                                  _L77622_))
                                               (let ((__tmp79947
                                                      (lambda (_g7763977643_
                                                               _g7764077646_
                                                               _g7764177648_)
                                                        (let ((__tmp79948
                                                               (let ((__tmp79952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79949
                              (let ((__tmp79950
                                     (let ((__tmp79951
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7763977643_ '()))))
                                       (declare (not safe))
                                       (cons _g7764077646_ __tmp79951))))
                                (declare (not safe))
                                (cons 'primitive: __tmp79950))))
                         (declare (not safe))
                         (cons __tmp79952 __tmp79949))))
                  (declare (not safe))
                  (cons __tmp79948 _g7764177648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79947
                                                         '()
                                                         _L77620_
                                                         _L77622_)))))
                                        (declare (not safe))
                                        (cons __tmp79953 __tmp79946))))
                                 (declare (not safe))
                                 (cons __tmp79945 '()))))
                          (declare (not safe))
                          (cons __tmp79954 __tmp79944))))
                   (declare (not safe))
                   (cons __tmp79958 __tmp79943))))
              (___kont7938379384_
               (lambda (_L77506_ _L77508_)
                 (let ((__tmp79973
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp79959
                        (let ((__tmp79969
                               (let ((__tmp79972
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79970
                                      (let ((__tmp79971
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79971 '()))))
                                 (declare (not safe))
                                 (cons __tmp79972 __tmp79970)))
                              (__tmp79960
                               (let ((__tmp79961
                                      (let ((__tmp79968
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79962
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77506_
                                                  _L77508_))
                                               (let ((__tmp79963
                                                      (lambda (_g7752377527_
                                                               _g7752477530_
                                                               _g7752577532_)
                                                        (let ((__tmp79964
                                                               (let ((__tmp79967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79965
                              (let ((__tmp79966
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7752377527_ '()))))
                                (declare (not safe))
                                (cons _g7752477530_ __tmp79966))))
                         (declare (not safe))
                         (cons __tmp79967 __tmp79965))))
                  (declare (not safe))
                  (cons __tmp79964 _g7752577532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79963
                                                         '()
                                                         _L77506_
                                                         _L77508_)))))
                                        (declare (not safe))
                                        (cons __tmp79968 __tmp79962))))
                                 (declare (not safe))
                                 (cons __tmp79961 '()))))
                          (declare (not safe))
                          (cons __tmp79969 __tmp79960))))
                   (declare (not safe))
                   (cons __tmp79973 __tmp79959)))))
          (let* ((___match7942779428_
                  (lambda (_e7741277442_
                           _hd7741177446_
                           _tl7741077449_
                           ___splice7938579386_
                           _target7741377452_
                           _tl7741577455_)
                    (letrec ((_loop7741677458_
                              (lambda (_hd7741477462_
                                       _dispatch7742077465_
                                       _arity7742177467_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7741477462_))
                                    (let ((_e7741777470_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7741477462_))))
                                      (let ((_lp-tl7741977477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7741777470_)))
                                            (_lp-hd7741877474_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7741777470_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7741877474_))
                                            (let ((_e7742677480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7741877474_))))
                                              (let ((_tl7742477487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7742677480_)))
                                                    (_hd7742577484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7742677480_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7742477487_))
                                                    (let ((_e7742977490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7742477487_))))
                                                      (let ((_tl7742777497_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7742977490_)))
                    (_hd7742877494_
                     (let () (declare (not safe)) (##car _e7742977490_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7742777497_))
                    (_loop7741677458_
                     _lp-tl7741977477_
                     (let ()
                       (declare (not safe))
                       (cons _hd7742877494_ _dispatch7742077465_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7742577484_ _arity7742177467_)))
                    (let () (declare (not safe)) (_g7738077435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7738077435_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7738077435_)))))
                                    (let ((_arity7742377503_
                                           (reverse _arity7742177467_))
                                          (_dispatch7742277500_
                                           (reverse _dispatch7742077465_)))
                                      (___kont7938379384_
                                       _dispatch7742277500_
                                       _arity7742377503_))))))
                      (_loop7741677458_ _target7741377452_ '() '()))))
                 (___match7941979420_
                  (lambda (_e7741277442_ _hd7741177446_ _tl7741077449_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7741077449_))
                        (let ((___splice7938579386_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7741077449_ '0))))
                          (let ((_tl7741577455_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7938579386_ '1)))
                                (_target7741377452_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7938579386_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7741577455_))
                                (___match7942779428_
                                 _e7741277442_
                                 _hd7741177446_
                                 _tl7741077449_
                                 ___splice7938579386_
                                 _target7741377452_
                                 _tl7741577455_)
                                (let ()
                                  (declare (not safe))
                                  (_g7738077435_)))))
                        (let () (declare (not safe)) (_g7738077435_)))))
                 (___match7941379414_
                  (lambda (_e7738677542_
                           _hd7738577546_
                           _tl7738477549_
                           _e7738977552_
                           _hd7738877556_
                           _tl7738777559_
                           _e7739077562_
                           ___splice7938179382_
                           _target7739177566_
                           _tl7739377569_)
                    (letrec ((_loop7739477572_
                              (lambda (_hd7739277576_
                                       _dispatch7739877579_
                                       _arity7739977581_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7739277576_))
                                    (let ((_e7739577584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7739277576_))))
                                      (let ((_lp-tl7739777591_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7739577584_)))
                                            (_lp-hd7739677588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7739577584_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7739677588_))
                                            (let ((_e7740477594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7739677588_))))
                                              (let ((_tl7740277601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7740477594_)))
                                                    (_hd7740377598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7740477594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7740277601_))
                                                    (let ((_e7740777604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7740277601_))))
                                                      (let ((_tl7740577611_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7740777604_)))
                    (_hd7740677608_
                     (let () (declare (not safe)) (##car _e7740777604_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7740577611_))
                    (_loop7739477572_
                     _lp-tl7739777591_
                     (let ()
                       (declare (not safe))
                       (cons _hd7740677608_ _dispatch7739877579_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7740377598_ _arity7739977581_)))
                    (___match7941979420_
                     _e7738677542_
                     _hd7738577546_
                     _tl7738477549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7941979420_
                                                     _e7738677542_
                                                     _hd7738577546_
                                                     _tl7738477549_))))
                                            (___match7941979420_
                                             _e7738677542_
                                             _hd7738577546_
                                             _tl7738477549_))))
                                    (let ((_arity7740177617_
                                           (reverse _arity7739977581_))
                                          (_dispatch7740077614_
                                           (reverse _dispatch7739877579_)))
                                      (___kont7937979380_
                                       _dispatch7740077614_
                                       _arity7740177617_))))))
                      (_loop7739477572_ _target7739177566_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7937679377_))
                (let ((_e7738677542_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7937679377_))))
                  (let ((_tl7738477549_
                         (let () (declare (not safe)) (##cdr _e7738677542_)))
                        (_hd7738577546_
                         (let () (declare (not safe)) (##car _e7738677542_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7738477549_))
                        (let ((_e7738977552_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7738477549_))))
                          (let ((_tl7738777559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7738977552_)))
                                (_hd7738877556_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7738977552_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7738877556_))
                                (let ((_e7739077562_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7738877556_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7739077562_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7738777559_))
                                          (let ((___splice7938179382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7738777559_
                                                    '0))))
                                            (let ((_tl7739377569_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7938179382_
                                                      '1)))
                                                  (_target7739177566_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7938179382_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7739377569_))
                                                  (___match7941379414_
                                                   _e7738677542_
                                                   _hd7738577546_
                                                   _tl7738477549_
                                                   _e7738977552_
                                                   _hd7738877556_
                                                   _tl7738777559_
                                                   _e7739077562_
                                                   ___splice7938179382_
                                                   _target7739177566_
                                                   _tl7739377569_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7738477549_))
                                                      (let ((___splice7938579386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7738477549_ '0))))
                (let ((_tl7741577455_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7938579386_ '1)))
                      (_target7741377452_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7938579386_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7741577455_))
                      (___match7942779428_
                       _e7738677542_
                       _hd7738577546_
                       _tl7738477549_
                       ___splice7938579386_
                       _target7741377452_
                       _tl7741577455_)
                      (let () (declare (not safe)) (_g7738077435_)))))
              (let () (declare (not safe)) (_g7738077435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7738477549_))
                                              (let ((___splice7938579386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7738477549_
                                                        '0))))
                                                (let ((_tl7741577455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7938579386_
                                                          '1)))
                                                      (_target7741377452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7938579386_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7741577455_))
                                                      (___match7942779428_
                                                       _e7738677542_
                                                       _hd7738577546_
                                                       _tl7738477549_
                                                       ___splice7938579386_
                                                       _target7741377452_
                                                       _tl7741577455_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7738077435_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7738077435_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7738477549_))
                                          (let ((___splice7938579386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7738477549_
                                                    '0))))
                                            (let ((_tl7741577455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7938579386_
                                                      '1)))
                                                  (_target7741377452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7938579386_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7741577455_))
                                                  (___match7942779428_
                                                   _e7738677542_
                                                   _hd7738577546_
                                                   _tl7738477549_
                                                   ___splice7938579386_
                                                   _target7741377452_
                                                   _tl7741577455_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7738077435_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7738077435_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7738477549_))
                                    (let ((___splice7938579386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7738477549_
                                              '0))))
                                      (let ((_tl7741577455_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7938579386_
                                                '1)))
                                            (_target7741377452_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7938579386_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7741577455_))
                                            (___match7942779428_
                                             _e7738677542_
                                             _hd7738577546_
                                             _tl7738477549_
                                             ___splice7938579386_
                                             _target7741377452_
                                             _tl7741577455_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7738077435_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7738077435_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7738477549_))
                            (let ((___splice7938579386_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7738477549_
                                      '0))))
                              (let ((_tl7741577455_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7938579386_ '1)))
                                    (_target7741377452_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7938579386_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7741577455_))
                                    (___match7942779428_
                                     _e7738677542_
                                     _hd7738577546_
                                     _tl7738477549_
                                     ___splice7938579386_
                                     _target7741377452_
                                     _tl7741577455_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7738077435_)))))
                            (let () (declare (not safe)) (_g7738077435_))))))
                (let () (declare (not safe)) (_g7738077435_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx77657_)
      (let* ((_g7766177679_
              (lambda (_g7766277675_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7766277675_))))
             (_g7766077734_
              (lambda (_g7766277683_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7766277683_))
                    (let ((_e7766777686_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7766277683_))))
                      (let ((_hd7766677690_
                             (let ()
                               (declare (not safe))
                               (##car _e7766777686_)))
                            (_tl7766577693_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7766777686_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7766577693_))
                            (let ((_e7767077696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7766577693_))))
                              (let ((_hd7766977700_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7767077696_)))
                                    (_tl7766877703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7767077696_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7766877703_))
                                    (let ((_e7767377706_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7766877703_))))
                                      (let ((_hd7767277710_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7767377706_)))
                                            (_tl7767177713_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7767377706_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7767177713_))
                                            ((lambda (_L77716_ _L77718_)
                                               (let ((__tmp79987
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp79974
                                                      (let ((__tmp79983
                                                             (let ((__tmp79986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79984
                            (let ((__tmp79985
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp79985 '()))))
                       (declare (not safe))
                       (cons __tmp79986 __tmp79984)))
                    (__tmp79975
                     (let ((__tmp79980
                            (let ((__tmp79982
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79981
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77718_ '()))))
                              (declare (not safe))
                              (cons __tmp79982 __tmp79981)))
                           (__tmp79976
                            (let ((__tmp79977
                                   (let ((__tmp79979
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79978
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77716_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79979 __tmp79978))))
                              (declare (not safe))
                              (cons __tmp79977 '()))))
                       (declare (not safe))
                       (cons __tmp79980 __tmp79976))))
                (declare (not safe))
                (cons __tmp79983 __tmp79975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79987 __tmp79974)))
                                             _hd7767277710_
                                             _hd7766977700_)
                                            (_g7766177679_ _g7766277683_))))
                                    (_g7766177679_ _g7766277683_))))
                            (_g7766177679_ _g7766277683_))))
                    (_g7766177679_ _g7766277683_)))))
        (_g7766077734_ _$stx77657_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx77738_)
      (let* ((_g7774277760_
              (lambda (_g7774377756_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7774377756_))))
             (_g7774177815_
              (lambda (_g7774377764_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7774377764_))
                    (let ((_e7774877767_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7774377764_))))
                      (let ((_hd7774777771_
                             (let ()
                               (declare (not safe))
                               (##car _e7774877767_)))
                            (_tl7774677774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7774877767_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7774677774_))
                            (let ((_e7775177777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7774677774_))))
                              (let ((_hd7775077781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7775177777_)))
                                    (_tl7774977784_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7775177777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7774977784_))
                                    (let ((_e7775477787_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7774977784_))))
                                      (let ((_hd7775377791_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7775477787_)))
                                            (_tl7775277794_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7775477787_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7775277794_))
                                            ((lambda (_L77797_ _L77799_)
                                               (let ((__tmp80001
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp79988
                                                      (let ((__tmp79997
                                                             (let ((__tmp80000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79998
                            (let ((__tmp79999
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp79999 '()))))
                       (declare (not safe))
                       (cons __tmp80000 __tmp79998)))
                    (__tmp79989
                     (let ((__tmp79994
                            (let ((__tmp79996
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79995
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77799_ '()))))
                              (declare (not safe))
                              (cons __tmp79996 __tmp79995)))
                           (__tmp79990
                            (let ((__tmp79991
                                   (let ((__tmp79993
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79992
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77797_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79993 __tmp79992))))
                              (declare (not safe))
                              (cons __tmp79991 '()))))
                       (declare (not safe))
                       (cons __tmp79994 __tmp79990))))
                (declare (not safe))
                (cons __tmp79997 __tmp79989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp80001 __tmp79988)))
                                             _hd7775377791_
                                             _hd7775077781_)
                                            (_g7774277760_ _g7774377764_))))
                                    (_g7774277760_ _g7774377764_))))
                            (_g7774277760_ _g7774377764_))))
                    (_g7774277760_ _g7774377764_)))))
        (_g7774177815_ _$stx77738_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx77819_)
      (let* ((___stx7943079431_ _$stx77819_)
             (_g7782677897_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7943079431_)))))
        (let ((___kont7943379434_
               (lambda (_L78188_ _L78190_)
                 (let ((__tmp80007
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80002
                        (let ((__tmp80003
                               (let ((__tmp80004
                                      (let ((__tmp80006
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp80005
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78188_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80006 __tmp80005))))
                                 (declare (not safe))
                                 (cons __tmp80004 '()))))
                          (declare (not safe))
                          (cons _L78190_ __tmp80003))))
                   (declare (not safe))
                   (cons __tmp80007 __tmp80002))))
              (___kont7943579436_
               (lambda (_L78107_ _L78109_)
                 (let ((__tmp80016
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80008
                        (let ((__tmp80009
                               (let ((__tmp80010
                                      (let ((__tmp80015
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp80011
                                             (let ((__tmp80012
                                                    (lambda (_g7812878131_
                                                             _g7812978134_)
                                                      (let ((__tmp80013
                                                             (let ((__tmp80014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7812878131_ __tmp80014))))
                (declare (not safe))
                (cons __tmp80013 _g7812978134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp80012
                                                       '()
                                                       _L78107_))))
                                        (declare (not safe))
                                        (cons __tmp80015 __tmp80011))))
                                 (declare (not safe))
                                 (cons __tmp80010 '()))))
                          (declare (not safe))
                          (cons _L78109_ __tmp80009))))
                   (declare (not safe))
                   (cons __tmp80016 __tmp80008))))
              (___kont7943979440_
               (lambda (_L78019_ _L78021_)
                 (let ((__tmp80023
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80017
                        (let ((__tmp80018
                               (let ((__tmp80019
                                      (let ((__tmp80022
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp80020
                                             (let ((__tmp80021
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L78019_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp80021))))
                                        (declare (not safe))
                                        (cons __tmp80022 __tmp80020))))
                                 (declare (not safe))
                                 (cons __tmp80019 '()))))
                          (declare (not safe))
                          (cons _L78021_ __tmp80018))))
                   (declare (not safe))
                   (cons __tmp80023 __tmp80017))))
              (___kont7944179442_
               (lambda (_L77954_ _L77956_)
                 (let ((__tmp80033
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80024
                        (let ((__tmp80025
                               (let ((__tmp80026
                                      (let ((__tmp80032
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp80027
                                             (let ((__tmp80028
                                                    (let ((__tmp80029
                                                           (lambda (_g7797377976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7797477979_)
                     (let ((__tmp80030
                            (let ((__tmp80031
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7797377976_ __tmp80031))))
                       (declare (not safe))
                       (cons __tmp80030 _g7797477979_)))))
              (declare (not safe))
              (foldr1 __tmp80029 '() _L77954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp80028))))
                                        (declare (not safe))
                                        (cons __tmp80032 __tmp80027))))
                                 (declare (not safe))
                                 (cons __tmp80026 '()))))
                          (declare (not safe))
                          (cons _L77956_ __tmp80025))))
                   (declare (not safe))
                   (cons __tmp80033 __tmp80024)))))
          (let* ((___match7954979550_
                  (lambda (_e7787977904_
                           _hd7787877908_
                           _tl7787777911_
                           _e7788277914_
                           _hd7788177918_
                           _tl7788077921_
                           ___splice7944379444_
                           _target7788377924_
                           _tl7788577927_)
                    (letrec ((_loop7788677930_
                              (lambda (_hd7788477934_ _arity7789077937_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7788477934_))
                                    (let ((_e7788777940_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7788477934_))))
                                      (let ((_lp-tl7788977947_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7788777940_)))
                                            (_lp-hd7788877944_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7788777940_))))
                                        (_loop7788677930_
                                         _lp-tl7788977947_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7788877944_
                                                 _arity7789077937_)))))
                                    (let ((_arity7789177950_
                                           (reverse _arity7789077937_)))
                                      (___kont7944179442_
                                       _arity7789177950_
                                       _hd7788177918_))))))
                      (_loop7788677930_ _target7788377924_ '()))))
                 (___match7950979510_
                  (lambda (_e7784778043_
                           _hd7784678047_
                           _tl7784578050_
                           _e7785078053_
                           _hd7784978057_
                           _tl7784878060_
                           _e7785378063_
                           _hd7785278067_
                           _tl7785178070_
                           _e7785478073_
                           ___splice7943779438_
                           _target7785578077_
                           _tl7785778080_)
                    (letrec ((_loop7785878083_
                              (lambda (_hd7785678087_ _arity7786278090_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7785678087_))
                                    (let ((_e7785978093_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7785678087_))))
                                      (let ((_lp-tl7786178100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7785978093_)))
                                            (_lp-hd7786078097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7785978093_))))
                                        (_loop7785878083_
                                         _lp-tl7786178100_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7786078097_
                                                 _arity7786278090_)))))
                                    (let ((_arity7786378103_
                                           (reverse _arity7786278090_)))
                                      (___kont7943579436_
                                       _arity7786378103_
                                       _hd7784978057_))))))
                      (_loop7785878083_ _target7785578077_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7943079431_))
                (let ((_e7783278144_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7943079431_))))
                  (let ((_tl7783078151_
                         (let () (declare (not safe)) (##cdr _e7783278144_)))
                        (_hd7783178148_
                         (let () (declare (not safe)) (##car _e7783278144_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7783078151_))
                        (let ((_e7783578154_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7783078151_))))
                          (let ((_tl7783378161_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7783578154_)))
                                (_hd7783478158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7783578154_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7783378161_))
                                (let ((_e7783878164_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7783378161_))))
                                  (let ((_tl7783678171_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7783878164_)))
                                        (_hd7783778168_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7783878164_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7783778168_))
                                        (let ((_e7783978174_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7783778168_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7783978174_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7783678171_))
                                                  (let ((_e7784278178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7783678171_))))
                                                    (let ((_tl7784078185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7784278178_)))
                                                          (_hd7784178182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7784278178_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7784078185_))
                                                          (___kont7943379434_
                                                           _hd7784178182_
                                                           _hd7783478158_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7783678171_))
                      (let ((___splice7943779438_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7783678171_ '0))))
                        (let ((_tl7785778080_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7943779438_ '1)))
                              (_target7785578077_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7943779438_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7785778080_))
                              (___match7950979510_
                               _e7783278144_
                               _hd7783178148_
                               _tl7783078151_
                               _e7783578154_
                               _hd7783478158_
                               _tl7783378161_
                               _e7783878164_
                               _hd7783778168_
                               _tl7783678171_
                               _e7783978174_
                               ___splice7943779438_
                               _target7785578077_
                               _tl7785778080_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7783378161_))
                                  (let ((___splice7944379444_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7783378161_
                                            '0))))
                                    (let ((_tl7788577927_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7944379444_
                                              '1)))
                                          (_target7788377924_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7944379444_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7788577927_))
                                          (___match7954979550_
                                           _e7783278144_
                                           _hd7783178148_
                                           _tl7783078151_
                                           _e7783578154_
                                           _hd7783478158_
                                           _tl7783378161_
                                           ___splice7944379444_
                                           _target7788377924_
                                           _tl7788577927_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7782677897_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7782677897_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7783378161_))
                          (let ((___splice7944379444_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7783378161_
                                    '0))))
                            (let ((_tl7788577927_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7944379444_ '1)))
                                  (_target7788377924_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7944379444_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7788577927_))
                                  (___match7954979550_
                                   _e7783278144_
                                   _hd7783178148_
                                   _tl7783078151_
                                   _e7783578154_
                                   _hd7783478158_
                                   _tl7783378161_
                                   ___splice7944379444_
                                   _target7788377924_
                                   _tl7788577927_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7782677897_)))))
                          (let () (declare (not safe)) (_g7782677897_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7783678171_))
                                                      (let ((___splice7943779438_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7783678171_ '0))))
                (let ((_tl7785778080_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7943779438_ '1)))
                      (_target7785578077_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7943779438_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7785778080_))
                      (___match7950979510_
                       _e7783278144_
                       _hd7783178148_
                       _tl7783078151_
                       _e7783578154_
                       _hd7783478158_
                       _tl7783378161_
                       _e7783878164_
                       _hd7783778168_
                       _tl7783678171_
                       _e7783978174_
                       ___splice7943779438_
                       _target7785578077_
                       _tl7785778080_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7783678171_))
                          (___kont7943979440_ _hd7783778168_ _hd7783478158_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7783378161_))
                              (let ((___splice7944379444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7783378161_
                                        '0))))
                                (let ((_tl7788577927_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7944379444_
                                          '1)))
                                      (_target7788377924_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7944379444_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7788577927_))
                                      (___match7954979550_
                                       _e7783278144_
                                       _hd7783178148_
                                       _tl7783078151_
                                       _e7783578154_
                                       _hd7783478158_
                                       _tl7783378161_
                                       ___splice7944379444_
                                       _target7788377924_
                                       _tl7788577927_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7782677897_)))))
                              (let ()
                                (declare (not safe))
                                (_g7782677897_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7783678171_))
                  (___kont7943979440_ _hd7783778168_ _hd7783478158_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7783378161_))
                      (let ((___splice7944379444_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7783378161_ '0))))
                        (let ((_tl7788577927_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7944379444_ '1)))
                              (_target7788377924_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7944379444_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7788577927_))
                              (___match7954979550_
                               _e7783278144_
                               _hd7783178148_
                               _tl7783078151_
                               _e7783578154_
                               _hd7783478158_
                               _tl7783378161_
                               ___splice7944379444_
                               _target7788377924_
                               _tl7788577927_)
                              (let () (declare (not safe)) (_g7782677897_)))))
                      (let () (declare (not safe)) (_g7782677897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7783678171_))
                                                  (___kont7943979440_
                                                   _hd7783778168_
                                                   _hd7783478158_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7783378161_))
                                                      (let ((___splice7944379444_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7783378161_ '0))))
                (let ((_tl7788577927_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7944379444_ '1)))
                      (_target7788377924_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7944379444_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7788577927_))
                      (___match7954979550_
                       _e7783278144_
                       _hd7783178148_
                       _tl7783078151_
                       _e7783578154_
                       _hd7783478158_
                       _tl7783378161_
                       ___splice7944379444_
                       _target7788377924_
                       _tl7788577927_)
                      (let () (declare (not safe)) (_g7782677897_)))))
              (let () (declare (not safe)) (_g7782677897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7783678171_))
                                            (___kont7943979440_
                                             _hd7783778168_
                                             _hd7783478158_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7783378161_))
                                                (let ((___splice7944379444_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7783378161_
                                                          '0))))
                                                  (let ((_tl7788577927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7944379444_
                                                            '1)))
                                                        (_target7788377924_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7944379444_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7788577927_))
                                                        (___match7954979550_
                                                         _e7783278144_
                                                         _hd7783178148_
                                                         _tl7783078151_
                                                         _e7783578154_
                                                         _hd7783478158_
                                                         _tl7783378161_
                                                         ___splice7944379444_
                                                         _target7788377924_
                                                         _tl7788577927_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7782677897_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7782677897_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7783378161_))
                                    (let ((___splice7944379444_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7783378161_
                                              '0))))
                                      (let ((_tl7788577927_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7944379444_
                                                '1)))
                                            (_target7788377924_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7944379444_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7788577927_))
                                            (___match7954979550_
                                             _e7783278144_
                                             _hd7783178148_
                                             _tl7783078151_
                                             _e7783578154_
                                             _hd7783478158_
                                             _tl7783378161_
                                             ___splice7944379444_
                                             _target7788377924_
                                             _tl7788577927_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7782677897_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7782677897_))))))
                        (let () (declare (not safe)) (_g7782677897_)))))
                (let () (declare (not safe)) (_g7782677897_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx78214_)
      (let* ((___stx7955279553_ _$stx78214_)
             (_g7821978254_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7955279553_)))))
        (let ((___kont7955579556_
               (lambda (_L78376_ _L78378_)
                 (let ((__tmp80039
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80034
                        (let ((__tmp80035
                               (let ((__tmp80036
                                      (let ((__tmp80038
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp80037
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78376_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80038 __tmp80037))))
                                 (declare (not safe))
                                 (cons __tmp80036 '()))))
                          (declare (not safe))
                          (cons _L78378_ __tmp80035))))
                   (declare (not safe))
                   (cons __tmp80039 __tmp80034))))
              (___kont7955779558_
               (lambda (_L78311_ _L78313_)
                 (let ((__tmp80048
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp80040
                        (let ((__tmp80041
                               (let ((__tmp80042
                                      (let ((__tmp80047
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp80043
                                             (let ((__tmp80044
                                                    (lambda (_g7833078333_
                                                             _g7833178336_)
                                                      (let ((__tmp80045
                                                             (let ((__tmp80046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7833078333_ __tmp80046))))
                (declare (not safe))
                (cons __tmp80045 _g7833178336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp80044
                                                       '()
                                                       _L78311_))))
                                        (declare (not safe))
                                        (cons __tmp80047 __tmp80043))))
                                 (declare (not safe))
                                 (cons __tmp80042 '()))))
                          (declare (not safe))
                          (cons _L78313_ __tmp80041))))
                   (declare (not safe))
                   (cons __tmp80048 __tmp80040)))))
          (let ((___match7960179602_
                 (lambda (_e7823678261_
                          _hd7823578265_
                          _tl7823478268_
                          _e7823978271_
                          _hd7823878275_
                          _tl7823778278_
                          ___splice7955979560_
                          _target7824078281_
                          _tl7824278284_)
                   (letrec ((_loop7824378287_
                             (lambda (_hd7824178291_ _arity7824778294_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7824178291_))
                                   (let ((_e7824478297_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7824178291_))))
                                     (let ((_lp-tl7824678304_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7824478297_)))
                                           (_lp-hd7824578301_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7824478297_))))
                                       (_loop7824378287_
                                        _lp-tl7824678304_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7824578301_
                                                _arity7824778294_)))))
                                   (let ((_arity7824878307_
                                          (reverse _arity7824778294_)))
                                     (___kont7955779558_
                                      _arity7824878307_
                                      _hd7823878275_))))))
                     (_loop7824378287_ _target7824078281_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7955279553_))
                (let ((_e7822578346_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7955279553_))))
                  (let ((_tl7822378353_
                         (let () (declare (not safe)) (##cdr _e7822578346_)))
                        (_hd7822478350_
                         (let () (declare (not safe)) (##car _e7822578346_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7822378353_))
                        (let ((_e7822878356_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7822378353_))))
                          (let ((_tl7822678363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7822878356_)))
                                (_hd7822778360_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7822878356_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7822678363_))
                                (let ((_e7823178366_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7822678363_))))
                                  (let ((_tl7822978373_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7823178366_)))
                                        (_hd7823078370_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7823178366_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7822978373_))
                                        (___kont7955579556_
                                         _hd7823078370_
                                         _hd7822778360_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7822678363_))
                                            (let ((___splice7955979560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7822678363_
                                                      '0))))
                                              (let ((_tl7824278284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7955979560_
                                                        '1)))
                                                    (_target7824078281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7955979560_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7824278284_))
                                                    (___match7960179602_
                                                     _e7822578346_
                                                     _hd7822478350_
                                                     _tl7822378353_
                                                     _e7822878356_
                                                     _hd7822778360_
                                                     _tl7822678363_
                                                     ___splice7955979560_
                                                     _target7824078281_
                                                     _tl7824278284_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7821978254_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7821978254_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7822678363_))
                                    (let ((___splice7955979560_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7822678363_
                                              '0))))
                                      (let ((_tl7824278284_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7955979560_
                                                '1)))
                                            (_target7824078281_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7955979560_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7824278284_))
                                            (___match7960179602_
                                             _e7822578346_
                                             _hd7822478350_
                                             _tl7822378353_
                                             _e7822878356_
                                             _hd7822778360_
                                             _tl7822678363_
                                             ___splice7955979560_
                                             _target7824078281_
                                             _tl7824278284_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7821978254_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7821978254_))))))
                        (let () (declare (not safe)) (_g7821978254_)))))
                (let () (declare (not safe)) (_g7821978254_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx78398_)
      (let* ((_g7840278437_
              (lambda (_g7840378433_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7840378433_))))
             (_g7840178565_
              (lambda (_g7840378441_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7840378441_))
                    (let ((_e7840878444_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7840378441_))))
                      (let ((_hd7840778448_
                             (let ()
                               (declare (not safe))
                               (##car _e7840878444_)))
                            (_tl7840678451_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7840878444_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7840678451_))
                            (let ((_g80049_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7840678451_
                                      '0))))
                              (begin
                                (let ((_g80050_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g80049_)
                                             (##vector-length _g80049_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g80050_ 2)))
                                      (error "Context expects 2 values"
                                             _g80050_)))
                                (let ((_target7840978454_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80049_ 0)))
                                      (_tl7841178457_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80049_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7841178457_))
                                      (letrec ((_loop7841278460_
                                                (lambda (_hd7841078464_
                                                         _arity7841678467_
                                                         _prim7841778469_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7841078464_))
                                                      (let ((_e7841378472_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7841078464_))))
                (let ((_lp-hd7841478476_
                       (let () (declare (not safe)) (##car _e7841378472_)))
                      (_lp-tl7841578479_
                       (let () (declare (not safe)) (##cdr _e7841378472_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7841478476_))
                      (let ((_e7842278482_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7841478476_))))
                        (let ((_hd7842178486_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7842278482_)))
                              (_tl7842078489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7842278482_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7842078489_))
                              (let ((_g80059_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7842078489_
                                        '0))))
                                (begin
                                  (let ((_g80060_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80059_)
                                               (##vector-length _g80059_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80060_ 2)))
                                        (error "Context expects 2 values"
                                               _g80060_)))
                                  (let ((_target7842378492_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80059_ 0)))
                                        (_tl7842578495_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80059_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7842578495_))
                                        (letrec ((_loop7842678498_
                                                  (lambda (_hd7842478502_
                                                           _arity7843078505_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7842478502_))
                                                        (let ((_e7842778508_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7842478502_))))
                  (let ((_lp-hd7842878512_
                         (let () (declare (not safe)) (##car _e7842778508_)))
                        (_lp-tl7842978515_
                         (let () (declare (not safe)) (##cdr _e7842778508_))))
                    (_loop7842678498_
                     _lp-tl7842978515_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7842878512_ _arity7843078505_)))))
                (let ((_arity7843178518_ (reverse _arity7843078505_)))
                  (_loop7841278460_
                   _lp-tl7841578479_
                   (let ()
                     (declare (not safe))
                     (cons _arity7843178518_ _arity7841678467_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7842178486_ _prim7841778469_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7842678498_
                                           _target7842378492_
                                           '()))
                                        (_g7840278437_ _g7840378441_)))))
                              (_g7840278437_ _g7840378441_))))
                      (_g7840278437_ _g7840378441_))))
              (let ((_arity7841878522_ (reverse _arity7841678467_))
                    (_prim7841978525_ (reverse _prim7841778469_)))
                ((lambda (_L78528_ _L78530_)
                   (let ((__tmp80058
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp80051
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78528_
                               _L78530_))
                            (let ((__tmp80052
                                   (lambda (_g7854578551_
                                            _g7854678554_
                                            _g7854778556_)
                                     (let ((__tmp80053
                                            (let ((__tmp80057
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp80054
                                                   (let ((__tmp80055
                                                          (let ((__tmp80056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7854878559_ _g7854978562_)
                           (let ()
                             (declare (not safe))
                             (cons _g7854878559_ _g7854978562_)))))
                    (declare (not safe))
                    (foldr1 __tmp80056 '() _g7854578551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7854678554_
                                                           __tmp80055))))
                                              (declare (not safe))
                                              (cons __tmp80057 __tmp80054))))
                                       (declare (not safe))
                                       (cons __tmp80053 _g7854778556_)))))
                              (declare (not safe))
                              (foldr2 __tmp80052 '() _L78528_ _L78530_)))))
                     (declare (not safe))
                     (cons __tmp80058 __tmp80051)))
                 _arity7841878522_
                 _prim7841978525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7841278460_
                                         _target7840978454_
                                         '()
                                         '()))
                                      (_g7840278437_ _g7840378441_)))))
                            (_g7840278437_ _g7840378441_))))
                    (_g7840278437_ _g7840378441_)))))
        (_g7840178565_ _$stx78398_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx78571_)
      (let* ((_g7857578610_
              (lambda (_g7857678606_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7857678606_))))
             (_g7857478738_
              (lambda (_g7857678614_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7857678614_))
                    (let ((_e7858178617_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7857678614_))))
                      (let ((_hd7858078621_
                             (let ()
                               (declare (not safe))
                               (##car _e7858178617_)))
                            (_tl7857978624_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7858178617_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7857978624_))
                            (let ((_g80061_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7857978624_
                                      '0))))
                              (begin
                                (let ((_g80062_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g80061_)
                                             (##vector-length _g80061_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g80062_ 2)))
                                      (error "Context expects 2 values"
                                             _g80062_)))
                                (let ((_target7858278627_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80061_ 0)))
                                      (_tl7858478630_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80061_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7858478630_))
                                      (letrec ((_loop7858578633_
                                                (lambda (_hd7858378637_
                                                         _arity7858978640_
                                                         _prim7859078642_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7858378637_))
                                                      (let ((_e7858678645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7858378637_))))
                (let ((_lp-hd7858778649_
                       (let () (declare (not safe)) (##car _e7858678645_)))
                      (_lp-tl7858878652_
                       (let () (declare (not safe)) (##cdr _e7858678645_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7858778649_))
                      (let ((_e7859578655_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7858778649_))))
                        (let ((_hd7859478659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7859578655_)))
                              (_tl7859378662_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7859578655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7859378662_))
                              (let ((_g80071_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7859378662_
                                        '0))))
                                (begin
                                  (let ((_g80072_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80071_)
                                               (##vector-length _g80071_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80072_ 2)))
                                        (error "Context expects 2 values"
                                               _g80072_)))
                                  (let ((_target7859678665_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80071_ 0)))
                                        (_tl7859878668_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80071_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7859878668_))
                                        (letrec ((_loop7859978671_
                                                  (lambda (_hd7859778675_
                                                           _arity7860378678_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7859778675_))
                                                        (let ((_e7860078681_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7859778675_))))
                  (let ((_lp-hd7860178685_
                         (let () (declare (not safe)) (##car _e7860078681_)))
                        (_lp-tl7860278688_
                         (let () (declare (not safe)) (##cdr _e7860078681_))))
                    (_loop7859978671_
                     _lp-tl7860278688_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7860178685_ _arity7860378678_)))))
                (let ((_arity7860478691_ (reverse _arity7860378678_)))
                  (_loop7858578633_
                   _lp-tl7858878652_
                   (let ()
                     (declare (not safe))
                     (cons _arity7860478691_ _arity7858978640_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7859478659_ _prim7859078642_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7859978671_
                                           _target7859678665_
                                           '()))
                                        (_g7857578610_ _g7857678614_)))))
                              (_g7857578610_ _g7857678614_))))
                      (_g7857578610_ _g7857678614_))))
              (let ((_arity7859178695_ (reverse _arity7858978640_))
                    (_prim7859278698_ (reverse _prim7859078642_)))
                ((lambda (_L78701_ _L78703_)
                   (let ((__tmp80070
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp80063
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78701_
                               _L78703_))
                            (let ((__tmp80064
                                   (lambda (_g7871878724_
                                            _g7871978727_
                                            _g7872078729_)
                                     (let ((__tmp80065
                                            (let ((__tmp80069
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp80066
                                                   (let ((__tmp80067
                                                          (let ((__tmp80068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7872178732_ _g7872278735_)
                           (let ()
                             (declare (not safe))
                             (cons _g7872178732_ _g7872278735_)))))
                    (declare (not safe))
                    (foldr1 __tmp80068 '() _g7871878724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7871978727_
                                                           __tmp80067))))
                                              (declare (not safe))
                                              (cons __tmp80069 __tmp80066))))
                                       (declare (not safe))
                                       (cons __tmp80065 _g7872078729_)))))
                              (declare (not safe))
                              (foldr2 __tmp80064 '() _L78701_ _L78703_)))))
                     (declare (not safe))
                     (cons __tmp80070 __tmp80063)))
                 _arity7859178695_
                 _prim7859278698_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7858578633_
                                         _target7858278627_
                                         '()
                                         '()))
                                      (_g7857578610_ _g7857678614_)))))
                            (_g7857578610_ _g7857678614_))))
                    (_g7857578610_ _g7857678614_)))))
        (_g7857478738_ _$stx78571_)))))
