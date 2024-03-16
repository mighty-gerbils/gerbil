(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_$stx47888_)
      (let* ((___stx5049050491_ _$stx47888_)
             (_g4789347912_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5049050491_))))
        (let ((___kont5049350494_
               (lambda ()
                 (let ((__tmp50786 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50786 '()))))
              (___kont5049550496_
               (lambda (_L47939_ _L47941_ _L47942_)
                 (let ((__tmp50799 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50787
                        (let ((__tmp50796
                               (let ((__tmp50797
                                      (let ((__tmp50798
                                             (let ()
                                               (declare (not safe))
                                               (cons _L47942_ _L47939_))))
                                        (declare (not safe))
                                        (cons __tmp50798 '()))))
                                 (declare (not safe))
                                 (cons _L47941_ __tmp50797)))
                              (__tmp50788
                               (let ((__tmp50789
                                      (let ((__tmp50795
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50790
                                             (let ((__tmp50791
                                                    (let ((__tmp50794
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50792
                                                           (let ((__tmp50793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L47941_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50793))))
              (declare (not safe))
              (cons __tmp50794 __tmp50792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50791 '()))))
                                        (declare (not safe))
                                        (cons __tmp50795 __tmp50790))))
                                 (declare (not safe))
                                 (cons __tmp50789 '()))))
                          (declare (not safe))
                          (cons __tmp50796 __tmp50788))))
                   (declare (not safe))
                   (cons __tmp50799 __tmp50787)))))
          (if (gx#stx-pair? ___stx5049050491_)
              (let ((_e4789547964_ (gx#syntax-e ___stx5049050491_)))
                (let ((_tl4789747971_
                       (let () (declare (not safe)) (##cdr _e4789547964_)))
                      (_hd4789647968_
                       (let () (declare (not safe)) (##car _e4789547964_))))
                  (if (gx#stx-null? _tl4789747971_)
                      (___kont5049350494_)
                      (if (gx#stx-pair? _tl4789747971_)
                          (let ((_e4790447929_ (gx#syntax-e _tl4789747971_)))
                            (let ((_tl4790647936_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4790447929_)))
                                  (_hd4790547933_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4790447929_))))
                              (___kont5049550496_
                               _tl4790647936_
                               _hd4790547933_
                               _hd4789647968_)))
                          (let () (declare (not safe)) (_g4789347912_))))))
              (let () (declare (not safe)) (_g4789347912_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_$stx47982_)
      (let* ((___stx5052050521_ _$stx47982_)
             (_g4798748027_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5052050521_))))
        (let ((___kont5052350524_
               (lambda (_L48165_ _L48167_)
                 (let ((__tmp50805 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50800
                        (let ((__tmp50801
                               (let ((__tmp50802
                                      (let ((__tmp50804
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50803
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48165_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50804 __tmp50803))))
                                 (declare (not safe))
                                 (cons __tmp50802 '()))))
                          (declare (not safe))
                          (cons _L48167_ __tmp50801))))
                   (declare (not safe))
                   (cons __tmp50805 __tmp50800))))
              (___kont5052550526_
               (lambda (_L48094_ _L48096_ _L48097_ _L48098_)
                 (let ((__tmp50806
                        (let ((__tmp50807
                               (let ((__tmp50808
                                      (let ((__tmp50811
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50809
                                             (let ((__tmp50810
                                                    (foldr (lambda (_g4811948122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4812048125_)
                     (let ()
                       (declare (not safe))
                       (cons _g4811948122_ _g4812048125_)))
                   '()
                   _L48094_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48096_ __tmp50810))))
                                        (declare (not safe))
                                        (cons __tmp50811 __tmp50809))))
                                 (declare (not safe))
                                 (cons __tmp50808 '()))))
                          (declare (not safe))
                          (cons _L48097_ __tmp50807))))
                   (declare (not safe))
                   (cons _L48098_ __tmp50806)))))
          (let* ((___match5057550576_
                  (lambda (_e4800448034_
                           _hd4800548038_
                           _tl4800648041_
                           _e4800748044_
                           _hd4800848048_
                           _tl4800948051_
                           _e4801048054_
                           _hd4801148058_
                           _tl4801248061_
                           ___splice5052750528_
                           _target4801348064_
                           _tl4801548067_)
                    (letrec ((_loop4801648070_
                              (lambda (_hd4801448074_ _body4802048077_)
                                (if (gx#stx-pair? _hd4801448074_)
                                    (let ((_e4801748080_
                                           (gx#syntax-e _hd4801448074_)))
                                      (let ((_lp-tl4801948087_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4801748080_)))
                                            (_lp-hd4801848084_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4801748080_))))
                                        (_loop4801648070_
                                         _lp-tl4801948087_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4801848084_
                                                 _body4802048077_)))))
                                    (let ((_body4802148090_
                                           (reverse _body4802048077_)))
                                      (let ((_L48094_ _body4802148090_)
                                            (_L48096_ _tl4801248061_)
                                            (_L48097_ _hd4801148058_)
                                            (_L48098_ _hd4800548038_))
                                        (if (gx#identifier? _L48097_)
                                            (___kont5052550526_
                                             _L48094_
                                             _L48096_
                                             _L48097_
                                             _L48098_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4798748027_)))))))))
                      (_loop4801648070_ _target4801348064_ '()))))
                 (___match5054950550_
                  (lambda (_e4799148135_
                           _hd4799248139_
                           _tl4799348142_
                           _e4799448145_
                           _hd4799548149_
                           _tl4799648152_
                           _e4799748155_
                           _hd4799848159_
                           _tl4799948162_)
                    (let ((_L48165_ _hd4799848159_) (_L48167_ _hd4799548149_))
                      (if (gx#identifier? _L48167_)
                          (___kont5052350524_ _L48165_ _L48167_)
                          (if (gx#stx-pair? _hd4799548149_)
                              (let ((_e4801048054_
                                     (gx#syntax-e _hd4799548149_)))
                                (let ((_tl4801248061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4801048054_)))
                                      (_hd4801148058_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4801048054_))))
                                  (if (gx#stx-pair/null? _tl4799648152_)
                                      (let ((___splice5052750528_
                                             (gx#syntax-split-splice
                                              _tl4799648152_
                                              '0)))
                                        (let ((_tl4801548067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5052750528_
                                                  '1)))
                                              (_target4801348064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5052750528_
                                                  '0))))
                                          (if (gx#stx-null? _tl4801548067_)
                                              (___match5057550576_
                                               _e4799148135_
                                               _hd4799248139_
                                               _tl4799348142_
                                               _e4799448145_
                                               _hd4799548149_
                                               _tl4799648152_
                                               _e4801048054_
                                               _hd4801148058_
                                               _tl4801248061_
                                               ___splice5052750528_
                                               _target4801348064_
                                               _tl4801548067_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4798748027_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4798748027_)))))
                              (let ()
                                (declare (not safe))
                                (_g4798748027_))))))))
            (if (gx#stx-pair? ___stx5052050521_)
                (let ((_e4799148135_ (gx#syntax-e ___stx5052050521_)))
                  (let ((_tl4799348142_
                         (let () (declare (not safe)) (##cdr _e4799148135_)))
                        (_hd4799248139_
                         (let () (declare (not safe)) (##car _e4799148135_))))
                    (if (gx#stx-pair? _tl4799348142_)
                        (let ((_e4799448145_ (gx#syntax-e _tl4799348142_)))
                          (let ((_tl4799648152_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4799448145_)))
                                (_hd4799548149_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4799448145_))))
                            (if (gx#stx-pair? _tl4799648152_)
                                (let ((_e4799748155_
                                       (gx#syntax-e _tl4799648152_)))
                                  (let ((_tl4799948162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4799748155_)))
                                        (_hd4799848159_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4799748155_))))
                                    (if (gx#stx-null? _tl4799948162_)
                                        (___match5054950550_
                                         _e4799148135_
                                         _hd4799248139_
                                         _tl4799348142_
                                         _e4799448145_
                                         _hd4799548149_
                                         _tl4799648152_
                                         _e4799748155_
                                         _hd4799848159_
                                         _tl4799948162_)
                                        (if (gx#stx-pair? _hd4799548149_)
                                            (let ((_e4801048054_
                                                   (gx#syntax-e
                                                    _hd4799548149_)))
                                              (let ((_tl4801248061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4801048054_)))
                                                    (_hd4801148058_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4801048054_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4799648152_)
                                                    (let ((___splice5052750528_
                                                           (gx#syntax-split-splice
                                                            _tl4799648152_
                                                            '0)))
                                                      (let ((_tl4801548067_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5052750528_ '1)))
                    (_target4801348064_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5052750528_ '0))))
                (if (gx#stx-null? _tl4801548067_)
                    (___match5057550576_
                     _e4799148135_
                     _hd4799248139_
                     _tl4799348142_
                     _e4799448145_
                     _hd4799548149_
                     _tl4799648152_
                     _e4801048054_
                     _hd4801148058_
                     _tl4801248061_
                     ___splice5052750528_
                     _target4801348064_
                     _tl4801548067_)
                    (let () (declare (not safe)) (_g4798748027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4798748027_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4798748027_))))))
                                (if (gx#stx-pair? _hd4799548149_)
                                    (let ((_e4801048054_
                                           (gx#syntax-e _hd4799548149_)))
                                      (let ((_tl4801248061_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4801048054_)))
                                            (_hd4801148058_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4801048054_))))
                                        (if (gx#stx-pair/null? _tl4799648152_)
                                            (let ((___splice5052750528_
                                                   (gx#syntax-split-splice
                                                    _tl4799648152_
                                                    '0)))
                                              (let ((_tl4801548067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5052750528_
                                                        '1)))
                                                    (_target4801348064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5052750528_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4801548067_)
                                                    (___match5057550576_
                                                     _e4799148135_
                                                     _hd4799248139_
                                                     _tl4799348142_
                                                     _e4799448145_
                                                     _hd4799548149_
                                                     _tl4799648152_
                                                     _e4801048054_
                                                     _hd4801148058_
                                                     _tl4801248061_
                                                     ___splice5052750528_
                                                     _target4801348064_
                                                     _tl4801548067_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4798748027_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4798748027_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4798748027_))))))
                        (let () (declare (not safe)) (_g4798748027_)))))
                (let () (declare (not safe)) (_g4798748027_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_$stx48187_)
      (let* ((___stx5057850579_ _$stx48187_)
             (_g4819248232_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5057850579_))))
        (let ((___kont5058150582_
               (lambda (_L48370_ _L48372_)
                 (let ((__tmp50817 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50812
                        (let ((__tmp50813
                               (let ((__tmp50814
                                      (let ((__tmp50816
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50815
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48370_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50816 __tmp50815))))
                                 (declare (not safe))
                                 (cons __tmp50814 '()))))
                          (declare (not safe))
                          (cons _L48372_ __tmp50813))))
                   (declare (not safe))
                   (cons __tmp50817 __tmp50812))))
              (___kont5058350584_
               (lambda (_L48299_ _L48301_ _L48302_ _L48303_)
                 (let ((__tmp50818
                        (let ((__tmp50819
                               (let ((__tmp50820
                                      (let ((__tmp50823
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50821
                                             (let ((__tmp50822
                                                    (foldr (lambda (_g4832448327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4832548330_)
                     (let ()
                       (declare (not safe))
                       (cons _g4832448327_ _g4832548330_)))
                   '()
                   _L48299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48301_ __tmp50822))))
                                        (declare (not safe))
                                        (cons __tmp50823 __tmp50821))))
                                 (declare (not safe))
                                 (cons __tmp50820 '()))))
                          (declare (not safe))
                          (cons _L48302_ __tmp50819))))
                   (declare (not safe))
                   (cons _L48303_ __tmp50818)))))
          (let* ((___match5063350634_
                  (lambda (_e4820948239_
                           _hd4821048243_
                           _tl4821148246_
                           _e4821248249_
                           _hd4821348253_
                           _tl4821448256_
                           _e4821548259_
                           _hd4821648263_
                           _tl4821748266_
                           ___splice5058550586_
                           _target4821848269_
                           _tl4822048272_)
                    (letrec ((_loop4822148275_
                              (lambda (_hd4821948279_ _body4822548282_)
                                (if (gx#stx-pair? _hd4821948279_)
                                    (let ((_e4822248285_
                                           (gx#syntax-e _hd4821948279_)))
                                      (let ((_lp-tl4822448292_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4822248285_)))
                                            (_lp-hd4822348289_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4822248285_))))
                                        (_loop4822148275_
                                         _lp-tl4822448292_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4822348289_
                                                 _body4822548282_)))))
                                    (let ((_body4822648295_
                                           (reverse _body4822548282_)))
                                      (let ((_L48299_ _body4822648295_)
                                            (_L48301_ _tl4821748266_)
                                            (_L48302_ _hd4821648263_)
                                            (_L48303_ _hd4821048243_))
                                        (if (gx#identifier? _L48302_)
                                            (___kont5058350584_
                                             _L48299_
                                             _L48301_
                                             _L48302_
                                             _L48303_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4819248232_)))))))))
                      (_loop4822148275_ _target4821848269_ '()))))
                 (___match5060750608_
                  (lambda (_e4819648340_
                           _hd4819748344_
                           _tl4819848347_
                           _e4819948350_
                           _hd4820048354_
                           _tl4820148357_
                           _e4820248360_
                           _hd4820348364_
                           _tl4820448367_)
                    (let ((_L48370_ _hd4820348364_) (_L48372_ _hd4820048354_))
                      (if (gx#identifier? _L48372_)
                          (___kont5058150582_ _L48370_ _L48372_)
                          (if (gx#stx-pair? _hd4820048354_)
                              (let ((_e4821548259_
                                     (gx#syntax-e _hd4820048354_)))
                                (let ((_tl4821748266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4821548259_)))
                                      (_hd4821648263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4821548259_))))
                                  (if (gx#stx-pair/null? _tl4820148357_)
                                      (let ((___splice5058550586_
                                             (gx#syntax-split-splice
                                              _tl4820148357_
                                              '0)))
                                        (let ((_tl4822048272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5058550586_
                                                  '1)))
                                              (_target4821848269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5058550586_
                                                  '0))))
                                          (if (gx#stx-null? _tl4822048272_)
                                              (___match5063350634_
                                               _e4819648340_
                                               _hd4819748344_
                                               _tl4819848347_
                                               _e4819948350_
                                               _hd4820048354_
                                               _tl4820148357_
                                               _e4821548259_
                                               _hd4821648263_
                                               _tl4821748266_
                                               ___splice5058550586_
                                               _target4821848269_
                                               _tl4822048272_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4819248232_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4819248232_)))))
                              (let ()
                                (declare (not safe))
                                (_g4819248232_))))))))
            (if (gx#stx-pair? ___stx5057850579_)
                (let ((_e4819648340_ (gx#syntax-e ___stx5057850579_)))
                  (let ((_tl4819848347_
                         (let () (declare (not safe)) (##cdr _e4819648340_)))
                        (_hd4819748344_
                         (let () (declare (not safe)) (##car _e4819648340_))))
                    (if (gx#stx-pair? _tl4819848347_)
                        (let ((_e4819948350_ (gx#syntax-e _tl4819848347_)))
                          (let ((_tl4820148357_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4819948350_)))
                                (_hd4820048354_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4819948350_))))
                            (if (gx#stx-pair? _tl4820148357_)
                                (let ((_e4820248360_
                                       (gx#syntax-e _tl4820148357_)))
                                  (let ((_tl4820448367_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4820248360_)))
                                        (_hd4820348364_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4820248360_))))
                                    (if (gx#stx-null? _tl4820448367_)
                                        (___match5060750608_
                                         _e4819648340_
                                         _hd4819748344_
                                         _tl4819848347_
                                         _e4819948350_
                                         _hd4820048354_
                                         _tl4820148357_
                                         _e4820248360_
                                         _hd4820348364_
                                         _tl4820448367_)
                                        (if (gx#stx-pair? _hd4820048354_)
                                            (let ((_e4821548259_
                                                   (gx#syntax-e
                                                    _hd4820048354_)))
                                              (let ((_tl4821748266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4821548259_)))
                                                    (_hd4821648263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4821548259_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4820148357_)
                                                    (let ((___splice5058550586_
                                                           (gx#syntax-split-splice
                                                            _tl4820148357_
                                                            '0)))
                                                      (let ((_tl4822048272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5058550586_ '1)))
                    (_target4821848269_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5058550586_ '0))))
                (if (gx#stx-null? _tl4822048272_)
                    (___match5063350634_
                     _e4819648340_
                     _hd4819748344_
                     _tl4819848347_
                     _e4819948350_
                     _hd4820048354_
                     _tl4820148357_
                     _e4821548259_
                     _hd4821648263_
                     _tl4821748266_
                     ___splice5058550586_
                     _target4821848269_
                     _tl4822048272_)
                    (let () (declare (not safe)) (_g4819248232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4819248232_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4819248232_))))))
                                (if (gx#stx-pair? _hd4820048354_)
                                    (let ((_e4821548259_
                                           (gx#syntax-e _hd4820048354_)))
                                      (let ((_tl4821748266_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4821548259_)))
                                            (_hd4821648263_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4821548259_))))
                                        (if (gx#stx-pair/null? _tl4820148357_)
                                            (let ((___splice5058550586_
                                                   (gx#syntax-split-splice
                                                    _tl4820148357_
                                                    '0)))
                                              (let ((_tl4822048272_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5058550586_
                                                        '1)))
                                                    (_target4821848269_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5058550586_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4822048272_)
                                                    (___match5063350634_
                                                     _e4819648340_
                                                     _hd4819748344_
                                                     _tl4819848347_
                                                     _e4819948350_
                                                     _hd4820048354_
                                                     _tl4820148357_
                                                     _e4821548259_
                                                     _hd4821648263_
                                                     _tl4821748266_
                                                     ___splice5058550586_
                                                     _target4821848269_
                                                     _tl4822048272_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4819248232_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4819248232_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4819248232_))))))
                        (let () (declare (not safe)) (_g4819248232_)))))
                (let () (declare (not safe)) (_g4819248232_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_$stx48392_)
      (let* ((___stx5063650637_ _$stx48392_)
             (_g4839748437_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5063650637_))))
        (let ((___kont5063950640_
               (lambda (_L48575_ _L48577_)
                 (let ((__tmp50829 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50824
                        (let ((__tmp50825
                               (let ((__tmp50826
                                      (let ((__tmp50828
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50827
                                             (let ()
                                               (declare (not safe))
                                               (cons _L48575_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50828 __tmp50827))))
                                 (declare (not safe))
                                 (cons __tmp50826 '()))))
                          (declare (not safe))
                          (cons _L48577_ __tmp50825))))
                   (declare (not safe))
                   (cons __tmp50829 __tmp50824))))
              (___kont5064150642_
               (lambda (_L48504_ _L48506_ _L48507_ _L48508_)
                 (let ((__tmp50830
                        (let ((__tmp50831
                               (let ((__tmp50832
                                      (let ((__tmp50835
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50833
                                             (let ((__tmp50834
                                                    (foldr (lambda (_g4852948532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4853048535_)
                     (let ()
                       (declare (not safe))
                       (cons _g4852948532_ _g4853048535_)))
                   '()
                   _L48504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L48506_ __tmp50834))))
                                        (declare (not safe))
                                        (cons __tmp50835 __tmp50833))))
                                 (declare (not safe))
                                 (cons __tmp50832 '()))))
                          (declare (not safe))
                          (cons _L48507_ __tmp50831))))
                   (declare (not safe))
                   (cons _L48508_ __tmp50830)))))
          (let* ((___match5069150692_
                  (lambda (_e4841448444_
                           _hd4841548448_
                           _tl4841648451_
                           _e4841748454_
                           _hd4841848458_
                           _tl4841948461_
                           _e4842048464_
                           _hd4842148468_
                           _tl4842248471_
                           ___splice5064350644_
                           _target4842348474_
                           _tl4842548477_)
                    (letrec ((_loop4842648480_
                              (lambda (_hd4842448484_ _body4843048487_)
                                (if (gx#stx-pair? _hd4842448484_)
                                    (let ((_e4842748490_
                                           (gx#syntax-e _hd4842448484_)))
                                      (let ((_lp-tl4842948497_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4842748490_)))
                                            (_lp-hd4842848494_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4842748490_))))
                                        (_loop4842648480_
                                         _lp-tl4842948497_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4842848494_
                                                 _body4843048487_)))))
                                    (let ((_body4843148500_
                                           (reverse _body4843048487_)))
                                      (let ((_L48504_ _body4843148500_)
                                            (_L48506_ _tl4842248471_)
                                            (_L48507_ _hd4842148468_)
                                            (_L48508_ _hd4841548448_))
                                        (if (gx#identifier? _L48507_)
                                            (___kont5064150642_
                                             _L48504_
                                             _L48506_
                                             _L48507_
                                             _L48508_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4839748437_)))))))))
                      (_loop4842648480_ _target4842348474_ '()))))
                 (___match5066550666_
                  (lambda (_e4840148545_
                           _hd4840248549_
                           _tl4840348552_
                           _e4840448555_
                           _hd4840548559_
                           _tl4840648562_
                           _e4840748565_
                           _hd4840848569_
                           _tl4840948572_)
                    (let ((_L48575_ _hd4840848569_) (_L48577_ _hd4840548559_))
                      (if (gx#identifier? _L48577_)
                          (___kont5063950640_ _L48575_ _L48577_)
                          (if (gx#stx-pair? _hd4840548559_)
                              (let ((_e4842048464_
                                     (gx#syntax-e _hd4840548559_)))
                                (let ((_tl4842248471_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4842048464_)))
                                      (_hd4842148468_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4842048464_))))
                                  (if (gx#stx-pair/null? _tl4840648562_)
                                      (let ((___splice5064350644_
                                             (gx#syntax-split-splice
                                              _tl4840648562_
                                              '0)))
                                        (let ((_tl4842548477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5064350644_
                                                  '1)))
                                              (_target4842348474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice5064350644_
                                                  '0))))
                                          (if (gx#stx-null? _tl4842548477_)
                                              (___match5069150692_
                                               _e4840148545_
                                               _hd4840248549_
                                               _tl4840348552_
                                               _e4840448555_
                                               _hd4840548559_
                                               _tl4840648562_
                                               _e4842048464_
                                               _hd4842148468_
                                               _tl4842248471_
                                               ___splice5064350644_
                                               _target4842348474_
                                               _tl4842548477_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4839748437_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4839748437_)))))
                              (let ()
                                (declare (not safe))
                                (_g4839748437_))))))))
            (if (gx#stx-pair? ___stx5063650637_)
                (let ((_e4840148545_ (gx#syntax-e ___stx5063650637_)))
                  (let ((_tl4840348552_
                         (let () (declare (not safe)) (##cdr _e4840148545_)))
                        (_hd4840248549_
                         (let () (declare (not safe)) (##car _e4840148545_))))
                    (if (gx#stx-pair? _tl4840348552_)
                        (let ((_e4840448555_ (gx#syntax-e _tl4840348552_)))
                          (let ((_tl4840648562_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4840448555_)))
                                (_hd4840548559_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4840448555_))))
                            (if (gx#stx-pair? _tl4840648562_)
                                (let ((_e4840748565_
                                       (gx#syntax-e _tl4840648562_)))
                                  (let ((_tl4840948572_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4840748565_)))
                                        (_hd4840848569_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4840748565_))))
                                    (if (gx#stx-null? _tl4840948572_)
                                        (___match5066550666_
                                         _e4840148545_
                                         _hd4840248549_
                                         _tl4840348552_
                                         _e4840448555_
                                         _hd4840548559_
                                         _tl4840648562_
                                         _e4840748565_
                                         _hd4840848569_
                                         _tl4840948572_)
                                        (if (gx#stx-pair? _hd4840548559_)
                                            (let ((_e4842048464_
                                                   (gx#syntax-e
                                                    _hd4840548559_)))
                                              (let ((_tl4842248471_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4842048464_)))
                                                    (_hd4842148468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4842048464_))))
                                                (if (gx#stx-pair/null?
                                                     _tl4840648562_)
                                                    (let ((___splice5064350644_
                                                           (gx#syntax-split-splice
                                                            _tl4840648562_
                                                            '0)))
                                                      (let ((_tl4842548477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5064350644_ '1)))
                    (_target4842348474_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5064350644_ '0))))
                (if (gx#stx-null? _tl4842548477_)
                    (___match5069150692_
                     _e4840148545_
                     _hd4840248549_
                     _tl4840348552_
                     _e4840448555_
                     _hd4840548559_
                     _tl4840648562_
                     _e4842048464_
                     _hd4842148468_
                     _tl4842248471_
                     ___splice5064350644_
                     _target4842348474_
                     _tl4842548477_)
                    (let () (declare (not safe)) (_g4839748437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4839748437_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4839748437_))))))
                                (if (gx#stx-pair? _hd4840548559_)
                                    (let ((_e4842048464_
                                           (gx#syntax-e _hd4840548559_)))
                                      (let ((_tl4842248471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4842048464_)))
                                            (_hd4842148468_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4842048464_))))
                                        (if (gx#stx-pair/null? _tl4840648562_)
                                            (let ((___splice5064350644_
                                                   (gx#syntax-split-splice
                                                    _tl4840648562_
                                                    '0)))
                                              (let ((_tl4842548477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5064350644_
                                                        '1)))
                                                    (_target4842348474_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5064350644_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4842548477_)
                                                    (___match5069150692_
                                                     _e4840148545_
                                                     _hd4840248549_
                                                     _tl4840348552_
                                                     _e4840448555_
                                                     _hd4840548559_
                                                     _tl4840648562_
                                                     _e4842048464_
                                                     _hd4842148468_
                                                     _tl4842248471_
                                                     ___splice5064350644_
                                                     _target4842348474_
                                                     _tl4842548477_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4839748437_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4839748437_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4839748437_))))))
                        (let () (declare (not safe)) (_g4839748437_)))))
                (let () (declare (not safe)) (_g4839748437_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx48597_)
       (let* ((_g4860048620_
               (lambda (_g4860148616_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4860148616_)))
              (_g4859948691_
               (lambda (_g4860148624_)
                 (if (gx#stx-pair? _g4860148624_)
                     (let ((_e4860348627_ (gx#syntax-e _g4860148624_)))
                       (let ((_hd4860448631_
                              (let ()
                                (declare (not safe))
                                (##car _e4860348627_)))
                             (_tl4860548634_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4860348627_))))
                         (if (gx#stx-pair/null? _tl4860548634_)
                             (let ((_g50836_
                                    (gx#syntax-split-splice
                                     _tl4860548634_
                                     '0)))
                               (begin
                                 (let ((_g50837_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50836_)
                                              (##vector-length _g50836_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50837_ 2)))
                                       (error "Context expects 2 values"
                                              _g50837_)))
                                 (let ((_target4860648637_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50836_ 0)))
                                       (_tl4860848640_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50836_ 1))))
                                   (if (gx#stx-null? _tl4860848640_)
                                       (letrec ((_loop4860948643_
                                                 (lambda (_hd4860748647_
                                                          _body4861348650_)
                                                   (if (gx#stx-pair?
                                                        _hd4860748647_)
                                                       (let ((_e4861048653_
                                                              (gx#syntax-e
                                                               _hd4860748647_)))
                                                         (let ((_lp-hd4861148657_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4861048653_)))
                       (_lp-tl4861248660_
                        (let () (declare (not safe)) (##cdr _e4861048653_))))
                   (_loop4860948643_
                    _lp-tl4861248660_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4861148657_ _body4861348650_)))))
               (let ((_body4861448663_ (reverse _body4861348650_)))
                 ((lambda (_L48667_)
                    (let ((__tmp50838
                           (let ((__tmp50839
                                  (foldr (lambda (_g4868248685_ _g4868348688_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4868248685_
                                                   _g4868348688_)))
                                         '()
                                         _L48667_)))
                             (declare (not safe))
                             (cons '1 __tmp50839))))
                      (declare (not safe))
                      (cons 'phi: __tmp50838)))
                  _body4861448663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4860948643_
                                          _target4860648637_
                                          '()))
                                       (_g4860048620_ _g4860148624_)))))
                             (_g4860048620_ _g4860148624_))))
                     (_g4860048620_ _g4860148624_)))))
         (_g4859948691_ _stx48597_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx48696_)
       (let* ((_g4869948719_
               (lambda (_g4870048715_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4870048715_)))
              (_g4869848790_
               (lambda (_g4870048723_)
                 (if (gx#stx-pair? _g4870048723_)
                     (let ((_e4870248726_ (gx#syntax-e _g4870048723_)))
                       (let ((_hd4870348730_
                              (let ()
                                (declare (not safe))
                                (##car _e4870248726_)))
                             (_tl4870448733_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4870248726_))))
                         (if (gx#stx-pair/null? _tl4870448733_)
                             (let ((_g50840_
                                    (gx#syntax-split-splice
                                     _tl4870448733_
                                     '0)))
                               (begin
                                 (let ((_g50841_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50840_)
                                              (##vector-length _g50840_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50841_ 2)))
                                       (error "Context expects 2 values"
                                              _g50841_)))
                                 (let ((_target4870548736_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50840_ 0)))
                                       (_tl4870748739_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50840_ 1))))
                                   (if (gx#stx-null? _tl4870748739_)
                                       (letrec ((_loop4870848742_
                                                 (lambda (_hd4870648746_
                                                          _body4871248749_)
                                                   (if (gx#stx-pair?
                                                        _hd4870648746_)
                                                       (let ((_e4870948752_
                                                              (gx#syntax-e
                                                               _hd4870648746_)))
                                                         (let ((_lp-hd4871048756_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4870948752_)))
                       (_lp-tl4871148759_
                        (let () (declare (not safe)) (##cdr _e4870948752_))))
                   (_loop4870848742_
                    _lp-tl4871148759_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd4871048756_ _body4871248749_)))))
               (let ((_body4871348762_ (reverse _body4871248749_)))
                 ((lambda (_L48766_)
                    (let ((__tmp50842
                           (let ((__tmp50843
                                  (foldr (lambda (_g4878148784_ _g4878248787_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g4878148784_
                                                   _g4878248787_)))
                                         '()
                                         _L48766_)))
                             (declare (not safe))
                             (cons '-1 __tmp50843))))
                      (declare (not safe))
                      (cons 'phi: __tmp50842)))
                  _body4871348762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4870848742_
                                          _target4870548736_
                                          '()))
                                       (_g4869948719_ _g4870048723_)))))
                             (_g4869948719_ _g4870048723_))))
                     (_g4869948719_ _g4870048723_)))))
         (_g4869848790_ _stx48696_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx48795_)
       (let* ((_g4879848822_
               (lambda (_g4879948818_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4879948818_)))
              (_g4879748944_
               (lambda (_g4879948826_)
                 (if (gx#stx-pair? _g4879948826_)
                     (let ((_e4880248829_ (gx#syntax-e _g4879948826_)))
                       (let ((_hd4880348833_
                              (let ()
                                (declare (not safe))
                                (##car _e4880248829_)))
                             (_tl4880448836_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4880248829_))))
                         (if (gx#stx-pair? _tl4880448836_)
                             (let ((_e4880548839_
                                    (gx#syntax-e _tl4880448836_)))
                               (let ((_hd4880648843_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4880548839_)))
                                     (_tl4880748846_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4880548839_))))
                                 (if (gx#stx-pair/null? _tl4880748846_)
                                     (let ((_g50844_
                                            (gx#syntax-split-splice
                                             _tl4880748846_
                                             '0)))
                                       (begin
                                         (let ((_g50845_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50844_)
                                                      (##vector-length
                                                       _g50844_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50845_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50845_)))
                                         (let ((_target4880848849_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50844_ 0)))
                                               (_tl4881048852_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50844_ 1))))
                                           (if (gx#stx-null? _tl4881048852_)
                                               (letrec ((_loop4881148855_
                                                         (lambda (_hd4880948859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4881548862_)
                   (if (gx#stx-pair? _hd4880948859_)
                       (let ((_e4881248865_ (gx#syntax-e _hd4880948859_)))
                         (let ((_lp-hd4881348869_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4881248865_)))
                               (_lp-tl4881448872_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4881248865_))))
                           (_loop4881148855_
                            _lp-tl4881448872_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4881348869_ _id4881548862_)))))
                       (let ((_id4881648875_ (reverse _id4881548862_)))
                         ((lambda (_L48879_ _L48881_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4889848901_ _g4889948904_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4889848901_
                                                  _g4889948904_)))
                                        '()
                                        _L48879_))
                                (let* ((_keys48915_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4890648909_
                                                         _g4890748912_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4890648909_
                                                          _g4890748912_)))
                                                '()
                                                _L48879_)))
                                       (_keytab48926_
                                        (let ((_ht48918_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4892048922_)
                                             (hash-put!
                                              _ht48918_
                                              _g4892048922_
                                              '#t))
                                           _keys48915_)
                                          _ht48918_))
                                       (_imports48929_
                                        (gx#core-expand-import-source
                                         _L48881_))
                                       (_fold-e48939_
                                        (letrec ((_fold-e48932_
                                                  (lambda (_in48935_ _r48937_)
                                                    (if (gx#module-import?
                                                         _in48935_)
                                                        (if (hash-get
                                                             _keytab48926_
                                                             (gx#module-import-name
                                                              _in48935_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in48935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r48937_))
                    _r48937_)
                (if (gx#import-set? _in48935_)
                    (foldl _fold-e48932_
                           _r48937_
                           (gx#import-set-imports _in48935_))
                    _r48937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e48932_)))
                                  (let ((__tmp50846
                                         (foldl _fold-e48939_
                                                '()
                                                _imports48929_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50846)))
                                (_g4879848822_ _g4879948826_)))
                          _id4881648875_
                          _hd4880648843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4881148855_
                                                  _target4880848849_
                                                  '()))
                                               (_g4879848822_
                                                _g4879948826_)))))
                                     (_g4879848822_ _g4879948826_))))
                             (_g4879848822_ _g4879948826_))))
                     (_g4879848822_ _g4879948826_)))))
         (_g4879748944_ _stx48795_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx48949_)
       (let* ((_g4895248976_
               (lambda (_g4895348972_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4895348972_)))
              (_g4895149098_
               (lambda (_g4895348980_)
                 (if (gx#stx-pair? _g4895348980_)
                     (let ((_e4895648983_ (gx#syntax-e _g4895348980_)))
                       (let ((_hd4895748987_
                              (let ()
                                (declare (not safe))
                                (##car _e4895648983_)))
                             (_tl4895848990_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4895648983_))))
                         (if (gx#stx-pair? _tl4895848990_)
                             (let ((_e4895948993_
                                    (gx#syntax-e _tl4895848990_)))
                               (let ((_hd4896048997_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4895948993_)))
                                     (_tl4896149000_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4895948993_))))
                                 (if (gx#stx-pair/null? _tl4896149000_)
                                     (let ((_g50847_
                                            (gx#syntax-split-splice
                                             _tl4896149000_
                                             '0)))
                                       (begin
                                         (let ((_g50848_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50847_)
                                                      (##vector-length
                                                       _g50847_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50848_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50848_)))
                                         (let ((_target4896249003_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50847_ 0)))
                                               (_tl4896449006_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50847_ 1))))
                                           (if (gx#stx-null? _tl4896449006_)
                                               (letrec ((_loop4896549009_
                                                         (lambda (_hd4896349013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4896949016_)
                   (if (gx#stx-pair? _hd4896349013_)
                       (let ((_e4896649019_ (gx#syntax-e _hd4896349013_)))
                         (let ((_lp-hd4896749023_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4896649019_)))
                               (_lp-tl4896849026_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4896649019_))))
                           (_loop4896549009_
                            _lp-tl4896849026_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4896749023_ _id4896949016_)))))
                       (let ((_id4897049029_ (reverse _id4896949016_)))
                         ((lambda (_L49033_ _L49035_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4905249055_ _g4905349058_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4905249055_
                                                  _g4905349058_)))
                                        '()
                                        _L49033_))
                                (let* ((_keys49069_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4906049063_
                                                         _g4906149066_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4906049063_
                                                          _g4906149066_)))
                                                '()
                                                _L49033_)))
                                       (_keytab49080_
                                        (let ((_ht49072_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4907449076_)
                                             (hash-put!
                                              _ht49072_
                                              _g4907449076_
                                              '#t))
                                           _keys49069_)
                                          _ht49072_))
                                       (_imports49083_
                                        (gx#core-expand-import-source
                                         _L49035_))
                                       (_fold-e49093_
                                        (letrec ((_fold-e49086_
                                                  (lambda (_in49089_ _r49091_)
                                                    (if (gx#module-import?
                                                         _in49089_)
                                                        (if (hash-get
                                                             _keytab49080_
                                                             (gx#module-import-name
                                                              _in49089_))
                                                            _r49091_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _in49089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49091_)))
                (if (gx#import-set? _in49089_)
                    (foldl _fold-e49086_
                           _r49091_
                           (gx#import-set-imports _in49089_))
                    (let ()
                      (declare (not safe))
                      (cons _in49089_ _r49091_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49086_)))
                                  (let ((__tmp50849
                                         (foldl _fold-e49093_
                                                '()
                                                _imports49083_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50849)))
                                (_g4895248976_ _g4895348980_)))
                          _id4897049029_
                          _hd4896048997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4896549009_
                                                  _target4896249003_
                                                  '()))
                                               (_g4895248976_
                                                _g4895348980_)))))
                                     (_g4895248976_ _g4895348980_))))
                             (_g4895248976_ _g4895348980_))))
                     (_g4895248976_ _g4895348980_)))))
         (_g4895149098_ _stx48949_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_in49150_ _rename49152_)
      (gx#make-module-import
       (gx#module-import-source _in49150_)
       _rename49152_
       (gx#module-import-phi _in49150_)
       (gx#module-import-weak? _in49150_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_name49103_ _pre49105_)
      (let* ((_name4910649114_ _name49103_)
             (_else4910849126_
              (lambda () (make-symbol _pre49105_ _name49103_)))
             (_K4911049134_
              (lambda (_mark49130_ _id49132_)
                (let ((__tmp50850 (make-symbol _pre49105_ _id49132_)))
                  (declare (not safe))
                  (cons __tmp50850 _mark49130_)))))
        (if (let () (declare (not safe)) (##pair? _name4910649114_))
            (let ((_hd4911149138_
                   (let () (declare (not safe)) (##car _name4910649114_)))
                  (_tl4911249141_
                   (let () (declare (not safe)) (##cdr _name4910649114_))))
              (let* ((_id49144_ _hd4911149138_) (_mark49147_ _tl4911249141_))
                (declare (not safe))
                (_K4911049134_ _mark49147_ _id49144_)))
            (let () (declare (not safe)) (_else4910849126_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx49154_)
       (let* ((_g4915749190_
               (lambda (_g4915849186_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4915849186_)))
              (_g4915649376_
               (lambda (_g4915849194_)
                 (if (gx#stx-pair? _g4915849194_)
                     (let ((_e4916249197_ (gx#syntax-e _g4915849194_)))
                       (let ((_hd4916349201_
                              (let ()
                                (declare (not safe))
                                (##car _e4916249197_)))
                             (_tl4916449204_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4916249197_))))
                         (if (gx#stx-pair? _tl4916449204_)
                             (let ((_e4916549207_
                                    (gx#syntax-e _tl4916449204_)))
                               (let ((_hd4916649211_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4916549207_)))
                                     (_tl4916749214_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4916549207_))))
                                 (if (gx#stx-pair/null? _tl4916749214_)
                                     (let ((_g50851_
                                            (gx#syntax-split-splice
                                             _tl4916749214_
                                             '0)))
                                       (begin
                                         (let ((_g50852_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50851_)
                                                      (##vector-length
                                                       _g50851_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50852_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50852_)))
                                         (let ((_target4916849217_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50851_ 0)))
                                               (_tl4917049220_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50851_ 1))))
                                           (if (gx#stx-null? _tl4917049220_)
                                               (letrec ((_loop4917149223_
                                                         (lambda (_hd4916949227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4917549230_
                          _id4917649232_)
                   (if (gx#stx-pair? _hd4916949227_)
                       (let ((_e4917249235_ (gx#syntax-e _hd4916949227_)))
                         (let ((_lp-hd4917349239_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4917249235_)))
                               (_lp-tl4917449242_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4917249235_))))
                           (if (gx#stx-pair? _lp-hd4917349239_)
                               (let ((_e4917949245_
                                      (gx#syntax-e _lp-hd4917349239_)))
                                 (let ((_hd4918049249_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4917949245_)))
                                       (_tl4918149252_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4917949245_))))
                                   (if (gx#stx-pair? _tl4918149252_)
                                       (let ((_e4918249255_
                                              (gx#syntax-e _tl4918149252_)))
                                         (let ((_hd4918349259_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4918249255_)))
                                               (_tl4918449262_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4918249255_))))
                                           (if (gx#stx-null? _tl4918449262_)
                                               (_loop4917149223_
                                                _lp-tl4917449242_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4918349259_
                                                        _new-id4917549230_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4918049249_
                                                        _id4917649232_)))
                                               (_g4915749190_ _g4915849194_))))
                                       (_g4915749190_ _g4915849194_))))
                               (_g4915749190_ _g4915849194_))))
                       (let ((_new-id4917749265_ (reverse _new-id4917549230_))
                             (_id4917849268_ (reverse _id4917649232_)))
                         ((lambda (_L49271_ _L49273_ _L49274_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g4929249295_
                                                      _g4929349298_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4929249295_
                                                       _g4929349298_)))
                                             '()
                                             _L49273_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g4930049303_
                                                      _g4930149306_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g4930049303_
                                                       _g4930149306_)))
                                             '()
                                             _L49271_)))
                                (let* ((_keytab49309_ (make-hash-table))
                                       (_found49312_ (make-hash-table))
                                       (_g50853_
                                        (for-each
                                         (lambda (_id49315_ _new-id49317_)
                                           (hash-put!
                                            _keytab49309_
                                            (gx#core-identifier-key _id49315_)
                                            (gx#core-identifier-key
                                             _new-id49317_)))
                                         (foldr (lambda (_g4931849321_
                                                         _g4931949324_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4931849321_
                                                          _g4931949324_)))
                                                '()
                                                _L49273_)
                                         (foldr (lambda (_g4932649329_
                                                         _g4932749332_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4932649329_
                                                          _g4932749332_)))
                                                '()
                                                _L49271_)))
                                       (_imports49337_
                                        (gx#core-expand-import-source
                                         _L49274_))
                                       (_fold-e49357_
                                        (letrec ((_fold-e49340_
                                                  (lambda (_in49343_ _r49345_)
                                                    (if (gx#module-import?
                                                         _in49343_)
                                                        (let* ((_name49347_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in49343_))
                       (_$e49350_ (hash-get _keytab49309_ _name49347_)))
                  (if _$e49350_
                      ((lambda (_rename49354_)
                         (hash-put! _found49312_ _name49347_ '#t)
                         (let ((__tmp50854
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-import-rename|
                                   _in49343_
                                   _rename49354_))))
                           (declare (not safe))
                           (cons __tmp50854 _r49345_)))
                       _$e49350_)
                      (let () (declare (not safe)) (cons _in49343_ _r49345_))))
                (if (gx#import-set? _in49343_)
                    (foldl _fold-e49340_
                           _r49345_
                           (gx#import-set-imports _in49343_))
                    (let ()
                      (declare (not safe))
                      (cons _in49343_ _r49345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49340_))
                                       (_new-imports49360_
                                        (foldl _fold-e49357_
                                               '()
                                               _imports49337_)))
                                  (for-each
                                   (lambda (_id49365_)
                                     (if (hash-get
                                          _found49312_
                                          (gx#core-identifier-key _id49365_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx49154_
                                          _id49365_)))
                                   (foldr (lambda (_g4936749370_ _g4936849373_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4936749370_
                                                    _g4936849373_)))
                                          '()
                                          _L49273_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports49360_)))
                                (_g4915749190_ _g4915849194_)))
                          _new-id4917749265_
                          _id4917849268_
                          _hd4916649211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4917149223_
                                                  _target4916849217_
                                                  '()
                                                  '()))
                                               (_g4915749190_
                                                _g4915849194_)))))
                                     (_g4915749190_ _g4915849194_))))
                             (_g4915749190_ _g4915849194_))))
                     (_g4915749190_ _g4915849194_)))))
         (_g4915649376_ _stx49154_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx49382_)
       (let* ((_g4938549403_
               (lambda (_g4938649399_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4938649399_)))
              (_g4938449482_
               (lambda (_g4938649407_)
                 (if (gx#stx-pair? _g4938649407_)
                     (let ((_e4938949410_ (gx#syntax-e _g4938649407_)))
                       (let ((_hd4939049414_
                              (let ()
                                (declare (not safe))
                                (##car _e4938949410_)))
                             (_tl4939149417_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4938949410_))))
                         (if (gx#stx-pair? _tl4939149417_)
                             (let ((_e4939249420_
                                    (gx#syntax-e _tl4939149417_)))
                               (let ((_hd4939349424_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4939249420_)))
                                     (_tl4939449427_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4939249420_))))
                                 (if (gx#stx-pair? _tl4939449427_)
                                     (let ((_e4939549430_
                                            (gx#syntax-e _tl4939449427_)))
                                       (let ((_hd4939649434_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4939549430_)))
                                             (_tl4939749437_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4939549430_))))
                                         (if (gx#stx-null? _tl4939749437_)
                                             ((lambda (_L49440_ _L49442_)
                                                (if (gx#identifier? _L49440_)
                                                    (let* ((_pre49458_
                                                            (gx#stx-e
                                                             _L49440_))
                                                           (_imports49461_
                                                            (gx#core-expand-import-source
                                                             _L49442_))
                                                           (_rename-e49467_
                                                            (lambda (_name49464_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name49464_
                         _pre49458_))))
                   (_fold-e49477_
                    (letrec ((_fold-e49470_
                              (lambda (_in49473_ _r49475_)
                                (if (gx#module-import? _in49473_)
                                    (let ((__tmp50855
                                           (let ((__tmp50856
                                                  (_rename-e49467_
                                                   (gx#module-import-name
                                                    _in49473_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-import-rename|
                                              _in49473_
                                              __tmp50856))))
                                      (declare (not safe))
                                      (cons __tmp50855 _r49475_))
                                    (if (gx#import-set? _in49473_)
                                        (foldl _fold-e49470_
                                               _r49475_
                                               (gx#import-set-imports
                                                _in49473_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in49473_ _r49475_)))))))
                      _fold-e49470_)))
              (let ((__tmp50857 (foldl _fold-e49477_ '() _imports49461_)))
                (declare (not safe))
                (cons 'begin: __tmp50857)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4938549403_
                                                     _g4938649407_)))
                                              _hd4939649434_
                                              _hd4939349424_)
                                             (_g4938549403_ _g4938649407_))))
                                     (_g4938549403_ _g4938649407_))))
                             (_g4938549403_ _g4938649407_))))
                     (_g4938549403_ _g4938649407_)))))
         (_g4938449482_ _stx49382_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx49486_)
       (letrec ((_flatten49489_
                 (lambda (_list-of-lists49744_)
                   (foldr (lambda (_v49747_ _acc49749_)
                            (if (let () (declare (not safe)) (null? _v49747_))
                                _acc49749_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v49747_))
                                    (append (_flatten49489_ _v49747_)
                                            _acc49749_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v49747_ _acc49749_)))))
                          '()
                          _list-of-lists49744_)))
                (_expand-path49491_
                 (lambda (_top49612_ _mod49614_)
                   (let* ((___stx5069450695_ _mod49614_)
                          (_g4961749639_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx5069450695_))))
                     (let ((___kont5069750698_
                            (lambda (_L49707_ _L49709_)
                              (map (lambda (_mod49724_)
                                     (gx#stx-identifier
                                      _top49612_
                                      _top49612_
                                      '"/"
                                      _mod49724_))
                                   (_flatten49489_
                                    (map (lambda (_g4972649728_)
                                           (_expand-path49491_
                                            _L49709_
                                            _g4972649728_))
                                         (foldr (lambda (_g4973149734_
                                                         _g4973249737_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4973149734_
                                                          _g4973249737_)))
                                                '()
                                                _L49707_))))))
                           (___kont5070150702_
                            (lambda (_L49646_)
                              (gx#stx-identifier
                               _top49612_
                               _top49612_
                               '"/"
                               _L49646_))))
                       (let* ((_g4961649660_
                               (lambda ()
                                 (let ((_L49646_ ___stx5069450695_))
                                   (if (or (gx#identifier? _L49646_)
                                           (gx#stx-fixnum? _L49646_))
                                       (___kont5070150702_ _L49646_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4961749639_))))))
                              (___match5071750718_
                               (lambda (_e4962149667_
                                        _hd4962249671_
                                        _tl4962349674_
                                        ___splice5069950700_
                                        _target4962449677_
                                        _tl4962649680_)
                                 (letrec ((_loop4962749683_
                                           (lambda (_hd4962549687_
                                                    _mod4963149690_)
                                             (if (gx#stx-pair? _hd4962549687_)
                                                 (let ((_e4962849693_
                                                        (gx#syntax-e
                                                         _hd4962549687_)))
                                                   (let ((_lp-tl4963049700_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4962849693_)))
                                                         (_lp-hd4962949697_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4962849693_))))
                                                     (_loop4962749683_
                                                      _lp-tl4963049700_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd4962949697_
                                                              _mod4963149690_)))))
                                                 (let ((_mod4963249703_
                                                        (reverse _mod4963149690_)))
                                                   (___kont5069750698_
                                                    _mod4963249703_
                                                    _hd4962249671_))))))
                                   (_loop4962749683_
                                    _target4962449677_
                                    '())))))
                         (if (gx#stx-pair? ___stx5069450695_)
                             (let ((_e4962149667_
                                    (gx#syntax-e ___stx5069450695_)))
                               (let ((_tl4962349674_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4962149667_)))
                                     (_hd4962249671_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4962149667_))))
                                 (if (gx#stx-pair/null? _tl4962349674_)
                                     (let ((___splice5069950700_
                                            (gx#syntax-split-splice
                                             _tl4962349674_
                                             '0)))
                                       (let ((_tl4962649680_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5069950700_
                                                 '1)))
                                             (_target4962449677_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice5069950700_
                                                 '0))))
                                         (if (gx#stx-null? _tl4962649680_)
                                             (___match5071750718_
                                              _e4962149667_
                                              _hd4962249671_
                                              _tl4962349674_
                                              ___splice5069950700_
                                              _target4962449677_
                                              _tl4962649680_)
                                             (let ()
                                               (declare (not safe))
                                               (_g4961649660_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g4961649660_)))))
                             (let ()
                               (declare (not safe))
                               (_g4961649660_)))))))))
         (let* ((_g4949349517_
                 (lambda (_g4949449513_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g4949449513_)))
                (_g4949249608_
                 (lambda (_g4949449521_)
                   (if (gx#stx-pair? _g4949449521_)
                       (let ((_e4949749524_ (gx#syntax-e _g4949449521_)))
                         (let ((_hd4949849528_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4949749524_)))
                               (_tl4949949531_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4949749524_))))
                           (if (gx#stx-pair? _tl4949949531_)
                               (let ((_e4950049534_
                                      (gx#syntax-e _tl4949949531_)))
                                 (let ((_hd4950149538_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4950049534_)))
                                       (_tl4950249541_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4950049534_))))
                                   (if (gx#stx-pair/null? _tl4950249541_)
                                       (let ((_g50858_
                                              (gx#syntax-split-splice
                                               _tl4950249541_
                                               '0)))
                                         (begin
                                           (let ((_g50859_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50858_)
                                                        (##vector-length
                                                         _g50858_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50859_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50859_)))
                                           (let ((_target4950349544_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50858_ 0)))
                                                 (_tl4950549547_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50858_
                                                     1))))
                                             (if (gx#stx-null? _tl4950549547_)
                                                 (letrec ((_loop4950649550_
                                                           (lambda (_hd4950449554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod4951049557_)
                     (if (gx#stx-pair? _hd4950449554_)
                         (let ((_e4950749560_ (gx#syntax-e _hd4950449554_)))
                           (let ((_lp-hd4950849564_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4950749560_)))
                                 (_lp-tl4950949567_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4950749560_))))
                             (_loop4950649550_
                              _lp-tl4950949567_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd4950849564_ _mod4951049557_)))))
                         (let ((_mod4951149570_ (reverse _mod4951049557_)))
                           ((lambda (_L49574_ _L49576_)
                              (let ((__tmp50860
                                     (_flatten49489_
                                      (map (lambda (_g4959449596_)
                                             (_expand-path49491_
                                              _L49576_
                                              _g4959449596_))
                                           (foldr (lambda (_g4959949602_
                                                           _g4960049605_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4959949602_
                                                            _g4960049605_)))
                                                  '()
                                                  _L49574_)))))
                                (declare (not safe))
                                (cons 'begin: __tmp50860)))
                            _mod4951149570_
                            _hd4950149538_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop4950649550_
                                                    _target4950349544_
                                                    '()))
                                                 (_g4949349517_
                                                  _g4949449521_)))))
                                       (_g4949349517_ _g4949449521_))))
                               (_g4949349517_ _g4949449521_))))
                       (_g4949349517_ _g4949449521_)))))
           (_g4949249608_ _stx49486_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx49753_)
       (let* ((_g4975649780_
               (lambda (_g4975749776_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4975749776_)))
              (_g4975549902_
               (lambda (_g4975749784_)
                 (if (gx#stx-pair? _g4975749784_)
                     (let ((_e4976049787_ (gx#syntax-e _g4975749784_)))
                       (let ((_hd4976149791_
                              (let ()
                                (declare (not safe))
                                (##car _e4976049787_)))
                             (_tl4976249794_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4976049787_))))
                         (if (gx#stx-pair? _tl4976249794_)
                             (let ((_e4976349797_
                                    (gx#syntax-e _tl4976249794_)))
                               (let ((_hd4976449801_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4976349797_)))
                                     (_tl4976549804_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4976349797_))))
                                 (if (gx#stx-pair/null? _tl4976549804_)
                                     (let ((_g50861_
                                            (gx#syntax-split-splice
                                             _tl4976549804_
                                             '0)))
                                       (begin
                                         (let ((_g50862_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50861_)
                                                      (##vector-length
                                                       _g50861_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50862_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50862_)))
                                         (let ((_target4976649807_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50861_ 0)))
                                               (_tl4976849810_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50861_ 1))))
                                           (if (gx#stx-null? _tl4976849810_)
                                               (letrec ((_loop4976949813_
                                                         (lambda (_hd4976749817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id4977349820_)
                   (if (gx#stx-pair? _hd4976749817_)
                       (let ((_e4977049823_ (gx#syntax-e _hd4976749817_)))
                         (let ((_lp-hd4977149827_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4977049823_)))
                               (_lp-tl4977249830_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4977049823_))))
                           (_loop4976949813_
                            _lp-tl4977249830_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd4977149827_ _id4977349820_)))))
                       (let ((_id4977449833_ (reverse _id4977349820_)))
                         ((lambda (_L49837_ _L49839_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g4985649859_ _g4985749862_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4985649859_
                                                  _g4985749862_)))
                                        '()
                                        _L49837_))
                                (let* ((_keys49873_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g4986449867_
                                                         _g4986549870_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g4986449867_
                                                          _g4986549870_)))
                                                '()
                                                _L49837_)))
                                       (_keytab49884_
                                        (let ((_ht49876_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g4987849880_)
                                             (hash-put!
                                              _ht49876_
                                              _g4987849880_
                                              '#t))
                                           _keys49873_)
                                          _ht49876_))
                                       (_exports49887_
                                        (gx#core-expand-export-source
                                         _L49839_))
                                       (_fold-e49897_
                                        (letrec ((_fold-e49890_
                                                  (lambda (_out49893_ _r49895_)
                                                    (if (gx#module-export?
                                                         _out49893_)
                                                        (if (hash-get
                                                             _keytab49884_
                                                             (gx#module-export-name
                                                              _out49893_))
                                                            _r49895_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _out49893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r49895_)))
                (if (gx#export-set? _out49893_)
                    (foldl _fold-e49890_
                           _r49895_
                           (gx#export-set-exports _out49893_))
                    _r49895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e49890_)))
                                  (let ((__tmp50863
                                         (foldl _fold-e49897_
                                                '()
                                                _exports49887_)))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50863)))
                                (_g4975649780_ _g4975749784_)))
                          _id4977449833_
                          _hd4976449801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4976949813_
                                                  _target4976649807_
                                                  '()))
                                               (_g4975649780_
                                                _g4975749784_)))))
                                     (_g4975649780_ _g4975749784_))))
                             (_g4975649780_ _g4975749784_))))
                     (_g4975649780_ _g4975749784_)))))
         (_g4975549902_ _stx49753_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_out49907_ _rename49909_)
      (gx#make-module-export
       (gx#module-export-context _out49907_)
       (gx#module-export-key _out49907_)
       (gx#module-export-phi _out49907_)
       _rename49909_
       (gx#module-export-weak? _out49907_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx49911_)
       (let* ((_g4991449947_
               (lambda (_g4991549943_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4991549943_)))
              (_g4991350133_
               (lambda (_g4991549951_)
                 (if (gx#stx-pair? _g4991549951_)
                     (let ((_e4991949954_ (gx#syntax-e _g4991549951_)))
                       (let ((_hd4992049958_
                              (let ()
                                (declare (not safe))
                                (##car _e4991949954_)))
                             (_tl4992149961_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4991949954_))))
                         (if (gx#stx-pair? _tl4992149961_)
                             (let ((_e4992249964_
                                    (gx#syntax-e _tl4992149961_)))
                               (let ((_hd4992349968_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4992249964_)))
                                     (_tl4992449971_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4992249964_))))
                                 (if (gx#stx-pair/null? _tl4992449971_)
                                     (let ((_g50864_
                                            (gx#syntax-split-splice
                                             _tl4992449971_
                                             '0)))
                                       (begin
                                         (let ((_g50865_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50864_)
                                                      (##vector-length
                                                       _g50864_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50865_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50865_)))
                                         (let ((_target4992549974_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50864_ 0)))
                                               (_tl4992749977_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50864_ 1))))
                                           (if (gx#stx-null? _tl4992749977_)
                                               (letrec ((_loop4992849980_
                                                         (lambda (_hd4992649984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id4993249987_
                          _id4993349989_)
                   (if (gx#stx-pair? _hd4992649984_)
                       (let ((_e4992949992_ (gx#syntax-e _hd4992649984_)))
                         (let ((_lp-hd4993049996_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4992949992_)))
                               (_lp-tl4993149999_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4992949992_))))
                           (if (gx#stx-pair? _lp-hd4993049996_)
                               (let ((_e4993650002_
                                      (gx#syntax-e _lp-hd4993049996_)))
                                 (let ((_hd4993750006_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4993650002_)))
                                       (_tl4993850009_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4993650002_))))
                                   (if (gx#stx-pair? _tl4993850009_)
                                       (let ((_e4993950012_
                                              (gx#syntax-e _tl4993850009_)))
                                         (let ((_hd4994050016_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4993950012_)))
                                               (_tl4994150019_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4993950012_))))
                                           (if (gx#stx-null? _tl4994150019_)
                                               (_loop4992849980_
                                                _lp-tl4993149999_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4994050016_
                                                        _new-id4993249987_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd4993750006_
                                                        _id4993349989_)))
                                               (_g4991449947_ _g4991549951_))))
                                       (_g4991449947_ _g4991549951_))))
                               (_g4991449947_ _g4991549951_))))
                       (let ((_new-id4993450022_ (reverse _new-id4993249987_))
                             (_id4993550025_ (reverse _id4993349989_)))
                         ((lambda (_L50028_ _L50030_ _L50031_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g5004950052_
                                                      _g5005050055_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5004950052_
                                                       _g5005050055_)))
                                             '()
                                             _L50030_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g5005750060_
                                                      _g5005850063_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g5005750060_
                                                       _g5005850063_)))
                                             '()
                                             _L50028_)))
                                (let* ((_keytab50066_ (make-hash-table))
                                       (_found50069_ (make-hash-table))
                                       (_g50866_
                                        (for-each
                                         (lambda (_id50072_ _new-id50074_)
                                           (hash-put!
                                            _keytab50066_
                                            (gx#core-identifier-key _id50072_)
                                            (gx#core-identifier-key
                                             _new-id50074_)))
                                         (foldr (lambda (_g5007550078_
                                                         _g5007650081_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5007550078_
                                                          _g5007650081_)))
                                                '()
                                                _L50030_)
                                         (foldr (lambda (_g5008350086_
                                                         _g5008450089_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g5008350086_
                                                          _g5008450089_)))
                                                '()
                                                _L50028_)))
                                       (_exports50094_
                                        (gx#core-expand-export-source
                                         _L50031_))
                                       (_fold-e50114_
                                        (letrec ((_fold-e50097_
                                                  (lambda (_out50100_ _r50102_)
                                                    (if (gx#module-export?
                                                         _out50100_)
                                                        (let* ((_name50104_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out50100_))
                       (_$e50107_ (hash-get _keytab50066_ _name50104_)))
                  (if _$e50107_
                      ((lambda (_rename50111_)
                         (hash-put! _found50069_ _name50104_ '#t)
                         (let ((__tmp50867
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/module-sugar[1]#module-export-rename|
                                   _out50100_
                                   _rename50111_))))
                           (declare (not safe))
                           (cons __tmp50867 _r50102_)))
                       _$e50107_)
                      (let ()
                        (declare (not safe))
                        (cons _out50100_ _r50102_))))
                (if (gx#export-set? _out50100_)
                    (foldl _fold-e50097_
                           _r50102_
                           (gx#export-set-exports _out50100_))
                    (let ()
                      (declare (not safe))
                      (cons _out50100_ _r50102_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e50097_))
                                       (_new-exports50117_
                                        (foldl _fold-e50114_
                                               '()
                                               _exports50094_)))
                                  (for-each
                                   (lambda (_id50122_)
                                     (if (hash-get
                                          _found50069_
                                          (gx#core-identifier-key _id50122_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx49911_
                                          _id50122_)))
                                   (foldr (lambda (_g5012450127_ _g5012550130_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g5012450127_
                                                    _g5012550130_)))
                                          '()
                                          _L50030_))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports50117_)))
                                (_g4991449947_ _g4991549951_)))
                          _new-id4993450022_
                          _id4993550025_
                          _hd4992349968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4992849980_
                                                  _target4992549974_
                                                  '()
                                                  '()))
                                               (_g4991449947_
                                                _g4991549951_)))))
                                     (_g4991449947_ _g4991549951_))))
                             (_g4991449947_ _g4991549951_))))
                     (_g4991449947_ _g4991549951_)))))
         (_g4991350133_ _stx49911_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx50139_)
       (let* ((_g5014250160_
               (lambda (_g5014350156_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g5014350156_)))
              (_g5014150239_
               (lambda (_g5014350164_)
                 (if (gx#stx-pair? _g5014350164_)
                     (let ((_e5014650167_ (gx#syntax-e _g5014350164_)))
                       (let ((_hd5014750171_
                              (let ()
                                (declare (not safe))
                                (##car _e5014650167_)))
                             (_tl5014850174_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5014650167_))))
                         (if (gx#stx-pair? _tl5014850174_)
                             (let ((_e5014950177_
                                    (gx#syntax-e _tl5014850174_)))
                               (let ((_hd5015050181_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5014950177_)))
                                     (_tl5015150184_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5014950177_))))
                                 (if (gx#stx-pair? _tl5015150184_)
                                     (let ((_e5015250187_
                                            (gx#syntax-e _tl5015150184_)))
                                       (let ((_hd5015350191_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5015250187_)))
                                             (_tl5015450194_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5015250187_))))
                                         (if (gx#stx-null? _tl5015450194_)
                                             ((lambda (_L50197_ _L50199_)
                                                (if (gx#identifier? _L50197_)
                                                    (let* ((_pre50215_
                                                            (gx#stx-e
                                                             _L50197_))
                                                           (_exports50218_
                                                            (gx#core-expand-export-source
                                                             _L50199_))
                                                           (_rename-e50224_
                                                            (lambda (_name50221_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _name50221_
                         _pre50215_))))
                   (_fold-e50234_
                    (letrec ((_fold-e50227_
                              (lambda (_out50230_ _r50232_)
                                (if (gx#module-export? _out50230_)
                                    (let ((__tmp50868
                                           (let ((__tmp50869
                                                  (_rename-e50224_
                                                   (gx#module-export-name
                                                    _out50230_))))
                                             (declare (not safe))
                                             (|gerbil/core/module-sugar[1]#module-export-rename|
                                              _out50230_
                                              __tmp50869))))
                                      (declare (not safe))
                                      (cons __tmp50868 _r50232_))
                                    (if (gx#export-set? _out50230_)
                                        (foldl _fold-e50227_
                                               _r50232_
                                               (gx#export-set-exports
                                                _out50230_))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out50230_ _r50232_)))))))
                      _fold-e50227_)))
              (let ((__tmp50870 (foldl _fold-e50234_ '() _exports50218_)))
                (declare (not safe))
                (cons 'begin: __tmp50870)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5014250160_
                                                     _g5014350164_)))
                                              _hd5015350191_
                                              _hd5015050181_)
                                             (_g5014250160_ _g5014350164_))))
                                     (_g5014250160_ _g5014350164_))))
                             (_g5014250160_ _g5014350164_))))
                     (_g5014250160_ _g5014350164_)))))
         (_g5014150239_ _stx50139_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx50243_)
       (letrec ((_identifiers50246_
                 (lambda (_id50478_ _unchecked?50480_)
                   (let ((_info50482_ (gx#syntax-local-value _id50478_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop$<MOP:2>#class-type-info::t
                            _info50482_))
                         (let ((__tmp50871
                                (let ((__tmp50875
                                       (let ((__obj50779 _info50482_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj50779
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj50779
                                                '10
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                              __obj50779
                                              'type-descriptor))))
                                      (__tmp50872
                                       (foldr cons
                                              (let ((__tmp50874
                                                     (let ((__obj50780
                                                            _info50482_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50780
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50780
                                                              '12
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj50780
                                                            'predicate))))
                                                    (__tmp50873
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?50480_
                               (foldr cons
                                      (map cdr
                                           (let ((__obj50781 _info50482_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50781
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50781
                                                    '16
                                                    gerbil/core/mop$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  __obj50781
                                                  'unchecked-mutators))))
                                      (map cdr
                                           (let ((__obj50782 _info50482_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj50782
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj50782
                                                    '15
                                                    gerbil/core/mop$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  __obj50782
                                                  'unchecked-accessors)))))
                               '())
                           (map cdr
                                (let ((__obj50783 _info50482_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj50783
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj50783
                                         '14
                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop$<MOP:2>#class-type-info::t
                                       __obj50783
                                       'mutators)))))
                    (map cdr
                         (let ((__obj50784 _info50482_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj50784
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj50784
                                  '13
                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                __obj50784
                                'accessors)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50874 __tmp50873))
                                              (let ((_ctor50485_
                                                     (let ((__obj50785
                                                            _info50482_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj50785
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj50785
                                                              '11
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj50785
                                                            'constructor)))))
                                                (if _ctor50485_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor50485_ '()))
                                                    '())))))
                                  (declare (not safe))
                                  (cons __tmp50875 __tmp50872))))
                           (declare (not safe))
                           (cons _id50478_ __tmp50871))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx50243_
                          _id50478_))))))
         (let* ((___stx5072050721_ _stx50243_)
                (_g5025050291_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx5072050721_))))
           (let ((___kont5072350724_
                  (lambda (_L50439_ _L50441_)
                    (let ((__tmp50876
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5046050462_)
                               (_identifiers50246_
                                _g5046050462_
                                (gx#stx-e _L50441_)))
                             (foldr (lambda (_g5046550468_ _g5046650471_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5046550468_ _g5046650471_)))
                                    '()
                                    _L50439_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50876))))
                 (___kont5072750728_
                  (lambda (_L50338_)
                    (let ((__tmp50877
                           (concatenate
                            (gx#stx-map
                             (lambda (_g5035450356_)
                               (_identifiers50246_ _g5035450356_ '#f))
                             (foldr (lambda (_g5035950362_ _g5036050365_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g5035950362_ _g5036050365_)))
                                    '()
                                    _L50338_)))))
                      (declare (not safe))
                      (cons 'begin: __tmp50877)))))
             (let* ((___match5077750778_
                     (lambda (_e5027450298_
                              _hd5027550302_
                              _tl5027650305_
                              ___splice5072950730_
                              _target5027750308_
                              _tl5027950311_)
                       (letrec ((_loop5028050314_
                                 (lambda (_hd5027850318_ _id5028450321_)
                                   (if (gx#stx-pair? _hd5027850318_)
                                       (let ((_e5028150324_
                                              (gx#syntax-e _hd5027850318_)))
                                         (let ((_lp-tl5028350331_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5028150324_)))
                                               (_lp-hd5028250328_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5028150324_))))
                                           (_loop5028050314_
                                            _lp-tl5028350331_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5028250328_
                                                    _id5028450321_)))))
                                       (let ((_id5028550334_
                                              (reverse _id5028450321_)))
                                         (___kont5072750728_
                                          _id5028550334_))))))
                         (_loop5028050314_ _target5027750308_ '()))))
                    (___match5076350764_
                     (lambda (_e5025450375_
                              _hd5025550379_
                              _tl5025650382_
                              _e5025750385_
                              _hd5025850389_
                              _tl5025950392_
                              _e5026050395_
                              _e5026150399_
                              _hd5026250403_
                              _tl5026350406_
                              ___splice5072550726_
                              _target5026450409_
                              _tl5026650412_)
                       (letrec ((_loop5026750415_
                                 (lambda (_hd5026550419_ _id5027150422_)
                                   (if (gx#stx-pair? _hd5026550419_)
                                       (let ((_e5026850425_
                                              (gx#syntax-e _hd5026550419_)))
                                         (let ((_lp-tl5027050432_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e5026850425_)))
                                               (_lp-hd5026950429_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e5026850425_))))
                                           (_loop5026750415_
                                            _lp-tl5027050432_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd5026950429_
                                                    _id5027150422_)))))
                                       (let ((_id5027250435_
                                              (reverse _id5027150422_)))
                                         (___kont5072350724_
                                          _id5027250435_
                                          _hd5026250403_))))))
                         (_loop5026750415_ _target5026450409_ '())))))
               (if (gx#stx-pair? ___stx5072050721_)
                   (let ((_e5025450375_ (gx#syntax-e ___stx5072050721_)))
                     (let ((_tl5025650382_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5025450375_)))
                           (_hd5025550379_
                            (let ()
                              (declare (not safe))
                              (##car _e5025450375_))))
                       (if (gx#stx-pair? _tl5025650382_)
                           (let ((_e5025750385_ (gx#syntax-e _tl5025650382_)))
                             (let ((_tl5025950392_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5025750385_)))
                                   (_hd5025850389_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5025750385_))))
                               (if (gx#stx-datum? _hd5025850389_)
                                   (let ((_e5026050395_
                                          (gx#stx-e _hd5025850389_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e5026050395_ 'unchecked:))
                                         (if (gx#stx-pair? _tl5025950392_)
                                             (let ((_e5026150399_
                                                    (gx#syntax-e
                                                     _tl5025950392_)))
                                               (let ((_tl5026350406_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5026150399_)))
                                                     (_hd5026250403_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5026150399_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl5026350406_)
                                                     (let ((___splice5072550726_
                                                            (gx#syntax-split-splice
                                                             _tl5026350406_
                                                             '0)))
                                                       (let ((_tl5026650412_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice5072550726_ '1)))
                     (_target5026450409_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice5072550726_ '0))))
                 (if (gx#stx-null? _tl5026650412_)
                     (___match5076350764_
                      _e5025450375_
                      _hd5025550379_
                      _tl5025650382_
                      _e5025750385_
                      _hd5025850389_
                      _tl5025950392_
                      _e5026050395_
                      _e5026150399_
                      _hd5026250403_
                      _tl5026350406_
                      ___splice5072550726_
                      _target5026450409_
                      _tl5026650412_)
                     (if (gx#stx-pair/null? _tl5025650382_)
                         (let ((___splice5072950730_
                                (gx#syntax-split-splice _tl5025650382_ '0)))
                           (let ((_tl5027950311_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5072950730_ '1)))
                                 (_target5027750308_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice5072950730_ '0))))
                             (if (gx#stx-null? _tl5027950311_)
                                 (___match5077750778_
                                  _e5025450375_
                                  _hd5025550379_
                                  _tl5025650382_
                                  ___splice5072950730_
                                  _target5027750308_
                                  _tl5027950311_)
                                 (let ()
                                   (declare (not safe))
                                   (_g5025050291_)))))
                         (let () (declare (not safe)) (_g5025050291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl5025650382_)
                                                         (let ((___splice5072950730_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5025650382_
                         '0)))
                   (let ((_tl5027950311_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5072950730_ '1)))
                         (_target5027750308_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice5072950730_ '0))))
                     (if (gx#stx-null? _tl5027950311_)
                         (___match5077750778_
                          _e5025450375_
                          _hd5025550379_
                          _tl5025650382_
                          ___splice5072950730_
                          _target5027750308_
                          _tl5027950311_)
                         (let () (declare (not safe)) (_g5025050291_)))))
                 (let () (declare (not safe)) (_g5025050291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl5025650382_)
                                                 (let ((___splice5072950730_
                                                        (gx#syntax-split-splice
                                                         _tl5025650382_
                                                         '0)))
                                                   (let ((_tl5027950311_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5072950730_
                                                             '1)))
                                                         (_target5027750308_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice5072950730_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl5027950311_)
                                                         (___match5077750778_
                                                          _e5025450375_
                                                          _hd5025550379_
                                                          _tl5025650382_
                                                          ___splice5072950730_
                                                          _target5027750308_
                                                          _tl5027950311_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g5025050291_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g5025050291_))))
                                         (if (gx#stx-pair/null? _tl5025650382_)
                                             (let ((___splice5072950730_
                                                    (gx#syntax-split-splice
                                                     _tl5025650382_
                                                     '0)))
                                               (let ((_tl5027950311_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5072950730_
                                                         '1)))
                                                     (_target5027750308_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice5072950730_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl5027950311_)
                                                     (___match5077750778_
                                                      _e5025450375_
                                                      _hd5025550379_
                                                      _tl5025650382_
                                                      ___splice5072950730_
                                                      _target5027750308_
                                                      _tl5027950311_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g5025050291_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g5025050291_)))))
                                   (if (gx#stx-pair/null? _tl5025650382_)
                                       (let ((___splice5072950730_
                                              (gx#syntax-split-splice
                                               _tl5025650382_
                                               '0)))
                                         (let ((_tl5027950311_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5072950730_
                                                   '1)))
                                               (_target5027750308_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice5072950730_
                                                   '0))))
                                           (if (gx#stx-null? _tl5027950311_)
                                               (___match5077750778_
                                                _e5025450375_
                                                _hd5025550379_
                                                _tl5025650382_
                                                ___splice5072950730_
                                                _target5027750308_
                                                _tl5027950311_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g5025050291_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g5025050291_))))))
                           (if (gx#stx-pair/null? _tl5025650382_)
                               (let ((___splice5072950730_
                                      (gx#syntax-split-splice
                                       _tl5025650382_
                                       '0)))
                                 (let ((_tl5027950311_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5072950730_
                                           '1)))
                                       (_target5027750308_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5072950730_
                                           '0))))
                                   (if (gx#stx-null? _tl5027950311_)
                                       (___match5077750778_
                                        _e5025450375_
                                        _hd5025550379_
                                        _tl5025650382_
                                        ___splice5072950730_
                                        _target5027750308_
                                        _tl5027950311_)
                                       (let ()
                                         (declare (not safe))
                                         (_g5025050291_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g5025050291_))))))
                   (let () (declare (not safe)) (_g5025050291_)))))))))))
