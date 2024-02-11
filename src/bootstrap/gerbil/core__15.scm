(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34722_)
      (let* ((___stx4726547266_ _$stx34722_)
             (_g3472734746_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4726547266_))))
        (let ((___kont4726847269_
               (lambda ()
                 (let ((__tmp51054 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp51054 '()))))
              (___kont4727047271_
               (lambda (_L34773_ _L34775_ _L34776_)
                 (let ((__tmp51067 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp51055
                        (let ((__tmp51064
                               (let ((__tmp51065
                                      (let ((__tmp51066
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34776_ _L34773_))))
                                        (declare (not safe))
                                        (cons __tmp51066 '()))))
                                 (declare (not safe))
                                 (cons _L34775_ __tmp51065)))
                              (__tmp51056
                               (let ((__tmp51057
                                      (let ((__tmp51063
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp51058
                                             (let ((__tmp51059
                                                    (let ((__tmp51062
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp51060
                                                           (let ((__tmp51061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34775_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp51061))))
              (declare (not safe))
              (cons __tmp51062 __tmp51060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51059 '()))))
                                        (declare (not safe))
                                        (cons __tmp51063 __tmp51058))))
                                 (declare (not safe))
                                 (cons __tmp51057 '()))))
                          (declare (not safe))
                          (cons __tmp51064 __tmp51056))))
                   (declare (not safe))
                   (cons __tmp51067 __tmp51055)))))
          (if (gx#stx-pair? ___stx4726547266_)
              (let ((_e3473134799_ (gx#syntax-e ___stx4726547266_)))
                (let ((_tl3472934806_
                       (let () (declare (not safe)) (##cdr _e3473134799_)))
                      (_hd3473034803_
                       (let () (declare (not safe)) (##car _e3473134799_))))
                  (if (gx#stx-null? _tl3472934806_)
                      (___kont4726847269_)
                      (if (gx#stx-pair? _tl3472934806_)
                          (let ((_e3474034763_ (gx#syntax-e _tl3472934806_)))
                            (let ((_tl3473834770_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3474034763_)))
                                  (_hd3473934767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3474034763_))))
                              (___kont4727047271_
                               _tl3473834770_
                               _hd3473934767_
                               _hd3473034803_)))
                          (let () (declare (not safe)) (_g3472734746_))))))
              (let () (declare (not safe)) (_g3472734746_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34817_)
      (let* ((___stx4729547296_ _$stx34817_)
             (_g3482234862_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4729547296_))))
        (let ((___kont4729847299_
               (lambda (_L35000_ _L35002_)
                 (let ((__tmp51073 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp51068
                        (let ((__tmp51069
                               (let ((__tmp51070
                                      (let ((__tmp51072
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp51071
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35000_ '()))))
                                        (declare (not safe))
                                        (cons __tmp51072 __tmp51071))))
                                 (declare (not safe))
                                 (cons __tmp51070 '()))))
                          (declare (not safe))
                          (cons _L35002_ __tmp51069))))
                   (declare (not safe))
                   (cons __tmp51073 __tmp51068))))
              (___kont4730047301_
               (lambda (_L34929_ _L34931_ _L34932_ _L34933_)
                 (let ((__tmp51074
                        (let ((__tmp51075
                               (let ((__tmp51076
                                      (let ((__tmp51080
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp51077
                                             (let ((__tmp51078
                                                    (let ((__tmp51079
                                                           (lambda (_g3495434957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3495534960_)
                     (let ()
                       (declare (not safe))
                       (cons _g3495434957_ _g3495534960_)))))
              (declare (not safe))
              (foldr1 __tmp51079 '() _L34929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34931_ __tmp51078))))
                                        (declare (not safe))
                                        (cons __tmp51080 __tmp51077))))
                                 (declare (not safe))
                                 (cons __tmp51076 '()))))
                          (declare (not safe))
                          (cons _L34932_ __tmp51075))))
                   (declare (not safe))
                   (cons _L34933_ __tmp51074)))))
          (let* ((___match4735047351_
                  (lambda (_e3484134869_
                           _hd3484034873_
                           _tl3483934876_
                           _e3484434879_
                           _hd3484334883_
                           _tl3484234886_
                           _e3484734889_
                           _hd3484634893_
                           _tl3484534896_
                           ___splice4730247303_
                           _target3484834899_
                           _tl3485034902_)
                    (letrec ((_loop3485134905_
                              (lambda (_hd3484934909_ _body3485534912_)
                                (if (gx#stx-pair? _hd3484934909_)
                                    (let ((_e3485234915_
                                           (gx#syntax-e _hd3484934909_)))
                                      (let ((_lp-tl3485434922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3485234915_)))
                                            (_lp-hd3485334919_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3485234915_))))
                                        (_loop3485134905_
                                         _lp-tl3485434922_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3485334919_
                                                 _body3485534912_)))))
                                    (let ((_body3485634925_
                                           (reverse _body3485534912_)))
                                      (let ((_L34929_ _body3485634925_)
                                            (_L34931_ _tl3484534896_)
                                            (_L34932_ _hd3484634893_)
                                            (_L34933_ _hd3484034873_))
                                        (if (gx#identifier? _L34932_)
                                            (___kont4730047301_
                                             _L34929_
                                             _L34931_
                                             _L34932_
                                             _L34933_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3482234862_)))))))))
                      (_loop3485134905_ _target3484834899_ '()))))
                 (___match4732447325_
                  (lambda (_e3482834970_
                           _hd3482734974_
                           _tl3482634977_
                           _e3483134980_
                           _hd3483034984_
                           _tl3482934987_
                           _e3483434990_
                           _hd3483334994_
                           _tl3483234997_)
                    (let ((_L35000_ _hd3483334994_) (_L35002_ _hd3483034984_))
                      (if (gx#identifier? _L35002_)
                          (___kont4729847299_ _L35000_ _L35002_)
                          (if (gx#stx-pair? _hd3483034984_)
                              (let ((_e3484734889_
                                     (gx#syntax-e _hd3483034984_)))
                                (let ((_tl3484534896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3484734889_)))
                                      (_hd3484634893_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3484734889_))))
                                  (if (gx#stx-pair/null? _tl3482934987_)
                                      (let ((___splice4730247303_
                                             (gx#syntax-split-splice
                                              _tl3482934987_
                                              '0)))
                                        (let ((_tl3485034902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4730247303_
                                                  '1)))
                                              (_target3484834899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4730247303_
                                                  '0))))
                                          (if (gx#stx-null? _tl3485034902_)
                                              (___match4735047351_
                                               _e3482834970_
                                               _hd3482734974_
                                               _tl3482634977_
                                               _e3483134980_
                                               _hd3483034984_
                                               _tl3482934987_
                                               _e3484734889_
                                               _hd3484634893_
                                               _tl3484534896_
                                               ___splice4730247303_
                                               _target3484834899_
                                               _tl3485034902_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3482234862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3482234862_)))))
                              (let ()
                                (declare (not safe))
                                (_g3482234862_))))))))
            (if (gx#stx-pair? ___stx4729547296_)
                (let ((_e3482834970_ (gx#syntax-e ___stx4729547296_)))
                  (let ((_tl3482634977_
                         (let () (declare (not safe)) (##cdr _e3482834970_)))
                        (_hd3482734974_
                         (let () (declare (not safe)) (##car _e3482834970_))))
                    (if (gx#stx-pair? _tl3482634977_)
                        (let ((_e3483134980_ (gx#syntax-e _tl3482634977_)))
                          (let ((_tl3482934987_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3483134980_)))
                                (_hd3483034984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3483134980_))))
                            (if (gx#stx-pair? _tl3482934987_)
                                (let ((_e3483434990_
                                       (gx#syntax-e _tl3482934987_)))
                                  (let ((_tl3483234997_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3483434990_)))
                                        (_hd3483334994_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3483434990_))))
                                    (if (gx#stx-null? _tl3483234997_)
                                        (___match4732447325_
                                         _e3482834970_
                                         _hd3482734974_
                                         _tl3482634977_
                                         _e3483134980_
                                         _hd3483034984_
                                         _tl3482934987_
                                         _e3483434990_
                                         _hd3483334994_
                                         _tl3483234997_)
                                        (if (gx#stx-pair? _hd3483034984_)
                                            (let ((_e3484734889_
                                                   (gx#syntax-e
                                                    _hd3483034984_)))
                                              (let ((_tl3484534896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3484734889_)))
                                                    (_hd3484634893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3484734889_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3482934987_)
                                                    (let ((___splice4730247303_
                                                           (gx#syntax-split-splice
                                                            _tl3482934987_
                                                            '0)))
                                                      (let ((_tl3485034902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4730247303_ '1)))
                    (_target3484834899_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4730247303_ '0))))
                (if (gx#stx-null? _tl3485034902_)
                    (___match4735047351_
                     _e3482834970_
                     _hd3482734974_
                     _tl3482634977_
                     _e3483134980_
                     _hd3483034984_
                     _tl3482934987_
                     _e3484734889_
                     _hd3484634893_
                     _tl3484534896_
                     ___splice4730247303_
                     _target3484834899_
                     _tl3485034902_)
                    (let () (declare (not safe)) (_g3482234862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3482234862_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3482234862_))))))
                                (if (gx#stx-pair? _hd3483034984_)
                                    (let ((_e3484734889_
                                           (gx#syntax-e _hd3483034984_)))
                                      (let ((_tl3484534896_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3484734889_)))
                                            (_hd3484634893_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3484734889_))))
                                        (if (gx#stx-pair/null? _tl3482934987_)
                                            (let ((___splice4730247303_
                                                   (gx#syntax-split-splice
                                                    _tl3482934987_
                                                    '0)))
                                              (let ((_tl3485034902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4730247303_
                                                        '1)))
                                                    (_target3484834899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4730247303_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3485034902_)
                                                    (___match4735047351_
                                                     _e3482834970_
                                                     _hd3482734974_
                                                     _tl3482634977_
                                                     _e3483134980_
                                                     _hd3483034984_
                                                     _tl3482934987_
                                                     _e3484734889_
                                                     _hd3484634893_
                                                     _tl3484534896_
                                                     ___splice4730247303_
                                                     _target3484834899_
                                                     _tl3485034902_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3482234862_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3482234862_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3482234862_))))))
                        (let () (declare (not safe)) (_g3482234862_)))))
                (let () (declare (not safe)) (_g3482234862_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx35022_)
      (let* ((___stx4735347354_ _$stx35022_)
             (_g3502735067_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4735347354_))))
        (let ((___kont4735647357_
               (lambda (_L35205_ _L35207_)
                 (let ((__tmp51086 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp51081
                        (let ((__tmp51082
                               (let ((__tmp51083
                                      (let ((__tmp51085
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp51084
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35205_ '()))))
                                        (declare (not safe))
                                        (cons __tmp51085 __tmp51084))))
                                 (declare (not safe))
                                 (cons __tmp51083 '()))))
                          (declare (not safe))
                          (cons _L35207_ __tmp51082))))
                   (declare (not safe))
                   (cons __tmp51086 __tmp51081))))
              (___kont4735847359_
               (lambda (_L35134_ _L35136_ _L35137_ _L35138_)
                 (let ((__tmp51087
                        (let ((__tmp51088
                               (let ((__tmp51089
                                      (let ((__tmp51093
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp51090
                                             (let ((__tmp51091
                                                    (let ((__tmp51092
                                                           (lambda (_g3515935162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3516035165_)
                     (let ()
                       (declare (not safe))
                       (cons _g3515935162_ _g3516035165_)))))
              (declare (not safe))
              (foldr1 __tmp51092 '() _L35134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35136_ __tmp51091))))
                                        (declare (not safe))
                                        (cons __tmp51093 __tmp51090))))
                                 (declare (not safe))
                                 (cons __tmp51089 '()))))
                          (declare (not safe))
                          (cons _L35137_ __tmp51088))))
                   (declare (not safe))
                   (cons _L35138_ __tmp51087)))))
          (let* ((___match4740847409_
                  (lambda (_e3504635074_
                           _hd3504535078_
                           _tl3504435081_
                           _e3504935084_
                           _hd3504835088_
                           _tl3504735091_
                           _e3505235094_
                           _hd3505135098_
                           _tl3505035101_
                           ___splice4736047361_
                           _target3505335104_
                           _tl3505535107_)
                    (letrec ((_loop3505635110_
                              (lambda (_hd3505435114_ _body3506035117_)
                                (if (gx#stx-pair? _hd3505435114_)
                                    (let ((_e3505735120_
                                           (gx#syntax-e _hd3505435114_)))
                                      (let ((_lp-tl3505935127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3505735120_)))
                                            (_lp-hd3505835124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3505735120_))))
                                        (_loop3505635110_
                                         _lp-tl3505935127_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3505835124_
                                                 _body3506035117_)))))
                                    (let ((_body3506135130_
                                           (reverse _body3506035117_)))
                                      (let ((_L35134_ _body3506135130_)
                                            (_L35136_ _tl3505035101_)
                                            (_L35137_ _hd3505135098_)
                                            (_L35138_ _hd3504535078_))
                                        (if (gx#identifier? _L35137_)
                                            (___kont4735847359_
                                             _L35134_
                                             _L35136_
                                             _L35137_
                                             _L35138_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3502735067_)))))))))
                      (_loop3505635110_ _target3505335104_ '()))))
                 (___match4738247383_
                  (lambda (_e3503335175_
                           _hd3503235179_
                           _tl3503135182_
                           _e3503635185_
                           _hd3503535189_
                           _tl3503435192_
                           _e3503935195_
                           _hd3503835199_
                           _tl3503735202_)
                    (let ((_L35205_ _hd3503835199_) (_L35207_ _hd3503535189_))
                      (if (gx#identifier? _L35207_)
                          (___kont4735647357_ _L35205_ _L35207_)
                          (if (gx#stx-pair? _hd3503535189_)
                              (let ((_e3505235094_
                                     (gx#syntax-e _hd3503535189_)))
                                (let ((_tl3505035101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3505235094_)))
                                      (_hd3505135098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3505235094_))))
                                  (if (gx#stx-pair/null? _tl3503435192_)
                                      (let ((___splice4736047361_
                                             (gx#syntax-split-splice
                                              _tl3503435192_
                                              '0)))
                                        (let ((_tl3505535107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4736047361_
                                                  '1)))
                                              (_target3505335104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4736047361_
                                                  '0))))
                                          (if (gx#stx-null? _tl3505535107_)
                                              (___match4740847409_
                                               _e3503335175_
                                               _hd3503235179_
                                               _tl3503135182_
                                               _e3503635185_
                                               _hd3503535189_
                                               _tl3503435192_
                                               _e3505235094_
                                               _hd3505135098_
                                               _tl3505035101_
                                               ___splice4736047361_
                                               _target3505335104_
                                               _tl3505535107_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3502735067_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3502735067_)))))
                              (let ()
                                (declare (not safe))
                                (_g3502735067_))))))))
            (if (gx#stx-pair? ___stx4735347354_)
                (let ((_e3503335175_ (gx#syntax-e ___stx4735347354_)))
                  (let ((_tl3503135182_
                         (let () (declare (not safe)) (##cdr _e3503335175_)))
                        (_hd3503235179_
                         (let () (declare (not safe)) (##car _e3503335175_))))
                    (if (gx#stx-pair? _tl3503135182_)
                        (let ((_e3503635185_ (gx#syntax-e _tl3503135182_)))
                          (let ((_tl3503435192_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3503635185_)))
                                (_hd3503535189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3503635185_))))
                            (if (gx#stx-pair? _tl3503435192_)
                                (let ((_e3503935195_
                                       (gx#syntax-e _tl3503435192_)))
                                  (let ((_tl3503735202_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3503935195_)))
                                        (_hd3503835199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3503935195_))))
                                    (if (gx#stx-null? _tl3503735202_)
                                        (___match4738247383_
                                         _e3503335175_
                                         _hd3503235179_
                                         _tl3503135182_
                                         _e3503635185_
                                         _hd3503535189_
                                         _tl3503435192_
                                         _e3503935195_
                                         _hd3503835199_
                                         _tl3503735202_)
                                        (if (gx#stx-pair? _hd3503535189_)
                                            (let ((_e3505235094_
                                                   (gx#syntax-e
                                                    _hd3503535189_)))
                                              (let ((_tl3505035101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3505235094_)))
                                                    (_hd3505135098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3505235094_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3503435192_)
                                                    (let ((___splice4736047361_
                                                           (gx#syntax-split-splice
                                                            _tl3503435192_
                                                            '0)))
                                                      (let ((_tl3505535107_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4736047361_ '1)))
                    (_target3505335104_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4736047361_ '0))))
                (if (gx#stx-null? _tl3505535107_)
                    (___match4740847409_
                     _e3503335175_
                     _hd3503235179_
                     _tl3503135182_
                     _e3503635185_
                     _hd3503535189_
                     _tl3503435192_
                     _e3505235094_
                     _hd3505135098_
                     _tl3505035101_
                     ___splice4736047361_
                     _target3505335104_
                     _tl3505535107_)
                    (let () (declare (not safe)) (_g3502735067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3502735067_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3502735067_))))))
                                (if (gx#stx-pair? _hd3503535189_)
                                    (let ((_e3505235094_
                                           (gx#syntax-e _hd3503535189_)))
                                      (let ((_tl3505035101_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3505235094_)))
                                            (_hd3505135098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3505235094_))))
                                        (if (gx#stx-pair/null? _tl3503435192_)
                                            (let ((___splice4736047361_
                                                   (gx#syntax-split-splice
                                                    _tl3503435192_
                                                    '0)))
                                              (let ((_tl3505535107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4736047361_
                                                        '1)))
                                                    (_target3505335104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4736047361_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3505535107_)
                                                    (___match4740847409_
                                                     _e3503335175_
                                                     _hd3503235179_
                                                     _tl3503135182_
                                                     _e3503635185_
                                                     _hd3503535189_
                                                     _tl3503435192_
                                                     _e3505235094_
                                                     _hd3505135098_
                                                     _tl3505035101_
                                                     ___splice4736047361_
                                                     _target3505335104_
                                                     _tl3505535107_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3502735067_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3502735067_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3502735067_))))))
                        (let () (declare (not safe)) (_g3502735067_)))))
                (let () (declare (not safe)) (_g3502735067_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx35227_)
      (let* ((___stx4741147412_ _$stx35227_)
             (_g3523235272_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4741147412_))))
        (let ((___kont4741447415_
               (lambda (_L35410_ _L35412_)
                 (let ((__tmp51099 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp51094
                        (let ((__tmp51095
                               (let ((__tmp51096
                                      (let ((__tmp51098
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp51097
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35410_ '()))))
                                        (declare (not safe))
                                        (cons __tmp51098 __tmp51097))))
                                 (declare (not safe))
                                 (cons __tmp51096 '()))))
                          (declare (not safe))
                          (cons _L35412_ __tmp51095))))
                   (declare (not safe))
                   (cons __tmp51099 __tmp51094))))
              (___kont4741647417_
               (lambda (_L35339_ _L35341_ _L35342_ _L35343_)
                 (let ((__tmp51100
                        (let ((__tmp51101
                               (let ((__tmp51102
                                      (let ((__tmp51106
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp51103
                                             (let ((__tmp51104
                                                    (let ((__tmp51105
                                                           (lambda (_g3536435367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3536535370_)
                     (let ()
                       (declare (not safe))
                       (cons _g3536435367_ _g3536535370_)))))
              (declare (not safe))
              (foldr1 __tmp51105 '() _L35339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35341_ __tmp51104))))
                                        (declare (not safe))
                                        (cons __tmp51106 __tmp51103))))
                                 (declare (not safe))
                                 (cons __tmp51102 '()))))
                          (declare (not safe))
                          (cons _L35342_ __tmp51101))))
                   (declare (not safe))
                   (cons _L35343_ __tmp51100)))))
          (let* ((___match4746647467_
                  (lambda (_e3525135279_
                           _hd3525035283_
                           _tl3524935286_
                           _e3525435289_
                           _hd3525335293_
                           _tl3525235296_
                           _e3525735299_
                           _hd3525635303_
                           _tl3525535306_
                           ___splice4741847419_
                           _target3525835309_
                           _tl3526035312_)
                    (letrec ((_loop3526135315_
                              (lambda (_hd3525935319_ _body3526535322_)
                                (if (gx#stx-pair? _hd3525935319_)
                                    (let ((_e3526235325_
                                           (gx#syntax-e _hd3525935319_)))
                                      (let ((_lp-tl3526435332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3526235325_)))
                                            (_lp-hd3526335329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3526235325_))))
                                        (_loop3526135315_
                                         _lp-tl3526435332_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3526335329_
                                                 _body3526535322_)))))
                                    (let ((_body3526635335_
                                           (reverse _body3526535322_)))
                                      (let ((_L35339_ _body3526635335_)
                                            (_L35341_ _tl3525535306_)
                                            (_L35342_ _hd3525635303_)
                                            (_L35343_ _hd3525035283_))
                                        (if (gx#identifier? _L35342_)
                                            (___kont4741647417_
                                             _L35339_
                                             _L35341_
                                             _L35342_
                                             _L35343_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3523235272_)))))))))
                      (_loop3526135315_ _target3525835309_ '()))))
                 (___match4744047441_
                  (lambda (_e3523835380_
                           _hd3523735384_
                           _tl3523635387_
                           _e3524135390_
                           _hd3524035394_
                           _tl3523935397_
                           _e3524435400_
                           _hd3524335404_
                           _tl3524235407_)
                    (let ((_L35410_ _hd3524335404_) (_L35412_ _hd3524035394_))
                      (if (gx#identifier? _L35412_)
                          (___kont4741447415_ _L35410_ _L35412_)
                          (if (gx#stx-pair? _hd3524035394_)
                              (let ((_e3525735299_
                                     (gx#syntax-e _hd3524035394_)))
                                (let ((_tl3525535306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3525735299_)))
                                      (_hd3525635303_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3525735299_))))
                                  (if (gx#stx-pair/null? _tl3523935397_)
                                      (let ((___splice4741847419_
                                             (gx#syntax-split-splice
                                              _tl3523935397_
                                              '0)))
                                        (let ((_tl3526035312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4741847419_
                                                  '1)))
                                              (_target3525835309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4741847419_
                                                  '0))))
                                          (if (gx#stx-null? _tl3526035312_)
                                              (___match4746647467_
                                               _e3523835380_
                                               _hd3523735384_
                                               _tl3523635387_
                                               _e3524135390_
                                               _hd3524035394_
                                               _tl3523935397_
                                               _e3525735299_
                                               _hd3525635303_
                                               _tl3525535306_
                                               ___splice4741847419_
                                               _target3525835309_
                                               _tl3526035312_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3523235272_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3523235272_)))))
                              (let ()
                                (declare (not safe))
                                (_g3523235272_))))))))
            (if (gx#stx-pair? ___stx4741147412_)
                (let ((_e3523835380_ (gx#syntax-e ___stx4741147412_)))
                  (let ((_tl3523635387_
                         (let () (declare (not safe)) (##cdr _e3523835380_)))
                        (_hd3523735384_
                         (let () (declare (not safe)) (##car _e3523835380_))))
                    (if (gx#stx-pair? _tl3523635387_)
                        (let ((_e3524135390_ (gx#syntax-e _tl3523635387_)))
                          (let ((_tl3523935397_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3524135390_)))
                                (_hd3524035394_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3524135390_))))
                            (if (gx#stx-pair? _tl3523935397_)
                                (let ((_e3524435400_
                                       (gx#syntax-e _tl3523935397_)))
                                  (let ((_tl3524235407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3524435400_)))
                                        (_hd3524335404_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3524435400_))))
                                    (if (gx#stx-null? _tl3524235407_)
                                        (___match4744047441_
                                         _e3523835380_
                                         _hd3523735384_
                                         _tl3523635387_
                                         _e3524135390_
                                         _hd3524035394_
                                         _tl3523935397_
                                         _e3524435400_
                                         _hd3524335404_
                                         _tl3524235407_)
                                        (if (gx#stx-pair? _hd3524035394_)
                                            (let ((_e3525735299_
                                                   (gx#syntax-e
                                                    _hd3524035394_)))
                                              (let ((_tl3525535306_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3525735299_)))
                                                    (_hd3525635303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3525735299_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3523935397_)
                                                    (let ((___splice4741847419_
                                                           (gx#syntax-split-splice
                                                            _tl3523935397_
                                                            '0)))
                                                      (let ((_tl3526035312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4741847419_ '1)))
                    (_target3525835309_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4741847419_ '0))))
                (if (gx#stx-null? _tl3526035312_)
                    (___match4746647467_
                     _e3523835380_
                     _hd3523735384_
                     _tl3523635387_
                     _e3524135390_
                     _hd3524035394_
                     _tl3523935397_
                     _e3525735299_
                     _hd3525635303_
                     _tl3525535306_
                     ___splice4741847419_
                     _target3525835309_
                     _tl3526035312_)
                    (let () (declare (not safe)) (_g3523235272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3523235272_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3523235272_))))))
                                (if (gx#stx-pair? _hd3524035394_)
                                    (let ((_e3525735299_
                                           (gx#syntax-e _hd3524035394_)))
                                      (let ((_tl3525535306_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3525735299_)))
                                            (_hd3525635303_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3525735299_))))
                                        (if (gx#stx-pair/null? _tl3523935397_)
                                            (let ((___splice4741847419_
                                                   (gx#syntax-split-splice
                                                    _tl3523935397_
                                                    '0)))
                                              (let ((_tl3526035312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4741847419_
                                                        '1)))
                                                    (_target3525835309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4741847419_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3526035312_)
                                                    (___match4746647467_
                                                     _e3523835380_
                                                     _hd3523735384_
                                                     _tl3523635387_
                                                     _e3524135390_
                                                     _hd3524035394_
                                                     _tl3523935397_
                                                     _e3525735299_
                                                     _hd3525635303_
                                                     _tl3525535306_
                                                     ___splice4741847419_
                                                     _target3525835309_
                                                     _tl3526035312_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3523235272_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3523235272_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3523235272_))))))
                        (let () (declare (not safe)) (_g3523235272_)))))
                (let () (declare (not safe)) (_g3523235272_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35432_)
       (let* ((_g3543535455_
               (lambda (_g3543635451_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3543635451_)))
              (_g3543435526_
               (lambda (_g3543635459_)
                 (if (gx#stx-pair? _g3543635459_)
                     (let ((_e3544035462_ (gx#syntax-e _g3543635459_)))
                       (let ((_hd3543935466_
                              (let ()
                                (declare (not safe))
                                (##car _e3544035462_)))
                             (_tl3543835469_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3544035462_))))
                         (if (gx#stx-pair/null? _tl3543835469_)
                             (let ((_g51107_
                                    (gx#syntax-split-splice
                                     _tl3543835469_
                                     '0)))
                               (begin
                                 (let ((_g51108_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g51107_)
                                              (##vector-length _g51107_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g51108_ 2)))
                                       (error "Context expects 2 values"
                                              _g51108_)))
                                 (let ((_target3544135472_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51107_ 0)))
                                       (_tl3544335475_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51107_ 1))))
                                   (if (gx#stx-null? _tl3544335475_)
                                       (letrec ((_loop3544435478_
                                                 (lambda (_hd3544235482_
                                                          _body3544835485_)
                                                   (if (gx#stx-pair?
                                                        _hd3544235482_)
                                                       (let ((_e3544535488_
                                                              (gx#syntax-e
                                                               _hd3544235482_)))
                                                         (let ((_lp-hd3544635492_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3544535488_)))
                       (_lp-tl3544735495_
                        (let () (declare (not safe)) (##cdr _e3544535488_))))
                   (_loop3544435478_
                    _lp-tl3544735495_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3544635492_ _body3544835485_)))))
               (let ((_body3544935498_ (reverse _body3544835485_)))
                 ((lambda (_L35502_)
                    (let ((__tmp51109
                           (let ((__tmp51110
                                  (let ((__tmp51111
                                         (lambda (_g3551735520_ _g3551835523_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3551735520_
                                                   _g3551835523_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp51111 '() _L35502_))))
                             (declare (not safe))
                             (cons '1 __tmp51110))))
                      (declare (not safe))
                      (cons 'phi: __tmp51109)))
                  _body3544935498_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3544435478_
                                          _target3544135472_
                                          '()))
                                       (_g3543535455_ _g3543635459_)))))
                             (_g3543535455_ _g3543635459_))))
                     (_g3543535455_ _g3543635459_)))))
         (_g3543435526_ _stx35432_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35531_)
       (let* ((_g3553435554_
               (lambda (_g3553535550_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3553535550_)))
              (_g3553335625_
               (lambda (_g3553535558_)
                 (if (gx#stx-pair? _g3553535558_)
                     (let ((_e3553935561_ (gx#syntax-e _g3553535558_)))
                       (let ((_hd3553835565_
                              (let ()
                                (declare (not safe))
                                (##car _e3553935561_)))
                             (_tl3553735568_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3553935561_))))
                         (if (gx#stx-pair/null? _tl3553735568_)
                             (let ((_g51112_
                                    (gx#syntax-split-splice
                                     _tl3553735568_
                                     '0)))
                               (begin
                                 (let ((_g51113_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g51112_)
                                              (##vector-length _g51112_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g51113_ 2)))
                                       (error "Context expects 2 values"
                                              _g51113_)))
                                 (let ((_target3554035571_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51112_ 0)))
                                       (_tl3554235574_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g51112_ 1))))
                                   (if (gx#stx-null? _tl3554235574_)
                                       (letrec ((_loop3554335577_
                                                 (lambda (_hd3554135581_
                                                          _body3554735584_)
                                                   (if (gx#stx-pair?
                                                        _hd3554135581_)
                                                       (let ((_e3554435587_
                                                              (gx#syntax-e
                                                               _hd3554135581_)))
                                                         (let ((_lp-hd3554535591_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3554435587_)))
                       (_lp-tl3554635594_
                        (let () (declare (not safe)) (##cdr _e3554435587_))))
                   (_loop3554335577_
                    _lp-tl3554635594_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3554535591_ _body3554735584_)))))
               (let ((_body3554835597_ (reverse _body3554735584_)))
                 ((lambda (_L35601_)
                    (let ((__tmp51114
                           (let ((__tmp51115
                                  (let ((__tmp51116
                                         (lambda (_g3561635619_ _g3561735622_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3561635619_
                                                   _g3561735622_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp51116 '() _L35601_))))
                             (declare (not safe))
                             (cons '-1 __tmp51115))))
                      (declare (not safe))
                      (cons 'phi: __tmp51114)))
                  _body3554835597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3554335577_
                                          _target3554035571_
                                          '()))
                                       (_g3553435554_ _g3553535558_)))))
                             (_g3553435554_ _g3553535558_))))
                     (_g3553435554_ _g3553535558_)))))
         (_g3553335625_ _stx35531_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35630_)
       (let* ((_g3563335657_
               (lambda (_g3563435653_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3563435653_)))
              (_g3563235779_
               (lambda (_g3563435661_)
                 (if (gx#stx-pair? _g3563435661_)
                     (let ((_e3563935664_ (gx#syntax-e _g3563435661_)))
                       (let ((_hd3563835668_
                              (let ()
                                (declare (not safe))
                                (##car _e3563935664_)))
                             (_tl3563735671_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3563935664_))))
                         (if (gx#stx-pair? _tl3563735671_)
                             (let ((_e3564235674_
                                    (gx#syntax-e _tl3563735671_)))
                               (let ((_hd3564135678_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3564235674_)))
                                     (_tl3564035681_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3564235674_))))
                                 (if (gx#stx-pair/null? _tl3564035681_)
                                     (let ((_g51117_
                                            (gx#syntax-split-splice
                                             _tl3564035681_
                                             '0)))
                                       (begin
                                         (let ((_g51118_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g51117_)
                                                      (##vector-length
                                                       _g51117_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g51118_ 2)))
                                               (error "Context expects 2 values"
                                                      _g51118_)))
                                         (let ((_target3564335684_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51117_ 0)))
                                               (_tl3564535687_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51117_ 1))))
                                           (if (gx#stx-null? _tl3564535687_)
                                               (letrec ((_loop3564635690_
                                                         (lambda (_hd3564435694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3565035697_)
                   (if (gx#stx-pair? _hd3564435694_)
                       (let ((_e3564735700_ (gx#syntax-e _hd3564435694_)))
                         (let ((_lp-hd3564835704_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3564735700_)))
                               (_lp-tl3564935707_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3564735700_))))
                           (_loop3564635690_
                            _lp-tl3564935707_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3564835704_ _id3565035697_)))))
                       (let ((_id3565135710_ (reverse _id3565035697_)))
                         ((lambda (_L35714_ _L35716_)
                            (if (gx#identifier-list?
                                 (let ((__tmp51123
                                        (lambda (_g3573335736_ _g3573435739_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3573335736_
                                                  _g3573435739_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp51123 '() _L35714_)))
                                (let* ((_keys35750_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp51119
                                                (lambda (_g3574135744_
                                                         _g3574235747_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3574135744_
                                                          _g3574235747_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51119 '() _L35714_))))
                                       (_keytab35761_
                                        (let ((_ht35753_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3575535757_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35753_
                                                _g3575535757_
                                                '#t)))
                                           _keys35750_)
                                          _ht35753_))
                                       (_imports35764_
                                        (gx#core-expand-import-source
                                         _L35716_))
                                       (_fold-e35774_
                                        (letrec ((_fold-e35767_
                                                  (lambda (_in35770_ _r35772_)
                                                    (if (gx#module-import?
                                                         _in35770_)
                                                        (if (let ((__tmp51121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35770_)))
                      (declare (not safe))
                      (table-ref _keytab35761_ __tmp51121 '#f))
                    (let () (declare (not safe)) (cons _in35770_ _r35772_))
                    _r35772_)
                (if (gx#import-set? _in35770_)
                    (let ((__tmp51120 (gx#import-set-imports _in35770_)))
                      (declare (not safe))
                      (foldl1 _fold-e35767_ _r35772_ __tmp51120))
                    _r35772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35767_)))
                                  (let ((__tmp51122
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35774_
                                                   '()
                                                   _imports35764_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp51122)))
                                (_g3563335657_ _g3563435661_)))
                          _id3565135710_
                          _hd3564135678_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3564635690_
                                                  _target3564335684_
                                                  '()))
                                               (_g3563335657_
                                                _g3563435661_)))))
                                     (_g3563335657_ _g3563435661_))))
                             (_g3563335657_ _g3563435661_))))
                     (_g3563335657_ _g3563435661_)))))
         (_g3563235779_ _stx35630_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35784_)
       (let* ((_g3578735811_
               (lambda (_g3578835807_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3578835807_)))
              (_g3578635933_
               (lambda (_g3578835815_)
                 (if (gx#stx-pair? _g3578835815_)
                     (let ((_e3579335818_ (gx#syntax-e _g3578835815_)))
                       (let ((_hd3579235822_
                              (let ()
                                (declare (not safe))
                                (##car _e3579335818_)))
                             (_tl3579135825_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3579335818_))))
                         (if (gx#stx-pair? _tl3579135825_)
                             (let ((_e3579635828_
                                    (gx#syntax-e _tl3579135825_)))
                               (let ((_hd3579535832_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3579635828_)))
                                     (_tl3579435835_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3579635828_))))
                                 (if (gx#stx-pair/null? _tl3579435835_)
                                     (let ((_g51124_
                                            (gx#syntax-split-splice
                                             _tl3579435835_
                                             '0)))
                                       (begin
                                         (let ((_g51125_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g51124_)
                                                      (##vector-length
                                                       _g51124_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g51125_ 2)))
                                               (error "Context expects 2 values"
                                                      _g51125_)))
                                         (let ((_target3579735838_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51124_ 0)))
                                               (_tl3579935841_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51124_ 1))))
                                           (if (gx#stx-null? _tl3579935841_)
                                               (letrec ((_loop3580035844_
                                                         (lambda (_hd3579835848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3580435851_)
                   (if (gx#stx-pair? _hd3579835848_)
                       (let ((_e3580135854_ (gx#syntax-e _hd3579835848_)))
                         (let ((_lp-hd3580235858_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3580135854_)))
                               (_lp-tl3580335861_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3580135854_))))
                           (_loop3580035844_
                            _lp-tl3580335861_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3580235858_ _id3580435851_)))))
                       (let ((_id3580535864_ (reverse _id3580435851_)))
                         ((lambda (_L35868_ _L35870_)
                            (if (gx#identifier-list?
                                 (let ((__tmp51130
                                        (lambda (_g3588735890_ _g3588835893_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3588735890_
                                                  _g3588835893_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp51130 '() _L35868_)))
                                (let* ((_keys35904_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp51126
                                                (lambda (_g3589535898_
                                                         _g3589635901_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3589535898_
                                                          _g3589635901_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51126 '() _L35868_))))
                                       (_keytab35915_
                                        (let ((_ht35907_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3590935911_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35907_
                                                _g3590935911_
                                                '#t)))
                                           _keys35904_)
                                          _ht35907_))
                                       (_imports35918_
                                        (gx#core-expand-import-source
                                         _L35870_))
                                       (_fold-e35928_
                                        (letrec ((_fold-e35921_
                                                  (lambda (_in35924_ _r35926_)
                                                    (if (gx#module-import?
                                                         _in35924_)
                                                        (if (let ((__tmp51128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35924_)))
                      (declare (not safe))
                      (table-ref _keytab35915_ __tmp51128 '#f))
                    _r35926_
                    (let () (declare (not safe)) (cons _in35924_ _r35926_)))
                (if (gx#import-set? _in35924_)
                    (let ((__tmp51127 (gx#import-set-imports _in35924_)))
                      (declare (not safe))
                      (foldl1 _fold-e35921_ _r35926_ __tmp51127))
                    (let ()
                      (declare (not safe))
                      (cons _in35924_ _r35926_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35921_)))
                                  (let ((__tmp51129
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35928_
                                                   '()
                                                   _imports35918_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp51129)))
                                (_g3578735811_ _g3578835815_)))
                          _id3580535864_
                          _hd3579535832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3580035844_
                                                  _target3579735838_
                                                  '()))
                                               (_g3578735811_
                                                _g3578835815_)))))
                                     (_g3578735811_ _g3578835815_))))
                             (_g3578735811_ _g3578835815_))))
                     (_g3578735811_ _g3578835815_)))))
         (_g3578635933_ _stx35784_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35985_ _rename35987_)
      (gx#make-module-import
       (gx#module-import-source _in35985_)
       _rename35987_
       (gx#module-import-phi _in35985_)
       (gx#module-import-weak? _in35985_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35938_ _pre35940_)
      (let* ((_name3594135949_ _name35938_)
             (_else3594335961_
              (lambda () (make-symbol _pre35940_ _name35938_)))
             (_K3594535969_
              (lambda (_mark35965_ _id35967_)
                (let ((__tmp51131 (make-symbol _pre35940_ _id35967_)))
                  (declare (not safe))
                  (cons __tmp51131 _mark35965_)))))
        (if (let () (declare (not safe)) (##pair? _name3594135949_))
            (let ((_hd3594635973_
                   (let () (declare (not safe)) (##car _name3594135949_)))
                  (_tl3594735976_
                   (let () (declare (not safe)) (##cdr _name3594135949_))))
              (let* ((_id35979_ _hd3594635973_) (_mark35982_ _tl3594735976_))
                (declare (not safe))
                (_K3594535969_ _mark35982_ _id35979_)))
            (let () (declare (not safe)) (_else3594335961_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35989_)
       (let* ((_g3599236025_
               (lambda (_g3599336021_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3599336021_)))
              (_g3599136211_
               (lambda (_g3599336029_)
                 (if (gx#stx-pair? _g3599336029_)
                     (let ((_e3599936032_ (gx#syntax-e _g3599336029_)))
                       (let ((_hd3599836036_
                              (let ()
                                (declare (not safe))
                                (##car _e3599936032_)))
                             (_tl3599736039_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3599936032_))))
                         (if (gx#stx-pair? _tl3599736039_)
                             (let ((_e3600236042_
                                    (gx#syntax-e _tl3599736039_)))
                               (let ((_hd3600136046_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3600236042_)))
                                     (_tl3600036049_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3600236042_))))
                                 (if (gx#stx-pair/null? _tl3600036049_)
                                     (let ((_g51132_
                                            (gx#syntax-split-splice
                                             _tl3600036049_
                                             '0)))
                                       (begin
                                         (let ((_g51133_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g51132_)
                                                      (##vector-length
                                                       _g51132_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g51133_ 2)))
                                               (error "Context expects 2 values"
                                                      _g51133_)))
                                         (let ((_target3600336052_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51132_ 0)))
                                               (_tl3600536055_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51132_ 1))))
                                           (if (gx#stx-null? _tl3600536055_)
                                               (letrec ((_loop3600636058_
                                                         (lambda (_hd3600436062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3601036065_
                          _id3601136067_)
                   (if (gx#stx-pair? _hd3600436062_)
                       (let ((_e3600736070_ (gx#syntax-e _hd3600436062_)))
                         (let ((_lp-hd3600836074_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3600736070_)))
                               (_lp-tl3600936077_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3600736070_))))
                           (if (gx#stx-pair? _lp-hd3600836074_)
                               (let ((_e3601636080_
                                      (gx#syntax-e _lp-hd3600836074_)))
                                 (let ((_hd3601536084_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3601636080_)))
                                       (_tl3601436087_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3601636080_))))
                                   (if (gx#stx-pair? _tl3601436087_)
                                       (let ((_e3601936090_
                                              (gx#syntax-e _tl3601436087_)))
                                         (let ((_hd3601836094_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3601936090_)))
                                               (_tl3601736097_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3601936090_))))
                                           (if (gx#stx-null? _tl3601736097_)
                                               (_loop3600636058_
                                                _lp-tl3600936077_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3601836094_
                                                        _new-id3601036065_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3601536084_
                                                        _id3601136067_)))
                                               (_g3599236025_ _g3599336029_))))
                                       (_g3599236025_ _g3599336029_))))
                               (_g3599236025_ _g3599336029_))))
                       (let ((_new-id3601236100_ (reverse _new-id3601036065_))
                             (_id3601336103_ (reverse _id3601136067_)))
                         ((lambda (_L36106_ _L36108_ _L36109_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp51144
                                             (lambda (_g3612736130_
                                                      _g3612836133_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3612736130_
                                                       _g3612836133_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp51144 '() _L36108_)))
                                     (gx#identifier-list?
                                      (let ((__tmp51143
                                             (lambda (_g3613536138_
                                                      _g3613636141_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3613536138_
                                                       _g3613636141_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp51143 '() _L36106_))))
                                (let* ((_keytab36144_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found36147_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g51138_
                                        (for-each
                                         (lambda (_id36150_ _new-id36152_)
                                           (let ((__tmp51135
                                                  (gx#core-identifier-key
                                                   _id36150_))
                                                 (__tmp51134
                                                  (gx#core-identifier-key
                                                   _new-id36152_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab36144_
                                              __tmp51135
                                              __tmp51134)))
                                         (let ((__tmp51136
                                                (lambda (_g3615336156_
                                                         _g3615436159_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3615336156_
                                                          _g3615436159_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51136 '() _L36108_))
                                         (let ((__tmp51137
                                                (lambda (_g3616136164_
                                                         _g3616236167_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3616136164_
                                                          _g3616236167_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51137 '() _L36106_))))
                                       (_imports36172_
                                        (gx#core-expand-import-source
                                         _L36109_))
                                       (_fold-e36192_
                                        (letrec ((_fold-e36175_
                                                  (lambda (_in36178_ _r36180_)
                                                    (if (gx#module-import?
                                                         _in36178_)
                                                        (let* ((_name36182_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in36178_))
                       (_$e36185_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab36144_ _name36182_ '#f))))
                  (if _$e36185_
                      ((lambda (_rename36189_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found36147_ _name36182_ '#t))
                         (let ((__tmp51140
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in36178_
                                   _rename36189_))))
                           (declare (not safe))
                           (cons __tmp51140 _r36180_)))
                       _$e36185_)
                      (let () (declare (not safe)) (cons _in36178_ _r36180_))))
                (if (gx#import-set? _in36178_)
                    (let ((__tmp51139 (gx#import-set-imports _in36178_)))
                      (declare (not safe))
                      (foldl1 _fold-e36175_ _r36180_ __tmp51139))
                    (let ()
                      (declare (not safe))
                      (cons _in36178_ _r36180_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36175_))
                                       (_new-imports36195_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36192_
                                                  '()
                                                  _imports36172_))))
                                  (for-each
                                   (lambda (_id36200_)
                                     (if (let ((__tmp51141
                                                (gx#core-identifier-key
                                                 _id36200_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found36147_
                                            __tmp51141
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35989_
                                          _id36200_)))
                                   (let ((__tmp51142
                                          (lambda (_g3620236205_ _g3620336208_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3620236205_
                                                    _g3620336208_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp51142 '() _L36108_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports36195_)))
                                (_g3599236025_ _g3599336029_)))
                          _new-id3601236100_
                          _id3601336103_
                          _hd3600136046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3600636058_
                                                  _target3600336052_
                                                  '()
                                                  '()))
                                               (_g3599236025_
                                                _g3599336029_)))))
                                     (_g3599236025_ _g3599336029_))))
                             (_g3599236025_ _g3599336029_))))
                     (_g3599236025_ _g3599336029_)))))
         (_g3599136211_ _stx35989_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx36217_)
       (let* ((_g3622036238_
               (lambda (_g3622136234_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3622136234_)))
              (_g3621936317_
               (lambda (_g3622136242_)
                 (if (gx#stx-pair? _g3622136242_)
                     (let ((_e3622636245_ (gx#syntax-e _g3622136242_)))
                       (let ((_hd3622536249_
                              (let ()
                                (declare (not safe))
                                (##car _e3622636245_)))
                             (_tl3622436252_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3622636245_))))
                         (if (gx#stx-pair? _tl3622436252_)
                             (let ((_e3622936255_
                                    (gx#syntax-e _tl3622436252_)))
                               (let ((_hd3622836259_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3622936255_)))
                                     (_tl3622736262_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3622936255_))))
                                 (if (gx#stx-pair? _tl3622736262_)
                                     (let ((_e3623236265_
                                            (gx#syntax-e _tl3622736262_)))
                                       (let ((_hd3623136269_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3623236265_)))
                                             (_tl3623036272_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3623236265_))))
                                         (if (gx#stx-null? _tl3623036272_)
                                             ((lambda (_L36275_ _L36277_)
                                                (if (gx#identifier? _L36275_)
                                                    (let* ((_pre36293_
                                                            (gx#stx-e
                                                             _L36275_))
                                                           (_imports36296_
                                                            (gx#core-expand-import-source
                                                             _L36277_))
                                                           (_rename-e36302_
                                                            (lambda (_name36299_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36299_
                         _pre36293_))))
                   (_fold-e36312_
                    (letrec ((_fold-e36305_
                              (lambda (_in36308_ _r36310_)
                                (if (gx#module-import? _in36308_)
                                    (let ((__tmp51146
                                           (let ((__tmp51147
                                                  (_rename-e36302_
                                                   (gx#module-import-name
                                                    _in36308_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36308_
                                              __tmp51147))))
                                      (declare (not safe))
                                      (cons __tmp51146 _r36310_))
                                    (if (gx#import-set? _in36308_)
                                        (let ((__tmp51145
                                               (gx#import-set-imports
                                                _in36308_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36305_
                                                  _r36310_
                                                  __tmp51145))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36308_ _r36310_)))))))
                      _fold-e36305_)))
              (let ((__tmp51148
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36312_ '() _imports36296_))))
                (declare (not safe))
                (cons 'begin: __tmp51148)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3622036238_
                                                     _g3622136242_)))
                                              _hd3623136269_
                                              _hd3622836259_)
                                             (_g3622036238_ _g3622136242_))))
                                     (_g3622036238_ _g3622136242_))))
                             (_g3622036238_ _g3622136242_))))
                     (_g3622036238_ _g3622136242_)))))
         (_g3621936317_ _stx36217_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx36321_)
       (letrec ((_flatten36324_
                 (lambda (_list-of-lists36579_)
                   (let ((__tmp51149
                          (lambda (_v36582_ _acc36584_)
                            (if (let () (declare (not safe)) (null? _v36582_))
                                _acc36584_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v36582_))
                                    (append (_flatten36324_ _v36582_)
                                            _acc36584_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v36582_ _acc36584_)))))))
                     (declare (not safe))
                     (foldr1 __tmp51149 '() _list-of-lists36579_))))
                (_expand-path36326_
                 (lambda (_top36447_ _mod36449_)
                   (let* ((___stx4746947470_ _mod36449_)
                          (_g3645236474_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4746947470_))))
                     (let ((___kont4747247473_
                            (lambda (_L36542_ _L36544_)
                              (map (lambda (_mod36559_)
                                     (gx#stx-identifier
                                      _top36447_
                                      _top36447_
                                      '"/"
                                      _mod36559_))
                                   (_flatten36324_
                                    (map (lambda (_g3656136563_)
                                           (_expand-path36326_
                                            _L36544_
                                            _g3656136563_))
                                         (let ((__tmp51150
                                                (lambda (_g3656636569_
                                                         _g3656736572_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3656636569_
                                                          _g3656736572_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51150
                                                   '()
                                                   _L36542_)))))))
                           (___kont4747647477_
                            (lambda (_L36481_)
                              (gx#stx-identifier
                               _top36447_
                               _top36447_
                               '"/"
                               _L36481_))))
                       (let* ((_g3645136495_
                               (lambda ()
                                 (let ((_L36481_ ___stx4746947470_))
                                   (if (or (gx#identifier? _L36481_)
                                           (gx#stx-fixnum? _L36481_))
                                       (___kont4747647477_ _L36481_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3645236474_))))))
                              (___match4749247493_
                               (lambda (_e3645836502_
                                        _hd3645736506_
                                        _tl3645636509_
                                        ___splice4747447475_
                                        _target3645936512_
                                        _tl3646136515_)
                                 (letrec ((_loop3646236518_
                                           (lambda (_hd3646036522_
                                                    _mod3646636525_)
                                             (if (gx#stx-pair? _hd3646036522_)
                                                 (let ((_e3646336528_
                                                        (gx#syntax-e
                                                         _hd3646036522_)))
                                                   (let ((_lp-tl3646536535_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3646336528_)))
                                                         (_lp-hd3646436532_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3646336528_))))
                                                     (_loop3646236518_
                                                      _lp-tl3646536535_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd3646436532_
                                                              _mod3646636525_)))))
                                                 (let ((_mod3646736538_
                                                        (reverse _mod3646636525_)))
                                                   (___kont4747247473_
                                                    _mod3646736538_
                                                    _hd3645736506_))))))
                                   (_loop3646236518_
                                    _target3645936512_
                                    '())))))
                         (if (gx#stx-pair? ___stx4746947470_)
                             (let ((_e3645836502_
                                    (gx#syntax-e ___stx4746947470_)))
                               (let ((_tl3645636509_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3645836502_)))
                                     (_hd3645736506_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3645836502_))))
                                 (if (gx#stx-pair/null? _tl3645636509_)
                                     (let ((___splice4747447475_
                                            (gx#syntax-split-splice
                                             _tl3645636509_
                                             '0)))
                                       (let ((_tl3646136515_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4747447475_
                                                 '1)))
                                             (_target3645936512_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4747447475_
                                                 '0))))
                                         (if (gx#stx-null? _tl3646136515_)
                                             (___match4749247493_
                                              _e3645836502_
                                              _hd3645736506_
                                              _tl3645636509_
                                              ___splice4747447475_
                                              _target3645936512_
                                              _tl3646136515_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3645136495_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3645136495_)))))
                             (let ()
                               (declare (not safe))
                               (_g3645136495_)))))))))
         (let* ((_g3632836352_
                 (lambda (_g3632936348_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g3632936348_)))
                (_g3632736443_
                 (lambda (_g3632936356_)
                   (if (gx#stx-pair? _g3632936356_)
                       (let ((_e3633436359_ (gx#syntax-e _g3632936356_)))
                         (let ((_hd3633336363_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3633436359_)))
                               (_tl3633236366_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3633436359_))))
                           (if (gx#stx-pair? _tl3633236366_)
                               (let ((_e3633736369_
                                      (gx#syntax-e _tl3633236366_)))
                                 (let ((_hd3633636373_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3633736369_)))
                                       (_tl3633536376_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3633736369_))))
                                   (if (gx#stx-pair/null? _tl3633536376_)
                                       (let ((_g51151_
                                              (gx#syntax-split-splice
                                               _tl3633536376_
                                               '0)))
                                         (begin
                                           (let ((_g51152_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g51151_)
                                                        (##vector-length
                                                         _g51151_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g51152_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g51152_)))
                                           (let ((_target3633836379_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g51151_ 0)))
                                                 (_tl3634036382_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g51151_
                                                     1))))
                                             (if (gx#stx-null? _tl3634036382_)
                                                 (letrec ((_loop3634136385_
                                                           (lambda (_hd3633936389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3634536392_)
                     (if (gx#stx-pair? _hd3633936389_)
                         (let ((_e3634236395_ (gx#syntax-e _hd3633936389_)))
                           (let ((_lp-hd3634336399_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3634236395_)))
                                 (_lp-tl3634436402_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3634236395_))))
                             (_loop3634136385_
                              _lp-tl3634436402_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd3634336399_ _mod3634536392_)))))
                         (let ((_mod3634636405_ (reverse _mod3634536392_)))
                           ((lambda (_L36409_ _L36411_)
                              (let ((__tmp51153
                                     (_flatten36324_
                                      (map (lambda (_g3642936431_)
                                             (_expand-path36326_
                                              _L36411_
                                              _g3642936431_))
                                           (let ((__tmp51154
                                                  (lambda (_g3643436437_
                                                           _g3643536440_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3643436437_
                                                            _g3643536440_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp51154
                                                     '()
                                                     _L36409_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp51153)))
                            _mod3634636405_
                            _hd3633636373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3634136385_
                                                    _target3633836379_
                                                    '()))
                                                 (_g3632836352_
                                                  _g3632936356_)))))
                                       (_g3632836352_ _g3632936356_))))
                               (_g3632836352_ _g3632936356_))))
                       (_g3632836352_ _g3632936356_)))))
           (_g3632736443_ _stx36321_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36588_)
       (let* ((_g3659136615_
               (lambda (_g3659236611_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3659236611_)))
              (_g3659036737_
               (lambda (_g3659236619_)
                 (if (gx#stx-pair? _g3659236619_)
                     (let ((_e3659736622_ (gx#syntax-e _g3659236619_)))
                       (let ((_hd3659636626_
                              (let ()
                                (declare (not safe))
                                (##car _e3659736622_)))
                             (_tl3659536629_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3659736622_))))
                         (if (gx#stx-pair? _tl3659536629_)
                             (let ((_e3660036632_
                                    (gx#syntax-e _tl3659536629_)))
                               (let ((_hd3659936636_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3660036632_)))
                                     (_tl3659836639_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3660036632_))))
                                 (if (gx#stx-pair/null? _tl3659836639_)
                                     (let ((_g51155_
                                            (gx#syntax-split-splice
                                             _tl3659836639_
                                             '0)))
                                       (begin
                                         (let ((_g51156_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g51155_)
                                                      (##vector-length
                                                       _g51155_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g51156_ 2)))
                                               (error "Context expects 2 values"
                                                      _g51156_)))
                                         (let ((_target3660136642_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51155_ 0)))
                                               (_tl3660336645_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51155_ 1))))
                                           (if (gx#stx-null? _tl3660336645_)
                                               (letrec ((_loop3660436648_
                                                         (lambda (_hd3660236652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3660836655_)
                   (if (gx#stx-pair? _hd3660236652_)
                       (let ((_e3660536658_ (gx#syntax-e _hd3660236652_)))
                         (let ((_lp-hd3660636662_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3660536658_)))
                               (_lp-tl3660736665_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3660536658_))))
                           (_loop3660436648_
                            _lp-tl3660736665_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3660636662_ _id3660836655_)))))
                       (let ((_id3660936668_ (reverse _id3660836655_)))
                         ((lambda (_L36672_ _L36674_)
                            (if (gx#identifier-list?
                                 (let ((__tmp51161
                                        (lambda (_g3669136694_ _g3669236697_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3669136694_
                                                  _g3669236697_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp51161 '() _L36672_)))
                                (let* ((_keys36708_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp51157
                                                (lambda (_g3669936702_
                                                         _g3670036705_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3669936702_
                                                          _g3670036705_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51157 '() _L36672_))))
                                       (_keytab36719_
                                        (let ((_ht36711_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3671336715_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht36711_
                                                _g3671336715_
                                                '#t)))
                                           _keys36708_)
                                          _ht36711_))
                                       (_exports36722_
                                        (gx#core-expand-export-source
                                         _L36674_))
                                       (_fold-e36732_
                                        (letrec ((_fold-e36725_
                                                  (lambda (_out36728_ _r36730_)
                                                    (if (gx#module-export?
                                                         _out36728_)
                                                        (if (let ((__tmp51159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out36728_)))
                      (declare (not safe))
                      (table-ref _keytab36719_ __tmp51159 '#f))
                    _r36730_
                    (let () (declare (not safe)) (cons _out36728_ _r36730_)))
                (if (gx#export-set? _out36728_)
                    (let ((__tmp51158 (gx#export-set-exports _out36728_)))
                      (declare (not safe))
                      (foldl1 _fold-e36725_ _r36730_ __tmp51158))
                    _r36730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36725_)))
                                  (let ((__tmp51160
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e36732_
                                                   '()
                                                   _exports36722_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp51160)))
                                (_g3659136615_ _g3659236619_)))
                          _id3660936668_
                          _hd3659936636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3660436648_
                                                  _target3660136642_
                                                  '()))
                                               (_g3659136615_
                                                _g3659236619_)))))
                                     (_g3659136615_ _g3659236619_))))
                             (_g3659136615_ _g3659236619_))))
                     (_g3659136615_ _g3659236619_)))))
         (_g3659036737_ _stx36588_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36742_ _rename36744_)
      (gx#make-module-export
       (gx#module-export-context _out36742_)
       (gx#module-export-key _out36742_)
       (gx#module-export-phi _out36742_)
       _rename36744_
       (gx#module-export-weak? _out36742_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36746_)
       (let* ((_g3674936782_
               (lambda (_g3675036778_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3675036778_)))
              (_g3674836968_
               (lambda (_g3675036786_)
                 (if (gx#stx-pair? _g3675036786_)
                     (let ((_e3675636789_ (gx#syntax-e _g3675036786_)))
                       (let ((_hd3675536793_
                              (let ()
                                (declare (not safe))
                                (##car _e3675636789_)))
                             (_tl3675436796_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3675636789_))))
                         (if (gx#stx-pair? _tl3675436796_)
                             (let ((_e3675936799_
                                    (gx#syntax-e _tl3675436796_)))
                               (let ((_hd3675836803_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3675936799_)))
                                     (_tl3675736806_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3675936799_))))
                                 (if (gx#stx-pair/null? _tl3675736806_)
                                     (let ((_g51162_
                                            (gx#syntax-split-splice
                                             _tl3675736806_
                                             '0)))
                                       (begin
                                         (let ((_g51163_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g51162_)
                                                      (##vector-length
                                                       _g51162_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g51163_ 2)))
                                               (error "Context expects 2 values"
                                                      _g51163_)))
                                         (let ((_target3676036809_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51162_ 0)))
                                               (_tl3676236812_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g51162_ 1))))
                                           (if (gx#stx-null? _tl3676236812_)
                                               (letrec ((_loop3676336815_
                                                         (lambda (_hd3676136819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3676736822_
                          _id3676836824_)
                   (if (gx#stx-pair? _hd3676136819_)
                       (let ((_e3676436827_ (gx#syntax-e _hd3676136819_)))
                         (let ((_lp-hd3676536831_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3676436827_)))
                               (_lp-tl3676636834_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3676436827_))))
                           (if (gx#stx-pair? _lp-hd3676536831_)
                               (let ((_e3677336837_
                                      (gx#syntax-e _lp-hd3676536831_)))
                                 (let ((_hd3677236841_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3677336837_)))
                                       (_tl3677136844_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3677336837_))))
                                   (if (gx#stx-pair? _tl3677136844_)
                                       (let ((_e3677636847_
                                              (gx#syntax-e _tl3677136844_)))
                                         (let ((_hd3677536851_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3677636847_)))
                                               (_tl3677436854_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3677636847_))))
                                           (if (gx#stx-null? _tl3677436854_)
                                               (_loop3676336815_
                                                _lp-tl3676636834_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3677536851_
                                                        _new-id3676736822_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3677236841_
                                                        _id3676836824_)))
                                               (_g3674936782_ _g3675036786_))))
                                       (_g3674936782_ _g3675036786_))))
                               (_g3674936782_ _g3675036786_))))
                       (let ((_new-id3676936857_ (reverse _new-id3676736822_))
                             (_id3677036860_ (reverse _id3676836824_)))
                         ((lambda (_L36863_ _L36865_ _L36866_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp51174
                                             (lambda (_g3688436887_
                                                      _g3688536890_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3688436887_
                                                       _g3688536890_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp51174 '() _L36865_)))
                                     (gx#identifier-list?
                                      (let ((__tmp51173
                                             (lambda (_g3689236895_
                                                      _g3689336898_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3689236895_
                                                       _g3689336898_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp51173 '() _L36863_))))
                                (let* ((_keytab36901_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found36904_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g51168_
                                        (for-each
                                         (lambda (_id36907_ _new-id36909_)
                                           (let ((__tmp51165
                                                  (gx#core-identifier-key
                                                   _id36907_))
                                                 (__tmp51164
                                                  (gx#core-identifier-key
                                                   _new-id36909_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab36901_
                                              __tmp51165
                                              __tmp51164)))
                                         (let ((__tmp51166
                                                (lambda (_g3691036913_
                                                         _g3691136916_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3691036913_
                                                          _g3691136916_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51166 '() _L36865_))
                                         (let ((__tmp51167
                                                (lambda (_g3691836921_
                                                         _g3691936924_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3691836921_
                                                          _g3691936924_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp51167 '() _L36863_))))
                                       (_exports36929_
                                        (gx#core-expand-export-source
                                         _L36866_))
                                       (_fold-e36949_
                                        (letrec ((_fold-e36932_
                                                  (lambda (_out36935_ _r36937_)
                                                    (if (gx#module-export?
                                                         _out36935_)
                                                        (let* ((_name36939_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36935_))
                       (_$e36942_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab36901_ _name36939_ '#f))))
                  (if _$e36942_
                      ((lambda (_rename36946_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found36904_ _name36939_ '#t))
                         (let ((__tmp51170
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36935_
                                   _rename36946_))))
                           (declare (not safe))
                           (cons __tmp51170 _r36937_)))
                       _$e36942_)
                      (let ()
                        (declare (not safe))
                        (cons _out36935_ _r36937_))))
                (if (gx#export-set? _out36935_)
                    (let ((__tmp51169 (gx#export-set-exports _out36935_)))
                      (declare (not safe))
                      (foldl1 _fold-e36932_ _r36937_ __tmp51169))
                    (let ()
                      (declare (not safe))
                      (cons _out36935_ _r36937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36932_))
                                       (_new-exports36952_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36949_
                                                  '()
                                                  _exports36929_))))
                                  (for-each
                                   (lambda (_id36957_)
                                     (if (let ((__tmp51171
                                                (gx#core-identifier-key
                                                 _id36957_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found36904_
                                            __tmp51171
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36746_
                                          _id36957_)))
                                   (let ((__tmp51172
                                          (lambda (_g3695936962_ _g3696036965_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3695936962_
                                                    _g3696036965_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp51172 '() _L36865_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports36952_)))
                                (_g3674936782_ _g3675036786_)))
                          _new-id3676936857_
                          _id3677036860_
                          _hd3675836803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3676336815_
                                                  _target3676036809_
                                                  '()
                                                  '()))
                                               (_g3674936782_
                                                _g3675036786_)))))
                                     (_g3674936782_ _g3675036786_))))
                             (_g3674936782_ _g3675036786_))))
                     (_g3674936782_ _g3675036786_)))))
         (_g3674836968_ _stx36746_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36974_)
       (let* ((_g3697736995_
               (lambda (_g3697836991_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3697836991_)))
              (_g3697637074_
               (lambda (_g3697836999_)
                 (if (gx#stx-pair? _g3697836999_)
                     (let ((_e3698337002_ (gx#syntax-e _g3697836999_)))
                       (let ((_hd3698237006_
                              (let ()
                                (declare (not safe))
                                (##car _e3698337002_)))
                             (_tl3698137009_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3698337002_))))
                         (if (gx#stx-pair? _tl3698137009_)
                             (let ((_e3698637012_
                                    (gx#syntax-e _tl3698137009_)))
                               (let ((_hd3698537016_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3698637012_)))
                                     (_tl3698437019_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3698637012_))))
                                 (if (gx#stx-pair? _tl3698437019_)
                                     (let ((_e3698937022_
                                            (gx#syntax-e _tl3698437019_)))
                                       (let ((_hd3698837026_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3698937022_)))
                                             (_tl3698737029_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3698937022_))))
                                         (if (gx#stx-null? _tl3698737029_)
                                             ((lambda (_L37032_ _L37034_)
                                                (if (gx#identifier? _L37032_)
                                                    (let* ((_pre37050_
                                                            (gx#stx-e
                                                             _L37032_))
                                                           (_exports37053_
                                                            (gx#core-expand-export-source
                                                             _L37034_))
                                                           (_rename-e37059_
                                                            (lambda (_name37056_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name37056_
                         _pre37050_))))
                   (_fold-e37069_
                    (letrec ((_fold-e37062_
                              (lambda (_out37065_ _r37067_)
                                (if (gx#module-export? _out37065_)
                                    (let ((__tmp51176
                                           (let ((__tmp51177
                                                  (_rename-e37059_
                                                   (gx#module-export-name
                                                    _out37065_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out37065_
                                              __tmp51177))))
                                      (declare (not safe))
                                      (cons __tmp51176 _r37067_))
                                    (if (gx#export-set? _out37065_)
                                        (let ((__tmp51175
                                               (gx#export-set-exports
                                                _out37065_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e37062_
                                                  _r37067_
                                                  __tmp51175))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out37065_ _r37067_)))))))
                      _fold-e37062_)))
              (let ((__tmp51178
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e37069_ '() _exports37053_))))
                (declare (not safe))
                (cons 'begin: __tmp51178)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3697736995_
                                                     _g3697836999_)))
                                              _hd3698837026_
                                              _hd3698537016_)
                                             (_g3697736995_ _g3697836999_))))
                                     (_g3697736995_ _g3697836999_))))
                             (_g3697736995_ _g3697836999_))))
                     (_g3697736995_ _g3697836999_)))))
         (_g3697637074_ _stx36974_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx37078_)
       (letrec ((_identifiers37081_
                 (lambda (_id37313_ _unchecked?37315_)
                   (let ((_info37317_ (gx#syntax-local-value _id37313_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            _info37317_))
                         (let ((__tmp51179
                                (let ((__tmp51191
                                       (let ((__obj47573 _info37317_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj47573
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj47573
                                                '8
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj47573
                                              'type-descriptor))))
                                      (__tmp51180
                                       (let ((__tmp51182
                                              (let ((__tmp51190
                                                     (let ((__obj47574
                                                            _info37317_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47574
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47574
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47574
                                                            'predicate))))
                                                    (__tmp51183
                                                     (let ((__tmp51185
                                                            (let ((__tmp51187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37315_
                               (let ((__tmp51189
                                      (map cdr
                                           (let ((__obj47575 _info37317_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47575
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47575
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47575
                                                  'unchecked-mutators)))))
                                     (__tmp51188
                                      (map cdr
                                           (let ((__obj47576 _info37317_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47576
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47576
                                                    '13
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47576
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp51189 __tmp51188))
                               '()))
                          (__tmp51186
                           (map cdr
                                (let ((__obj47577 _info37317_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj47577
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj47577
                                         '12
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj47577
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp51187 __tmp51186)))
                   (__tmp51184
                    (map cdr
                         (let ((__obj47578 _info37317_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj47578
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj47578
                                  '11
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj47578
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp51185 __tmp51184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp51190 __tmp51183)))
                                             (__tmp51181
                                              (let ((_ctor37320_
                                                     (let ((__obj47579
                                                            _info37317_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47579
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47579
                                                              '9
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47579
                                                            'constructor)))))
                                                (if _ctor37320_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37320_ '()))
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp51182 __tmp51181))))
                                  (declare (not safe))
                                  (cons __tmp51191 __tmp51180))))
                           (declare (not safe))
                           (cons _id37313_ __tmp51179))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx37078_
                          _id37313_))))))
         (let* ((___stx4749547496_ _stx37078_)
                (_g3708537126_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4749547496_))))
           (let ((___kont4749847499_
                  (lambda (_L37274_ _L37276_)
                    (let ((__tmp51192
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3729537297_)
                               (_identifiers37081_
                                _g3729537297_
                                (gx#stx-e _L37276_)))
                             (let ((__tmp51193
                                    (lambda (_g3730037303_ _g3730137306_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3730037303_ _g3730137306_)))))
                               (declare (not safe))
                               (foldr1 __tmp51193 '() _L37274_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp51192))))
                 (___kont4750247503_
                  (lambda (_L37173_)
                    (let ((__tmp51194
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3718937191_)
                               (_identifiers37081_ _g3718937191_ '#f))
                             (let ((__tmp51195
                                    (lambda (_g3719437197_ _g3719537200_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3719437197_ _g3719537200_)))))
                               (declare (not safe))
                               (foldr1 __tmp51195 '() _L37173_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp51194)))))
             (let* ((___match4755247553_
                     (lambda (_e3711137133_
                              _hd3711037137_
                              _tl3710937140_
                              ___splice4750447505_
                              _target3711237143_
                              _tl3711437146_)
                       (letrec ((_loop3711537149_
                                 (lambda (_hd3711337153_ _id3711937156_)
                                   (if (gx#stx-pair? _hd3711337153_)
                                       (let ((_e3711637159_
                                              (gx#syntax-e _hd3711337153_)))
                                         (let ((_lp-tl3711837166_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3711637159_)))
                                               (_lp-hd3711737163_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3711637159_))))
                                           (_loop3711537149_
                                            _lp-tl3711837166_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3711737163_
                                                    _id3711937156_)))))
                                       (let ((_id3712037169_
                                              (reverse _id3711937156_)))
                                         (___kont4750247503_
                                          _id3712037169_))))))
                         (_loop3711537149_ _target3711237143_ '()))))
                    (___match4753847539_
                     (lambda (_e3709137210_
                              _hd3709037214_
                              _tl3708937217_
                              _e3709437220_
                              _hd3709337224_
                              _tl3709237227_
                              _e3709537230_
                              _e3709837234_
                              _hd3709737238_
                              _tl3709637241_
                              ___splice4750047501_
                              _target3709937244_
                              _tl3710137247_)
                       (letrec ((_loop3710237250_
                                 (lambda (_hd3710037254_ _id3710637257_)
                                   (if (gx#stx-pair? _hd3710037254_)
                                       (let ((_e3710337260_
                                              (gx#syntax-e _hd3710037254_)))
                                         (let ((_lp-tl3710537267_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3710337260_)))
                                               (_lp-hd3710437264_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3710337260_))))
                                           (_loop3710237250_
                                            _lp-tl3710537267_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3710437264_
                                                    _id3710637257_)))))
                                       (let ((_id3710737270_
                                              (reverse _id3710637257_)))
                                         (___kont4749847499_
                                          _id3710737270_
                                          _hd3709737238_))))))
                         (_loop3710237250_ _target3709937244_ '())))))
               (if (gx#stx-pair? ___stx4749547496_)
                   (let ((_e3709137210_ (gx#syntax-e ___stx4749547496_)))
                     (let ((_tl3708937217_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3709137210_)))
                           (_hd3709037214_
                            (let ()
                              (declare (not safe))
                              (##car _e3709137210_))))
                       (if (gx#stx-pair? _tl3708937217_)
                           (let ((_e3709437220_ (gx#syntax-e _tl3708937217_)))
                             (let ((_tl3709237227_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3709437220_)))
                                   (_hd3709337224_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3709437220_))))
                               (if (gx#stx-datum? _hd3709337224_)
                                   (let ((_e3709537230_
                                          (gx#stx-e _hd3709337224_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3709537230_ 'unchecked:))
                                         (if (gx#stx-pair? _tl3709237227_)
                                             (let ((_e3709837234_
                                                    (gx#syntax-e
                                                     _tl3709237227_)))
                                               (let ((_tl3709637241_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3709837234_)))
                                                     (_hd3709737238_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3709837234_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl3709637241_)
                                                     (let ((___splice4750047501_
                                                            (gx#syntax-split-splice
                                                             _tl3709637241_
                                                             '0)))
                                                       (let ((_tl3710137247_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4750047501_ '1)))
                     (_target3709937244_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4750047501_ '0))))
                 (if (gx#stx-null? _tl3710137247_)
                     (___match4753847539_
                      _e3709137210_
                      _hd3709037214_
                      _tl3708937217_
                      _e3709437220_
                      _hd3709337224_
                      _tl3709237227_
                      _e3709537230_
                      _e3709837234_
                      _hd3709737238_
                      _tl3709637241_
                      ___splice4750047501_
                      _target3709937244_
                      _tl3710137247_)
                     (if (gx#stx-pair/null? _tl3708937217_)
                         (let ((___splice4750447505_
                                (gx#syntax-split-splice _tl3708937217_ '0)))
                           (let ((_tl3711437146_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4750447505_ '1)))
                                 (_target3711237143_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4750447505_ '0))))
                             (if (gx#stx-null? _tl3711437146_)
                                 (___match4755247553_
                                  _e3709137210_
                                  _hd3709037214_
                                  _tl3708937217_
                                  ___splice4750447505_
                                  _target3711237143_
                                  _tl3711437146_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3708537126_)))))
                         (let () (declare (not safe)) (_g3708537126_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3708937217_)
                                                         (let ((___splice4750447505_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3708937217_
                         '0)))
                   (let ((_tl3711437146_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4750447505_ '1)))
                         (_target3711237143_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4750447505_ '0))))
                     (if (gx#stx-null? _tl3711437146_)
                         (___match4755247553_
                          _e3709137210_
                          _hd3709037214_
                          _tl3708937217_
                          ___splice4750447505_
                          _target3711237143_
                          _tl3711437146_)
                         (let () (declare (not safe)) (_g3708537126_)))))
                 (let () (declare (not safe)) (_g3708537126_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3708937217_)
                                                 (let ((___splice4750447505_
                                                        (gx#syntax-split-splice
                                                         _tl3708937217_
                                                         '0)))
                                                   (let ((_tl3711437146_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4750447505_
                                                             '1)))
                                                         (_target3711237143_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4750447505_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3711437146_)
                                                         (___match4755247553_
                                                          _e3709137210_
                                                          _hd3709037214_
                                                          _tl3708937217_
                                                          ___splice4750447505_
                                                          _target3711237143_
                                                          _tl3711437146_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3708537126_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3708537126_))))
                                         (if (gx#stx-pair/null? _tl3708937217_)
                                             (let ((___splice4750447505_
                                                    (gx#syntax-split-splice
                                                     _tl3708937217_
                                                     '0)))
                                               (let ((_tl3711437146_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4750447505_
                                                         '1)))
                                                     (_target3711237143_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4750447505_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3711437146_)
                                                     (___match4755247553_
                                                      _e3709137210_
                                                      _hd3709037214_
                                                      _tl3708937217_
                                                      ___splice4750447505_
                                                      _target3711237143_
                                                      _tl3711437146_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3708537126_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3708537126_)))))
                                   (if (gx#stx-pair/null? _tl3708937217_)
                                       (let ((___splice4750447505_
                                              (gx#syntax-split-splice
                                               _tl3708937217_
                                               '0)))
                                         (let ((_tl3711437146_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4750447505_
                                                   '1)))
                                               (_target3711237143_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4750447505_
                                                   '0))))
                                           (if (gx#stx-null? _tl3711437146_)
                                               (___match4755247553_
                                                _e3709137210_
                                                _hd3709037214_
                                                _tl3708937217_
                                                ___splice4750447505_
                                                _target3711237143_
                                                _tl3711437146_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3708537126_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3708537126_))))))
                           (if (gx#stx-pair/null? _tl3708937217_)
                               (let ((___splice4750447505_
                                      (gx#syntax-split-splice
                                       _tl3708937217_
                                       '0)))
                                 (let ((_tl3711437146_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4750447505_
                                           '1)))
                                       (_target3711237143_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4750447505_
                                           '0))))
                                   (if (gx#stx-null? _tl3711437146_)
                                       (___match4755247553_
                                        _e3709137210_
                                        _hd3709037214_
                                        _tl3708937217_
                                        ___splice4750447505_
                                        _target3711237143_
                                        _tl3711437146_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3708537126_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3708537126_))))))
                   (let () (declare (not safe)) (_g3708537126_)))))))))))
