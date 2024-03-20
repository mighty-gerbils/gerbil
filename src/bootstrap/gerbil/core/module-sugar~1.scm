(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_$stx50837_)
      (let* ((___stx5343953440_ _$stx50837_)
             (_g5084250861_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5343953440_))))
        (let ((___kont5344253443_
               (lambda ()
                 (let ((__tmp53735 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp53735 '()))))
              (___kont5344453445_
               (lambda (_L50888_ _L50890_ _L50891_)
                 (let ((__tmp53748 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp53736
                        (let ((__tmp53745
                               (let ((__tmp53746
                                      (let ((__tmp53747
                                             (let ()
                                               (declare (not safe))
                                               (cons _L50891_ _L50888_))))
                                        (declare (not safe))
                                        (cons __tmp53747 '()))))
                                 (declare (not safe))
                                 (cons _L50890_ __tmp53746)))
                              (__tmp53737
                               (let ((__tmp53738
                                      (let ((__tmp53744
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp53739
                                             (let ((__tmp53740
                                                    (let ((__tmp53743
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp53741
                                                           (let ((__tmp53742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L50890_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp53742))))
              (declare (not safe))
              (cons __tmp53743 __tmp53741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp53740 '()))))
                                        (declare (not safe))
                                        (cons __tmp53744 __tmp53739))))
                                 (declare (not safe))
                                 (cons __tmp53738 '()))))
                          (declare (not safe))
                          (cons __tmp53745 __tmp53737))))
                   (declare (not safe))
                   (cons __tmp53748 __tmp53736)))))
          (if (gx#stx-pair? ___stx5343953440_)
              (let ((_e5084650913_ (gx#syntax-e ___stx5343953440_)))
                (let ((_tl5084450920_
                       (let () (declare (not safe)) (##cdr _e5084650913_)))
                      (_hd5084550917_
                       (let () (declare (not safe)) (##car _e5084650913_))))
                  (if (gx#stx-null? _tl5084450920_)
                      (___kont5344253443_)
                      (if (gx#stx-pair? _tl5084450920_)
                          (let ((_e5085550878_ (gx#syntax-e _tl5084450920_)))
                            (let ((_tl5085350885_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5085550878_)))
                                  (_hd5085450882_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5085550878_))))
                              (___kont5344453445_
                               _tl5085350885_
                               _hd5085450882_
                               _hd5084550917_)))
                          (let () (declare (not safe)) (_g5084250861_))))))
              (let () (declare (not safe)) (_g5084250861_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_$stx50931_)
      (let* ((___stx5346953470_ _$stx50931_)
             (_g5093650976_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5346953470_))))
        (let ((___kont5347253473_
               (lambda (_L51114_ _L51116_)
                 (let ((__tmp53754 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp53749
                        (let ((__tmp53750
                               (let ((__tmp53751
                                      (let ((__tmp53753
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp53752
                                             (let ()
                                               (declare (not safe))
                                               (cons _L51114_ '()))))
                                        (declare (not safe))
                                        (cons __tmp53753 __tmp53752))))
                                 (declare (not safe))
                                 (cons __tmp53751 '()))))
                          (declare (not safe))
                          (cons _L51116_ __tmp53750))))
                   (declare (not safe))
                   (cons __tmp53754 __tmp53749))))
              (___kont5347453475_
               (lambda (_L51043_ _L51045_ _L51046_ _L51047_)
                 (let ((__tmp53755
                        (let ((__tmp53756
                               (let ((__tmp53757
                                      (let ((__tmp53761
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp53758
                                             (let ((__tmp53759
                                                    (let ((__tmp53760
                                                           (lambda (_g5106851071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g5106951074_)
                     (let ()
                       (declare (not safe))
                       (cons _g5106851071_ _g5106951074_)))))
              (declare (not safe))
              (foldr1 __tmp53760 '() _L51043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L51045_ __tmp53759))))
                                        (declare (not safe))
                                        (cons __tmp53761 __tmp53758))))
                                 (declare (not safe))
                                 (cons __tmp53757 '()))))
                          (declare (not safe))
                          (cons _L51046_ __tmp53756))))
                   (declare (not safe))
                   (cons _L51047_ __tmp53755)))))
          (let* ((___match5352453525_
                  (lambda (_e5095550983_
                           _hd5095450987_
                           _tl5095350990_
                           _e5095850993_
                           _hd5095750997_
                           _tl5095651000_
                           _e5096151003_
                           _hd5096051007_
                           _tl5095951010_
                           ___splice5347653477_
                           _target5096251013_
                           _tl5096451016_)
                    (letrec ((_loop5096551019_
                              (lambda (_hd5096351023_ _body5096951026_)
                                (if (gx#stx-pair? _hd5096351023_)
                                    (let ((_e5096651029_
                                           (gx#syntax-e _hd5096351023_)))
                                      (let ((_lp-tl5096851036_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5096651029_)))
                                            (_lp-hd5096751033_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5096651029_))))
                                        (_loop5096551019_
                                         _lp-tl5096851036_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd5096751033_
                                                 _body5096951026_)))))
                                    (let ((_body5097051039_
                                           (reverse _body5096951026_)))
                                      (let ((_L51043_ _body5097051039_)
                                            (_L51045_ _tl5095951010_)
                                            (_L51046_ _hd5096051007_)
                                            (_L51047_ _hd5095450987_))
                                        (if (gx#identifier? _L51046_)
                                            (___kont5347453475_
                                             _L51043_
                                             _L51045_
                                             _L51046_
                                             _L51047_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5093650976_)))))))))
                      (_loop5096551019_ _target5096251013_ '()))))
                 (___match5349853499_
                  (lambda (_e5094251084_
                           _hd5094151088_
                           _tl5094051091_
                           _e5094551094_
                           _hd5094451098_
                           _tl5094351101_
                           _e5094851104_
                           _hd5094751108_
                           _tl5094651111_)
                    (let ((_L51114_ _hd5094751108_) (_L51116_ _hd5094451098_))
                      (if (gx#identifier? _L51116_)
                          (___kont5347253473_ _L51114_ _L51116_)
                          (if (gx#stx-pair? _hd5094451098_)
                              (let ((_e5096151003_
                                     (gx#syntax-e _hd5094451098_)))
                                (let ((_tl5095951010_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5096151003_)))
                                      (_hd5096051007_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5096151003_))))
                                  (if (gx#stx-pair/null? _tl5094351101_)
                                      (let ((___splice5347653477_
                                             (gx#syntax-split-splice
                                              _tl5094351101_
                                              '0)))
                                        (let ((_tl5096451016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5347653477_
                                                  '1)))
                                              (_target5096251013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5347653477_
                                                  '0))))
                                          (if (gx#stx-null? _tl5096451016_)
                                              (___match5352453525_
                                               _e5094251084_
                                               _hd5094151088_
                                               _tl5094051091_
                                               _e5094551094_
                                               _hd5094451098_
                                               _tl5094351101_
                                               _e5096151003_
                                               _hd5096051007_
                                               _tl5095951010_
                                               ___splice5347653477_
                                               _target5096251013_
                                               _tl5096451016_)
                                              (let ()
                                                (declare (not safe))
                                                (_g5093650976_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g5093650976_)))))
                              (let ()
                                (declare (not safe))
                                (_g5093650976_))))))))
            (if (gx#stx-pair? ___stx5346953470_)
                (let ((_e5094251084_ (gx#syntax-e ___stx5346953470_)))
                  (let ((_tl5094051091_
                         (let () (declare (not safe)) (##cdr _e5094251084_)))
                        (_hd5094151088_
                         (let () (declare (not safe)) (##car _e5094251084_))))
                    (if (gx#stx-pair? _tl5094051091_)
                        (let ((_e5094551094_ (gx#syntax-e _tl5094051091_)))
                          (let ((_tl5094351101_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5094551094_)))
                                (_hd5094451098_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5094551094_))))
                            (if (gx#stx-pair? _tl5094351101_)
                                (let ((_e5094851104_
                                       (gx#syntax-e _tl5094351101_)))
                                  (let ((_tl5094651111_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5094851104_)))
                                        (_hd5094751108_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5094851104_))))
                                    (if (gx#stx-null? _tl5094651111_)
                                        (___match5349853499_
                                         _e5094251084_
                                         _hd5094151088_
                                         _tl5094051091_
                                         _e5094551094_
                                         _hd5094451098_
                                         _tl5094351101_
                                         _e5094851104_
                                         _hd5094751108_
                                         _tl5094651111_)
                                        (if (gx#stx-pair? _hd5094451098_)
                                            (let ((_e5096151003_
                                                   (gx#syntax-e
                                                    _hd5094451098_)))
                                              (let ((_tl5095951010_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5096151003_)))
                                                    (_hd5096051007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5096151003_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5094351101_)
                                                    (let ((___splice5347653477_
                                                           (gx#syntax-split-splice
                                                            _tl5094351101_
                                                            '0)))
                                                      (let ((_tl5096451016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5347653477_ '1)))
                    (_target5096251013_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5347653477_ '0))))
                (if (gx#stx-null? _tl5096451016_)
                    (___match5352453525_
                     _e5094251084_
                     _hd5094151088_
                     _tl5094051091_
                     _e5094551094_
                     _hd5094451098_
                     _tl5094351101_
                     _e5096151003_
                     _hd5096051007_
                     _tl5095951010_
                     ___splice5347653477_
                     _target5096251013_
                     _tl5096451016_)
                    (let () (declare (not safe)) (_g5093650976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5093650976_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5093650976_))))))
                                (if (gx#stx-pair? _hd5094451098_)
                                    (let ((_e5096151003_
                                           (gx#syntax-e _hd5094451098_)))
                                      (let ((_tl5095951010_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5096151003_)))
                                            (_hd5096051007_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5096151003_))))
                                        (if (gx#stx-pair/null? _tl5094351101_)
                                            (let ((___splice5347653477_
                                                   (gx#syntax-split-splice
                                                    _tl5094351101_
                                                    '0)))
                                              (let ((_tl5096451016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5347653477_
                                                        '1)))
                                                    (_target5096251013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5347653477_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl5096451016_)
                                                    (___match5352453525_
                                                     _e5094251084_
                                                     _hd5094151088_
                                                     _tl5094051091_
                                                     _e5094551094_
                                                     _hd5094451098_
                                                     _tl5094351101_
                                                     _e5096151003_
                                                     _hd5096051007_
                                                     _tl5095951010_
                                                     ___splice5347653477_
                                                     _target5096251013_
                                                     _tl5096451016_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5093650976_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5093650976_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g5093650976_))))))
                        (let () (declare (not safe)) (_g5093650976_)))))
                (let () (declare (not safe)) (_g5093650976_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_$stx51136_)
      (let* ((___stx5352753528_ _$stx51136_)
             (_g5114151181_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5352753528_))))
        (let ((___kont5353053531_
               (lambda (_L51319_ _L51321_)
                 (let ((__tmp53767 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp53762
                        (let ((__tmp53763
                               (let ((__tmp53764
                                      (let ((__tmp53766
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp53765
                                             (let ()
                                               (declare (not safe))
                                               (cons _L51319_ '()))))
                                        (declare (not safe))
                                        (cons __tmp53766 __tmp53765))))
                                 (declare (not safe))
                                 (cons __tmp53764 '()))))
                          (declare (not safe))
                          (cons _L51321_ __tmp53763))))
                   (declare (not safe))
                   (cons __tmp53767 __tmp53762))))
              (___kont5353253533_
               (lambda (_L51248_ _L51250_ _L51251_ _L51252_)
                 (let ((__tmp53768
                        (let ((__tmp53769
                               (let ((__tmp53770
                                      (let ((__tmp53774
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp53771
                                             (let ((__tmp53772
                                                    (let ((__tmp53773
                                                           (lambda (_g5127351276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g5127451279_)
                     (let ()
                       (declare (not safe))
                       (cons _g5127351276_ _g5127451279_)))))
              (declare (not safe))
              (foldr1 __tmp53773 '() _L51248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L51250_ __tmp53772))))
                                        (declare (not safe))
                                        (cons __tmp53774 __tmp53771))))
                                 (declare (not safe))
                                 (cons __tmp53770 '()))))
                          (declare (not safe))
                          (cons _L51251_ __tmp53769))))
                   (declare (not safe))
                   (cons _L51252_ __tmp53768)))))
          (let* ((___match5358253583_
                  (lambda (_e5116051188_
                           _hd5115951192_
                           _tl5115851195_
                           _e5116351198_
                           _hd5116251202_
                           _tl5116151205_
                           _e5116651208_
                           _hd5116551212_
                           _tl5116451215_
                           ___splice5353453535_
                           _target5116751218_
                           _tl5116951221_)
                    (letrec ((_loop5117051224_
                              (lambda (_hd5116851228_ _body5117451231_)
                                (if (gx#stx-pair? _hd5116851228_)
                                    (let ((_e5117151234_
                                           (gx#syntax-e _hd5116851228_)))
                                      (let ((_lp-tl5117351241_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5117151234_)))
                                            (_lp-hd5117251238_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5117151234_))))
                                        (_loop5117051224_
                                         _lp-tl5117351241_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd5117251238_
                                                 _body5117451231_)))))
                                    (let ((_body5117551244_
                                           (reverse _body5117451231_)))
                                      (let ((_L51248_ _body5117551244_)
                                            (_L51250_ _tl5116451215_)
                                            (_L51251_ _hd5116551212_)
                                            (_L51252_ _hd5115951192_))
                                        (if (gx#identifier? _L51251_)
                                            (___kont5353253533_
                                             _L51248_
                                             _L51250_
                                             _L51251_
                                             _L51252_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5114151181_)))))))))
                      (_loop5117051224_ _target5116751218_ '()))))
                 (___match5355653557_
                  (lambda (_e5114751289_
                           _hd5114651293_
                           _tl5114551296_
                           _e5115051299_
                           _hd5114951303_
                           _tl5114851306_
                           _e5115351309_
                           _hd5115251313_
                           _tl5115151316_)
                    (let ((_L51319_ _hd5115251313_) (_L51321_ _hd5114951303_))
                      (if (gx#identifier? _L51321_)
                          (___kont5353053531_ _L51319_ _L51321_)
                          (if (gx#stx-pair? _hd5114951303_)
                              (let ((_e5116651208_
                                     (gx#syntax-e _hd5114951303_)))
                                (let ((_tl5116451215_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5116651208_)))
                                      (_hd5116551212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5116651208_))))
                                  (if (gx#stx-pair/null? _tl5114851306_)
                                      (let ((___splice5353453535_
                                             (gx#syntax-split-splice
                                              _tl5114851306_
                                              '0)))
                                        (let ((_tl5116951221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5353453535_
                                                  '1)))
                                              (_target5116751218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5353453535_
                                                  '0))))
                                          (if (gx#stx-null? _tl5116951221_)
                                              (___match5358253583_
                                               _e5114751289_
                                               _hd5114651293_
                                               _tl5114551296_
                                               _e5115051299_
                                               _hd5114951303_
                                               _tl5114851306_
                                               _e5116651208_
                                               _hd5116551212_
                                               _tl5116451215_
                                               ___splice5353453535_
                                               _target5116751218_
                                               _tl5116951221_)
                                              (let ()
                                                (declare (not safe))
                                                (_g5114151181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g5114151181_)))))
                              (let ()
                                (declare (not safe))
                                (_g5114151181_))))))))
            (if (gx#stx-pair? ___stx5352753528_)
                (let ((_e5114751289_ (gx#syntax-e ___stx5352753528_)))
                  (let ((_tl5114551296_
                         (let () (declare (not safe)) (##cdr _e5114751289_)))
                        (_hd5114651293_
                         (let () (declare (not safe)) (##car _e5114751289_))))
                    (if (gx#stx-pair? _tl5114551296_)
                        (let ((_e5115051299_ (gx#syntax-e _tl5114551296_)))
                          (let ((_tl5114851306_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5115051299_)))
                                (_hd5114951303_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5115051299_))))
                            (if (gx#stx-pair? _tl5114851306_)
                                (let ((_e5115351309_
                                       (gx#syntax-e _tl5114851306_)))
                                  (let ((_tl5115151316_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5115351309_)))
                                        (_hd5115251313_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5115351309_))))
                                    (if (gx#stx-null? _tl5115151316_)
                                        (___match5355653557_
                                         _e5114751289_
                                         _hd5114651293_
                                         _tl5114551296_
                                         _e5115051299_
                                         _hd5114951303_
                                         _tl5114851306_
                                         _e5115351309_
                                         _hd5115251313_
                                         _tl5115151316_)
                                        (if (gx#stx-pair? _hd5114951303_)
                                            (let ((_e5116651208_
                                                   (gx#syntax-e
                                                    _hd5114951303_)))
                                              (let ((_tl5116451215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5116651208_)))
                                                    (_hd5116551212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5116651208_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5114851306_)
                                                    (let ((___splice5353453535_
                                                           (gx#syntax-split-splice
                                                            _tl5114851306_
                                                            '0)))
                                                      (let ((_tl5116951221_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5353453535_ '1)))
                    (_target5116751218_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5353453535_ '0))))
                (if (gx#stx-null? _tl5116951221_)
                    (___match5358253583_
                     _e5114751289_
                     _hd5114651293_
                     _tl5114551296_
                     _e5115051299_
                     _hd5114951303_
                     _tl5114851306_
                     _e5116651208_
                     _hd5116551212_
                     _tl5116451215_
                     ___splice5353453535_
                     _target5116751218_
                     _tl5116951221_)
                    (let () (declare (not safe)) (_g5114151181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5114151181_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5114151181_))))))
                                (if (gx#stx-pair? _hd5114951303_)
                                    (let ((_e5116651208_
                                           (gx#syntax-e _hd5114951303_)))
                                      (let ((_tl5116451215_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5116651208_)))
                                            (_hd5116551212_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5116651208_))))
                                        (if (gx#stx-pair/null? _tl5114851306_)
                                            (let ((___splice5353453535_
                                                   (gx#syntax-split-splice
                                                    _tl5114851306_
                                                    '0)))
                                              (let ((_tl5116951221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5353453535_
                                                        '1)))
                                                    (_target5116751218_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5353453535_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl5116951221_)
                                                    (___match5358253583_
                                                     _e5114751289_
                                                     _hd5114651293_
                                                     _tl5114551296_
                                                     _e5115051299_
                                                     _hd5114951303_
                                                     _tl5114851306_
                                                     _e5116651208_
                                                     _hd5116551212_
                                                     _tl5116451215_
                                                     ___splice5353453535_
                                                     _target5116751218_
                                                     _tl5116951221_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5114151181_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5114151181_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g5114151181_))))))
                        (let () (declare (not safe)) (_g5114151181_)))))
                (let () (declare (not safe)) (_g5114151181_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_$stx51341_)
      (let* ((___stx5358553586_ _$stx51341_)
             (_g5134651386_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5358553586_))))
        (let ((___kont5358853589_
               (lambda (_L51524_ _L51526_)
                 (let ((__tmp53780 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp53775
                        (let ((__tmp53776
                               (let ((__tmp53777
                                      (let ((__tmp53779
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp53778
                                             (let ()
                                               (declare (not safe))
                                               (cons _L51524_ '()))))
                                        (declare (not safe))
                                        (cons __tmp53779 __tmp53778))))
                                 (declare (not safe))
                                 (cons __tmp53777 '()))))
                          (declare (not safe))
                          (cons _L51526_ __tmp53776))))
                   (declare (not safe))
                   (cons __tmp53780 __tmp53775))))
              (___kont5359053591_
               (lambda (_L51453_ _L51455_ _L51456_ _L51457_)
                 (let ((__tmp53781
                        (let ((__tmp53782
                               (let ((__tmp53783
                                      (let ((__tmp53787
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp53784
                                             (let ((__tmp53785
                                                    (let ((__tmp53786
                                                           (lambda (_g5147851481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g5147951484_)
                     (let ()
                       (declare (not safe))
                       (cons _g5147851481_ _g5147951484_)))))
              (declare (not safe))
              (foldr1 __tmp53786 '() _L51453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L51455_ __tmp53785))))
                                        (declare (not safe))
                                        (cons __tmp53787 __tmp53784))))
                                 (declare (not safe))
                                 (cons __tmp53783 '()))))
                          (declare (not safe))
                          (cons _L51456_ __tmp53782))))
                   (declare (not safe))
                   (cons _L51457_ __tmp53781)))))
          (let* ((___match5364053641_
                  (lambda (_e5136551393_
                           _hd5136451397_
                           _tl5136351400_
                           _e5136851403_
                           _hd5136751407_
                           _tl5136651410_
                           _e5137151413_
                           _hd5137051417_
                           _tl5136951420_
                           ___splice5359253593_
                           _target5137251423_
                           _tl5137451426_)
                    (letrec ((_loop5137551429_
                              (lambda (_hd5137351433_ _body5137951436_)
                                (if (gx#stx-pair? _hd5137351433_)
                                    (let ((_e5137651439_
                                           (gx#syntax-e _hd5137351433_)))
                                      (let ((_lp-tl5137851446_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5137651439_)))
                                            (_lp-hd5137751443_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5137651439_))))
                                        (_loop5137551429_
                                         _lp-tl5137851446_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd5137751443_
                                                 _body5137951436_)))))
                                    (let ((_body5138051449_
                                           (reverse _body5137951436_)))
                                      (let ((_L51453_ _body5138051449_)
                                            (_L51455_ _tl5136951420_)
                                            (_L51456_ _hd5137051417_)
                                            (_L51457_ _hd5136451397_))
                                        (if (gx#identifier? _L51456_)
                                            (___kont5359053591_
                                             _L51453_
                                             _L51455_
                                             _L51456_
                                             _L51457_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5134651386_)))))))))
                      (_loop5137551429_ _target5137251423_ '()))))
                 (___match5361453615_
                  (lambda (_e5135251494_
                           _hd5135151498_
                           _tl5135051501_
                           _e5135551504_
                           _hd5135451508_
                           _tl5135351511_
                           _e5135851514_
                           _hd5135751518_
                           _tl5135651521_)
                    (let ((_L51524_ _hd5135751518_) (_L51526_ _hd5135451508_))
                      (if (gx#identifier? _L51526_)
                          (___kont5358853589_ _L51524_ _L51526_)
                          (if (gx#stx-pair? _hd5135451508_)
                              (let ((_e5137151413_
                                     (gx#syntax-e _hd5135451508_)))
                                (let ((_tl5136951420_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5137151413_)))
                                      (_hd5137051417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5137151413_))))
                                  (if (gx#stx-pair/null? _tl5135351511_)
                                      (let ((___splice5359253593_
                                             (gx#syntax-split-splice
                                              _tl5135351511_
                                              '0)))
                                        (let ((_tl5137451426_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5359253593_
                                                  '1)))
                                              (_target5137251423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5359253593_
                                                  '0))))
                                          (if (gx#stx-null? _tl5137451426_)
                                              (___match5364053641_
                                               _e5135251494_
                                               _hd5135151498_
                                               _tl5135051501_
                                               _e5135551504_
                                               _hd5135451508_
                                               _tl5135351511_
                                               _e5137151413_
                                               _hd5137051417_
                                               _tl5136951420_
                                               ___splice5359253593_
                                               _target5137251423_
                                               _tl5137451426_)
                                              (let ()
                                                (declare (not safe))
                                                (_g5134651386_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g5134651386_)))))
                              (let ()
                                (declare (not safe))
                                (_g5134651386_))))))))
            (if (gx#stx-pair? ___stx5358553586_)
                (let ((_e5135251494_ (gx#syntax-e ___stx5358553586_)))
                  (let ((_tl5135051501_
                         (let () (declare (not safe)) (##cdr _e5135251494_)))
                        (_hd5135151498_
                         (let () (declare (not safe)) (##car _e5135251494_))))
                    (if (gx#stx-pair? _tl5135051501_)
                        (let ((_e5135551504_ (gx#syntax-e _tl5135051501_)))
                          (let ((_tl5135351511_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5135551504_)))
                                (_hd5135451508_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5135551504_))))
                            (if (gx#stx-pair? _tl5135351511_)
                                (let ((_e5135851514_
                                       (gx#syntax-e _tl5135351511_)))
                                  (let ((_tl5135651521_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5135851514_)))
                                        (_hd5135751518_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5135851514_))))
                                    (if (gx#stx-null? _tl5135651521_)
                                        (___match5361453615_
                                         _e5135251494_
                                         _hd5135151498_
                                         _tl5135051501_
                                         _e5135551504_
                                         _hd5135451508_
                                         _tl5135351511_
                                         _e5135851514_
                                         _hd5135751518_
                                         _tl5135651521_)
                                        (if (gx#stx-pair? _hd5135451508_)
                                            (let ((_e5137151413_
                                                   (gx#syntax-e
                                                    _hd5135451508_)))
                                              (let ((_tl5136951420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5137151413_)))
                                                    (_hd5137051417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5137151413_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5135351511_)
                                                    (let ((___splice5359253593_
                                                           (gx#syntax-split-splice
                                                            _tl5135351511_
                                                            '0)))
                                                      (let ((_tl5137451426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5359253593_ '1)))
                    (_target5137251423_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5359253593_ '0))))
                (if (gx#stx-null? _tl5137451426_)
                    (___match5364053641_
                     _e5135251494_
                     _hd5135151498_
                     _tl5135051501_
                     _e5135551504_
                     _hd5135451508_
                     _tl5135351511_
                     _e5137151413_
                     _hd5137051417_
                     _tl5136951420_
                     ___splice5359253593_
                     _target5137251423_
                     _tl5137451426_)
                    (let () (declare (not safe)) (_g5134651386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5134651386_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5134651386_))))))
                                (if (gx#stx-pair? _hd5135451508_)
                                    (let ((_e5137151413_
                                           (gx#syntax-e _hd5135451508_)))
                                      (let ((_tl5136951420_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5137151413_)))
                                            (_hd5137051417_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5137151413_))))
                                        (if (gx#stx-pair/null? _tl5135351511_)
                                            (let ((___splice5359253593_
                                                   (gx#syntax-split-splice
                                                    _tl5135351511_
                                                    '0)))
                                              (let ((_tl5137451426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5359253593_
                                                        '1)))
                                                    (_target5137251423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5359253593_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl5137451426_)
                                                    (___match5364053641_
                                                     _e5135251494_
                                                     _hd5135151498_
                                                     _tl5135051501_
                                                     _e5135551504_
                                                     _hd5135451508_
                                                     _tl5135351511_
                                                     _e5137151413_
                                                     _hd5137051417_
                                                     _tl5136951420_
                                                     ___splice5359253593_
                                                     _target5137251423_
                                                     _tl5137451426_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5134651386_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5134651386_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g5134651386_))))))
                        (let () (declare (not safe)) (_g5134651386_)))))
                (let () (declare (not safe)) (_g5134651386_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx51546_)
       (let* ((_g5154951569_
               (lambda (_g5155051565_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5155051565_)))
              (_g5154851640_
               (lambda (_g5155051573_)
                 (if (gx#stx-pair? _g5155051573_)
                     (let ((_e5155451576_ (gx#syntax-e _g5155051573_)))
                       (let ((_hd5155351580_
                              (let ()
                                (declare (not safe))
                                (##car _e5155451576_)))
                             (_tl5155251583_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5155451576_))))
                         (if (gx#stx-pair/null? _tl5155251583_)
                             (let ((_g53788_
                                    (gx#syntax-split-splice
                                     _tl5155251583_
                                     '0)))
                               (begin
                                 (let ((_g53789_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53788_)
                                              (##vector-length _g53788_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53789_ 2)))
                                       (error "Context expects 2 values"
                                              _g53789_)))
                                 (let ((_target5155551586_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53788_ 0)))
                                       (_tl5155751589_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53788_ 1))))
                                   (if (gx#stx-null? _tl5155751589_)
                                       (letrec ((_loop5155851592_
                                                 (lambda (_hd5155651596_
                                                          _body5156251599_)
                                                   (if (gx#stx-pair?
                                                        _hd5155651596_)
                                                       (let ((_e5155951602_
                                                              (gx#syntax-e
                                                               _hd5155651596_)))
                                                         (let ((_lp-hd5156051606_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e5155951602_)))
                       (_lp-tl5156151609_
                        (let () (declare (not safe)) (##cdr _e5155951602_))))
                   (_loop5155851592_
                    _lp-tl5156151609_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd5156051606_ _body5156251599_)))))
               (let ((_body5156351612_ (reverse _body5156251599_)))
                 ((lambda (_L51616_)
                    (let ((__tmp53790
                           (let ((__tmp53791
                                  (let ((__tmp53792
                                         (lambda (_g5163151634_ _g5163251637_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g5163151634_
                                                   _g5163251637_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp53792 '() _L51616_))))
                             (declare (not safe))
                             (cons '1 __tmp53791))))
                      (declare (not safe))
                      (cons 'phi: __tmp53790)))
                  _body5156351612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop5155851592_
                                          _target5155551586_
                                          '()))
                                       (_g5154951569_ _g5155051573_)))))
                             (_g5154951569_ _g5155051573_))))
                     (_g5154951569_ _g5155051573_)))))
         (_g5154851640_ _stx51546_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx51645_)
       (let* ((_g5164851668_
               (lambda (_g5164951664_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5164951664_)))
              (_g5164751739_
               (lambda (_g5164951672_)
                 (if (gx#stx-pair? _g5164951672_)
                     (let ((_e5165351675_ (gx#syntax-e _g5164951672_)))
                       (let ((_hd5165251679_
                              (let ()
                                (declare (not safe))
                                (##car _e5165351675_)))
                             (_tl5165151682_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5165351675_))))
                         (if (gx#stx-pair/null? _tl5165151682_)
                             (let ((_g53793_
                                    (gx#syntax-split-splice
                                     _tl5165151682_
                                     '0)))
                               (begin
                                 (let ((_g53794_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53793_)
                                              (##vector-length _g53793_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53794_ 2)))
                                       (error "Context expects 2 values"
                                              _g53794_)))
                                 (let ((_target5165451685_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53793_ 0)))
                                       (_tl5165651688_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g53793_ 1))))
                                   (if (gx#stx-null? _tl5165651688_)
                                       (letrec ((_loop5165751691_
                                                 (lambda (_hd5165551695_
                                                          _body5166151698_)
                                                   (if (gx#stx-pair?
                                                        _hd5165551695_)
                                                       (let ((_e5165851701_
                                                              (gx#syntax-e
                                                               _hd5165551695_)))
                                                         (let ((_lp-hd5165951705_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e5165851701_)))
                       (_lp-tl5166051708_
                        (let () (declare (not safe)) (##cdr _e5165851701_))))
                   (_loop5165751691_
                    _lp-tl5166051708_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd5165951705_ _body5166151698_)))))
               (let ((_body5166251711_ (reverse _body5166151698_)))
                 ((lambda (_L51715_)
                    (let ((__tmp53795
                           (let ((__tmp53796
                                  (let ((__tmp53797
                                         (lambda (_g5173051733_ _g5173151736_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g5173051733_
                                                   _g5173151736_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp53797 '() _L51715_))))
                             (declare (not safe))
                             (cons '-1 __tmp53796))))
                      (declare (not safe))
                      (cons 'phi: __tmp53795)))
                  _body5166251711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop5165751691_
                                          _target5165451685_
                                          '()))
                                       (_g5164851668_ _g5164951672_)))))
                             (_g5164851668_ _g5164951672_))))
                     (_g5164851668_ _g5164951672_)))))
         (_g5164751739_ _stx51645_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx51744_)
       (let* ((_g5174751771_
               (lambda (_g5174851767_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5174851767_)))
              (_g5174651893_
               (lambda (_g5174851775_)
                 (if (gx#stx-pair? _g5174851775_)
                     (let ((_e5175351778_ (gx#syntax-e _g5174851775_)))
                       (let ((_hd5175251782_
                              (let ()
                                (declare (not safe))
                                (##car _e5175351778_)))
                             (_tl5175151785_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5175351778_))))
                         (if (gx#stx-pair? _tl5175151785_)
                             (let ((_e5175651788_
                                    (gx#syntax-e _tl5175151785_)))
                               (let ((_hd5175551792_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5175651788_)))
                                     (_tl5175451795_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5175651788_))))
                                 (if (gx#stx-pair/null? _tl5175451795_)
                                     (let ((_g53798_
                                            (gx#syntax-split-splice
                                             _tl5175451795_
                                             '0)))
                                       (begin
                                         (let ((_g53799_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53798_)
                                                      (##vector-length
                                                       _g53798_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53799_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53799_)))
                                         (let ((_target5175751798_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53798_ 0)))
                                               (_tl5175951801_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53798_ 1))))
                                           (if (gx#stx-null? _tl5175951801_)
                                               (letrec ((_loop5176051804_
                                                         (lambda (_hd5175851808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id5176451811_)
                   (if (gx#stx-pair? _hd5175851808_)
                       (let ((_e5176151814_ (gx#syntax-e _hd5175851808_)))
                         (let ((_lp-hd5176251818_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5176151814_)))
                               (_lp-tl5176351821_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5176151814_))))
                           (_loop5176051804_
                            _lp-tl5176351821_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd5176251818_ _id5176451811_)))))
                       (let ((_id5176551824_ (reverse _id5176451811_)))
                         ((lambda (_L51828_ _L51830_)
                            (if (gx#identifier-list?
                                 (let ((__tmp53804
                                        (lambda (_g5184751850_ _g5184851853_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g5184751850_
                                                  _g5184851853_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp53804 '() _L51828_)))
                                (let* ((_keys51864_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp53800
                                                (lambda (_g5185551858_
                                                         _g5185651861_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5185551858_
                                                          _g5185651861_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53800 '() _L51828_))))
                                       (_keytab51875_
                                        (let ((_ht51867_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g5186951871_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht51867_
                                                _g5186951871_
                                                '#t)))
                                           _keys51864_)
                                          _ht51867_))
                                       (_imports51878_
                                        (gx#core-expand-import-source
                                         _L51830_))
                                       (_fold-e51888_
                                        (letrec ((_fold-e51881_
                                                  (lambda (_in51884_ _r51886_)
                                                    (if (gx#module-import?
                                                         _in51884_)
                                                        (if (let ((__tmp53802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in51884_)))
                      (declare (not safe))
                      (hash-get _keytab51875_ __tmp53802))
                    (let () (declare (not safe)) (cons _in51884_ _r51886_))
                    _r51886_)
                (if (gx#import-set? _in51884_)
                    (let ((__tmp53801 (gx#import-set-imports _in51884_)))
                      (declare (not safe))
                      (foldl1 _fold-e51881_ _r51886_ __tmp53801))
                    _r51886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e51881_)))
                                  (let ((__tmp53803
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e51888_
                                                   '()
                                                   _imports51878_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp53803)))
                                (_g5174751771_ _g5174851775_)))
                          _id5176551824_
                          _hd5175551792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop5176051804_
                                                  _target5175751798_
                                                  '()))
                                               (_g5174751771_
                                                _g5174851775_)))))
                                     (_g5174751771_ _g5174851775_))))
                             (_g5174751771_ _g5174851775_))))
                     (_g5174751771_ _g5174851775_)))))
         (_g5174651893_ _stx51744_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx51898_)
       (let* ((_g5190151925_
               (lambda (_g5190251921_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5190251921_)))
              (_g5190052047_
               (lambda (_g5190251929_)
                 (if (gx#stx-pair? _g5190251929_)
                     (let ((_e5190751932_ (gx#syntax-e _g5190251929_)))
                       (let ((_hd5190651936_
                              (let ()
                                (declare (not safe))
                                (##car _e5190751932_)))
                             (_tl5190551939_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5190751932_))))
                         (if (gx#stx-pair? _tl5190551939_)
                             (let ((_e5191051942_
                                    (gx#syntax-e _tl5190551939_)))
                               (let ((_hd5190951946_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5191051942_)))
                                     (_tl5190851949_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5191051942_))))
                                 (if (gx#stx-pair/null? _tl5190851949_)
                                     (let ((_g53805_
                                            (gx#syntax-split-splice
                                             _tl5190851949_
                                             '0)))
                                       (begin
                                         (let ((_g53806_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53805_)
                                                      (##vector-length
                                                       _g53805_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53806_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53806_)))
                                         (let ((_target5191151952_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53805_ 0)))
                                               (_tl5191351955_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53805_ 1))))
                                           (if (gx#stx-null? _tl5191351955_)
                                               (letrec ((_loop5191451958_
                                                         (lambda (_hd5191251962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id5191851965_)
                   (if (gx#stx-pair? _hd5191251962_)
                       (let ((_e5191551968_ (gx#syntax-e _hd5191251962_)))
                         (let ((_lp-hd5191651972_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5191551968_)))
                               (_lp-tl5191751975_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5191551968_))))
                           (_loop5191451958_
                            _lp-tl5191751975_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd5191651972_ _id5191851965_)))))
                       (let ((_id5191951978_ (reverse _id5191851965_)))
                         ((lambda (_L51982_ _L51984_)
                            (if (gx#identifier-list?
                                 (let ((__tmp53811
                                        (lambda (_g5200152004_ _g5200252007_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g5200152004_
                                                  _g5200252007_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp53811 '() _L51982_)))
                                (let* ((_keys52018_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp53807
                                                (lambda (_g5200952012_
                                                         _g5201052015_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5200952012_
                                                          _g5201052015_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53807 '() _L51982_))))
                                       (_keytab52029_
                                        (let ((_ht52021_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g5202352025_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht52021_
                                                _g5202352025_
                                                '#t)))
                                           _keys52018_)
                                          _ht52021_))
                                       (_imports52032_
                                        (gx#core-expand-import-source
                                         _L51984_))
                                       (_fold-e52042_
                                        (letrec ((_fold-e52035_
                                                  (lambda (_in52038_ _r52040_)
                                                    (if (gx#module-import?
                                                         _in52038_)
                                                        (if (let ((__tmp53809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in52038_)))
                      (declare (not safe))
                      (hash-get _keytab52029_ __tmp53809))
                    _r52040_
                    (let () (declare (not safe)) (cons _in52038_ _r52040_)))
                (if (gx#import-set? _in52038_)
                    (let ((__tmp53808 (gx#import-set-imports _in52038_)))
                      (declare (not safe))
                      (foldl1 _fold-e52035_ _r52040_ __tmp53808))
                    (let ()
                      (declare (not safe))
                      (cons _in52038_ _r52040_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e52035_)))
                                  (let ((__tmp53810
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e52042_
                                                   '()
                                                   _imports52032_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp53810)))
                                (_g5190151925_ _g5190251929_)))
                          _id5191951978_
                          _hd5190951946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop5191451958_
                                                  _target5191151952_
                                                  '()))
                                               (_g5190151925_
                                                _g5190251929_)))))
                                     (_g5190151925_ _g5190251929_))))
                             (_g5190151925_ _g5190251929_))))
                     (_g5190151925_ _g5190251929_)))))
         (_g5190052047_ _stx51898_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_in52099_ _rename52101_)
      (gx#make-module-import
       (gx#module-import-source _in52099_)
       _rename52101_
       (gx#module-import-phi _in52099_)
       (gx#module-import-weak? _in52099_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_name52052_ _pre52054_)
      (let* ((_name5205552063_ _name52052_)
             (_else5205752075_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (make-symbol__1 _pre52054_ _name52052_))))
             (_K5205952083_
              (lambda (_mark52079_ _id52081_)
                (let ((__tmp53812
                       (let ()
                         (declare (not safe))
                         (make-symbol__1 _pre52054_ _id52081_))))
                  (declare (not safe))
                  (cons __tmp53812 _mark52079_)))))
        (if (let () (declare (not safe)) (##pair? _name5205552063_))
            (let ((_hd5206052087_
                   (let () (declare (not safe)) (##car _name5205552063_)))
                  (_tl5206152090_
                   (let () (declare (not safe)) (##cdr _name5205552063_))))
              (let* ((_id52093_ _hd5206052087_) (_mark52096_ _tl5206152090_))
                (declare (not safe))
                (_K5205952083_ _mark52096_ _id52093_)))
            (let () (declare (not safe)) (_else5205752075_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx52103_)
       (let* ((_g5210652139_
               (lambda (_g5210752135_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5210752135_)))
              (_g5210552325_
               (lambda (_g5210752143_)
                 (if (gx#stx-pair? _g5210752143_)
                     (let ((_e5211352146_ (gx#syntax-e _g5210752143_)))
                       (let ((_hd5211252150_
                              (let ()
                                (declare (not safe))
                                (##car _e5211352146_)))
                             (_tl5211152153_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5211352146_))))
                         (if (gx#stx-pair? _tl5211152153_)
                             (let ((_e5211652156_
                                    (gx#syntax-e _tl5211152153_)))
                               (let ((_hd5211552160_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5211652156_)))
                                     (_tl5211452163_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5211652156_))))
                                 (if (gx#stx-pair/null? _tl5211452163_)
                                     (let ((_g53813_
                                            (gx#syntax-split-splice
                                             _tl5211452163_
                                             '0)))
                                       (begin
                                         (let ((_g53814_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53813_)
                                                      (##vector-length
                                                       _g53813_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53814_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53814_)))
                                         (let ((_target5211752166_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53813_ 0)))
                                               (_tl5211952169_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53813_ 1))))
                                           (if (gx#stx-null? _tl5211952169_)
                                               (letrec ((_loop5212052172_
                                                         (lambda (_hd5211852176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id5212452179_
                          _id5212552181_)
                   (if (gx#stx-pair? _hd5211852176_)
                       (let ((_e5212152184_ (gx#syntax-e _hd5211852176_)))
                         (let ((_lp-hd5212252188_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5212152184_)))
                               (_lp-tl5212352191_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5212152184_))))
                           (if (gx#stx-pair? _lp-hd5212252188_)
                               (let ((_e5213052194_
                                      (gx#syntax-e _lp-hd5212252188_)))
                                 (let ((_hd5212952198_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e5213052194_)))
                                       (_tl5212852201_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e5213052194_))))
                                   (if (gx#stx-pair? _tl5212852201_)
                                       (let ((_e5213352204_
                                              (gx#syntax-e _tl5212852201_)))
                                         (let ((_hd5213252208_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5213352204_)))
                                               (_tl5213152211_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5213352204_))))
                                           (if (gx#stx-null? _tl5213152211_)
                                               (_loop5212052172_
                                                _lp-tl5212352191_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd5213252208_
                                                        _new-id5212452179_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd5212952198_
                                                        _id5212552181_)))
                                               (_g5210652139_ _g5210752143_))))
                                       (_g5210652139_ _g5210752143_))))
                               (_g5210652139_ _g5210752143_))))
                       (let ((_new-id5212652214_ (reverse _new-id5212452179_))
                             (_id5212752217_ (reverse _id5212552181_)))
                         ((lambda (_L52220_ _L52222_ _L52223_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp53825
                                             (lambda (_g5224152244_
                                                      _g5224252247_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5224152244_
                                                       _g5224252247_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53825 '() _L52222_)))
                                     (gx#identifier-list?
                                      (let ((__tmp53824
                                             (lambda (_g5224952252_
                                                      _g5225052255_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5224952252_
                                                       _g5225052255_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53824 '() _L52220_))))
                                (let* ((_keytab52258_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found52261_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_g53819_
                                        (for-each
                                         (lambda (_id52264_ _new-id52266_)
                                           (let ((__tmp53816
                                                  (gx#core-identifier-key
                                                   _id52264_))
                                                 (__tmp53815
                                                  (gx#core-identifier-key
                                                   _new-id52266_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab52258_
                                              __tmp53816
                                              __tmp53815)))
                                         (let ((__tmp53817
                                                (lambda (_g5226752270_
                                                         _g5226852273_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5226752270_
                                                          _g5226852273_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53817 '() _L52222_))
                                         (let ((__tmp53818
                                                (lambda (_g5227552278_
                                                         _g5227652281_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5227552278_
                                                          _g5227652281_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53818 '() _L52220_))))
                                       (_imports52286_
                                        (gx#core-expand-import-source
                                         _L52223_))
                                       (_fold-e52306_
                                        (letrec ((_fold-e52289_
                                                  (lambda (_in52292_ _r52294_)
                                                    (if (gx#module-import?
                                                         _in52292_)
                                                        (let* ((_name52296_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in52292_))
                       (_$e52299_
                        (let ()
                          (declare (not safe))
                          (hash-get _keytab52258_ _name52296_))))
                  (if _$e52299_
                      ((lambda (_rename52303_)
                         (let ()
                           (declare (not safe))
                           (hash-put! _found52261_ _name52296_ '#t))
                         (let ((__tmp53821
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-import-rename|
                                   _in52292_
                                   _rename52303_))))
                           (declare (not safe))
                           (cons __tmp53821 _r52294_)))
                       _$e52299_)
                      (let () (declare (not safe)) (cons _in52292_ _r52294_))))
                (if (gx#import-set? _in52292_)
                    (let ((__tmp53820 (gx#import-set-imports _in52292_)))
                      (declare (not safe))
                      (foldl1 _fold-e52289_ _r52294_ __tmp53820))
                    (let ()
                      (declare (not safe))
                      (cons _in52292_ _r52294_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e52289_))
                                       (_new-imports52309_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e52306_
                                                  '()
                                                  _imports52286_))))
                                  (for-each
                                   (lambda (_id52314_)
                                     (if (let ((__tmp53822
                                                (gx#core-identifier-key
                                                 _id52314_)))
                                           (declare (not safe))
                                           (hash-get _found52261_ __tmp53822))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx52103_
                                          _id52314_)))
                                   (let ((__tmp53823
                                          (lambda (_g5231652319_ _g5231752322_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g5231652319_
                                                    _g5231752322_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp53823 '() _L52222_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports52309_)))
                                (_g5210652139_ _g5210752143_)))
                          _new-id5212652214_
                          _id5212752217_
                          _hd5211552160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop5212052172_
                                                  _target5211752166_
                                                  '()
                                                  '()))
                                               (_g5210652139_
                                                _g5210752143_)))))
                                     (_g5210652139_ _g5210752143_))))
                             (_g5210652139_ _g5210752143_))))
                     (_g5210652139_ _g5210752143_)))))
         (_g5210552325_ _stx52103_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx52331_)
       (let* ((_g5233452352_
               (lambda (_g5233552348_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5233552348_)))
              (_g5233352431_
               (lambda (_g5233552356_)
                 (if (gx#stx-pair? _g5233552356_)
                     (let ((_e5234052359_ (gx#syntax-e _g5233552356_)))
                       (let ((_hd5233952363_
                              (let ()
                                (declare (not safe))
                                (##car _e5234052359_)))
                             (_tl5233852366_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5234052359_))))
                         (if (gx#stx-pair? _tl5233852366_)
                             (let ((_e5234352369_
                                    (gx#syntax-e _tl5233852366_)))
                               (let ((_hd5234252373_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5234352369_)))
                                     (_tl5234152376_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5234352369_))))
                                 (if (gx#stx-pair? _tl5234152376_)
                                     (let ((_e5234652379_
                                            (gx#syntax-e _tl5234152376_)))
                                       (let ((_hd5234552383_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5234652379_)))
                                             (_tl5234452386_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5234652379_))))
                                         (if (gx#stx-null? _tl5234452386_)
                                             ((lambda (_L52389_ _L52391_)
                                                (if (gx#identifier? _L52389_)
                                                    (let* ((_pre52407_
                                                            (gx#stx-e
                                                             _L52389_))
                                                           (_imports52410_
                                                            (gx#core-expand-import-source
                                                             _L52391_))
                                                           (_rename-e52416_
                                                            (lambda (_name52413_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name52413_
                         _pre52407_))))
                   (_fold-e52426_
                    (letrec ((_fold-e52419_
                              (lambda (_in52422_ _r52424_)
                                (if (gx#module-import? _in52422_)
                                    (let ((__tmp53827
                                           (let ((__tmp53828
                                                  (_rename-e52416_
                                                   (gx#module-import-name
                                                    _in52422_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-import-rename|
                                              _in52422_
                                              __tmp53828))))
                                      (declare (not safe))
                                      (cons __tmp53827 _r52424_))
                                    (if (gx#import-set? _in52422_)
                                        (let ((__tmp53826
                                               (gx#import-set-imports
                                                _in52422_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e52419_
                                                  _r52424_
                                                  __tmp53826))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in52422_ _r52424_)))))))
                      _fold-e52419_)))
              (let ((__tmp53829
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e52426_ '() _imports52410_))))
                (declare (not safe))
                (cons 'begin: __tmp53829)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5233452352_
                                                     _g5233552356_)))
                                              _hd5234552383_
                                              _hd5234252373_)
                                             (_g5233452352_ _g5233552356_))))
                                     (_g5233452352_ _g5233552356_))))
                             (_g5233452352_ _g5233552356_))))
                     (_g5233452352_ _g5233552356_)))))
         (_g5233352431_ _stx52331_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx52435_)
       (letrec ((_flatten52438_
                 (lambda (_list-of-lists52693_)
                   (let ((__tmp53830
                          (lambda (_v52696_ _acc52698_)
                            (if (let () (declare (not safe)) (null? _v52696_))
                                _acc52698_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v52696_))
                                    (append (_flatten52438_ _v52696_)
                                            _acc52698_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v52696_ _acc52698_)))))))
                     (declare (not safe))
                     (foldr1 __tmp53830 '() _list-of-lists52693_))))
                (_expand-path52440_
                 (lambda (_top52561_ _mod52563_)
                   (let* ((___stx5364353644_ _mod52563_)
                          (_g5256652588_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx5364353644_))))
                     (let ((___kont5364653647_
                            (lambda (_L52656_ _L52658_)
                              (map (lambda (_mod52673_)
                                     (gx#stx-identifier
                                      _top52561_
                                      _top52561_
                                      '"/"
                                      _mod52673_))
                                   (_flatten52438_
                                    (map (lambda (_g5267552677_)
                                           (_expand-path52440_
                                            _L52658_
                                            _g5267552677_))
                                         (let ((__tmp53831
                                                (lambda (_g5268052683_
                                                         _g5268152686_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5268052683_
                                                          _g5268152686_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53831
                                                   '()
                                                   _L52656_)))))))
                           (___kont5365053651_
                            (lambda (_L52595_)
                              (gx#stx-identifier
                               _top52561_
                               _top52561_
                               '"/"
                               _L52595_))))
                       (let* ((_g5256552609_
                               (lambda ()
                                 (let ((_L52595_ ___stx5364353644_))
                                   (if (or (gx#identifier? _L52595_)
                                           (gx#stx-fixnum? _L52595_))
                                       (___kont5365053651_ _L52595_)
                                       (let ()
                                         (declare (not safe))
                                         (_g5256652588_))))))
                              (___match5366653667_
                               (lambda (_e5257252616_
                                        _hd5257152620_
                                        _tl5257052623_
                                        ___splice5364853649_
                                        _target5257352626_
                                        _tl5257552629_)
                                 (letrec ((_loop5257652632_
                                           (lambda (_hd5257452636_
                                                    _mod5258052639_)
                                             (if (gx#stx-pair? _hd5257452636_)
                                                 (let ((_e5257752642_
                                                        (gx#syntax-e
                                                         _hd5257452636_)))
                                                   (let ((_lp-tl5257952649_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5257752642_)))
                                                         (_lp-hd5257852646_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5257752642_))))
                                                     (_loop5257652632_
                                                      _lp-tl5257952649_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd5257852646_
                                                              _mod5258052639_)))))
                                                 (let ((_mod5258152652_
                                                        (reverse _mod5258052639_)))
                                                   (___kont5364653647_
                                                    _mod5258152652_
                                                    _hd5257152620_))))))
                                   (_loop5257652632_
                                    _target5257352626_
                                    '())))))
                         (if (gx#stx-pair? ___stx5364353644_)
                             (let ((_e5257252616_
                                    (gx#syntax-e ___stx5364353644_)))
                               (let ((_tl5257052623_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5257252616_)))
                                     (_hd5257152620_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5257252616_))))
                                 (if (gx#stx-pair/null? _tl5257052623_)
                                     (let ((___splice5364853649_
                                            (gx#syntax-split-splice
                                             _tl5257052623_
                                             '0)))
                                       (let ((_tl5257552629_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5364853649_
                                                 '1)))
                                             (_target5257352626_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5364853649_
                                                 '0))))
                                         (if (gx#stx-null? _tl5257552629_)
                                             (___match5366653667_
                                              _e5257252616_
                                              _hd5257152620_
                                              _tl5257052623_
                                              ___splice5364853649_
                                              _target5257352626_
                                              _tl5257552629_)
                                             (let ()
                                               (declare (not safe))
                                               (_g5256552609_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g5256552609_)))))
                             (let ()
                               (declare (not safe))
                               (_g5256552609_)))))))))
         (let* ((_g5244252466_
                 (lambda (_g5244352462_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g5244352462_)))
                (_g5244152557_
                 (lambda (_g5244352470_)
                   (if (gx#stx-pair? _g5244352470_)
                       (let ((_e5244852473_ (gx#syntax-e _g5244352470_)))
                         (let ((_hd5244752477_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5244852473_)))
                               (_tl5244652480_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5244852473_))))
                           (if (gx#stx-pair? _tl5244652480_)
                               (let ((_e5245152483_
                                      (gx#syntax-e _tl5244652480_)))
                                 (let ((_hd5245052487_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e5245152483_)))
                                       (_tl5244952490_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e5245152483_))))
                                   (if (gx#stx-pair/null? _tl5244952490_)
                                       (let ((_g53832_
                                              (gx#syntax-split-splice
                                               _tl5244952490_
                                               '0)))
                                         (begin
                                           (let ((_g53833_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g53832_)
                                                        (##vector-length
                                                         _g53832_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g53833_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g53833_)))
                                           (let ((_target5245252493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g53832_ 0)))
                                                 (_tl5245452496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g53832_
                                                     1))))
                                             (if (gx#stx-null? _tl5245452496_)
                                                 (letrec ((_loop5245552499_
                                                           (lambda (_hd5245352503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod5245952506_)
                     (if (gx#stx-pair? _hd5245352503_)
                         (let ((_e5245652509_ (gx#syntax-e _hd5245352503_)))
                           (let ((_lp-hd5245752513_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5245652509_)))
                                 (_lp-tl5245852516_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5245652509_))))
                             (_loop5245552499_
                              _lp-tl5245852516_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd5245752513_ _mod5245952506_)))))
                         (let ((_mod5246052519_ (reverse _mod5245952506_)))
                           ((lambda (_L52523_ _L52525_)
                              (let ((__tmp53834
                                     (_flatten52438_
                                      (map (lambda (_g5254352545_)
                                             (_expand-path52440_
                                              _L52525_
                                              _g5254352545_))
                                           (let ((__tmp53835
                                                  (lambda (_g5254852551_
                                                           _g5254952554_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g5254852551_
                                                            _g5254952554_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp53835
                                                     '()
                                                     _L52523_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp53834)))
                            _mod5246052519_
                            _hd5245052487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop5245552499_
                                                    _target5245252493_
                                                    '()))
                                                 (_g5244252466_
                                                  _g5244352470_)))))
                                       (_g5244252466_ _g5244352470_))))
                               (_g5244252466_ _g5244352470_))))
                       (_g5244252466_ _g5244352470_)))))
           (_g5244152557_ _stx52435_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx52702_)
       (let* ((_g5270552729_
               (lambda (_g5270652725_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5270652725_)))
              (_g5270452851_
               (lambda (_g5270652733_)
                 (if (gx#stx-pair? _g5270652733_)
                     (let ((_e5271152736_ (gx#syntax-e _g5270652733_)))
                       (let ((_hd5271052740_
                              (let ()
                                (declare (not safe))
                                (##car _e5271152736_)))
                             (_tl5270952743_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5271152736_))))
                         (if (gx#stx-pair? _tl5270952743_)
                             (let ((_e5271452746_
                                    (gx#syntax-e _tl5270952743_)))
                               (let ((_hd5271352750_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5271452746_)))
                                     (_tl5271252753_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5271452746_))))
                                 (if (gx#stx-pair/null? _tl5271252753_)
                                     (let ((_g53836_
                                            (gx#syntax-split-splice
                                             _tl5271252753_
                                             '0)))
                                       (begin
                                         (let ((_g53837_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53836_)
                                                      (##vector-length
                                                       _g53836_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53837_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53837_)))
                                         (let ((_target5271552756_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53836_ 0)))
                                               (_tl5271752759_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53836_ 1))))
                                           (if (gx#stx-null? _tl5271752759_)
                                               (letrec ((_loop5271852762_
                                                         (lambda (_hd5271652766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id5272252769_)
                   (if (gx#stx-pair? _hd5271652766_)
                       (let ((_e5271952772_ (gx#syntax-e _hd5271652766_)))
                         (let ((_lp-hd5272052776_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5271952772_)))
                               (_lp-tl5272152779_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5271952772_))))
                           (_loop5271852762_
                            _lp-tl5272152779_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd5272052776_ _id5272252769_)))))
                       (let ((_id5272352782_ (reverse _id5272252769_)))
                         ((lambda (_L52786_ _L52788_)
                            (if (gx#identifier-list?
                                 (let ((__tmp53842
                                        (lambda (_g5280552808_ _g5280652811_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g5280552808_
                                                  _g5280652811_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp53842 '() _L52786_)))
                                (let* ((_keys52822_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp53838
                                                (lambda (_g5281352816_
                                                         _g5281452819_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5281352816_
                                                          _g5281452819_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53838 '() _L52786_))))
                                       (_keytab52833_
                                        (let ((_ht52825_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-hash-table))))
                                          (for-each
                                           (lambda (_g5282752829_)
                                             (let ()
                                               (declare (not safe))
                                               (hash-put!
                                                _ht52825_
                                                _g5282752829_
                                                '#t)))
                                           _keys52822_)
                                          _ht52825_))
                                       (_exports52836_
                                        (gx#core-expand-export-source
                                         _L52788_))
                                       (_fold-e52846_
                                        (letrec ((_fold-e52839_
                                                  (lambda (_out52842_ _r52844_)
                                                    (if (gx#module-export?
                                                         _out52842_)
                                                        (if (let ((__tmp53840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out52842_)))
                      (declare (not safe))
                      (hash-get _keytab52833_ __tmp53840))
                    _r52844_
                    (let () (declare (not safe)) (cons _out52842_ _r52844_)))
                (if (gx#export-set? _out52842_)
                    (let ((__tmp53839 (gx#export-set-exports _out52842_)))
                      (declare (not safe))
                      (foldl1 _fold-e52839_ _r52844_ __tmp53839))
                    _r52844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e52839_)))
                                  (let ((__tmp53841
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e52846_
                                                   '()
                                                   _exports52836_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp53841)))
                                (_g5270552729_ _g5270652733_)))
                          _id5272352782_
                          _hd5271352750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop5271852762_
                                                  _target5271552756_
                                                  '()))
                                               (_g5270552729_
                                                _g5270652733_)))))
                                     (_g5270552729_ _g5270652733_))))
                             (_g5270552729_ _g5270652733_))))
                     (_g5270552729_ _g5270652733_)))))
         (_g5270452851_ _stx52702_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_out52856_ _rename52858_)
      (gx#make-module-export
       (gx#module-export-context _out52856_)
       (gx#module-export-key _out52856_)
       (gx#module-export-phi _out52856_)
       _rename52858_
       (gx#module-export-weak? _out52856_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx52860_)
       (let* ((_g5286352896_
               (lambda (_g5286452892_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5286452892_)))
              (_g5286253082_
               (lambda (_g5286452900_)
                 (if (gx#stx-pair? _g5286452900_)
                     (let ((_e5287052903_ (gx#syntax-e _g5286452900_)))
                       (let ((_hd5286952907_
                              (let ()
                                (declare (not safe))
                                (##car _e5287052903_)))
                             (_tl5286852910_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5287052903_))))
                         (if (gx#stx-pair? _tl5286852910_)
                             (let ((_e5287352913_
                                    (gx#syntax-e _tl5286852910_)))
                               (let ((_hd5287252917_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5287352913_)))
                                     (_tl5287152920_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5287352913_))))
                                 (if (gx#stx-pair/null? _tl5287152920_)
                                     (let ((_g53843_
                                            (gx#syntax-split-splice
                                             _tl5287152920_
                                             '0)))
                                       (begin
                                         (let ((_g53844_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53843_)
                                                      (##vector-length
                                                       _g53843_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53844_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53844_)))
                                         (let ((_target5287452923_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53843_ 0)))
                                               (_tl5287652926_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g53843_ 1))))
                                           (if (gx#stx-null? _tl5287652926_)
                                               (letrec ((_loop5287752929_
                                                         (lambda (_hd5287552933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id5288152936_
                          _id5288252938_)
                   (if (gx#stx-pair? _hd5287552933_)
                       (let ((_e5287852941_ (gx#syntax-e _hd5287552933_)))
                         (let ((_lp-hd5287952945_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5287852941_)))
                               (_lp-tl5288052948_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5287852941_))))
                           (if (gx#stx-pair? _lp-hd5287952945_)
                               (let ((_e5288752951_
                                      (gx#syntax-e _lp-hd5287952945_)))
                                 (let ((_hd5288652955_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e5288752951_)))
                                       (_tl5288552958_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e5288752951_))))
                                   (if (gx#stx-pair? _tl5288552958_)
                                       (let ((_e5289052961_
                                              (gx#syntax-e _tl5288552958_)))
                                         (let ((_hd5288952965_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5289052961_)))
                                               (_tl5288852968_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5289052961_))))
                                           (if (gx#stx-null? _tl5288852968_)
                                               (_loop5287752929_
                                                _lp-tl5288052948_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd5288952965_
                                                        _new-id5288152936_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd5288652955_
                                                        _id5288252938_)))
                                               (_g5286352896_ _g5286452900_))))
                                       (_g5286352896_ _g5286452900_))))
                               (_g5286352896_ _g5286452900_))))
                       (let ((_new-id5288352971_ (reverse _new-id5288152936_))
                             (_id5288452974_ (reverse _id5288252938_)))
                         ((lambda (_L52977_ _L52979_ _L52980_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp53855
                                             (lambda (_g5299853001_
                                                      _g5299953004_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5299853001_
                                                       _g5299953004_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53855 '() _L52979_)))
                                     (gx#identifier-list?
                                      (let ((__tmp53854
                                             (lambda (_g5300653009_
                                                      _g5300753012_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5300653009_
                                                       _g5300753012_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp53854 '() _L52977_))))
                                (let* ((_keytab53015_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_found53018_
                                        (let ()
                                          (declare (not safe))
                                          (make-hash-table)))
                                       (_g53849_
                                        (for-each
                                         (lambda (_id53021_ _new-id53023_)
                                           (let ((__tmp53846
                                                  (gx#core-identifier-key
                                                   _id53021_))
                                                 (__tmp53845
                                                  (gx#core-identifier-key
                                                   _new-id53023_)))
                                             (declare (not safe))
                                             (hash-put!
                                              _keytab53015_
                                              __tmp53846
                                              __tmp53845)))
                                         (let ((__tmp53847
                                                (lambda (_g5302453027_
                                                         _g5302553030_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5302453027_
                                                          _g5302553030_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53847 '() _L52979_))
                                         (let ((__tmp53848
                                                (lambda (_g5303253035_
                                                         _g5303353038_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5303253035_
                                                          _g5303353038_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp53848 '() _L52977_))))
                                       (_exports53043_
                                        (gx#core-expand-export-source
                                         _L52980_))
                                       (_fold-e53063_
                                        (letrec ((_fold-e53046_
                                                  (lambda (_out53049_ _r53051_)
                                                    (if (gx#module-export?
                                                         _out53049_)
                                                        (let* ((_name53053_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out53049_))
                       (_$e53056_
                        (let ()
                          (declare (not safe))
                          (hash-get _keytab53015_ _name53053_))))
                  (if _$e53056_
                      ((lambda (_rename53060_)
                         (let ()
                           (declare (not safe))
                           (hash-put! _found53018_ _name53053_ '#t))
                         (let ((__tmp53851
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-export-rename|
                                   _out53049_
                                   _rename53060_))))
                           (declare (not safe))
                           (cons __tmp53851 _r53051_)))
                       _$e53056_)
                      (let ()
                        (declare (not safe))
                        (cons _out53049_ _r53051_))))
                (if (gx#export-set? _out53049_)
                    (let ((__tmp53850 (gx#export-set-exports _out53049_)))
                      (declare (not safe))
                      (foldl1 _fold-e53046_ _r53051_ __tmp53850))
                    (let ()
                      (declare (not safe))
                      (cons _out53049_ _r53051_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e53046_))
                                       (_new-exports53066_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e53063_
                                                  '()
                                                  _exports53043_))))
                                  (for-each
                                   (lambda (_id53071_)
                                     (if (let ((__tmp53852
                                                (gx#core-identifier-key
                                                 _id53071_)))
                                           (declare (not safe))
                                           (hash-get _found53018_ __tmp53852))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx52860_
                                          _id53071_)))
                                   (let ((__tmp53853
                                          (lambda (_g5307353076_ _g5307453079_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g5307353076_
                                                    _g5307453079_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp53853 '() _L52979_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports53066_)))
                                (_g5286352896_ _g5286452900_)))
                          _new-id5288352971_
                          _id5288452974_
                          _hd5287252917_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop5287752929_
                                                  _target5287452923_
                                                  '()
                                                  '()))
                                               (_g5286352896_
                                                _g5286452900_)))))
                                     (_g5286352896_ _g5286452900_))))
                             (_g5286352896_ _g5286452900_))))
                     (_g5286352896_ _g5286452900_)))))
         (_g5286253082_ _stx52860_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx53088_)
       (let* ((_g5309153109_
               (lambda (_g5309253105_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5309253105_)))
              (_g5309053188_
               (lambda (_g5309253113_)
                 (if (gx#stx-pair? _g5309253113_)
                     (let ((_e5309753116_ (gx#syntax-e _g5309253113_)))
                       (let ((_hd5309653120_
                              (let ()
                                (declare (not safe))
                                (##car _e5309753116_)))
                             (_tl5309553123_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5309753116_))))
                         (if (gx#stx-pair? _tl5309553123_)
                             (let ((_e5310053126_
                                    (gx#syntax-e _tl5309553123_)))
                               (let ((_hd5309953130_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5310053126_)))
                                     (_tl5309853133_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5310053126_))))
                                 (if (gx#stx-pair? _tl5309853133_)
                                     (let ((_e5310353136_
                                            (gx#syntax-e _tl5309853133_)))
                                       (let ((_hd5310253140_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5310353136_)))
                                             (_tl5310153143_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5310353136_))))
                                         (if (gx#stx-null? _tl5310153143_)
                                             ((lambda (_L53146_ _L53148_)
                                                (if (gx#identifier? _L53146_)
                                                    (let* ((_pre53164_
                                                            (gx#stx-e
                                                             _L53146_))
                                                           (_exports53167_
                                                            (gx#core-expand-export-source
                                                             _L53148_))
                                                           (_rename-e53173_
                                                            (lambda (_name53170_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name53170_
                         _pre53164_))))
                   (_fold-e53183_
                    (letrec ((_fold-e53176_
                              (lambda (_out53179_ _r53181_)
                                (if (gx#module-export? _out53179_)
                                    (let ((__tmp53857
                                           (let ((__tmp53858
                                                  (_rename-e53173_
                                                   (gx#module-export-name
                                                    _out53179_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-export-rename|
                                              _out53179_
                                              __tmp53858))))
                                      (declare (not safe))
                                      (cons __tmp53857 _r53181_))
                                    (if (gx#export-set? _out53179_)
                                        (let ((__tmp53856
                                               (gx#export-set-exports
                                                _out53179_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e53176_
                                                  _r53181_
                                                  __tmp53856))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out53179_ _r53181_)))))))
                      _fold-e53176_)))
              (let ((__tmp53859
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e53183_ '() _exports53167_))))
                (declare (not safe))
                (cons 'begin: __tmp53859)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5309153109_
                                                     _g5309253113_)))
                                              _hd5310253140_
                                              _hd5309953130_)
                                             (_g5309153109_ _g5309253113_))))
                                     (_g5309153109_ _g5309253113_))))
                             (_g5309153109_ _g5309253113_))))
                     (_g5309153109_ _g5309253113_)))))
         (_g5309053188_ _stx53088_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx53192_)
       (letrec ((_identifiers53195_
                 (lambda (_id53427_ _unchecked?53429_)
                   (let ((_info53431_ (gx#syntax-local-value _id53427_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _info53431_))
                         (let ((__tmp53860
                                (let ((__tmp53872
                                       (let ((__obj53728 _info53431_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj53728
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj53728
                                                '10
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj53728
                                              'type-descriptor))))
                                      (__tmp53861
                                       (let ((__tmp53863
                                              (let ((__tmp53871
                                                     (let ((__obj53729
                                                            _info53431_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj53729
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj53729
                                                              '12
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop~MOP-2#class-type-info::t
                                                            __obj53729
                                                            'predicate))))
                                                    (__tmp53864
                                                     (let ((__tmp53866
                                                            (let ((__tmp53868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?53429_
                               (let ((__tmp53870
                                      (map cdr
                                           (let ((__obj53730 _info53431_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj53730
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj53730
                                                    '16
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop~MOP-2#class-type-info::t
                                                  __obj53730
                                                  'unchecked-mutators)))))
                                     (__tmp53869
                                      (map cdr
                                           (let ((__obj53731 _info53431_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj53731
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj53731
                                                    '15
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop~MOP-2#class-type-info::t
                                                  __obj53731
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp53870 __tmp53869))
                               '()))
                          (__tmp53867
                           (map cdr
                                (let ((__obj53732 _info53431_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj53732
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj53732
                                         '14
                                         gerbil/core/mop~MOP-2#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#class-type-info::t
                                       __obj53732
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp53868 __tmp53867)))
                   (__tmp53865
                    (map cdr
                         (let ((__obj53733 _info53431_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj53733
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj53733
                                  '13
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop~MOP-2#class-type-info::t
                                __obj53733
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp53866 __tmp53865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp53871 __tmp53864)))
                                             (__tmp53862
                                              (let ((_ctor53434_
                                                     (let ((__obj53734
                                                            _info53431_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj53734
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj53734
                                                              '11
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop~MOP-2#class-type-info::t
                                                            __obj53734
                                                            'constructor)))))
                                                (if _ctor53434_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor53434_ '()))
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp53863 __tmp53862))))
                                  (declare (not safe))
                                  (cons __tmp53872 __tmp53861))))
                           (declare (not safe))
                           (cons _id53427_ __tmp53860))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx53192_
                          _id53427_))))))
         (let* ((___stx5366953670_ _stx53192_)
                (_g5319953240_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx5366953670_))))
           (let ((___kont5367253673_
                  (lambda (_L53388_ _L53390_)
                    (let ((__tmp53873
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5340953411_)
                               (_identifiers53195_
                                _g5340953411_
                                (gx#stx-e _L53390_)))
                             (let ((__tmp53874
                                    (lambda (_g5341453417_ _g5341553420_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5341453417_ _g5341553420_)))))
                               (declare (not safe))
                               (foldr1 __tmp53874 '() _L53388_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp53873))))
                 (___kont5367653677_
                  (lambda (_L53287_)
                    (let ((__tmp53875
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5330353305_)
                               (_identifiers53195_ _g5330353305_ '#f))
                             (let ((__tmp53876
                                    (lambda (_g5330853311_ _g5330953314_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5330853311_ _g5330953314_)))))
                               (declare (not safe))
                               (foldr1 __tmp53876 '() _L53287_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp53875)))))
             (let* ((___match5372653727_
                     (lambda (_e5322553247_
                              _hd5322453251_
                              _tl5322353254_
                              ___splice5367853679_
                              _target5322653257_
                              _tl5322853260_)
                       (letrec ((_loop5322953263_
                                 (lambda (_hd5322753267_ _id5323353270_)
                                   (if (gx#stx-pair? _hd5322753267_)
                                       (let ((_e5323053273_
                                              (gx#syntax-e _hd5322753267_)))
                                         (let ((_lp-tl5323253280_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5323053273_)))
                                               (_lp-hd5323153277_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5323053273_))))
                                           (_loop5322953263_
                                            _lp-tl5323253280_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5323153277_
                                                    _id5323353270_)))))
                                       (let ((_id5323453283_
                                              (reverse _id5323353270_)))
                                         (___kont5367653677_
                                          _id5323453283_))))))
                         (_loop5322953263_ _target5322653257_ '()))))
                    (___match5371253713_
                     (lambda (_e5320553324_
                              _hd5320453328_
                              _tl5320353331_
                              _e5320853334_
                              _hd5320753338_
                              _tl5320653341_
                              _e5320953344_
                              _e5321253348_
                              _hd5321153352_
                              _tl5321053355_
                              ___splice5367453675_
                              _target5321353358_
                              _tl5321553361_)
                       (letrec ((_loop5321653364_
                                 (lambda (_hd5321453368_ _id5322053371_)
                                   (if (gx#stx-pair? _hd5321453368_)
                                       (let ((_e5321753374_
                                              (gx#syntax-e _hd5321453368_)))
                                         (let ((_lp-tl5321953381_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5321753374_)))
                                               (_lp-hd5321853378_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5321753374_))))
                                           (_loop5321653364_
                                            _lp-tl5321953381_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5321853378_
                                                    _id5322053371_)))))
                                       (let ((_id5322153384_
                                              (reverse _id5322053371_)))
                                         (___kont5367253673_
                                          _id5322153384_
                                          _hd5321153352_))))))
                         (_loop5321653364_ _target5321353358_ '())))))
               (if (gx#stx-pair? ___stx5366953670_)
                   (let ((_e5320553324_ (gx#syntax-e ___stx5366953670_)))
                     (let ((_tl5320353331_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5320553324_)))
                           (_hd5320453328_
                            (let ()
                              (declare (not safe))
                              (##car _e5320553324_))))
                       (if (gx#stx-pair? _tl5320353331_)
                           (let ((_e5320853334_ (gx#syntax-e _tl5320353331_)))
                             (let ((_tl5320653341_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5320853334_)))
                                   (_hd5320753338_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5320853334_))))
                               (if (gx#stx-datum? _hd5320753338_)
                                   (let ((_e5320953344_
                                          (gx#stx-e _hd5320753338_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e5320953344_ 'unchecked:))
                                         (if (gx#stx-pair? _tl5320653341_)
                                             (let ((_e5321253348_
                                                    (gx#syntax-e
                                                     _tl5320653341_)))
                                               (let ((_tl5321053355_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5321253348_)))
                                                     (_hd5321153352_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5321253348_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl5321053355_)
                                                     (let ((___splice5367453675_
                                                            (gx#syntax-split-splice
                                                             _tl5321053355_
                                                             '0)))
                                                       (let ((_tl5321553361_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice5367453675_ '1)))
                     (_target5321353358_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice5367453675_ '0))))
                 (if (gx#stx-null? _tl5321553361_)
                     (___match5371253713_
                      _e5320553324_
                      _hd5320453328_
                      _tl5320353331_
                      _e5320853334_
                      _hd5320753338_
                      _tl5320653341_
                      _e5320953344_
                      _e5321253348_
                      _hd5321153352_
                      _tl5321053355_
                      ___splice5367453675_
                      _target5321353358_
                      _tl5321553361_)
                     (if (gx#stx-pair/null? _tl5320353331_)
                         (let ((___splice5367853679_
                                (gx#syntax-split-splice _tl5320353331_ '0)))
                           (let ((_tl5322853260_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5367853679_ '1)))
                                 (_target5322653257_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5367853679_ '0))))
                             (if (gx#stx-null? _tl5322853260_)
                                 (___match5372653727_
                                  _e5320553324_
                                  _hd5320453328_
                                  _tl5320353331_
                                  ___splice5367853679_
                                  _target5322653257_
                                  _tl5322853260_)
                                 (let ()
                                   (declare (not safe))
                                   (_g5319953240_)))))
                         (let () (declare (not safe)) (_g5319953240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl5320353331_)
                                                         (let ((___splice5367853679_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5320353331_
                         '0)))
                   (let ((_tl5322853260_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5367853679_ '1)))
                         (_target5322653257_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5367853679_ '0))))
                     (if (gx#stx-null? _tl5322853260_)
                         (___match5372653727_
                          _e5320553324_
                          _hd5320453328_
                          _tl5320353331_
                          ___splice5367853679_
                          _target5322653257_
                          _tl5322853260_)
                         (let () (declare (not safe)) (_g5319953240_)))))
                 (let () (declare (not safe)) (_g5319953240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl5320353331_)
                                                 (let ((___splice5367853679_
                                                        (gx#syntax-split-splice
                                                         _tl5320353331_
                                                         '0)))
                                                   (let ((_tl5322853260_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5367853679_
                                                             '1)))
                                                         (_target5322653257_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5367853679_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl5322853260_)
                                                         (___match5372653727_
                                                          _e5320553324_
                                                          _hd5320453328_
                                                          _tl5320353331_
                                                          ___splice5367853679_
                                                          _target5322653257_
                                                          _tl5322853260_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g5319953240_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g5319953240_))))
                                         (if (gx#stx-pair/null? _tl5320353331_)
                                             (let ((___splice5367853679_
                                                    (gx#syntax-split-splice
                                                     _tl5320353331_
                                                     '0)))
                                               (let ((_tl5322853260_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5367853679_
                                                         '1)))
                                                     (_target5322653257_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5367853679_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl5322853260_)
                                                     (___match5372653727_
                                                      _e5320553324_
                                                      _hd5320453328_
                                                      _tl5320353331_
                                                      ___splice5367853679_
                                                      _target5322653257_
                                                      _tl5322853260_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g5319953240_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g5319953240_)))))
                                   (if (gx#stx-pair/null? _tl5320353331_)
                                       (let ((___splice5367853679_
                                              (gx#syntax-split-splice
                                               _tl5320353331_
                                               '0)))
                                         (let ((_tl5322853260_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5367853679_
                                                   '1)))
                                               (_target5322653257_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5367853679_
                                                   '0))))
                                           (if (gx#stx-null? _tl5322853260_)
                                               (___match5372653727_
                                                _e5320553324_
                                                _hd5320453328_
                                                _tl5320353331_
                                                ___splice5367853679_
                                                _target5322653257_
                                                _tl5322853260_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g5319953240_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g5319953240_))))))
                           (if (gx#stx-pair/null? _tl5320353331_)
                               (let ((___splice5367853679_
                                      (gx#syntax-split-splice
                                       _tl5320353331_
                                       '0)))
                                 (let ((_tl5322853260_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5367853679_
                                           '1)))
                                       (_target5322653257_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5367853679_
                                           '0))))
                                   (if (gx#stx-null? _tl5322853260_)
                                       (___match5372653727_
                                        _e5320553324_
                                        _hd5320453328_
                                        _tl5320353331_
                                        ___splice5367853679_
                                        _target5322653257_
                                        _tl5322853260_)
                                       (let ()
                                         (declare (not safe))
                                         (_g5319953240_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g5319953240_))))))
                   (let () (declare (not safe)) (_g5319953240_)))))))))))
