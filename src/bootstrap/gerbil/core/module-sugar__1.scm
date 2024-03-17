(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_$stx47921_)
      (let* ((___stx5052350524_ _$stx47921_)
             (_g4792647945_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5052350524_))))
        (let ((___kont5052650527_
               (lambda ()
                 (let ((__tmp50819 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50819 '()))))
              (___kont5052850529_
               (lambda (_L47972_ _L47974_ _L47975_)
                 (let ((__tmp50832 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50820
                        (let ((__tmp50829
                               (let ((__tmp50830
                                      (let ((__tmp50831
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47975_ _L47972_))))
                                        (declare (not safe))
                                        (cons __tmp50831 '()))))
                                 (declare (not safe))
                                 (cons _L47974_ __tmp50830)))
                              (__tmp50821
                               (let ((__tmp50822
                                      (let ((__tmp50828
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50823
                                             (let ((__tmp50824
                                                    (let ((__tmp50827
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50825
                                                           (let ((__tmp50826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L47974_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50826))))
              (declare (not safe))
              (cons __tmp50827 __tmp50825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50824 '()))))
                                        (declare (not safe))
                                        (cons __tmp50828 __tmp50823))))
                                 (declare (not safe))
                                 (cons __tmp50822 '()))))
                          (declare (not safe))
                          (cons __tmp50829 __tmp50821))))
                   (declare (not safe))
                   (cons __tmp50832 __tmp50820)))))
          (if (gx#stx-pair? ___stx5052350524_)
              (let ((_e4793047997_ (gx#syntax-e ___stx5052350524_)))
                (let ((_tl4792848004_
                       (let () (declare (not safe)) (##cdr _e4793047997_)))
                      (_hd4792948001_
                       (let () (declare (not safe)) (##car _e4793047997_))))
                  (if (gx#stx-null? _tl4792848004_)
                      (___kont5052650527_)
                      (if (gx#stx-pair? _tl4792848004_)
                          (let ((_e4793947962_ (gx#syntax-e _tl4792848004_)))
                            (let ((_tl4793747969_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4793947962_)))
                                  (_hd4793847966_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4793947962_))))
                              (___kont5052850529_
                               _tl4793747969_
                               _hd4793847966_
                               _hd4792948001_)))
                          (let () (declare (not safe)) (_g4792647945_))))))
              (let () (declare (not safe)) (_g4792647945_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_$stx48015_)
      (let* ((___stx5055350554_ _$stx48015_)
             (_g4802048060_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5055350554_))))
        (let ((___kont5055650557_
               (lambda (_L48198_ _L48200_)
                 (let ((__tmp50838 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50833
                        (let ((__tmp50834
                               (let ((__tmp50835
                                      (let ((__tmp50837
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50836
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48198_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50837 __tmp50836))))
                                 (declare (not safe))
                                 (cons __tmp50835 '()))))
                          (declare (not safe))
                          (cons _L48200_ __tmp50834))))
                   (declare (not safe))
                   (cons __tmp50838 __tmp50833))))
              (___kont5055850559_
               (lambda (_L48127_ _L48129_ _L48130_ _L48131_)
                 (let ((__tmp50839
                        (let ((__tmp50840
                               (let ((__tmp50841
                                      (let ((__tmp50844
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50842
                                             (let ((__tmp50843
                                                    (foldr (lambda (_g4815248155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4815348158_)
                     (let ()
                       (declare (not safe))
                       (cons _g4815248155_ _g4815348158_)))
                   '()
                   _L48127_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48129_ __tmp50843))))
                                        (declare (not safe))
                                        (cons __tmp50844 __tmp50842))))
                                 (declare (not safe))
                                 (cons __tmp50841 '()))))
                          (declare (not safe))
                          (cons _L48130_ __tmp50840))))
                   (declare (not safe))
                   (cons _L48131_ __tmp50839)))))
          (let* ((___match5060850609_
                  (lambda (_e4803948067_
                           _hd4803848071_
                           _tl4803748074_
                           _e4804248077_
                           _hd4804148081_
                           _tl4804048084_
                           _e4804548087_
                           _hd4804448091_
                           _tl4804348094_
                           ___splice5056050561_
                           _target4804648097_
                           _tl4804848100_)
                    (letrec ((_loop4804948103_
                              (lambda (_hd4804748107_ _body4805348110_)
                                (if (gx#stx-pair? _hd4804748107_)
                                    (let ((_e4805048113_
                                           (gx#syntax-e _hd4804748107_)))
                                      (let ((_lp-tl4805248120_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4805048113_)))
                                            (_lp-hd4805148117_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4805048113_))))
                                        (_loop4804948103_
                                         _lp-tl4805248120_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4805148117_
                                                 _body4805348110_)))))
                                    (let ((_body4805448123_
                                           (reverse _body4805348110_)))
                                      (let ((_L48127_ _body4805448123_)
                                            (_L48129_ _tl4804348094_)
                                            (_L48130_ _hd4804448091_)
                                            (_L48131_ _hd4803848071_))
                                        (if (gx#identifier? _L48130_)
                                            (___kont5055850559_
                                             _L48127_
                                             _L48129_
                                             _L48130_
                                             _L48131_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4802048060_)))))))))
                      (_loop4804948103_ _target4804648097_ '()))))
                 (___match5058250583_
                  (lambda (_e4802648168_
                           _hd4802548172_
                           _tl4802448175_
                           _e4802948178_
                           _hd4802848182_
                           _tl4802748185_
                           _e4803248188_
                           _hd4803148192_
                           _tl4803048195_)
                    (let ((_L48198_ _hd4803148192_) (_L48200_ _hd4802848182_))
                      (if (gx#identifier? _L48200_)
                          (___kont5055650557_ _L48198_ _L48200_)
                          (if (gx#stx-pair? _hd4802848182_)
                              (let ((_e4804548087_
                                     (gx#syntax-e _hd4802848182_)))
                                (let ((_tl4804348094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4804548087_)))
                                      (_hd4804448091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4804548087_))))
                                  (if (gx#stx-pair/null? _tl4802748185_)
                                      (let ((___splice5056050561_
                                             (gx#syntax-split-splice
                                              _tl4802748185_
                                              '0)))
                                        (let ((_tl4804848100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5056050561_
                                                  '1)))
                                              (_target4804648097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5056050561_
                                                  '0))))
                                          (if (gx#stx-null? _tl4804848100_)
                                              (___match5060850609_
                                               _e4802648168_
                                               _hd4802548172_
                                               _tl4802448175_
                                               _e4802948178_
                                               _hd4802848182_
                                               _tl4802748185_
                                               _e4804548087_
                                               _hd4804448091_
                                               _tl4804348094_
                                               ___splice5056050561_
                                               _target4804648097_
                                               _tl4804848100_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4802048060_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4802048060_)))))
                              (let ()
                                (declare (not safe))
                                (_g4802048060_))))))))
            (if (gx#stx-pair? ___stx5055350554_)
                (let ((_e4802648168_ (gx#syntax-e ___stx5055350554_)))
                  (let ((_tl4802448175_
                         (let () (declare (not safe)) (##cdr _e4802648168_)))
                        (_hd4802548172_
                         (let () (declare (not safe)) (##car _e4802648168_))))
                    (if (gx#stx-pair? _tl4802448175_)
                        (let ((_e4802948178_ (gx#syntax-e _tl4802448175_)))
                          (let ((_tl4802748185_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4802948178_)))
                                (_hd4802848182_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4802948178_))))
                            (if (gx#stx-pair? _tl4802748185_)
                                (let ((_e4803248188_
                                       (gx#syntax-e _tl4802748185_)))
                                  (let ((_tl4803048195_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4803248188_)))
                                        (_hd4803148192_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4803248188_))))
                                    (if (gx#stx-null? _tl4803048195_)
                                        (___match5058250583_
                                         _e4802648168_
                                         _hd4802548172_
                                         _tl4802448175_
                                         _e4802948178_
                                         _hd4802848182_
                                         _tl4802748185_
                                         _e4803248188_
                                         _hd4803148192_
                                         _tl4803048195_)
                                        (if (gx#stx-pair? _hd4802848182_)
                                            (let ((_e4804548087_
                                                   (gx#syntax-e
                                                    _hd4802848182_)))
                                              (let ((_tl4804348094_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4804548087_)))
                                                    (_hd4804448091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4804548087_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4802748185_)
                                                    (let ((___splice5056050561_
                                                           (gx#syntax-split-splice
                                                            _tl4802748185_
                                                            '0)))
                                                      (let ((_tl4804848100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5056050561_ '1)))
                    (_target4804648097_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5056050561_ '0))))
                (if (gx#stx-null? _tl4804848100_)
                    (___match5060850609_
                     _e4802648168_
                     _hd4802548172_
                     _tl4802448175_
                     _e4802948178_
                     _hd4802848182_
                     _tl4802748185_
                     _e4804548087_
                     _hd4804448091_
                     _tl4804348094_
                     ___splice5056050561_
                     _target4804648097_
                     _tl4804848100_)
                    (let () (declare (not safe)) (_g4802048060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4802048060_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4802048060_))))))
                                (if (gx#stx-pair? _hd4802848182_)
                                    (let ((_e4804548087_
                                           (gx#syntax-e _hd4802848182_)))
                                      (let ((_tl4804348094_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4804548087_)))
                                            (_hd4804448091_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4804548087_))))
                                        (if (gx#stx-pair/null? _tl4802748185_)
                                            (let ((___splice5056050561_
                                                   (gx#syntax-split-splice
                                                    _tl4802748185_
                                                    '0)))
                                              (let ((_tl4804848100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5056050561_
                                                        '1)))
                                                    (_target4804648097_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5056050561_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4804848100_)
                                                    (___match5060850609_
                                                     _e4802648168_
                                                     _hd4802548172_
                                                     _tl4802448175_
                                                     _e4802948178_
                                                     _hd4802848182_
                                                     _tl4802748185_
                                                     _e4804548087_
                                                     _hd4804448091_
                                                     _tl4804348094_
                                                     ___splice5056050561_
                                                     _target4804648097_
                                                     _tl4804848100_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4802048060_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4802048060_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4802048060_))))))
                        (let () (declare (not safe)) (_g4802048060_)))))
                (let () (declare (not safe)) (_g4802048060_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_$stx48220_)
      (let* ((___stx5061150612_ _$stx48220_)
             (_g4822548265_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5061150612_))))
        (let ((___kont5061450615_
               (lambda (_L48403_ _L48405_)
                 (let ((__tmp50850 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50845
                        (let ((__tmp50846
                               (let ((__tmp50847
                                      (let ((__tmp50849
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50848
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48403_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50849 __tmp50848))))
                                 (declare (not safe))
                                 (cons __tmp50847 '()))))
                          (declare (not safe))
                          (cons _L48405_ __tmp50846))))
                   (declare (not safe))
                   (cons __tmp50850 __tmp50845))))
              (___kont5061650617_
               (lambda (_L48332_ _L48334_ _L48335_ _L48336_)
                 (let ((__tmp50851
                        (let ((__tmp50852
                               (let ((__tmp50853
                                      (let ((__tmp50856
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50854
                                             (let ((__tmp50855
                                                    (foldr (lambda (_g4835748360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4835848363_)
                     (let ()
                       (declare (not safe))
                       (cons _g4835748360_ _g4835848363_)))
                   '()
                   _L48332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48334_ __tmp50855))))
                                        (declare (not safe))
                                        (cons __tmp50856 __tmp50854))))
                                 (declare (not safe))
                                 (cons __tmp50853 '()))))
                          (declare (not safe))
                          (cons _L48335_ __tmp50852))))
                   (declare (not safe))
                   (cons _L48336_ __tmp50851)))))
          (let* ((___match5066650667_
                  (lambda (_e4824448272_
                           _hd4824348276_
                           _tl4824248279_
                           _e4824748282_
                           _hd4824648286_
                           _tl4824548289_
                           _e4825048292_
                           _hd4824948296_
                           _tl4824848299_
                           ___splice5061850619_
                           _target4825148302_
                           _tl4825348305_)
                    (letrec ((_loop4825448308_
                              (lambda (_hd4825248312_ _body4825848315_)
                                (if (gx#stx-pair? _hd4825248312_)
                                    (let ((_e4825548318_
                                           (gx#syntax-e _hd4825248312_)))
                                      (let ((_lp-tl4825748325_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4825548318_)))
                                            (_lp-hd4825648322_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4825548318_))))
                                        (_loop4825448308_
                                         _lp-tl4825748325_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4825648322_
                                                 _body4825848315_)))))
                                    (let ((_body4825948328_
                                           (reverse _body4825848315_)))
                                      (let ((_L48332_ _body4825948328_)
                                            (_L48334_ _tl4824848299_)
                                            (_L48335_ _hd4824948296_)
                                            (_L48336_ _hd4824348276_))
                                        (if (gx#identifier? _L48335_)
                                            (___kont5061650617_
                                             _L48332_
                                             _L48334_
                                             _L48335_
                                             _L48336_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4822548265_)))))))))
                      (_loop4825448308_ _target4825148302_ '()))))
                 (___match5064050641_
                  (lambda (_e4823148373_
                           _hd4823048377_
                           _tl4822948380_
                           _e4823448383_
                           _hd4823348387_
                           _tl4823248390_
                           _e4823748393_
                           _hd4823648397_
                           _tl4823548400_)
                    (let ((_L48403_ _hd4823648397_) (_L48405_ _hd4823348387_))
                      (if (gx#identifier? _L48405_)
                          (___kont5061450615_ _L48403_ _L48405_)
                          (if (gx#stx-pair? _hd4823348387_)
                              (let ((_e4825048292_
                                     (gx#syntax-e _hd4823348387_)))
                                (let ((_tl4824848299_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4825048292_)))
                                      (_hd4824948296_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4825048292_))))
                                  (if (gx#stx-pair/null? _tl4823248390_)
                                      (let ((___splice5061850619_
                                             (gx#syntax-split-splice
                                              _tl4823248390_
                                              '0)))
                                        (let ((_tl4825348305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5061850619_
                                                  '1)))
                                              (_target4825148302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5061850619_
                                                  '0))))
                                          (if (gx#stx-null? _tl4825348305_)
                                              (___match5066650667_
                                               _e4823148373_
                                               _hd4823048377_
                                               _tl4822948380_
                                               _e4823448383_
                                               _hd4823348387_
                                               _tl4823248390_
                                               _e4825048292_
                                               _hd4824948296_
                                               _tl4824848299_
                                               ___splice5061850619_
                                               _target4825148302_
                                               _tl4825348305_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4822548265_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4822548265_)))))
                              (let ()
                                (declare (not safe))
                                (_g4822548265_))))))))
            (if (gx#stx-pair? ___stx5061150612_)
                (let ((_e4823148373_ (gx#syntax-e ___stx5061150612_)))
                  (let ((_tl4822948380_
                         (let () (declare (not safe)) (##cdr _e4823148373_)))
                        (_hd4823048377_
                         (let () (declare (not safe)) (##car _e4823148373_))))
                    (if (gx#stx-pair? _tl4822948380_)
                        (let ((_e4823448383_ (gx#syntax-e _tl4822948380_)))
                          (let ((_tl4823248390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4823448383_)))
                                (_hd4823348387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4823448383_))))
                            (if (gx#stx-pair? _tl4823248390_)
                                (let ((_e4823748393_
                                       (gx#syntax-e _tl4823248390_)))
                                  (let ((_tl4823548400_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4823748393_)))
                                        (_hd4823648397_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4823748393_))))
                                    (if (gx#stx-null? _tl4823548400_)
                                        (___match5064050641_
                                         _e4823148373_
                                         _hd4823048377_
                                         _tl4822948380_
                                         _e4823448383_
                                         _hd4823348387_
                                         _tl4823248390_
                                         _e4823748393_
                                         _hd4823648397_
                                         _tl4823548400_)
                                        (if (gx#stx-pair? _hd4823348387_)
                                            (let ((_e4825048292_
                                                   (gx#syntax-e
                                                    _hd4823348387_)))
                                              (let ((_tl4824848299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4825048292_)))
                                                    (_hd4824948296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4825048292_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4823248390_)
                                                    (let ((___splice5061850619_
                                                           (gx#syntax-split-splice
                                                            _tl4823248390_
                                                            '0)))
                                                      (let ((_tl4825348305_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5061850619_ '1)))
                    (_target4825148302_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5061850619_ '0))))
                (if (gx#stx-null? _tl4825348305_)
                    (___match5066650667_
                     _e4823148373_
                     _hd4823048377_
                     _tl4822948380_
                     _e4823448383_
                     _hd4823348387_
                     _tl4823248390_
                     _e4825048292_
                     _hd4824948296_
                     _tl4824848299_
                     ___splice5061850619_
                     _target4825148302_
                     _tl4825348305_)
                    (let () (declare (not safe)) (_g4822548265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4822548265_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4822548265_))))))
                                (if (gx#stx-pair? _hd4823348387_)
                                    (let ((_e4825048292_
                                           (gx#syntax-e _hd4823348387_)))
                                      (let ((_tl4824848299_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4825048292_)))
                                            (_hd4824948296_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4825048292_))))
                                        (if (gx#stx-pair/null? _tl4823248390_)
                                            (let ((___splice5061850619_
                                                   (gx#syntax-split-splice
                                                    _tl4823248390_
                                                    '0)))
                                              (let ((_tl4825348305_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5061850619_
                                                        '1)))
                                                    (_target4825148302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5061850619_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4825348305_)
                                                    (___match5066650667_
                                                     _e4823148373_
                                                     _hd4823048377_
                                                     _tl4822948380_
                                                     _e4823448383_
                                                     _hd4823348387_
                                                     _tl4823248390_
                                                     _e4825048292_
                                                     _hd4824948296_
                                                     _tl4824848299_
                                                     ___splice5061850619_
                                                     _target4825148302_
                                                     _tl4825348305_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4822548265_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4822548265_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4822548265_))))))
                        (let () (declare (not safe)) (_g4822548265_)))))
                (let () (declare (not safe)) (_g4822548265_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_$stx48425_)
      (let* ((___stx5066950670_ _$stx48425_)
             (_g4843048470_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5066950670_))))
        (let ((___kont5067250673_
               (lambda (_L48608_ _L48610_)
                 (let ((__tmp50862 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50857
                        (let ((__tmp50858
                               (let ((__tmp50859
                                      (let ((__tmp50861
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50860
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48608_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50861 __tmp50860))))
                                 (declare (not safe))
                                 (cons __tmp50859 '()))))
                          (declare (not safe))
                          (cons _L48610_ __tmp50858))))
                   (declare (not safe))
                   (cons __tmp50862 __tmp50857))))
              (___kont5067450675_
               (lambda (_L48537_ _L48539_ _L48540_ _L48541_)
                 (let ((__tmp50863
                        (let ((__tmp50864
                               (let ((__tmp50865
                                      (let ((__tmp50868
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50866
                                             (let ((__tmp50867
                                                    (foldr (lambda (_g4856248565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4856348568_)
                     (let ()
                       (declare (not safe))
                       (cons _g4856248565_ _g4856348568_)))
                   '()
                   _L48537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48539_ __tmp50867))))
                                        (declare (not safe))
                                        (cons __tmp50868 __tmp50866))))
                                 (declare (not safe))
                                 (cons __tmp50865 '()))))
                          (declare (not safe))
                          (cons _L48540_ __tmp50864))))
                   (declare (not safe))
                   (cons _L48541_ __tmp50863)))))
          (let* ((___match5072450725_
                  (lambda (_e4844948477_
                           _hd4844848481_
                           _tl4844748484_
                           _e4845248487_
                           _hd4845148491_
                           _tl4845048494_
                           _e4845548497_
                           _hd4845448501_
                           _tl4845348504_
                           ___splice5067650677_
                           _target4845648507_
                           _tl4845848510_)
                    (letrec ((_loop4845948513_
                              (lambda (_hd4845748517_ _body4846348520_)
                                (if (gx#stx-pair? _hd4845748517_)
                                    (let ((_e4846048523_
                                           (gx#syntax-e _hd4845748517_)))
                                      (let ((_lp-tl4846248530_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4846048523_)))
                                            (_lp-hd4846148527_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4846048523_))))
                                        (_loop4845948513_
                                         _lp-tl4846248530_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4846148527_
                                                 _body4846348520_)))))
                                    (let ((_body4846448533_
                                           (reverse _body4846348520_)))
                                      (let ((_L48537_ _body4846448533_)
                                            (_L48539_ _tl4845348504_)
                                            (_L48540_ _hd4845448501_)
                                            (_L48541_ _hd4844848481_))
                                        (if (gx#identifier? _L48540_)
                                            (___kont5067450675_
                                             _L48537_
                                             _L48539_
                                             _L48540_
                                             _L48541_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4843048470_)))))))))
                      (_loop4845948513_ _target4845648507_ '()))))
                 (___match5069850699_
                  (lambda (_e4843648578_
                           _hd4843548582_
                           _tl4843448585_
                           _e4843948588_
                           _hd4843848592_
                           _tl4843748595_
                           _e4844248598_
                           _hd4844148602_
                           _tl4844048605_)
                    (let ((_L48608_ _hd4844148602_) (_L48610_ _hd4843848592_))
                      (if (gx#identifier? _L48610_)
                          (___kont5067250673_ _L48608_ _L48610_)
                          (if (gx#stx-pair? _hd4843848592_)
                              (let ((_e4845548497_
                                     (gx#syntax-e _hd4843848592_)))
                                (let ((_tl4845348504_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4845548497_)))
                                      (_hd4845448501_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4845548497_))))
                                  (if (gx#stx-pair/null? _tl4843748595_)
                                      (let ((___splice5067650677_
                                             (gx#syntax-split-splice
                                              _tl4843748595_
                                              '0)))
                                        (let ((_tl4845848510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5067650677_
                                                  '1)))
                                              (_target4845648507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5067650677_
                                                  '0))))
                                          (if (gx#stx-null? _tl4845848510_)
                                              (___match5072450725_
                                               _e4843648578_
                                               _hd4843548582_
                                               _tl4843448585_
                                               _e4843948588_
                                               _hd4843848592_
                                               _tl4843748595_
                                               _e4845548497_
                                               _hd4845448501_
                                               _tl4845348504_
                                               ___splice5067650677_
                                               _target4845648507_
                                               _tl4845848510_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4843048470_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4843048470_)))))
                              (let ()
                                (declare (not safe))
                                (_g4843048470_))))))))
            (if (gx#stx-pair? ___stx5066950670_)
                (let ((_e4843648578_ (gx#syntax-e ___stx5066950670_)))
                  (let ((_tl4843448585_
                         (let () (declare (not safe)) (##cdr _e4843648578_)))
                        (_hd4843548582_
                         (let () (declare (not safe)) (##car _e4843648578_))))
                    (if (gx#stx-pair? _tl4843448585_)
                        (let ((_e4843948588_ (gx#syntax-e _tl4843448585_)))
                          (let ((_tl4843748595_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4843948588_)))
                                (_hd4843848592_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4843948588_))))
                            (if (gx#stx-pair? _tl4843748595_)
                                (let ((_e4844248598_
                                       (gx#syntax-e _tl4843748595_)))
                                  (let ((_tl4844048605_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4844248598_)))
                                        (_hd4844148602_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4844248598_))))
                                    (if (gx#stx-null? _tl4844048605_)
                                        (___match5069850699_
                                         _e4843648578_
                                         _hd4843548582_
                                         _tl4843448585_
                                         _e4843948588_
                                         _hd4843848592_
                                         _tl4843748595_
                                         _e4844248598_
                                         _hd4844148602_
                                         _tl4844048605_)
                                        (if (gx#stx-pair? _hd4843848592_)
                                            (let ((_e4845548497_
                                                   (gx#syntax-e
                                                    _hd4843848592_)))
                                              (let ((_tl4845348504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4845548497_)))
                                                    (_hd4845448501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4845548497_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4843748595_)
                                                    (let ((___splice5067650677_
                                                           (gx#syntax-split-splice
                                                            _tl4843748595_
                                                            '0)))
                                                      (let ((_tl4845848510_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5067650677_ '1)))
                    (_target4845648507_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5067650677_ '0))))
                (if (gx#stx-null? _tl4845848510_)
                    (___match5072450725_
                     _e4843648578_
                     _hd4843548582_
                     _tl4843448585_
                     _e4843948588_
                     _hd4843848592_
                     _tl4843748595_
                     _e4845548497_
                     _hd4845448501_
                     _tl4845348504_
                     ___splice5067650677_
                     _target4845648507_
                     _tl4845848510_)
                    (let () (declare (not safe)) (_g4843048470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4843048470_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4843048470_))))))
                                (if (gx#stx-pair? _hd4843848592_)
                                    (let ((_e4845548497_
                                           (gx#syntax-e _hd4843848592_)))
                                      (let ((_tl4845348504_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4845548497_)))
                                            (_hd4845448501_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4845548497_))))
                                        (if (gx#stx-pair/null? _tl4843748595_)
                                            (let ((___splice5067650677_
                                                   (gx#syntax-split-splice
                                                    _tl4843748595_
                                                    '0)))
                                              (let ((_tl4845848510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5067650677_
                                                        '1)))
                                                    (_target4845648507_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5067650677_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4845848510_)
                                                    (___match5072450725_
                                                     _e4843648578_
                                                     _hd4843548582_
                                                     _tl4843448585_
                                                     _e4843948588_
                                                     _hd4843848592_
                                                     _tl4843748595_
                                                     _e4845548497_
                                                     _hd4845448501_
                                                     _tl4845348504_
                                                     ___splice5067650677_
                                                     _target4845648507_
                                                     _tl4845848510_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4843048470_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4843048470_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4843048470_))))))
                        (let () (declare (not safe)) (_g4843048470_)))))
                (let () (declare (not safe)) (_g4843048470_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx48630_)
       (let* ((_g4863348653_
               (lambda (_g4863448649_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4863448649_)))
              (_g4863248724_
               (lambda (_g4863448657_)
                 (if (gx#stx-pair? _g4863448657_)
                     (let ((_e4863848660_ (gx#syntax-e _g4863448657_)))
                       (let ((_hd4863748664_
                              (let ()
                                (declare (not safe))
                                (##car _e4863848660_)))
                             (_tl4863648667_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4863848660_))))
                         (if (gx#stx-pair/null? _tl4863648667_)
                             (let ((_g50869_
                                    (gx#syntax-split-splice
                                     _tl4863648667_
                                     '0)))
                               (begin
                                 (let ((_g50870_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50869_)
                                              (##vector-length _g50869_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50870_ 2)))
                                       (error "Context expects 2 values"
                                              _g50870_)))
                                 (let ((_target4863948670_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50869_ 0)))
                                       (_tl4864148673_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50869_ 1))))
                                   (if (gx#stx-null? _tl4864148673_)
                                       (letrec ((_loop4864248676_
                                                 (lambda (_hd4864048680_
                                                          _body4864648683_)
                                                   (if (gx#stx-pair?
                                                        _hd4864048680_)
                                                       (let ((_e4864348686_
                                                              (gx#syntax-e
                                                               _hd4864048680_)))
                                                         (let ((_lp-hd4864448690_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4864348686_)))
                       (_lp-tl4864548693_
                        (let () (declare (not safe)) (##cdr _e4864348686_))))
                   (_loop4864248676_
                    _lp-tl4864548693_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4864448690_ _body4864648683_)))))
               (let ((_body4864748696_ (reverse _body4864648683_)))
                 ((lambda (_L48700_)
                    (let ((__tmp50871
                           (let ((__tmp50872
                                  (foldr (lambda (_g4871548718_ _g4871648721_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4871548718_
                                                   _g4871648721_)))
                                         '()
                                         _L48700_)))
                             (declare (not safe))
                             (cons '1 __tmp50872))))
                      (declare (not safe))
                      (cons 'phi: __tmp50871)))
                  _body4864748696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4864248676_
                                          _target4863948670_
                                          '()))
                                       (_g4863348653_ _g4863448657_)))))
                             (_g4863348653_ _g4863448657_))))
                     (_g4863348653_ _g4863448657_)))))
         (_g4863248724_ _stx48630_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx48729_)
       (let* ((_g4873248752_
               (lambda (_g4873348748_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4873348748_)))
              (_g4873148823_
               (lambda (_g4873348756_)
                 (if (gx#stx-pair? _g4873348756_)
                     (let ((_e4873748759_ (gx#syntax-e _g4873348756_)))
                       (let ((_hd4873648763_
                              (let ()
                                (declare (not safe))
                                (##car _e4873748759_)))
                             (_tl4873548766_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4873748759_))))
                         (if (gx#stx-pair/null? _tl4873548766_)
                             (let ((_g50873_
                                    (gx#syntax-split-splice
                                     _tl4873548766_
                                     '0)))
                               (begin
                                 (let ((_g50874_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50873_)
                                              (##vector-length _g50873_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50874_ 2)))
                                       (error "Context expects 2 values"
                                              _g50874_)))
                                 (let ((_target4873848769_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50873_ 0)))
                                       (_tl4874048772_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50873_ 1))))
                                   (if (gx#stx-null? _tl4874048772_)
                                       (letrec ((_loop4874148775_
                                                 (lambda (_hd4873948779_
                                                          _body4874548782_)
                                                   (if (gx#stx-pair?
                                                        _hd4873948779_)
                                                       (let ((_e4874248785_
                                                              (gx#syntax-e
                                                               _hd4873948779_)))
                                                         (let ((_lp-hd4874348789_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4874248785_)))
                       (_lp-tl4874448792_
                        (let () (declare (not safe)) (##cdr _e4874248785_))))
                   (_loop4874148775_
                    _lp-tl4874448792_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4874348789_ _body4874548782_)))))
               (let ((_body4874648795_ (reverse _body4874548782_)))
                 ((lambda (_L48799_)
                    (let ((__tmp50875
                           (let ((__tmp50876
                                  (foldr (lambda (_g4881448817_ _g4881548820_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4881448817_
                                                   _g4881548820_)))
                                         '()
                                         _L48799_)))
                             (declare (not safe))
                             (cons '-1 __tmp50876))))
                      (declare (not safe))
                      (cons 'phi: __tmp50875)))
                  _body4874648795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4874148775_
                                          _target4873848769_
                                          '()))
                                       (_g4873248752_ _g4873348756_)))))
                             (_g4873248752_ _g4873348756_))))
                     (_g4873248752_ _g4873348756_)))))
         (_g4873148823_ _stx48729_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx48828_)
       (let* ((_g4883148855_
               (lambda (_g4883248851_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4883248851_)))
              (_g4883048977_
               (lambda (_g4883248859_)
                 (if (gx#stx-pair? _g4883248859_)
                     (let ((_e4883748862_ (gx#syntax-e _g4883248859_)))
                       (let ((_hd4883648866_
                              (let ()
                                (declare (not safe))
                                (##car _e4883748862_)))
                             (_tl4883548869_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4883748862_))))
                         (if (gx#stx-pair? _tl4883548869_)
                             (let ((_e4884048872_
                                    (gx#syntax-e _tl4883548869_)))
                               (let ((_hd4883948876_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4884048872_)))
                                     (_tl4883848879_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4884048872_))))
                                 (if (gx#stx-pair/null? _tl4883848879_)
                                     (let ((_g50877_
                                            (gx#syntax-split-splice
                                             _tl4883848879_
                                             '0)))
                                       (begin
                                         (let ((_g50878_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50877_)
                                                      (##vector-length
                                                       _g50877_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50878_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50878_)))
                                         (let ((_target4884148882_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50877_ 0)))
                                               (_tl4884348885_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50877_ 1))))
                                           (if (gx#stx-null? _tl4884348885_)
                                               (letrec ((_loop4884448888_
                                                         (lambda (_hd4884248892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4884848895_)
                   (if (gx#stx-pair? _hd4884248892_)
                       (let ((_e4884548898_ (gx#syntax-e _hd4884248892_)))
                         (let ((_lp-hd4884648902_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4884548898_)))
                               (_lp-tl4884748905_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4884548898_))))
                           (_loop4884448888_
                            _lp-tl4884748905_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4884648902_ _id4884848895_)))))
                       (let ((_id4884948908_ (reverse _id4884848895_)))
                         ((lambda (_L48912_ _L48914_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4893148934_ _g4893248937_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4893148934_
                                                  _g4893248937_)))
                                        '()
                                        _L48912_))
                                (let* ((_keys48948_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4893948942_
                                                         _g4894048945_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4893948942_
                                                          _g4894048945_)))
                                                '()
                                                _L48912_)))
                                       (_keytab48959_
                                        (let ((_ht48951_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4895348955_)
                                             (hash-put!
                                              _ht48951_
                                              _g4895348955_
                                              '#t))
                                           _keys48948_)
                                          _ht48951_))
                                       (_imports48962_
                                        (gx#core-expand-import-source
                                         _L48914_))
                                       (_fold-e48972_
                                        (letrec ((_fold-e48965_
                                                  (lambda (_in48968_ _r48970_)
                                                    (if (gx#module-import?
                                                         _in48968_)
                                                        (if (hash-get
                                                             _keytab48959_
                                                             (gx#module-import-name
                                                              _in48968_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in48968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r48970_))
                    _r48970_)
                (if (gx#import-set? _in48968_)
                    (foldl _fold-e48965_
                           _r48970_
                           (gx#import-set-imports _in48968_))
                    _r48970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e48965_)))
                                  (let ((__tmp50879
                                         (foldl _fold-e48972_
                                                '()
                                                _imports48962_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50879)))
                                (_g4883148855_ _g4883248859_)))
                          _id4884948908_
                          _hd4883948876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4884448888_
                                                  _target4884148882_
                                                  '()))
                                               (_g4883148855_
                                                _g4883248859_)))))
                                     (_g4883148855_ _g4883248859_))))
                             (_g4883148855_ _g4883248859_))))
                     (_g4883148855_ _g4883248859_)))))
         (_g4883048977_ _stx48828_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx48982_)
       (let* ((_g4898549009_
               (lambda (_g4898649005_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4898649005_)))
              (_g4898449131_
               (lambda (_g4898649013_)
                 (if (gx#stx-pair? _g4898649013_)
                     (let ((_e4899149016_ (gx#syntax-e _g4898649013_)))
                       (let ((_hd4899049020_
                              (let ()
                                (declare (not safe))
                                (##car _e4899149016_)))
                             (_tl4898949023_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4899149016_))))
                         (if (gx#stx-pair? _tl4898949023_)
                             (let ((_e4899449026_
                                    (gx#syntax-e _tl4898949023_)))
                               (let ((_hd4899349030_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4899449026_)))
                                     (_tl4899249033_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4899449026_))))
                                 (if (gx#stx-pair/null? _tl4899249033_)
                                     (let ((_g50880_
                                            (gx#syntax-split-splice
                                             _tl4899249033_
                                             '0)))
                                       (begin
                                         (let ((_g50881_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50880_)
                                                      (##vector-length
                                                       _g50880_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50881_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50881_)))
                                         (let ((_target4899549036_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50880_ 0)))
                                               (_tl4899749039_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50880_ 1))))
                                           (if (gx#stx-null? _tl4899749039_)
                                               (letrec ((_loop4899849042_
                                                         (lambda (_hd4899649046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4900249049_)
                   (if (gx#stx-pair? _hd4899649046_)
                       (let ((_e4899949052_ (gx#syntax-e _hd4899649046_)))
                         (let ((_lp-hd4900049056_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4899949052_)))
                               (_lp-tl4900149059_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4899949052_))))
                           (_loop4899849042_
                            _lp-tl4900149059_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4900049056_ _id4900249049_)))))
                       (let ((_id4900349062_ (reverse _id4900249049_)))
                         ((lambda (_L49066_ _L49068_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4908549088_ _g4908649091_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4908549088_
                                                  _g4908649091_)))
                                        '()
                                        _L49066_))
                                (let* ((_keys49102_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4909349096_
                                                         _g4909449099_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4909349096_
                                                          _g4909449099_)))
                                                '()
                                                _L49066_)))
                                       (_keytab49113_
                                        (let ((_ht49105_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4910749109_)
                                             (hash-put!
                                              _ht49105_
                                              _g4910749109_
                                              '#t))
                                           _keys49102_)
                                          _ht49105_))
                                       (_imports49116_
                                        (gx#core-expand-import-source
                                         _L49068_))
                                       (_fold-e49126_
                                        (letrec ((_fold-e49119_
                                                  (lambda (_in49122_ _r49124_)
                                                    (if (gx#module-import?
                                                         _in49122_)
                                                        (if (hash-get
                                                             _keytab49113_
                                                             (gx#module-import-name
                                                              _in49122_))
                                                            _r49124_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in49122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49124_)))
                (if (gx#import-set? _in49122_)
                    (foldl _fold-e49119_
                           _r49124_
                           (gx#import-set-imports _in49122_))
                    (let ()
                      (declare (not safe))
                      (cons _in49122_ _r49124_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49119_)))
                                  (let ((__tmp50882
                                         (foldl _fold-e49126_
                                                '()
                                                _imports49116_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50882)))
                                (_g4898549009_ _g4898649013_)))
                          _id4900349062_
                          _hd4899349030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4899849042_
                                                  _target4899549036_
                                                  '()))
                                               (_g4898549009_
                                                _g4898649013_)))))
                                     (_g4898549009_ _g4898649013_))))
                             (_g4898549009_ _g4898649013_))))
                     (_g4898549009_ _g4898649013_)))))
         (_g4898449131_ _stx48982_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_in49183_ _rename49185_)
      (gx#make-module-import
       (gx#module-import-source _in49183_)
       _rename49185_
       (gx#module-import-phi _in49183_)
       (gx#module-import-weak? _in49183_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_name49136_ _pre49138_)
      (let* ((_name4913949147_ _name49136_)
             (_else4914149159_
              (lambda () (make-symbol _pre49138_ _name49136_)))
             (_K4914349167_
              (lambda (_mark49163_ _id49165_)
                (let ((__tmp50883 (make-symbol _pre49138_ _id49165_)))
                  (declare (not safe))
                  (cons __tmp50883 _mark49163_)))))
        (if (let () (declare (not safe)) (##pair? _name4913949147_))
            (let ((_hd4914449171_
                   (let () (declare (not safe)) (##car _name4913949147_)))
                  (_tl4914549174_
                   (let () (declare (not safe)) (##cdr _name4913949147_))))
              (let* ((_id49177_ _hd4914449171_) (_mark49180_ _tl4914549174_))
                (declare (not safe))
                (_K4914349167_ _mark49180_ _id49177_)))
            (let () (declare (not safe)) (_else4914149159_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx49187_)
       (let* ((_g4919049223_
               (lambda (_g4919149219_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4919149219_)))
              (_g4918949409_
               (lambda (_g4919149227_)
                 (if (gx#stx-pair? _g4919149227_)
                     (let ((_e4919749230_ (gx#syntax-e _g4919149227_)))
                       (let ((_hd4919649234_
                              (let ()
                                (declare (not safe))
                                (##car _e4919749230_)))
                             (_tl4919549237_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4919749230_))))
                         (if (gx#stx-pair? _tl4919549237_)
                             (let ((_e4920049240_
                                    (gx#syntax-e _tl4919549237_)))
                               (let ((_hd4919949244_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4920049240_)))
                                     (_tl4919849247_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4920049240_))))
                                 (if (gx#stx-pair/null? _tl4919849247_)
                                     (let ((_g50884_
                                            (gx#syntax-split-splice
                                             _tl4919849247_
                                             '0)))
                                       (begin
                                         (let ((_g50885_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50884_)
                                                      (##vector-length
                                                       _g50884_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50885_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50885_)))
                                         (let ((_target4920149250_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50884_ 0)))
                                               (_tl4920349253_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50884_ 1))))
                                           (if (gx#stx-null? _tl4920349253_)
                                               (letrec ((_loop4920449256_
                                                         (lambda (_hd4920249260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4920849263_
                          _id4920949265_)
                   (if (gx#stx-pair? _hd4920249260_)
                       (let ((_e4920549268_ (gx#syntax-e _hd4920249260_)))
                         (let ((_lp-hd4920649272_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4920549268_)))
                               (_lp-tl4920749275_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4920549268_))))
                           (if (gx#stx-pair? _lp-hd4920649272_)
                               (let ((_e4921449278_
                                      (gx#syntax-e _lp-hd4920649272_)))
                                 (let ((_hd4921349282_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4921449278_)))
                                       (_tl4921249285_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4921449278_))))
                                   (if (gx#stx-pair? _tl4921249285_)
                                       (let ((_e4921749288_
                                              (gx#syntax-e _tl4921249285_)))
                                         (let ((_hd4921649292_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4921749288_)))
                                               (_tl4921549295_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4921749288_))))
                                           (if (gx#stx-null? _tl4921549295_)
                                               (_loop4920449256_
                                                _lp-tl4920749275_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4921649292_
                                                        _new-id4920849263_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4921349282_
                                                        _id4920949265_)))
                                               (_g4919049223_ _g4919149227_))))
                                       (_g4919049223_ _g4919149227_))))
                               (_g4919049223_ _g4919149227_))))
                       (let ((_new-id4921049298_ (reverse _new-id4920849263_))
                             (_id4921149301_ (reverse _id4920949265_)))
                         ((lambda (_L49304_ _L49306_ _L49307_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g4932549328_
                                                      _g4932649331_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4932549328_
                                                       _g4932649331_)))
                                             '()
                                             _L49306_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g4933349336_
                                                      _g4933449339_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4933349336_
                                                       _g4933449339_)))
                                             '()
                                             _L49304_)))
                                (let* ((_keytab49342_ (make-hash-table))
                                       (_found49345_ (make-hash-table))
                                       (_g50886_
                                        (for-each
                                         (lambda (_id49348_ _new-id49350_)
                                           (hash-put!
                                            _keytab49342_
                                            (gx#core-identifier-key _id49348_)
                                            (gx#core-identifier-key
                                             _new-id49350_)))
                                         (foldr (lambda (_g4935149354_
                                                         _g4935249357_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4935149354_
                                                          _g4935249357_)))
                                                '()
                                                _L49306_)
                                         (foldr (lambda (_g4935949362_
                                                         _g4936049365_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4935949362_
                                                          _g4936049365_)))
                                                '()
                                                _L49304_)))
                                       (_imports49370_
                                        (gx#core-expand-import-source
                                         _L49307_))
                                       (_fold-e49390_
                                        (letrec ((_fold-e49373_
                                                  (lambda (_in49376_ _r49378_)
                                                    (if (gx#module-import?
                                                         _in49376_)
                                                        (let* ((_name49380_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in49376_))
                       (_$e49383_ (hash-get _keytab49342_ _name49380_)))
                  (if _$e49383_
                      ((lambda (_rename49387_)
                         (hash-put! _found49345_ _name49380_ '#t)
                         (let ((__tmp50887
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-import-rename|
                                   _in49376_
                                   _rename49387_))))
                           (declare (not safe))
                           (cons __tmp50887 _r49378_)))
                       _$e49383_)
                      (let () (declare (not safe)) (cons _in49376_ _r49378_))))
                (if (gx#import-set? _in49376_)
                    (foldl _fold-e49373_
                           _r49378_
                           (gx#import-set-imports _in49376_))
                    (let ()
                      (declare (not safe))
                      (cons _in49376_ _r49378_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49373_))
                                       (_new-imports49393_
                                        (foldl _fold-e49390_
                                               '()
                                               _imports49370_)))
                                  (for-each
                                   (lambda (_id49398_)
                                     (if (hash-get
                                          _found49345_
                                          (gx#core-identifier-key _id49398_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx49187_
                                          _id49398_)))
                                   (foldr (lambda (_g4940049403_ _g4940149406_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4940049403_
                                                    _g4940149406_)))
                                          '()
                                          _L49306_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports49393_)))
                                (_g4919049223_ _g4919149227_)))
                          _new-id4921049298_
                          _id4921149301_
                          _hd4919949244_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4920449256_
                                                  _target4920149250_
                                                  '()
                                                  '()))
                                               (_g4919049223_
                                                _g4919149227_)))))
                                     (_g4919049223_ _g4919149227_))))
                             (_g4919049223_ _g4919149227_))))
                     (_g4919049223_ _g4919149227_)))))
         (_g4918949409_ _stx49187_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx49415_)
       (let* ((_g4941849436_
               (lambda (_g4941949432_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4941949432_)))
              (_g4941749515_
               (lambda (_g4941949440_)
                 (if (gx#stx-pair? _g4941949440_)
                     (let ((_e4942449443_ (gx#syntax-e _g4941949440_)))
                       (let ((_hd4942349447_
                              (let ()
                                (declare (not safe))
                                (##car _e4942449443_)))
                             (_tl4942249450_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4942449443_))))
                         (if (gx#stx-pair? _tl4942249450_)
                             (let ((_e4942749453_
                                    (gx#syntax-e _tl4942249450_)))
                               (let ((_hd4942649457_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4942749453_)))
                                     (_tl4942549460_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4942749453_))))
                                 (if (gx#stx-pair? _tl4942549460_)
                                     (let ((_e4943049463_
                                            (gx#syntax-e _tl4942549460_)))
                                       (let ((_hd4942949467_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4943049463_)))
                                             (_tl4942849470_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4943049463_))))
                                         (if (gx#stx-null? _tl4942849470_)
                                             ((lambda (_L49473_ _L49475_)
                                                (if (gx#identifier? _L49473_)
                                                    (let* ((_pre49491_
                                                            (gx#stx-e
                                                             _L49473_))
                                                           (_imports49494_
                                                            (gx#core-expand-import-source
                                                             _L49475_))
                                                           (_rename-e49500_
                                                            (lambda (_name49497_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name49497_
                         _pre49491_))))
                   (_fold-e49510_
                    (letrec ((_fold-e49503_
                              (lambda (_in49506_ _r49508_)
                                (if (gx#module-import? _in49506_)
                                    (let ((__tmp50888
                                           (let ((__tmp50889
                                                  (_rename-e49500_
                                                   (gx#module-import-name
                                                    _in49506_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-import-rename|
                                              _in49506_
                                              __tmp50889))))
                                      (declare (not safe))
                                      (cons __tmp50888 _r49508_))
                                    (if (gx#import-set? _in49506_)
                                        (foldl _fold-e49503_
                                               _r49508_
                                               (gx#import-set-imports
                                                _in49506_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in49506_ _r49508_)))))))
                      _fold-e49503_)))
              (let ((__tmp50890 (foldl _fold-e49510_ '() _imports49494_)))
                (declare (not safe))
                (cons 'begin: __tmp50890)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4941849436_
                                                     _g4941949440_)))
                                              _hd4942949467_
                                              _hd4942649457_)
                                             (_g4941849436_ _g4941949440_))))
                                     (_g4941849436_ _g4941949440_))))
                             (_g4941849436_ _g4941949440_))))
                     (_g4941849436_ _g4941949440_)))))
         (_g4941749515_ _stx49415_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx49519_)
       (letrec ((_flatten49522_
                 (lambda (_list-of-lists49777_)
                   (foldr (lambda (_v49780_ _acc49782_)
                            (if (let () (declare (not safe)) (null? _v49780_))
                                _acc49782_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v49780_))
                                    (append (_flatten49522_ _v49780_)
                                            _acc49782_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v49780_ _acc49782_)))))
                          '()
                          _list-of-lists49777_)))
                (_expand-path49524_
                 (lambda (_top49645_ _mod49647_)
                   (let* ((___stx5072750728_ _mod49647_)
                          (_g4965049672_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx5072750728_))))
                     (let ((___kont5073050731_
                            (lambda (_L49740_ _L49742_)
                              (map (lambda (_mod49757_)
                                     (gx#stx-identifier
                                      _top49645_
                                      _top49645_
                                      '"/"
                                      _mod49757_))
                                   (_flatten49522_
                                    (map (lambda (_g4975949761_)
                                           (_expand-path49524_
                                            _L49742_
                                            _g4975949761_))
                                         (foldr (lambda (_g4976449767_
                                                         _g4976549770_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4976449767_
                                                          _g4976549770_)))
                                                '()
                                                _L49740_))))))
                           (___kont5073450735_
                            (lambda (_L49679_)
                              (gx#stx-identifier
                               _top49645_
                               _top49645_
                               '"/"
                               _L49679_))))
                       (let* ((_g4964949693_
                               (lambda ()
                                 (let ((_L49679_ ___stx5072750728_))
                                   (if (or (gx#identifier? _L49679_)
                                           (gx#stx-fixnum? _L49679_))
                                       (___kont5073450735_ _L49679_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4965049672_))))))
                              (___match5075050751_
                               (lambda (_e4965649700_
                                        _hd4965549704_
                                        _tl4965449707_
                                        ___splice5073250733_
                                        _target4965749710_
                                        _tl4965949713_)
                                 (letrec ((_loop4966049716_
                                           (lambda (_hd4965849720_
                                                    _mod4966449723_)
                                             (if (gx#stx-pair? _hd4965849720_)
                                                 (let ((_e4966149726_
                                                        (gx#syntax-e
                                                         _hd4965849720_)))
                                                   (let ((_lp-tl4966349733_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4966149726_)))
                                                         (_lp-hd4966249730_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4966149726_))))
                                                     (_loop4966049716_
                                                      _lp-tl4966349733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd4966249730_
                                                              _mod4966449723_)))))
                                                 (let ((_mod4966549736_
                                                        (reverse _mod4966449723_)))
                                                   (___kont5073050731_
                                                    _mod4966549736_
                                                    _hd4965549704_))))))
                                   (_loop4966049716_
                                    _target4965749710_
                                    '())))))
                         (if (gx#stx-pair? ___stx5072750728_)
                             (let ((_e4965649700_
                                    (gx#syntax-e ___stx5072750728_)))
                               (let ((_tl4965449707_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4965649700_)))
                                     (_hd4965549704_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4965649700_))))
                                 (if (gx#stx-pair/null? _tl4965449707_)
                                     (let ((___splice5073250733_
                                            (gx#syntax-split-splice
                                             _tl4965449707_
                                             '0)))
                                       (let ((_tl4965949713_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5073250733_
                                                 '1)))
                                             (_target4965749710_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5073250733_
                                                 '0))))
                                         (if (gx#stx-null? _tl4965949713_)
                                             (___match5075050751_
                                              _e4965649700_
                                              _hd4965549704_
                                              _tl4965449707_
                                              ___splice5073250733_
                                              _target4965749710_
                                              _tl4965949713_)
                                             (let ()
                                               (declare (not safe))
                                               (_g4964949693_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g4964949693_)))))
                             (let ()
                               (declare (not safe))
                               (_g4964949693_)))))))))
         (let* ((_g4952649550_
                 (lambda (_g4952749546_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g4952749546_)))
                (_g4952549641_
                 (lambda (_g4952749554_)
                   (if (gx#stx-pair? _g4952749554_)
                       (let ((_e4953249557_ (gx#syntax-e _g4952749554_)))
                         (let ((_hd4953149561_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4953249557_)))
                               (_tl4953049564_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4953249557_))))
                           (if (gx#stx-pair? _tl4953049564_)
                               (let ((_e4953549567_
                                      (gx#syntax-e _tl4953049564_)))
                                 (let ((_hd4953449571_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4953549567_)))
                                       (_tl4953349574_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4953549567_))))
                                   (if (gx#stx-pair/null? _tl4953349574_)
                                       (let ((_g50891_
                                              (gx#syntax-split-splice
                                               _tl4953349574_
                                               '0)))
                                         (begin
                                           (let ((_g50892_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50891_)
                                                        (##vector-length
                                                         _g50891_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50892_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50892_)))
                                           (let ((_target4953649577_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50891_ 0)))
                                                 (_tl4953849580_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50891_
                                                     1))))
                                             (if (gx#stx-null? _tl4953849580_)
                                                 (letrec ((_loop4953949583_
                                                           (lambda (_hd4953749587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod4954349590_)
                     (if (gx#stx-pair? _hd4953749587_)
                         (let ((_e4954049593_ (gx#syntax-e _hd4953749587_)))
                           (let ((_lp-hd4954149597_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4954049593_)))
                                 (_lp-tl4954249600_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4954049593_))))
                             (_loop4953949583_
                              _lp-tl4954249600_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd4954149597_ _mod4954349590_)))))
                         (let ((_mod4954449603_ (reverse _mod4954349590_)))
                           ((lambda (_L49607_ _L49609_)
                              (let ((__tmp50893
                                     (_flatten49522_
                                      (map (lambda (_g4962749629_)
                                             (_expand-path49524_
                                              _L49609_
                                              _g4962749629_))
                                           (foldr (lambda (_g4963249635_
                                                           _g4963349638_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4963249635_
                                                            _g4963349638_)))
                                                  '()
                                                  _L49607_)))))
                                (declare (not safe))
                                (cons 'begin: __tmp50893)))
                            _mod4954449603_
                            _hd4953449571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop4953949583_
                                                    _target4953649577_
                                                    '()))
                                                 (_g4952649550_
                                                  _g4952749554_)))))
                                       (_g4952649550_ _g4952749554_))))
                               (_g4952649550_ _g4952749554_))))
                       (_g4952649550_ _g4952749554_)))))
           (_g4952549641_ _stx49519_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx49786_)
       (let* ((_g4978949813_
               (lambda (_g4979049809_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4979049809_)))
              (_g4978849935_
               (lambda (_g4979049817_)
                 (if (gx#stx-pair? _g4979049817_)
                     (let ((_e4979549820_ (gx#syntax-e _g4979049817_)))
                       (let ((_hd4979449824_
                              (let ()
                                (declare (not safe))
                                (##car _e4979549820_)))
                             (_tl4979349827_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4979549820_))))
                         (if (gx#stx-pair? _tl4979349827_)
                             (let ((_e4979849830_
                                    (gx#syntax-e _tl4979349827_)))
                               (let ((_hd4979749834_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4979849830_)))
                                     (_tl4979649837_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4979849830_))))
                                 (if (gx#stx-pair/null? _tl4979649837_)
                                     (let ((_g50894_
                                            (gx#syntax-split-splice
                                             _tl4979649837_
                                             '0)))
                                       (begin
                                         (let ((_g50895_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50894_)
                                                      (##vector-length
                                                       _g50894_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50895_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50895_)))
                                         (let ((_target4979949840_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50894_ 0)))
                                               (_tl4980149843_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50894_ 1))))
                                           (if (gx#stx-null? _tl4980149843_)
                                               (letrec ((_loop4980249846_
                                                         (lambda (_hd4980049850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4980649853_)
                   (if (gx#stx-pair? _hd4980049850_)
                       (let ((_e4980349856_ (gx#syntax-e _hd4980049850_)))
                         (let ((_lp-hd4980449860_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4980349856_)))
                               (_lp-tl4980549863_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4980349856_))))
                           (_loop4980249846_
                            _lp-tl4980549863_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4980449860_ _id4980649853_)))))
                       (let ((_id4980749866_ (reverse _id4980649853_)))
                         ((lambda (_L49870_ _L49872_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4988949892_ _g4989049895_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4988949892_
                                                  _g4989049895_)))
                                        '()
                                        _L49870_))
                                (let* ((_keys49906_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4989749900_
                                                         _g4989849903_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4989749900_
                                                          _g4989849903_)))
                                                '()
                                                _L49870_)))
                                       (_keytab49917_
                                        (let ((_ht49909_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4991149913_)
                                             (hash-put!
                                              _ht49909_
                                              _g4991149913_
                                              '#t))
                                           _keys49906_)
                                          _ht49909_))
                                       (_exports49920_
                                        (gx#core-expand-export-source
                                         _L49872_))
                                       (_fold-e49930_
                                        (letrec ((_fold-e49923_
                                                  (lambda (_out49926_ _r49928_)
                                                    (if (gx#module-export?
                                                         _out49926_)
                                                        (if (hash-get
                                                             _keytab49917_
                                                             (gx#module-export-name
                                                              _out49926_))
                                                            _r49928_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _out49926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49928_)))
                (if (gx#export-set? _out49926_)
                    (foldl _fold-e49923_
                           _r49928_
                           (gx#export-set-exports _out49926_))
                    _r49928_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49923_)))
                                  (let ((__tmp50896
                                         (foldl _fold-e49930_
                                                '()
                                                _exports49920_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50896)))
                                (_g4978949813_ _g4979049817_)))
                          _id4980749866_
                          _hd4979749834_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4980249846_
                                                  _target4979949840_
                                                  '()))
                                               (_g4978949813_
                                                _g4979049817_)))))
                                     (_g4978949813_ _g4979049817_))))
                             (_g4978949813_ _g4979049817_))))
                     (_g4978949813_ _g4979049817_)))))
         (_g4978849935_ _stx49786_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_out49940_ _rename49942_)
      (gx#make-module-export
       (gx#module-export-context _out49940_)
       (gx#module-export-key _out49940_)
       (gx#module-export-phi _out49940_)
       _rename49942_
       (gx#module-export-weak? _out49940_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx49944_)
       (let* ((_g4994749980_
               (lambda (_g4994849976_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4994849976_)))
              (_g4994650166_
               (lambda (_g4994849984_)
                 (if (gx#stx-pair? _g4994849984_)
                     (let ((_e4995449987_ (gx#syntax-e _g4994849984_)))
                       (let ((_hd4995349991_
                              (let ()
                                (declare (not safe))
                                (##car _e4995449987_)))
                             (_tl4995249994_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4995449987_))))
                         (if (gx#stx-pair? _tl4995249994_)
                             (let ((_e4995749997_
                                    (gx#syntax-e _tl4995249994_)))
                               (let ((_hd4995650001_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4995749997_)))
                                     (_tl4995550004_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4995749997_))))
                                 (if (gx#stx-pair/null? _tl4995550004_)
                                     (let ((_g50897_
                                            (gx#syntax-split-splice
                                             _tl4995550004_
                                             '0)))
                                       (begin
                                         (let ((_g50898_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50897_)
                                                      (##vector-length
                                                       _g50897_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50898_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50898_)))
                                         (let ((_target4995850007_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50897_ 0)))
                                               (_tl4996050010_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50897_ 1))))
                                           (if (gx#stx-null? _tl4996050010_)
                                               (letrec ((_loop4996150013_
                                                         (lambda (_hd4995950017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4996550020_
                          _id4996650022_)
                   (if (gx#stx-pair? _hd4995950017_)
                       (let ((_e4996250025_ (gx#syntax-e _hd4995950017_)))
                         (let ((_lp-hd4996350029_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4996250025_)))
                               (_lp-tl4996450032_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4996250025_))))
                           (if (gx#stx-pair? _lp-hd4996350029_)
                               (let ((_e4997150035_
                                      (gx#syntax-e _lp-hd4996350029_)))
                                 (let ((_hd4997050039_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4997150035_)))
                                       (_tl4996950042_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4997150035_))))
                                   (if (gx#stx-pair? _tl4996950042_)
                                       (let ((_e4997450045_
                                              (gx#syntax-e _tl4996950042_)))
                                         (let ((_hd4997350049_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4997450045_)))
                                               (_tl4997250052_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4997450045_))))
                                           (if (gx#stx-null? _tl4997250052_)
                                               (_loop4996150013_
                                                _lp-tl4996450032_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4997350049_
                                                        _new-id4996550020_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4997050039_
                                                        _id4996650022_)))
                                               (_g4994749980_ _g4994849984_))))
                                       (_g4994749980_ _g4994849984_))))
                               (_g4994749980_ _g4994849984_))))
                       (let ((_new-id4996750055_ (reverse _new-id4996550020_))
                             (_id4996850058_ (reverse _id4996650022_)))
                         ((lambda (_L50061_ _L50063_ _L50064_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g5008250085_
                                                      _g5008350088_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5008250085_
                                                       _g5008350088_)))
                                             '()
                                             _L50063_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g5009050093_
                                                      _g5009150096_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5009050093_
                                                       _g5009150096_)))
                                             '()
                                             _L50061_)))
                                (let* ((_keytab50099_ (make-hash-table))
                                       (_found50102_ (make-hash-table))
                                       (_g50899_
                                        (for-each
                                         (lambda (_id50105_ _new-id50107_)
                                           (hash-put!
                                            _keytab50099_
                                            (gx#core-identifier-key _id50105_)
                                            (gx#core-identifier-key
                                             _new-id50107_)))
                                         (foldr (lambda (_g5010850111_
                                                         _g5010950114_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5010850111_
                                                          _g5010950114_)))
                                                '()
                                                _L50063_)
                                         (foldr (lambda (_g5011650119_
                                                         _g5011750122_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5011650119_
                                                          _g5011750122_)))
                                                '()
                                                _L50061_)))
                                       (_exports50127_
                                        (gx#core-expand-export-source
                                         _L50064_))
                                       (_fold-e50147_
                                        (letrec ((_fold-e50130_
                                                  (lambda (_out50133_ _r50135_)
                                                    (if (gx#module-export?
                                                         _out50133_)
                                                        (let* ((_name50137_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out50133_))
                       (_$e50140_ (hash-get _keytab50099_ _name50137_)))
                  (if _$e50140_
                      ((lambda (_rename50144_)
                         (hash-put! _found50102_ _name50137_ '#t)
                         (let ((__tmp50900
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-export-rename|
                                   _out50133_
                                   _rename50144_))))
                           (declare (not safe))
                           (cons __tmp50900 _r50135_)))
                       _$e50140_)
                      (let ()
                        (declare (not safe))
                        (cons _out50133_ _r50135_))))
                (if (gx#export-set? _out50133_)
                    (foldl _fold-e50130_
                           _r50135_
                           (gx#export-set-exports _out50133_))
                    (let ()
                      (declare (not safe))
                      (cons _out50133_ _r50135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e50130_))
                                       (_new-exports50150_
                                        (foldl _fold-e50147_
                                               '()
                                               _exports50127_)))
                                  (for-each
                                   (lambda (_id50155_)
                                     (if (hash-get
                                          _found50102_
                                          (gx#core-identifier-key _id50155_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx49944_
                                          _id50155_)))
                                   (foldr (lambda (_g5015750160_ _g5015850163_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g5015750160_
                                                    _g5015850163_)))
                                          '()
                                          _L50063_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports50150_)))
                                (_g4994749980_ _g4994849984_)))
                          _new-id4996750055_
                          _id4996850058_
                          _hd4995650001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4996150013_
                                                  _target4995850007_
                                                  '()
                                                  '()))
                                               (_g4994749980_
                                                _g4994849984_)))))
                                     (_g4994749980_ _g4994849984_))))
                             (_g4994749980_ _g4994849984_))))
                     (_g4994749980_ _g4994849984_)))))
         (_g4994650166_ _stx49944_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx50172_)
       (let* ((_g5017550193_
               (lambda (_g5017650189_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5017650189_)))
              (_g5017450272_
               (lambda (_g5017650197_)
                 (if (gx#stx-pair? _g5017650197_)
                     (let ((_e5018150200_ (gx#syntax-e _g5017650197_)))
                       (let ((_hd5018050204_
                              (let ()
                                (declare (not safe))
                                (##car _e5018150200_)))
                             (_tl5017950207_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5018150200_))))
                         (if (gx#stx-pair? _tl5017950207_)
                             (let ((_e5018450210_
                                    (gx#syntax-e _tl5017950207_)))
                               (let ((_hd5018350214_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5018450210_)))
                                     (_tl5018250217_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5018450210_))))
                                 (if (gx#stx-pair? _tl5018250217_)
                                     (let ((_e5018750220_
                                            (gx#syntax-e _tl5018250217_)))
                                       (let ((_hd5018650224_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5018750220_)))
                                             (_tl5018550227_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5018750220_))))
                                         (if (gx#stx-null? _tl5018550227_)
                                             ((lambda (_L50230_ _L50232_)
                                                (if (gx#identifier? _L50230_)
                                                    (let* ((_pre50248_
                                                            (gx#stx-e
                                                             _L50230_))
                                                           (_exports50251_
                                                            (gx#core-expand-export-source
                                                             _L50232_))
                                                           (_rename-e50257_
                                                            (lambda (_name50254_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name50254_
                         _pre50248_))))
                   (_fold-e50267_
                    (letrec ((_fold-e50260_
                              (lambda (_out50263_ _r50265_)
                                (if (gx#module-export? _out50263_)
                                    (let ((__tmp50901
                                           (let ((__tmp50902
                                                  (_rename-e50257_
                                                   (gx#module-export-name
                                                    _out50263_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-export-rename|
                                              _out50263_
                                              __tmp50902))))
                                      (declare (not safe))
                                      (cons __tmp50901 _r50265_))
                                    (if (gx#export-set? _out50263_)
                                        (foldl _fold-e50260_
                                               _r50265_
                                               (gx#export-set-exports
                                                _out50263_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out50263_ _r50265_)))))))
                      _fold-e50260_)))
              (let ((__tmp50903 (foldl _fold-e50267_ '() _exports50251_)))
                (declare (not safe))
                (cons 'begin: __tmp50903)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5017550193_
                                                     _g5017650197_)))
                                              _hd5018650224_
                                              _hd5018350214_)
                                             (_g5017550193_ _g5017650197_))))
                                     (_g5017550193_ _g5017650197_))))
                             (_g5017550193_ _g5017650197_))))
                     (_g5017550193_ _g5017650197_)))))
         (_g5017450272_ _stx50172_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx50276_)
       (letrec ((_identifiers50279_
                 (lambda (_id50511_ _unchecked?50513_)
                   (let ((_info50515_ (gx#syntax-local-value _id50511_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop$<MOP:2>#class-type-info::t
                            _info50515_))
                         (let ((__tmp50904
                                (let ((__tmp50908
                                       (let ((__obj50812 _info50515_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj50812
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj50812
                                                '10
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                              __obj50812
                                              'type-descriptor))))
                                      (__tmp50905
                                       (foldr cons
                                              (let ((__tmp50907
                                                     (let ((__obj50813
                                                            _info50515_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50813
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50813
                                                              '12
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj50813
                                                            'predicate))))
                                                    (__tmp50906
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?50513_
                               (foldr cons
                                      (map cdr
                                           (let ((__obj50814 _info50515_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50814
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50814
                                                    '16
                                                    gerbil/core/mop$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  __obj50814
                                                  'unchecked-mutators))))
                                      (map cdr
                                           (let ((__obj50815 _info50515_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50815
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50815
                                                    '15
                                                    gerbil/core/mop$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  __obj50815
                                                  'unchecked-accessors)))))
                               '())
                           (map cdr
                                (let ((__obj50816 _info50515_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj50816
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj50816
                                         '14
                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop$<MOP:2>#class-type-info::t
                                       __obj50816
                                       'mutators)))))
                    (map cdr
                         (let ((__obj50817 _info50515_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj50817
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj50817
                                  '13
                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                __obj50817
                                'accessors)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50907 __tmp50906))
                                              (let ((_ctor50518_
                                                     (let ((__obj50818
                                                            _info50515_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50818
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50818
                                                              '11
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj50818
                                                            'constructor)))))
                                                (if _ctor50518_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor50518_ '()))
                                                    '())))))
                                  (declare (not safe))
                                  (cons __tmp50908 __tmp50905))))
                           (declare (not safe))
                           (cons _id50511_ __tmp50904))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx50276_
                          _id50511_))))))
         (let* ((___stx5075350754_ _stx50276_)
                (_g5028350324_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx5075350754_))))
           (let ((___kont5075650757_
                  (lambda (_L50472_ _L50474_)
                    (let ((__tmp50909
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5049350495_)
                               (_identifiers50279_
                                _g5049350495_
                                (gx#stx-e _L50474_)))
                             (foldr (lambda (_g5049850501_ _g5049950504_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5049850501_ _g5049950504_)))
                                    '()
                                    _L50472_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50909))))
                 (___kont5076050761_
                  (lambda (_L50371_)
                    (let ((__tmp50910
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5038750389_)
                               (_identifiers50279_ _g5038750389_ '#f))
                             (foldr (lambda (_g5039250395_ _g5039350398_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5039250395_ _g5039350398_)))
                                    '()
                                    _L50371_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50910)))))
             (let* ((___match5081050811_
                     (lambda (_e5030950331_
                              _hd5030850335_
                              _tl5030750338_
                              ___splice5076250763_
                              _target5031050341_
                              _tl5031250344_)
                       (letrec ((_loop5031350347_
                                 (lambda (_hd5031150351_ _id5031750354_)
                                   (if (gx#stx-pair? _hd5031150351_)
                                       (let ((_e5031450357_
                                              (gx#syntax-e _hd5031150351_)))
                                         (let ((_lp-tl5031650364_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5031450357_)))
                                               (_lp-hd5031550361_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5031450357_))))
                                           (_loop5031350347_
                                            _lp-tl5031650364_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5031550361_
                                                    _id5031750354_)))))
                                       (let ((_id5031850367_
                                              (reverse _id5031750354_)))
                                         (___kont5076050761_
                                          _id5031850367_))))))
                         (_loop5031350347_ _target5031050341_ '()))))
                    (___match5079650797_
                     (lambda (_e5028950408_
                              _hd5028850412_
                              _tl5028750415_
                              _e5029250418_
                              _hd5029150422_
                              _tl5029050425_
                              _e5029350428_
                              _e5029650432_
                              _hd5029550436_
                              _tl5029450439_
                              ___splice5075850759_
                              _target5029750442_
                              _tl5029950445_)
                       (letrec ((_loop5030050448_
                                 (lambda (_hd5029850452_ _id5030450455_)
                                   (if (gx#stx-pair? _hd5029850452_)
                                       (let ((_e5030150458_
                                              (gx#syntax-e _hd5029850452_)))
                                         (let ((_lp-tl5030350465_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5030150458_)))
                                               (_lp-hd5030250462_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5030150458_))))
                                           (_loop5030050448_
                                            _lp-tl5030350465_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5030250462_
                                                    _id5030450455_)))))
                                       (let ((_id5030550468_
                                              (reverse _id5030450455_)))
                                         (___kont5075650757_
                                          _id5030550468_
                                          _hd5029550436_))))))
                         (_loop5030050448_ _target5029750442_ '())))))
               (if (gx#stx-pair? ___stx5075350754_)
                   (let ((_e5028950408_ (gx#syntax-e ___stx5075350754_)))
                     (let ((_tl5028750415_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5028950408_)))
                           (_hd5028850412_
                            (let ()
                              (declare (not safe))
                              (##car _e5028950408_))))
                       (if (gx#stx-pair? _tl5028750415_)
                           (let ((_e5029250418_ (gx#syntax-e _tl5028750415_)))
                             (let ((_tl5029050425_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5029250418_)))
                                   (_hd5029150422_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5029250418_))))
                               (if (gx#stx-datum? _hd5029150422_)
                                   (let ((_e5029350428_
                                          (gx#stx-e _hd5029150422_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e5029350428_ 'unchecked:))
                                         (if (gx#stx-pair? _tl5029050425_)
                                             (let ((_e5029650432_
                                                    (gx#syntax-e
                                                     _tl5029050425_)))
                                               (let ((_tl5029450439_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5029650432_)))
                                                     (_hd5029550436_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5029650432_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl5029450439_)
                                                     (let ((___splice5075850759_
                                                            (gx#syntax-split-splice
                                                             _tl5029450439_
                                                             '0)))
                                                       (let ((_tl5029950445_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice5075850759_ '1)))
                     (_target5029750442_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice5075850759_ '0))))
                 (if (gx#stx-null? _tl5029950445_)
                     (___match5079650797_
                      _e5028950408_
                      _hd5028850412_
                      _tl5028750415_
                      _e5029250418_
                      _hd5029150422_
                      _tl5029050425_
                      _e5029350428_
                      _e5029650432_
                      _hd5029550436_
                      _tl5029450439_
                      ___splice5075850759_
                      _target5029750442_
                      _tl5029950445_)
                     (if (gx#stx-pair/null? _tl5028750415_)
                         (let ((___splice5076250763_
                                (gx#syntax-split-splice _tl5028750415_ '0)))
                           (let ((_tl5031250344_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5076250763_ '1)))
                                 (_target5031050341_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5076250763_ '0))))
                             (if (gx#stx-null? _tl5031250344_)
                                 (___match5081050811_
                                  _e5028950408_
                                  _hd5028850412_
                                  _tl5028750415_
                                  ___splice5076250763_
                                  _target5031050341_
                                  _tl5031250344_)
                                 (let ()
                                   (declare (not safe))
                                   (_g5028350324_)))))
                         (let () (declare (not safe)) (_g5028350324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl5028750415_)
                                                         (let ((___splice5076250763_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5028750415_
                         '0)))
                   (let ((_tl5031250344_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5076250763_ '1)))
                         (_target5031050341_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5076250763_ '0))))
                     (if (gx#stx-null? _tl5031250344_)
                         (___match5081050811_
                          _e5028950408_
                          _hd5028850412_
                          _tl5028750415_
                          ___splice5076250763_
                          _target5031050341_
                          _tl5031250344_)
                         (let () (declare (not safe)) (_g5028350324_)))))
                 (let () (declare (not safe)) (_g5028350324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl5028750415_)
                                                 (let ((___splice5076250763_
                                                        (gx#syntax-split-splice
                                                         _tl5028750415_
                                                         '0)))
                                                   (let ((_tl5031250344_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5076250763_
                                                             '1)))
                                                         (_target5031050341_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5076250763_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl5031250344_)
                                                         (___match5081050811_
                                                          _e5028950408_
                                                          _hd5028850412_
                                                          _tl5028750415_
                                                          ___splice5076250763_
                                                          _target5031050341_
                                                          _tl5031250344_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g5028350324_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g5028350324_))))
                                         (if (gx#stx-pair/null? _tl5028750415_)
                                             (let ((___splice5076250763_
                                                    (gx#syntax-split-splice
                                                     _tl5028750415_
                                                     '0)))
                                               (let ((_tl5031250344_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5076250763_
                                                         '1)))
                                                     (_target5031050341_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5076250763_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl5031250344_)
                                                     (___match5081050811_
                                                      _e5028950408_
                                                      _hd5028850412_
                                                      _tl5028750415_
                                                      ___splice5076250763_
                                                      _target5031050341_
                                                      _tl5031250344_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g5028350324_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g5028350324_)))))
                                   (if (gx#stx-pair/null? _tl5028750415_)
                                       (let ((___splice5076250763_
                                              (gx#syntax-split-splice
                                               _tl5028750415_
                                               '0)))
                                         (let ((_tl5031250344_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5076250763_
                                                   '1)))
                                               (_target5031050341_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5076250763_
                                                   '0))))
                                           (if (gx#stx-null? _tl5031250344_)
                                               (___match5081050811_
                                                _e5028950408_
                                                _hd5028850412_
                                                _tl5028750415_
                                                ___splice5076250763_
                                                _target5031050341_
                                                _tl5031250344_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g5028350324_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g5028350324_))))))
                           (if (gx#stx-pair/null? _tl5028750415_)
                               (let ((___splice5076250763_
                                      (gx#syntax-split-splice
                                       _tl5028750415_
                                       '0)))
                                 (let ((_tl5031250344_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5076250763_
                                           '1)))
                                       (_target5031050341_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5076250763_
                                           '0))))
                                   (if (gx#stx-null? _tl5031250344_)
                                       (___match5081050811_
                                        _e5028950408_
                                        _hd5028850412_
                                        _tl5028750415_
                                        ___splice5076250763_
                                        _target5031050341_
                                        _tl5031250344_)
                                       (let ()
                                         (declare (not safe))
                                         (_g5028350324_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g5028350324_))))))
                   (let () (declare (not safe)) (_g5028350324_)))))))))))
