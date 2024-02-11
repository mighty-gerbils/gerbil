(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34529_)
      (let* ((___stx4704747048_ _$stx34529_)
             (_g3453434553_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4704747048_))))
        (let ((___kont4705047051_
               (lambda ()
                 (let ((__tmp50824 (gx#datum->syntax '#f 'begin)))
                   (declare (not safe))
                   (cons __tmp50824 '()))))
              (___kont4705247053_
               (lambda (_L34580_ _L34582_ _L34583_)
                 (let ((__tmp50837 (gx#datum->syntax '#f 'cond-expand))
                       (__tmp50825
                        (let ((__tmp50834
                               (let ((__tmp50835
                                      (let ((__tmp50836
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34583_ _L34580_))))
                                        (declare (not safe))
                                        (cons __tmp50836 '()))))
                                 (declare (not safe))
                                 (cons _L34582_ __tmp50835)))
                              (__tmp50826
                               (let ((__tmp50827
                                      (let ((__tmp50833
                                             (gx#datum->syntax '#f 'else))
                                            (__tmp50828
                                             (let ((__tmp50829
                                                    (let ((__tmp50832
                                                           (gx#datum->syntax
                                                            '#f
                                                            'syntax-error))
                                                          (__tmp50830
                                                           (let ((__tmp50831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L34582_ '()))))
                     (declare (not safe))
                     (cons '"Missing required feature" __tmp50831))))
              (declare (not safe))
              (cons __tmp50832 __tmp50830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50829 '()))))
                                        (declare (not safe))
                                        (cons __tmp50833 __tmp50828))))
                                 (declare (not safe))
                                 (cons __tmp50827 '()))))
                          (declare (not safe))
                          (cons __tmp50834 __tmp50826))))
                   (declare (not safe))
                   (cons __tmp50837 __tmp50825)))))
          (if (gx#stx-pair? ___stx4704747048_)
              (let ((_e3453834606_ (gx#syntax-e ___stx4704747048_)))
                (let ((_tl3453634613_
                       (let () (declare (not safe)) (##cdr _e3453834606_)))
                      (_hd3453734610_
                       (let () (declare (not safe)) (##car _e3453834606_))))
                  (if (gx#stx-null? _tl3453634613_)
                      (___kont4705047051_)
                      (if (gx#stx-pair? _tl3453634613_)
                          (let ((_e3454734570_ (gx#syntax-e _tl3453634613_)))
                            (let ((_tl3454534577_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3454734570_)))
                                  (_hd3454634574_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3454734570_))))
                              (___kont4705247053_
                               _tl3454534577_
                               _hd3454634574_
                               _hd3453734610_)))
                          (let () (declare (not safe)) (_g3453434553_))))))
              (let () (declare (not safe)) (_g3453434553_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34624_)
      (let* ((___stx4707747078_ _$stx34624_)
             (_g3462934669_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4707747078_))))
        (let ((___kont4708047081_
               (lambda (_L34807_ _L34809_)
                 (let ((__tmp50843 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50838
                        (let ((__tmp50839
                               (let ((__tmp50840
                                      (let ((__tmp50842
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-expander))
                                            (__tmp50841
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34807_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50842 __tmp50841))))
                                 (declare (not safe))
                                 (cons __tmp50840 '()))))
                          (declare (not safe))
                          (cons _L34809_ __tmp50839))))
                   (declare (not safe))
                   (cons __tmp50843 __tmp50838))))
              (___kont4708247083_
               (lambda (_L34736_ _L34738_ _L34739_ _L34740_)
                 (let ((__tmp50844
                        (let ((__tmp50845
                               (let ((__tmp50846
                                      (let ((__tmp50850
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50847
                                             (let ((__tmp50848
                                                    (let ((__tmp50849
                                                           (lambda (_g3476134764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3476234767_)
                     (let ()
                       (declare (not safe))
                       (cons _g3476134764_ _g3476234767_)))))
              (declare (not safe))
              (foldr1 __tmp50849 '() _L34736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34738_ __tmp50848))))
                                        (declare (not safe))
                                        (cons __tmp50850 __tmp50847))))
                                 (declare (not safe))
                                 (cons __tmp50846 '()))))
                          (declare (not safe))
                          (cons _L34739_ __tmp50845))))
                   (declare (not safe))
                   (cons _L34740_ __tmp50844)))))
          (let* ((___match4713247133_
                  (lambda (_e3464834676_
                           _hd3464734680_
                           _tl3464634683_
                           _e3465134686_
                           _hd3465034690_
                           _tl3464934693_
                           _e3465434696_
                           _hd3465334700_
                           _tl3465234703_
                           ___splice4708447085_
                           _target3465534706_
                           _tl3465734709_)
                    (letrec ((_loop3465834712_
                              (lambda (_hd3465634716_ _body3466234719_)
                                (if (gx#stx-pair? _hd3465634716_)
                                    (let ((_e3465934722_
                                           (gx#syntax-e _hd3465634716_)))
                                      (let ((_lp-tl3466134729_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3465934722_)))
                                            (_lp-hd3466034726_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3465934722_))))
                                        (_loop3465834712_
                                         _lp-tl3466134729_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3466034726_
                                                 _body3466234719_)))))
                                    (let ((_body3466334732_
                                           (reverse _body3466234719_)))
                                      (let ((_L34736_ _body3466334732_)
                                            (_L34738_ _tl3465234703_)
                                            (_L34739_ _hd3465334700_)
                                            (_L34740_ _hd3464734680_))
                                        (if (gx#identifier? _L34739_)
                                            (___kont4708247083_
                                             _L34736_
                                             _L34738_
                                             _L34739_
                                             _L34740_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3462934669_)))))))))
                      (_loop3465834712_ _target3465534706_ '()))))
                 (___match4710647107_
                  (lambda (_e3463534777_
                           _hd3463434781_
                           _tl3463334784_
                           _e3463834787_
                           _hd3463734791_
                           _tl3463634794_
                           _e3464134797_
                           _hd3464034801_
                           _tl3463934804_)
                    (let ((_L34807_ _hd3464034801_) (_L34809_ _hd3463734791_))
                      (if (gx#identifier? _L34809_)
                          (___kont4708047081_ _L34807_ _L34809_)
                          (if (gx#stx-pair? _hd3463734791_)
                              (let ((_e3465434696_
                                     (gx#syntax-e _hd3463734791_)))
                                (let ((_tl3465234703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3465434696_)))
                                      (_hd3465334700_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3465434696_))))
                                  (if (gx#stx-pair/null? _tl3463634794_)
                                      (let ((___splice4708447085_
                                             (gx#syntax-split-splice
                                              _tl3463634794_
                                              '0)))
                                        (let ((_tl3465734709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4708447085_
                                                  '1)))
                                              (_target3465534706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4708447085_
                                                  '0))))
                                          (if (gx#stx-null? _tl3465734709_)
                                              (___match4713247133_
                                               _e3463534777_
                                               _hd3463434781_
                                               _tl3463334784_
                                               _e3463834787_
                                               _hd3463734791_
                                               _tl3463634794_
                                               _e3465434696_
                                               _hd3465334700_
                                               _tl3465234703_
                                               ___splice4708447085_
                                               _target3465534706_
                                               _tl3465734709_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3462934669_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3462934669_)))))
                              (let ()
                                (declare (not safe))
                                (_g3462934669_))))))))
            (if (gx#stx-pair? ___stx4707747078_)
                (let ((_e3463534777_ (gx#syntax-e ___stx4707747078_)))
                  (let ((_tl3463334784_
                         (let () (declare (not safe)) (##cdr _e3463534777_)))
                        (_hd3463434781_
                         (let () (declare (not safe)) (##car _e3463534777_))))
                    (if (gx#stx-pair? _tl3463334784_)
                        (let ((_e3463834787_ (gx#syntax-e _tl3463334784_)))
                          (let ((_tl3463634794_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3463834787_)))
                                (_hd3463734791_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3463834787_))))
                            (if (gx#stx-pair? _tl3463634794_)
                                (let ((_e3464134797_
                                       (gx#syntax-e _tl3463634794_)))
                                  (let ((_tl3463934804_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3464134797_)))
                                        (_hd3464034801_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3464134797_))))
                                    (if (gx#stx-null? _tl3463934804_)
                                        (___match4710647107_
                                         _e3463534777_
                                         _hd3463434781_
                                         _tl3463334784_
                                         _e3463834787_
                                         _hd3463734791_
                                         _tl3463634794_
                                         _e3464134797_
                                         _hd3464034801_
                                         _tl3463934804_)
                                        (if (gx#stx-pair? _hd3463734791_)
                                            (let ((_e3465434696_
                                                   (gx#syntax-e
                                                    _hd3463734791_)))
                                              (let ((_tl3465234703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3465434696_)))
                                                    (_hd3465334700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3465434696_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3463634794_)
                                                    (let ((___splice4708447085_
                                                           (gx#syntax-split-splice
                                                            _tl3463634794_
                                                            '0)))
                                                      (let ((_tl3465734709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4708447085_ '1)))
                    (_target3465534706_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4708447085_ '0))))
                (if (gx#stx-null? _tl3465734709_)
                    (___match4713247133_
                     _e3463534777_
                     _hd3463434781_
                     _tl3463334784_
                     _e3463834787_
                     _hd3463734791_
                     _tl3463634794_
                     _e3465434696_
                     _hd3465334700_
                     _tl3465234703_
                     ___splice4708447085_
                     _target3465534706_
                     _tl3465734709_)
                    (let () (declare (not safe)) (_g3462934669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3462934669_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3462934669_))))))
                                (if (gx#stx-pair? _hd3463734791_)
                                    (let ((_e3465434696_
                                           (gx#syntax-e _hd3463734791_)))
                                      (let ((_tl3465234703_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3465434696_)))
                                            (_hd3465334700_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3465434696_))))
                                        (if (gx#stx-pair/null? _tl3463634794_)
                                            (let ((___splice4708447085_
                                                   (gx#syntax-split-splice
                                                    _tl3463634794_
                                                    '0)))
                                              (let ((_tl3465734709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4708447085_
                                                        '1)))
                                                    (_target3465534706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4708447085_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3465734709_)
                                                    (___match4713247133_
                                                     _e3463534777_
                                                     _hd3463434781_
                                                     _tl3463334784_
                                                     _e3463834787_
                                                     _hd3463734791_
                                                     _tl3463634794_
                                                     _e3465434696_
                                                     _hd3465334700_
                                                     _tl3465234703_
                                                     ___splice4708447085_
                                                     _target3465534706_
                                                     _tl3465734709_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3462934669_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3462934669_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3462934669_))))))
                        (let () (declare (not safe)) (_g3462934669_)))))
                (let () (declare (not safe)) (_g3462934669_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34829_)
      (let* ((___stx4713547136_ _$stx34829_)
             (_g3483434874_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4713547136_))))
        (let ((___kont4713847139_
               (lambda (_L35012_ _L35014_)
                 (let ((__tmp50856 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50851
                        (let ((__tmp50852
                               (let ((__tmp50853
                                      (let ((__tmp50855
                                             (gx#datum->syntax
                                              '#f
                                              'make-export-expander))
                                            (__tmp50854
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35012_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50855 __tmp50854))))
                                 (declare (not safe))
                                 (cons __tmp50853 '()))))
                          (declare (not safe))
                          (cons _L35014_ __tmp50852))))
                   (declare (not safe))
                   (cons __tmp50856 __tmp50851))))
              (___kont4714047141_
               (lambda (_L34941_ _L34943_ _L34944_ _L34945_)
                 (let ((__tmp50857
                        (let ((__tmp50858
                               (let ((__tmp50859
                                      (let ((__tmp50863
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50860
                                             (let ((__tmp50861
                                                    (let ((__tmp50862
                                                           (lambda (_g3496634969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3496734972_)
                     (let ()
                       (declare (not safe))
                       (cons _g3496634969_ _g3496734972_)))))
              (declare (not safe))
              (foldr1 __tmp50862 '() _L34941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L34943_ __tmp50861))))
                                        (declare (not safe))
                                        (cons __tmp50863 __tmp50860))))
                                 (declare (not safe))
                                 (cons __tmp50859 '()))))
                          (declare (not safe))
                          (cons _L34944_ __tmp50858))))
                   (declare (not safe))
                   (cons _L34945_ __tmp50857)))))
          (let* ((___match4719047191_
                  (lambda (_e3485334881_
                           _hd3485234885_
                           _tl3485134888_
                           _e3485634891_
                           _hd3485534895_
                           _tl3485434898_
                           _e3485934901_
                           _hd3485834905_
                           _tl3485734908_
                           ___splice4714247143_
                           _target3486034911_
                           _tl3486234914_)
                    (letrec ((_loop3486334917_
                              (lambda (_hd3486134921_ _body3486734924_)
                                (if (gx#stx-pair? _hd3486134921_)
                                    (let ((_e3486434927_
                                           (gx#syntax-e _hd3486134921_)))
                                      (let ((_lp-tl3486634934_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3486434927_)))
                                            (_lp-hd3486534931_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3486434927_))))
                                        (_loop3486334917_
                                         _lp-tl3486634934_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3486534931_
                                                 _body3486734924_)))))
                                    (let ((_body3486834937_
                                           (reverse _body3486734924_)))
                                      (let ((_L34941_ _body3486834937_)
                                            (_L34943_ _tl3485734908_)
                                            (_L34944_ _hd3485834905_)
                                            (_L34945_ _hd3485234885_))
                                        (if (gx#identifier? _L34944_)
                                            (___kont4714047141_
                                             _L34941_
                                             _L34943_
                                             _L34944_
                                             _L34945_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3483434874_)))))))))
                      (_loop3486334917_ _target3486034911_ '()))))
                 (___match4716447165_
                  (lambda (_e3484034982_
                           _hd3483934986_
                           _tl3483834989_
                           _e3484334992_
                           _hd3484234996_
                           _tl3484134999_
                           _e3484635002_
                           _hd3484535006_
                           _tl3484435009_)
                    (let ((_L35012_ _hd3484535006_) (_L35014_ _hd3484234996_))
                      (if (gx#identifier? _L35014_)
                          (___kont4713847139_ _L35012_ _L35014_)
                          (if (gx#stx-pair? _hd3484234996_)
                              (let ((_e3485934901_
                                     (gx#syntax-e _hd3484234996_)))
                                (let ((_tl3485734908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3485934901_)))
                                      (_hd3485834905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3485934901_))))
                                  (if (gx#stx-pair/null? _tl3484134999_)
                                      (let ((___splice4714247143_
                                             (gx#syntax-split-splice
                                              _tl3484134999_
                                              '0)))
                                        (let ((_tl3486234914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4714247143_
                                                  '1)))
                                              (_target3486034911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4714247143_
                                                  '0))))
                                          (if (gx#stx-null? _tl3486234914_)
                                              (___match4719047191_
                                               _e3484034982_
                                               _hd3483934986_
                                               _tl3483834989_
                                               _e3484334992_
                                               _hd3484234996_
                                               _tl3484134999_
                                               _e3485934901_
                                               _hd3485834905_
                                               _tl3485734908_
                                               ___splice4714247143_
                                               _target3486034911_
                                               _tl3486234914_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3483434874_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3483434874_)))))
                              (let ()
                                (declare (not safe))
                                (_g3483434874_))))))))
            (if (gx#stx-pair? ___stx4713547136_)
                (let ((_e3484034982_ (gx#syntax-e ___stx4713547136_)))
                  (let ((_tl3483834989_
                         (let () (declare (not safe)) (##cdr _e3484034982_)))
                        (_hd3483934986_
                         (let () (declare (not safe)) (##car _e3484034982_))))
                    (if (gx#stx-pair? _tl3483834989_)
                        (let ((_e3484334992_ (gx#syntax-e _tl3483834989_)))
                          (let ((_tl3484134999_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3484334992_)))
                                (_hd3484234996_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3484334992_))))
                            (if (gx#stx-pair? _tl3484134999_)
                                (let ((_e3484635002_
                                       (gx#syntax-e _tl3484134999_)))
                                  (let ((_tl3484435009_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3484635002_)))
                                        (_hd3484535006_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3484635002_))))
                                    (if (gx#stx-null? _tl3484435009_)
                                        (___match4716447165_
                                         _e3484034982_
                                         _hd3483934986_
                                         _tl3483834989_
                                         _e3484334992_
                                         _hd3484234996_
                                         _tl3484134999_
                                         _e3484635002_
                                         _hd3484535006_
                                         _tl3484435009_)
                                        (if (gx#stx-pair? _hd3484234996_)
                                            (let ((_e3485934901_
                                                   (gx#syntax-e
                                                    _hd3484234996_)))
                                              (let ((_tl3485734908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3485934901_)))
                                                    (_hd3485834905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3485934901_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3484134999_)
                                                    (let ((___splice4714247143_
                                                           (gx#syntax-split-splice
                                                            _tl3484134999_
                                                            '0)))
                                                      (let ((_tl3486234914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4714247143_ '1)))
                    (_target3486034911_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4714247143_ '0))))
                (if (gx#stx-null? _tl3486234914_)
                    (___match4719047191_
                     _e3484034982_
                     _hd3483934986_
                     _tl3483834989_
                     _e3484334992_
                     _hd3484234996_
                     _tl3484134999_
                     _e3485934901_
                     _hd3485834905_
                     _tl3485734908_
                     ___splice4714247143_
                     _target3486034911_
                     _tl3486234914_)
                    (let () (declare (not safe)) (_g3483434874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3483434874_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3483434874_))))))
                                (if (gx#stx-pair? _hd3484234996_)
                                    (let ((_e3485934901_
                                           (gx#syntax-e _hd3484234996_)))
                                      (let ((_tl3485734908_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3485934901_)))
                                            (_hd3485834905_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3485934901_))))
                                        (if (gx#stx-pair/null? _tl3484134999_)
                                            (let ((___splice4714247143_
                                                   (gx#syntax-split-splice
                                                    _tl3484134999_
                                                    '0)))
                                              (let ((_tl3486234914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4714247143_
                                                        '1)))
                                                    (_target3486034911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4714247143_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3486234914_)
                                                    (___match4719047191_
                                                     _e3484034982_
                                                     _hd3483934986_
                                                     _tl3483834989_
                                                     _e3484334992_
                                                     _hd3484234996_
                                                     _tl3484134999_
                                                     _e3485934901_
                                                     _hd3485834905_
                                                     _tl3485734908_
                                                     ___splice4714247143_
                                                     _target3486034911_
                                                     _tl3486234914_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3483434874_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3483434874_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3483434874_))))))
                        (let () (declare (not safe)) (_g3483434874_)))))
                (let () (declare (not safe)) (_g3483434874_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx35034_)
      (let* ((___stx4719347194_ _$stx35034_)
             (_g3503935079_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4719347194_))))
        (let ((___kont4719647197_
               (lambda (_L35217_ _L35219_)
                 (let ((__tmp50869 (gx#datum->syntax '#f 'defsyntax))
                       (__tmp50864
                        (let ((__tmp50865
                               (let ((__tmp50866
                                      (let ((__tmp50868
                                             (gx#datum->syntax
                                              '#f
                                              'make-import-export-expander))
                                            (__tmp50867
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35217_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50868 __tmp50867))))
                                 (declare (not safe))
                                 (cons __tmp50866 '()))))
                          (declare (not safe))
                          (cons _L35219_ __tmp50865))))
                   (declare (not safe))
                   (cons __tmp50869 __tmp50864))))
              (___kont4719847199_
               (lambda (_L35146_ _L35148_ _L35149_ _L35150_)
                 (let ((__tmp50870
                        (let ((__tmp50871
                               (let ((__tmp50872
                                      (let ((__tmp50876
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp50873
                                             (let ((__tmp50874
                                                    (let ((__tmp50875
                                                           (lambda (_g3517135174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3517235177_)
                     (let ()
                       (declare (not safe))
                       (cons _g3517135174_ _g3517235177_)))))
              (declare (not safe))
              (foldr1 __tmp50875 '() _L35146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L35148_ __tmp50874))))
                                        (declare (not safe))
                                        (cons __tmp50876 __tmp50873))))
                                 (declare (not safe))
                                 (cons __tmp50872 '()))))
                          (declare (not safe))
                          (cons _L35149_ __tmp50871))))
                   (declare (not safe))
                   (cons _L35150_ __tmp50870)))))
          (let* ((___match4724847249_
                  (lambda (_e3505835086_
                           _hd3505735090_
                           _tl3505635093_
                           _e3506135096_
                           _hd3506035100_
                           _tl3505935103_
                           _e3506435106_
                           _hd3506335110_
                           _tl3506235113_
                           ___splice4720047201_
                           _target3506535116_
                           _tl3506735119_)
                    (letrec ((_loop3506835122_
                              (lambda (_hd3506635126_ _body3507235129_)
                                (if (gx#stx-pair? _hd3506635126_)
                                    (let ((_e3506935132_
                                           (gx#syntax-e _hd3506635126_)))
                                      (let ((_lp-tl3507135139_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3506935132_)))
                                            (_lp-hd3507035136_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3506935132_))))
                                        (_loop3506835122_
                                         _lp-tl3507135139_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3507035136_
                                                 _body3507235129_)))))
                                    (let ((_body3507335142_
                                           (reverse _body3507235129_)))
                                      (let ((_L35146_ _body3507335142_)
                                            (_L35148_ _tl3506235113_)
                                            (_L35149_ _hd3506335110_)
                                            (_L35150_ _hd3505735090_))
                                        (if (gx#identifier? _L35149_)
                                            (___kont4719847199_
                                             _L35146_
                                             _L35148_
                                             _L35149_
                                             _L35150_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3503935079_)))))))))
                      (_loop3506835122_ _target3506535116_ '()))))
                 (___match4722247223_
                  (lambda (_e3504535187_
                           _hd3504435191_
                           _tl3504335194_
                           _e3504835197_
                           _hd3504735201_
                           _tl3504635204_
                           _e3505135207_
                           _hd3505035211_
                           _tl3504935214_)
                    (let ((_L35217_ _hd3505035211_) (_L35219_ _hd3504735201_))
                      (if (gx#identifier? _L35219_)
                          (___kont4719647197_ _L35217_ _L35219_)
                          (if (gx#stx-pair? _hd3504735201_)
                              (let ((_e3506435106_
                                     (gx#syntax-e _hd3504735201_)))
                                (let ((_tl3506235113_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3506435106_)))
                                      (_hd3506335110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3506435106_))))
                                  (if (gx#stx-pair/null? _tl3504635204_)
                                      (let ((___splice4720047201_
                                             (gx#syntax-split-splice
                                              _tl3504635204_
                                              '0)))
                                        (let ((_tl3506735119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4720047201_
                                                  '1)))
                                              (_target3506535116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4720047201_
                                                  '0))))
                                          (if (gx#stx-null? _tl3506735119_)
                                              (___match4724847249_
                                               _e3504535187_
                                               _hd3504435191_
                                               _tl3504335194_
                                               _e3504835197_
                                               _hd3504735201_
                                               _tl3504635204_
                                               _e3506435106_
                                               _hd3506335110_
                                               _tl3506235113_
                                               ___splice4720047201_
                                               _target3506535116_
                                               _tl3506735119_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3503935079_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3503935079_)))))
                              (let ()
                                (declare (not safe))
                                (_g3503935079_))))))))
            (if (gx#stx-pair? ___stx4719347194_)
                (let ((_e3504535187_ (gx#syntax-e ___stx4719347194_)))
                  (let ((_tl3504335194_
                         (let () (declare (not safe)) (##cdr _e3504535187_)))
                        (_hd3504435191_
                         (let () (declare (not safe)) (##car _e3504535187_))))
                    (if (gx#stx-pair? _tl3504335194_)
                        (let ((_e3504835197_ (gx#syntax-e _tl3504335194_)))
                          (let ((_tl3504635204_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3504835197_)))
                                (_hd3504735201_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3504835197_))))
                            (if (gx#stx-pair? _tl3504635204_)
                                (let ((_e3505135207_
                                       (gx#syntax-e _tl3504635204_)))
                                  (let ((_tl3504935214_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3505135207_)))
                                        (_hd3505035211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3505135207_))))
                                    (if (gx#stx-null? _tl3504935214_)
                                        (___match4722247223_
                                         _e3504535187_
                                         _hd3504435191_
                                         _tl3504335194_
                                         _e3504835197_
                                         _hd3504735201_
                                         _tl3504635204_
                                         _e3505135207_
                                         _hd3505035211_
                                         _tl3504935214_)
                                        (if (gx#stx-pair? _hd3504735201_)
                                            (let ((_e3506435106_
                                                   (gx#syntax-e
                                                    _hd3504735201_)))
                                              (let ((_tl3506235113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3506435106_)))
                                                    (_hd3506335110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3506435106_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3504635204_)
                                                    (let ((___splice4720047201_
                                                           (gx#syntax-split-splice
                                                            _tl3504635204_
                                                            '0)))
                                                      (let ((_tl3506735119_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4720047201_ '1)))
                    (_target3506535116_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4720047201_ '0))))
                (if (gx#stx-null? _tl3506735119_)
                    (___match4724847249_
                     _e3504535187_
                     _hd3504435191_
                     _tl3504335194_
                     _e3504835197_
                     _hd3504735201_
                     _tl3504635204_
                     _e3506435106_
                     _hd3506335110_
                     _tl3506235113_
                     ___splice4720047201_
                     _target3506535116_
                     _tl3506735119_)
                    (let () (declare (not safe)) (_g3503935079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3503935079_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3503935079_))))))
                                (if (gx#stx-pair? _hd3504735201_)
                                    (let ((_e3506435106_
                                           (gx#syntax-e _hd3504735201_)))
                                      (let ((_tl3506235113_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3506435106_)))
                                            (_hd3506335110_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3506435106_))))
                                        (if (gx#stx-pair/null? _tl3504635204_)
                                            (let ((___splice4720047201_
                                                   (gx#syntax-split-splice
                                                    _tl3504635204_
                                                    '0)))
                                              (let ((_tl3506735119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4720047201_
                                                        '1)))
                                                    (_target3506535116_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4720047201_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3506735119_)
                                                    (___match4724847249_
                                                     _e3504535187_
                                                     _hd3504435191_
                                                     _tl3504335194_
                                                     _e3504835197_
                                                     _hd3504735201_
                                                     _tl3504635204_
                                                     _e3506435106_
                                                     _hd3506335110_
                                                     _tl3506235113_
                                                     ___splice4720047201_
                                                     _target3506535116_
                                                     _tl3506735119_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3503935079_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3503935079_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3503935079_))))))
                        (let () (declare (not safe)) (_g3503935079_)))))
                (let () (declare (not safe)) (_g3503935079_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx35239_)
       (let* ((_g3524235262_
               (lambda (_g3524335258_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3524335258_)))
              (_g3524135333_
               (lambda (_g3524335266_)
                 (if (gx#stx-pair? _g3524335266_)
                     (let ((_e3524735269_ (gx#syntax-e _g3524335266_)))
                       (let ((_hd3524635273_
                              (let ()
                                (declare (not safe))
                                (##car _e3524735269_)))
                             (_tl3524535276_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3524735269_))))
                         (if (gx#stx-pair/null? _tl3524535276_)
                             (let ((_g50877_
                                    (gx#syntax-split-splice
                                     _tl3524535276_
                                     '0)))
                               (begin
                                 (let ((_g50878_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50877_)
                                              (##vector-length _g50877_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50878_ 2)))
                                       (error "Context expects 2 values"
                                              _g50878_)))
                                 (let ((_target3524835279_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50877_ 0)))
                                       (_tl3525035282_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50877_ 1))))
                                   (if (gx#stx-null? _tl3525035282_)
                                       (letrec ((_loop3525135285_
                                                 (lambda (_hd3524935289_
                                                          _body3525535292_)
                                                   (if (gx#stx-pair?
                                                        _hd3524935289_)
                                                       (let ((_e3525235295_
                                                              (gx#syntax-e
                                                               _hd3524935289_)))
                                                         (let ((_lp-hd3525335299_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3525235295_)))
                       (_lp-tl3525435302_
                        (let () (declare (not safe)) (##cdr _e3525235295_))))
                   (_loop3525135285_
                    _lp-tl3525435302_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3525335299_ _body3525535292_)))))
               (let ((_body3525635305_ (reverse _body3525535292_)))
                 ((lambda (_L35309_)
                    (let ((__tmp50879
                           (let ((__tmp50880
                                  (let ((__tmp50881
                                         (lambda (_g3532435327_ _g3532535330_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3532435327_
                                                   _g3532535330_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp50881 '() _L35309_))))
                             (declare (not safe))
                             (cons '1 __tmp50880))))
                      (declare (not safe))
                      (cons 'phi: __tmp50879)))
                  _body3525635305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3525135285_
                                          _target3524835279_
                                          '()))
                                       (_g3524235262_ _g3524335266_)))))
                             (_g3524235262_ _g3524335266_))))
                     (_g3524235262_ _g3524335266_)))))
         (_g3524135333_ _stx35239_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35338_)
       (let* ((_g3534135361_
               (lambda (_g3534235357_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3534235357_)))
              (_g3534035432_
               (lambda (_g3534235365_)
                 (if (gx#stx-pair? _g3534235365_)
                     (let ((_e3534635368_ (gx#syntax-e _g3534235365_)))
                       (let ((_hd3534535372_
                              (let ()
                                (declare (not safe))
                                (##car _e3534635368_)))
                             (_tl3534435375_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3534635368_))))
                         (if (gx#stx-pair/null? _tl3534435375_)
                             (let ((_g50882_
                                    (gx#syntax-split-splice
                                     _tl3534435375_
                                     '0)))
                               (begin
                                 (let ((_g50883_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50882_)
                                              (##vector-length _g50882_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50883_ 2)))
                                       (error "Context expects 2 values"
                                              _g50883_)))
                                 (let ((_target3534735378_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50882_ 0)))
                                       (_tl3534935381_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g50882_ 1))))
                                   (if (gx#stx-null? _tl3534935381_)
                                       (letrec ((_loop3535035384_
                                                 (lambda (_hd3534835388_
                                                          _body3535435391_)
                                                   (if (gx#stx-pair?
                                                        _hd3534835388_)
                                                       (let ((_e3535135394_
                                                              (gx#syntax-e
                                                               _hd3534835388_)))
                                                         (let ((_lp-hd3535235398_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3535135394_)))
                       (_lp-tl3535335401_
                        (let () (declare (not safe)) (##cdr _e3535135394_))))
                   (_loop3535035384_
                    _lp-tl3535335401_
                    (let ()
                      (declare (not safe))
                      (cons _lp-hd3535235398_ _body3535435391_)))))
               (let ((_body3535535404_ (reverse _body3535435391_)))
                 ((lambda (_L35408_)
                    (let ((__tmp50884
                           (let ((__tmp50885
                                  (let ((__tmp50886
                                         (lambda (_g3542335426_ _g3542435429_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g3542335426_
                                                   _g3542435429_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp50886 '() _L35408_))))
                             (declare (not safe))
                             (cons '-1 __tmp50885))))
                      (declare (not safe))
                      (cons 'phi: __tmp50884)))
                  _body3535535404_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3535035384_
                                          _target3534735378_
                                          '()))
                                       (_g3534135361_ _g3534235365_)))))
                             (_g3534135361_ _g3534235365_))))
                     (_g3534135361_ _g3534235365_)))))
         (_g3534035432_ _stx35338_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35437_)
       (let* ((_g3544035464_
               (lambda (_g3544135460_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3544135460_)))
              (_g3543935586_
               (lambda (_g3544135468_)
                 (if (gx#stx-pair? _g3544135468_)
                     (let ((_e3544635471_ (gx#syntax-e _g3544135468_)))
                       (let ((_hd3544535475_
                              (let ()
                                (declare (not safe))
                                (##car _e3544635471_)))
                             (_tl3544435478_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3544635471_))))
                         (if (gx#stx-pair? _tl3544435478_)
                             (let ((_e3544935481_
                                    (gx#syntax-e _tl3544435478_)))
                               (let ((_hd3544835485_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3544935481_)))
                                     (_tl3544735488_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3544935481_))))
                                 (if (gx#stx-pair/null? _tl3544735488_)
                                     (let ((_g50887_
                                            (gx#syntax-split-splice
                                             _tl3544735488_
                                             '0)))
                                       (begin
                                         (let ((_g50888_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50887_)
                                                      (##vector-length
                                                       _g50887_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50888_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50888_)))
                                         (let ((_target3545035491_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50887_ 0)))
                                               (_tl3545235494_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50887_ 1))))
                                           (if (gx#stx-null? _tl3545235494_)
                                               (letrec ((_loop3545335497_
                                                         (lambda (_hd3545135501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3545735504_)
                   (if (gx#stx-pair? _hd3545135501_)
                       (let ((_e3545435507_ (gx#syntax-e _hd3545135501_)))
                         (let ((_lp-hd3545535511_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3545435507_)))
                               (_lp-tl3545635514_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3545435507_))))
                           (_loop3545335497_
                            _lp-tl3545635514_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3545535511_ _id3545735504_)))))
                       (let ((_id3545835517_ (reverse _id3545735504_)))
                         ((lambda (_L35521_ _L35523_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50893
                                        (lambda (_g3554035543_ _g3554135546_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3554035543_
                                                  _g3554135546_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50893 '() _L35521_)))
                                (let* ((_keys35557_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50889
                                                (lambda (_g3554835551_
                                                         _g3554935554_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3554835551_
                                                          _g3554935554_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50889 '() _L35521_))))
                                       (_keytab35568_
                                        (let ((_ht35560_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3556235564_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35560_
                                                _g3556235564_
                                                '#t)))
                                           _keys35557_)
                                          _ht35560_))
                                       (_imports35571_
                                        (gx#core-expand-import-source
                                         _L35523_))
                                       (_fold-e35581_
                                        (letrec ((_fold-e35574_
                                                  (lambda (_in35577_ _r35579_)
                                                    (if (gx#module-import?
                                                         _in35577_)
                                                        (if (let ((__tmp50891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35577_)))
                      (declare (not safe))
                      (table-ref _keytab35568_ __tmp50891 '#f))
                    (let () (declare (not safe)) (cons _in35577_ _r35579_))
                    _r35579_)
                (if (gx#import-set? _in35577_)
                    (let ((__tmp50890 (gx#import-set-imports _in35577_)))
                      (declare (not safe))
                      (foldl1 _fold-e35574_ _r35579_ __tmp50890))
                    _r35579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35574_)))
                                  (let ((__tmp50892
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35581_
                                                   '()
                                                   _imports35571_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50892)))
                                (_g3544035464_ _g3544135468_)))
                          _id3545835517_
                          _hd3544835485_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3545335497_
                                                  _target3545035491_
                                                  '()))
                                               (_g3544035464_
                                                _g3544135468_)))))
                                     (_g3544035464_ _g3544135468_))))
                             (_g3544035464_ _g3544135468_))))
                     (_g3544035464_ _g3544135468_)))))
         (_g3543935586_ _stx35437_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35591_)
       (let* ((_g3559435618_
               (lambda (_g3559535614_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3559535614_)))
              (_g3559335740_
               (lambda (_g3559535622_)
                 (if (gx#stx-pair? _g3559535622_)
                     (let ((_e3560035625_ (gx#syntax-e _g3559535622_)))
                       (let ((_hd3559935629_
                              (let ()
                                (declare (not safe))
                                (##car _e3560035625_)))
                             (_tl3559835632_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3560035625_))))
                         (if (gx#stx-pair? _tl3559835632_)
                             (let ((_e3560335635_
                                    (gx#syntax-e _tl3559835632_)))
                               (let ((_hd3560235639_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3560335635_)))
                                     (_tl3560135642_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3560335635_))))
                                 (if (gx#stx-pair/null? _tl3560135642_)
                                     (let ((_g50894_
                                            (gx#syntax-split-splice
                                             _tl3560135642_
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
                                         (let ((_target3560435645_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50894_ 0)))
                                               (_tl3560635648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50894_ 1))))
                                           (if (gx#stx-null? _tl3560635648_)
                                               (letrec ((_loop3560735651_
                                                         (lambda (_hd3560535655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3561135658_)
                   (if (gx#stx-pair? _hd3560535655_)
                       (let ((_e3560835661_ (gx#syntax-e _hd3560535655_)))
                         (let ((_lp-hd3560935665_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3560835661_)))
                               (_lp-tl3561035668_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3560835661_))))
                           (_loop3560735651_
                            _lp-tl3561035668_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3560935665_ _id3561135658_)))))
                       (let ((_id3561235671_ (reverse _id3561135658_)))
                         ((lambda (_L35675_ _L35677_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50900
                                        (lambda (_g3569435697_ _g3569535700_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3569435697_
                                                  _g3569535700_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50900 '() _L35675_)))
                                (let* ((_keys35711_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50896
                                                (lambda (_g3570235705_
                                                         _g3570335708_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3570235705_
                                                          _g3570335708_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50896 '() _L35675_))))
                                       (_keytab35722_
                                        (let ((_ht35714_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3571635718_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht35714_
                                                _g3571635718_
                                                '#t)))
                                           _keys35711_)
                                          _ht35714_))
                                       (_imports35725_
                                        (gx#core-expand-import-source
                                         _L35677_))
                                       (_fold-e35735_
                                        (letrec ((_fold-e35728_
                                                  (lambda (_in35731_ _r35733_)
                                                    (if (gx#module-import?
                                                         _in35731_)
                                                        (if (let ((__tmp50898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-import-name _in35731_)))
                      (declare (not safe))
                      (table-ref _keytab35722_ __tmp50898 '#f))
                    _r35733_
                    (let () (declare (not safe)) (cons _in35731_ _r35733_)))
                (if (gx#import-set? _in35731_)
                    (let ((__tmp50897 (gx#import-set-imports _in35731_)))
                      (declare (not safe))
                      (foldl1 _fold-e35728_ _r35733_ __tmp50897))
                    (let ()
                      (declare (not safe))
                      (cons _in35731_ _r35733_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35728_)))
                                  (let ((__tmp50899
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e35735_
                                                   '()
                                                   _imports35725_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50899)))
                                (_g3559435618_ _g3559535622_)))
                          _id3561235671_
                          _hd3560235639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3560735651_
                                                  _target3560435645_
                                                  '()))
                                               (_g3559435618_
                                                _g3559535622_)))))
                                     (_g3559435618_ _g3559535622_))))
                             (_g3559435618_ _g3559535622_))))
                     (_g3559435618_ _g3559535622_)))))
         (_g3559335740_ _stx35591_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35792_ _rename35794_)
      (gx#make-module-import
       (gx#module-import-source _in35792_)
       _rename35794_
       (gx#module-import-phi _in35792_)
       (gx#module-import-weak? _in35792_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35745_ _pre35747_)
      (let* ((_name3574835756_ _name35745_)
             (_else3575035768_
              (lambda () (make-symbol _pre35747_ _name35745_)))
             (_K3575235776_
              (lambda (_mark35772_ _id35774_)
                (let ((__tmp50901 (make-symbol _pre35747_ _id35774_)))
                  (declare (not safe))
                  (cons __tmp50901 _mark35772_)))))
        (if (let () (declare (not safe)) (##pair? _name3574835756_))
            (let ((_hd3575335780_
                   (let () (declare (not safe)) (##car _name3574835756_)))
                  (_tl3575435783_
                   (let () (declare (not safe)) (##cdr _name3574835756_))))
              (let* ((_id35786_ _hd3575335780_) (_mark35789_ _tl3575435783_))
                (declare (not safe))
                (_K3575235776_ _mark35789_ _id35786_)))
            (let () (declare (not safe)) (_else3575035768_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35796_)
       (let* ((_g3579935832_
               (lambda (_g3580035828_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3580035828_)))
              (_g3579836018_
               (lambda (_g3580035836_)
                 (if (gx#stx-pair? _g3580035836_)
                     (let ((_e3580635839_ (gx#syntax-e _g3580035836_)))
                       (let ((_hd3580535843_
                              (let ()
                                (declare (not safe))
                                (##car _e3580635839_)))
                             (_tl3580435846_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3580635839_))))
                         (if (gx#stx-pair? _tl3580435846_)
                             (let ((_e3580935849_
                                    (gx#syntax-e _tl3580435846_)))
                               (let ((_hd3580835853_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3580935849_)))
                                     (_tl3580735856_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3580935849_))))
                                 (if (gx#stx-pair/null? _tl3580735856_)
                                     (let ((_g50902_
                                            (gx#syntax-split-splice
                                             _tl3580735856_
                                             '0)))
                                       (begin
                                         (let ((_g50903_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50902_)
                                                      (##vector-length
                                                       _g50902_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50903_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50903_)))
                                         (let ((_target3581035859_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50902_ 0)))
                                               (_tl3581235862_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50902_ 1))))
                                           (if (gx#stx-null? _tl3581235862_)
                                               (letrec ((_loop3581335865_
                                                         (lambda (_hd3581135869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3581735872_
                          _id3581835874_)
                   (if (gx#stx-pair? _hd3581135869_)
                       (let ((_e3581435877_ (gx#syntax-e _hd3581135869_)))
                         (let ((_lp-hd3581535881_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3581435877_)))
                               (_lp-tl3581635884_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3581435877_))))
                           (if (gx#stx-pair? _lp-hd3581535881_)
                               (let ((_e3582335887_
                                      (gx#syntax-e _lp-hd3581535881_)))
                                 (let ((_hd3582235891_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3582335887_)))
                                       (_tl3582135894_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3582335887_))))
                                   (if (gx#stx-pair? _tl3582135894_)
                                       (let ((_e3582635897_
                                              (gx#syntax-e _tl3582135894_)))
                                         (let ((_hd3582535901_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3582635897_)))
                                               (_tl3582435904_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3582635897_))))
                                           (if (gx#stx-null? _tl3582435904_)
                                               (_loop3581335865_
                                                _lp-tl3581635884_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3582535901_
                                                        _new-id3581735872_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3582235891_
                                                        _id3581835874_)))
                                               (_g3579935832_ _g3580035836_))))
                                       (_g3579935832_ _g3580035836_))))
                               (_g3579935832_ _g3580035836_))))
                       (let ((_new-id3581935907_ (reverse _new-id3581735872_))
                             (_id3582035910_ (reverse _id3581835874_)))
                         ((lambda (_L35913_ _L35915_ _L35916_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp50914
                                             (lambda (_g3593435937_
                                                      _g3593535940_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3593435937_
                                                       _g3593535940_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50914 '() _L35915_)))
                                     (gx#identifier-list?
                                      (let ((__tmp50913
                                             (lambda (_g3594235945_
                                                      _g3594335948_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3594235945_
                                                       _g3594335948_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50913 '() _L35913_))))
                                (let* ((_keytab35951_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found35954_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g50908_
                                        (for-each
                                         (lambda (_id35957_ _new-id35959_)
                                           (let ((__tmp50905
                                                  (gx#core-identifier-key
                                                   _id35957_))
                                                 (__tmp50904
                                                  (gx#core-identifier-key
                                                   _new-id35959_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab35951_
                                              __tmp50905
                                              __tmp50904)))
                                         (let ((__tmp50906
                                                (lambda (_g3596035963_
                                                         _g3596135966_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3596035963_
                                                          _g3596135966_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50906 '() _L35915_))
                                         (let ((__tmp50907
                                                (lambda (_g3596835971_
                                                         _g3596935974_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3596835971_
                                                          _g3596935974_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50907 '() _L35913_))))
                                       (_imports35979_
                                        (gx#core-expand-import-source
                                         _L35916_))
                                       (_fold-e35999_
                                        (letrec ((_fold-e35982_
                                                  (lambda (_in35985_ _r35987_)
                                                    (if (gx#module-import?
                                                         _in35985_)
                                                        (let* ((_name35989_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35985_))
                       (_$e35992_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab35951_ _name35989_ '#f))))
                  (if _$e35992_
                      ((lambda (_rename35996_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found35954_ _name35989_ '#t))
                         (let ((__tmp50910
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                   _in35985_
                                   _rename35996_))))
                           (declare (not safe))
                           (cons __tmp50910 _r35987_)))
                       _$e35992_)
                      (let () (declare (not safe)) (cons _in35985_ _r35987_))))
                (if (gx#import-set? _in35985_)
                    (let ((__tmp50909 (gx#import-set-imports _in35985_)))
                      (declare (not safe))
                      (foldl1 _fold-e35982_ _r35987_ __tmp50909))
                    (let ()
                      (declare (not safe))
                      (cons _in35985_ _r35987_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35982_))
                                       (_new-imports36002_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e35999_
                                                  '()
                                                  _imports35979_))))
                                  (for-each
                                   (lambda (_id36007_)
                                     (if (let ((__tmp50911
                                                (gx#core-identifier-key
                                                 _id36007_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found35954_
                                            __tmp50911
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _stx35796_
                                          _id36007_)))
                                   (let ((__tmp50912
                                          (lambda (_g3600936012_ _g3601036015_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3600936012_
                                                    _g3601036015_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50912 '() _L35915_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-imports36002_)))
                                (_g3579935832_ _g3580035836_)))
                          _new-id3581935907_
                          _id3582035910_
                          _hd3580835853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3581335865_
                                                  _target3581035859_
                                                  '()
                                                  '()))
                                               (_g3579935832_
                                                _g3580035836_)))))
                                     (_g3579935832_ _g3580035836_))))
                             (_g3579935832_ _g3580035836_))))
                     (_g3579935832_ _g3580035836_)))))
         (_g3579836018_ _stx35796_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx36024_)
       (let* ((_g3602736045_
               (lambda (_g3602836041_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3602836041_)))
              (_g3602636124_
               (lambda (_g3602836049_)
                 (if (gx#stx-pair? _g3602836049_)
                     (let ((_e3603336052_ (gx#syntax-e _g3602836049_)))
                       (let ((_hd3603236056_
                              (let ()
                                (declare (not safe))
                                (##car _e3603336052_)))
                             (_tl3603136059_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3603336052_))))
                         (if (gx#stx-pair? _tl3603136059_)
                             (let ((_e3603636062_
                                    (gx#syntax-e _tl3603136059_)))
                               (let ((_hd3603536066_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3603636062_)))
                                     (_tl3603436069_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3603636062_))))
                                 (if (gx#stx-pair? _tl3603436069_)
                                     (let ((_e3603936072_
                                            (gx#syntax-e _tl3603436069_)))
                                       (let ((_hd3603836076_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3603936072_)))
                                             (_tl3603736079_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3603936072_))))
                                         (if (gx#stx-null? _tl3603736079_)
                                             ((lambda (_L36082_ _L36084_)
                                                (if (gx#identifier? _L36082_)
                                                    (let* ((_pre36100_
                                                            (gx#stx-e
                                                             _L36082_))
                                                           (_imports36103_
                                                            (gx#core-expand-import-source
                                                             _L36084_))
                                                           (_rename-e36109_
                                                            (lambda (_name36106_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36106_
                         _pre36100_))))
                   (_fold-e36119_
                    (letrec ((_fold-e36112_
                              (lambda (_in36115_ _r36117_)
                                (if (gx#module-import? _in36115_)
                                    (let ((__tmp50916
                                           (let ((__tmp50917
                                                  (_rename-e36109_
                                                   (gx#module-import-name
                                                    _in36115_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                              _in36115_
                                              __tmp50917))))
                                      (declare (not safe))
                                      (cons __tmp50916 _r36117_))
                                    (if (gx#import-set? _in36115_)
                                        (let ((__tmp50915
                                               (gx#import-set-imports
                                                _in36115_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36112_
                                                  _r36117_
                                                  __tmp50915))
                                        (let ()
                                          (declare (not safe))
                                          (cons _in36115_ _r36117_)))))))
                      _fold-e36112_)))
              (let ((__tmp50918
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36119_ '() _imports36103_))))
                (declare (not safe))
                (cons 'begin: __tmp50918)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3602736045_
                                                     _g3602836049_)))
                                              _hd3603836076_
                                              _hd3603536066_)
                                             (_g3602736045_ _g3602836049_))))
                                     (_g3602736045_ _g3602836049_))))
                             (_g3602736045_ _g3602836049_))))
                     (_g3602736045_ _g3602836049_)))))
         (_g3602636124_ _stx36024_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx36128_)
       (letrec ((_flatten36131_
                 (lambda (_list-of-lists36386_)
                   (let ((__tmp50919
                          (lambda (_v36389_ _acc36391_)
                            (if (let () (declare (not safe)) (null? _v36389_))
                                _acc36391_
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _v36389_))
                                    (append (_flatten36131_ _v36389_)
                                            _acc36391_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _v36389_ _acc36391_)))))))
                     (declare (not safe))
                     (foldr1 __tmp50919 '() _list-of-lists36386_))))
                (_expand-path36133_
                 (lambda (_top36254_ _mod36256_)
                   (let* ((___stx4725147252_ _mod36256_)
                          (_g3625936281_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4725147252_))))
                     (let ((___kont4725447255_
                            (lambda (_L36349_ _L36351_)
                              (map (lambda (_mod36366_)
                                     (gx#stx-identifier
                                      _top36254_
                                      _top36254_
                                      '"/"
                                      _mod36366_))
                                   (_flatten36131_
                                    (map (lambda (_g3636836370_)
                                           (_expand-path36133_
                                            _L36351_
                                            _g3636836370_))
                                         (let ((__tmp50920
                                                (lambda (_g3637336376_
                                                         _g3637436379_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3637336376_
                                                          _g3637436379_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50920
                                                   '()
                                                   _L36349_)))))))
                           (___kont4725847259_
                            (lambda (_L36288_)
                              (gx#stx-identifier
                               _top36254_
                               _top36254_
                               '"/"
                               _L36288_))))
                       (let* ((_g3625836302_
                               (lambda ()
                                 (let ((_L36288_ ___stx4725147252_))
                                   (if (or (gx#identifier? _L36288_)
                                           (gx#stx-fixnum? _L36288_))
                                       (___kont4725847259_ _L36288_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3625936281_))))))
                              (___match4727447275_
                               (lambda (_e3626536309_
                                        _hd3626436313_
                                        _tl3626336316_
                                        ___splice4725647257_
                                        _target3626636319_
                                        _tl3626836322_)
                                 (letrec ((_loop3626936325_
                                           (lambda (_hd3626736329_
                                                    _mod3627336332_)
                                             (if (gx#stx-pair? _hd3626736329_)
                                                 (let ((_e3627036335_
                                                        (gx#syntax-e
                                                         _hd3626736329_)))
                                                   (let ((_lp-tl3627236342_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3627036335_)))
                                                         (_lp-hd3627136339_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3627036335_))))
                                                     (_loop3626936325_
                                                      _lp-tl3627236342_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd3627136339_
                                                              _mod3627336332_)))))
                                                 (let ((_mod3627436345_
                                                        (reverse _mod3627336332_)))
                                                   (___kont4725447255_
                                                    _mod3627436345_
                                                    _hd3626436313_))))))
                                   (_loop3626936325_
                                    _target3626636319_
                                    '())))))
                         (if (gx#stx-pair? ___stx4725147252_)
                             (let ((_e3626536309_
                                    (gx#syntax-e ___stx4725147252_)))
                               (let ((_tl3626336316_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3626536309_)))
                                     (_hd3626436313_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3626536309_))))
                                 (if (gx#stx-pair/null? _tl3626336316_)
                                     (let ((___splice4725647257_
                                            (gx#syntax-split-splice
                                             _tl3626336316_
                                             '0)))
                                       (let ((_tl3626836322_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4725647257_
                                                 '1)))
                                             (_target3626636319_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4725647257_
                                                 '0))))
                                         (if (gx#stx-null? _tl3626836322_)
                                             (___match4727447275_
                                              _e3626536309_
                                              _hd3626436313_
                                              _tl3626336316_
                                              ___splice4725647257_
                                              _target3626636319_
                                              _tl3626836322_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3625836302_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3625836302_)))))
                             (let ()
                               (declare (not safe))
                               (_g3625836302_)))))))))
         (let* ((_g3613536159_
                 (lambda (_g3613636155_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g3613636155_)))
                (_g3613436250_
                 (lambda (_g3613636163_)
                   (if (gx#stx-pair? _g3613636163_)
                       (let ((_e3614136166_ (gx#syntax-e _g3613636163_)))
                         (let ((_hd3614036170_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3614136166_)))
                               (_tl3613936173_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3614136166_))))
                           (if (gx#stx-pair? _tl3613936173_)
                               (let ((_e3614436176_
                                      (gx#syntax-e _tl3613936173_)))
                                 (let ((_hd3614336180_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3614436176_)))
                                       (_tl3614236183_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3614436176_))))
                                   (if (gx#stx-pair/null? _tl3614236183_)
                                       (let ((_g50921_
                                              (gx#syntax-split-splice
                                               _tl3614236183_
                                               '0)))
                                         (begin
                                           (let ((_g50922_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50921_)
                                                        (##vector-length
                                                         _g50921_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50922_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50922_)))
                                           (let ((_target3614536186_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50921_ 0)))
                                                 (_tl3614736189_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50921_
                                                     1))))
                                             (if (gx#stx-null? _tl3614736189_)
                                                 (letrec ((_loop3614836192_
                                                           (lambda (_hd3614636196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3615236199_)
                     (if (gx#stx-pair? _hd3614636196_)
                         (let ((_e3614936202_ (gx#syntax-e _hd3614636196_)))
                           (let ((_lp-hd3615036206_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3614936202_)))
                                 (_lp-tl3615136209_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3614936202_))))
                             (_loop3614836192_
                              _lp-tl3615136209_
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd3615036206_ _mod3615236199_)))))
                         (let ((_mod3615336212_ (reverse _mod3615236199_)))
                           ((lambda (_L36216_ _L36218_)
                              (let ((__tmp50923
                                     (_flatten36131_
                                      (map (lambda (_g3623636238_)
                                             (_expand-path36133_
                                              _L36218_
                                              _g3623636238_))
                                           (let ((__tmp50924
                                                  (lambda (_g3624136244_
                                                           _g3624236247_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3624136244_
                                                            _g3624236247_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50924
                                                     '()
                                                     _L36216_))))))
                                (declare (not safe))
                                (cons 'begin: __tmp50923)))
                            _mod3615336212_
                            _hd3614336180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3614836192_
                                                    _target3614536186_
                                                    '()))
                                                 (_g3613536159_
                                                  _g3613636163_)))))
                                       (_g3613536159_ _g3613636163_))))
                               (_g3613536159_ _g3613636163_))))
                       (_g3613536159_ _g3613636163_)))))
           (_g3613436250_ _stx36128_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36395_)
       (let* ((_g3639836422_
               (lambda (_g3639936418_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3639936418_)))
              (_g3639736544_
               (lambda (_g3639936426_)
                 (if (gx#stx-pair? _g3639936426_)
                     (let ((_e3640436429_ (gx#syntax-e _g3639936426_)))
                       (let ((_hd3640336433_
                              (let ()
                                (declare (not safe))
                                (##car _e3640436429_)))
                             (_tl3640236436_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3640436429_))))
                         (if (gx#stx-pair? _tl3640236436_)
                             (let ((_e3640736439_
                                    (gx#syntax-e _tl3640236436_)))
                               (let ((_hd3640636443_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3640736439_)))
                                     (_tl3640536446_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3640736439_))))
                                 (if (gx#stx-pair/null? _tl3640536446_)
                                     (let ((_g50925_
                                            (gx#syntax-split-splice
                                             _tl3640536446_
                                             '0)))
                                       (begin
                                         (let ((_g50926_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50925_)
                                                      (##vector-length
                                                       _g50925_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50926_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50926_)))
                                         (let ((_target3640836449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50925_ 0)))
                                               (_tl3641036452_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50925_ 1))))
                                           (if (gx#stx-null? _tl3641036452_)
                                               (letrec ((_loop3641136455_
                                                         (lambda (_hd3640936459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3641536462_)
                   (if (gx#stx-pair? _hd3640936459_)
                       (let ((_e3641236465_ (gx#syntax-e _hd3640936459_)))
                         (let ((_lp-hd3641336469_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3641236465_)))
                               (_lp-tl3641436472_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3641236465_))))
                           (_loop3641136455_
                            _lp-tl3641436472_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd3641336469_ _id3641536462_)))))
                       (let ((_id3641636475_ (reverse _id3641536462_)))
                         ((lambda (_L36479_ _L36481_)
                            (if (gx#identifier-list?
                                 (let ((__tmp50931
                                        (lambda (_g3649836501_ _g3649936504_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3649836501_
                                                  _g3649936504_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50931 '() _L36479_)))
                                (let* ((_keys36515_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (let ((__tmp50927
                                                (lambda (_g3650636509_
                                                         _g3650736512_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3650636509_
                                                          _g3650736512_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50927 '() _L36479_))))
                                       (_keytab36526_
                                        (let ((_ht36518_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-table))))
                                          (for-each
                                           (lambda (_g3652036522_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _ht36518_
                                                _g3652036522_
                                                '#t)))
                                           _keys36515_)
                                          _ht36518_))
                                       (_exports36529_
                                        (gx#core-expand-export-source
                                         _L36481_))
                                       (_fold-e36539_
                                        (letrec ((_fold-e36532_
                                                  (lambda (_out36535_ _r36537_)
                                                    (if (gx#module-export?
                                                         _out36535_)
                                                        (if (let ((__tmp50929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#module-export-name _out36535_)))
                      (declare (not safe))
                      (table-ref _keytab36526_ __tmp50929 '#f))
                    _r36537_
                    (let () (declare (not safe)) (cons _out36535_ _r36537_)))
                (if (gx#export-set? _out36535_)
                    (let ((__tmp50928 (gx#export-set-exports _out36535_)))
                      (declare (not safe))
                      (foldl1 _fold-e36532_ _r36537_ __tmp50928))
                    _r36537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36532_)))
                                  (let ((__tmp50930
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 _fold-e36539_
                                                   '()
                                                   _exports36529_))))
                                    (declare (not safe))
                                    (cons 'begin: __tmp50930)))
                                (_g3639836422_ _g3639936426_)))
                          _id3641636475_
                          _hd3640636443_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3641136455_
                                                  _target3640836449_
                                                  '()))
                                               (_g3639836422_
                                                _g3639936426_)))))
                                     (_g3639836422_ _g3639936426_))))
                             (_g3639836422_ _g3639936426_))))
                     (_g3639836422_ _g3639936426_)))))
         (_g3639736544_ _stx36395_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36549_ _rename36551_)
      (gx#make-module-export
       (gx#module-export-context _out36549_)
       (gx#module-export-key _out36549_)
       (gx#module-export-phi _out36549_)
       _rename36551_
       (gx#module-export-weak? _out36549_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36553_)
       (let* ((_g3655636589_
               (lambda (_g3655736585_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3655736585_)))
              (_g3655536775_
               (lambda (_g3655736593_)
                 (if (gx#stx-pair? _g3655736593_)
                     (let ((_e3656336596_ (gx#syntax-e _g3655736593_)))
                       (let ((_hd3656236600_
                              (let ()
                                (declare (not safe))
                                (##car _e3656336596_)))
                             (_tl3656136603_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3656336596_))))
                         (if (gx#stx-pair? _tl3656136603_)
                             (let ((_e3656636606_
                                    (gx#syntax-e _tl3656136603_)))
                               (let ((_hd3656536610_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3656636606_)))
                                     (_tl3656436613_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3656636606_))))
                                 (if (gx#stx-pair/null? _tl3656436613_)
                                     (let ((_g50932_
                                            (gx#syntax-split-splice
                                             _tl3656436613_
                                             '0)))
                                       (begin
                                         (let ((_g50933_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50932_)
                                                      (##vector-length
                                                       _g50932_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50933_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50933_)))
                                         (let ((_target3656736616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50932_ 0)))
                                               (_tl3656936619_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g50932_ 1))))
                                           (if (gx#stx-null? _tl3656936619_)
                                               (letrec ((_loop3657036622_
                                                         (lambda (_hd3656836626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3657436629_
                          _id3657536631_)
                   (if (gx#stx-pair? _hd3656836626_)
                       (let ((_e3657136634_ (gx#syntax-e _hd3656836626_)))
                         (let ((_lp-hd3657236638_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3657136634_)))
                               (_lp-tl3657336641_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3657136634_))))
                           (if (gx#stx-pair? _lp-hd3657236638_)
                               (let ((_e3658036644_
                                      (gx#syntax-e _lp-hd3657236638_)))
                                 (let ((_hd3657936648_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3658036644_)))
                                       (_tl3657836651_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3658036644_))))
                                   (if (gx#stx-pair? _tl3657836651_)
                                       (let ((_e3658336654_
                                              (gx#syntax-e _tl3657836651_)))
                                         (let ((_hd3658236658_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3658336654_)))
                                               (_tl3658136661_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3658336654_))))
                                           (if (gx#stx-null? _tl3658136661_)
                                               (_loop3657036622_
                                                _lp-tl3657336641_
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3658236658_
                                                        _new-id3657436629_))
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd3657936648_
                                                        _id3657536631_)))
                                               (_g3655636589_ _g3655736593_))))
                                       (_g3655636589_ _g3655736593_))))
                               (_g3655636589_ _g3655736593_))))
                       (let ((_new-id3657636664_ (reverse _new-id3657436629_))
                             (_id3657736667_ (reverse _id3657536631_)))
                         ((lambda (_L36670_ _L36672_ _L36673_)
                            (if (and (gx#identifier-list?
                                      (let ((__tmp50944
                                             (lambda (_g3669136694_
                                                      _g3669236697_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3669136694_
                                                       _g3669236697_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50944 '() _L36672_)))
                                     (gx#identifier-list?
                                      (let ((__tmp50943
                                             (lambda (_g3669936702_
                                                      _g3670036705_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g3669936702_
                                                       _g3670036705_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp50943 '() _L36670_))))
                                (let* ((_keytab36708_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_found36711_
                                        (let ()
                                          (declare (not safe))
                                          (make-table)))
                                       (_g50938_
                                        (for-each
                                         (lambda (_id36714_ _new-id36716_)
                                           (let ((__tmp50935
                                                  (gx#core-identifier-key
                                                   _id36714_))
                                                 (__tmp50934
                                                  (gx#core-identifier-key
                                                   _new-id36716_)))
                                             (declare (not safe))
                                             (table-set!
                                              _keytab36708_
                                              __tmp50935
                                              __tmp50934)))
                                         (let ((__tmp50936
                                                (lambda (_g3671736720_
                                                         _g3671836723_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3671736720_
                                                          _g3671836723_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50936 '() _L36672_))
                                         (let ((__tmp50937
                                                (lambda (_g3672536728_
                                                         _g3672636731_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3672536728_
                                                          _g3672636731_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp50937 '() _L36670_))))
                                       (_exports36736_
                                        (gx#core-expand-export-source
                                         _L36673_))
                                       (_fold-e36756_
                                        (letrec ((_fold-e36739_
                                                  (lambda (_out36742_ _r36744_)
                                                    (if (gx#module-export?
                                                         _out36742_)
                                                        (let* ((_name36746_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36742_))
                       (_$e36749_
                        (let ()
                          (declare (not safe))
                          (table-ref _keytab36708_ _name36746_ '#f))))
                  (if _$e36749_
                      ((lambda (_rename36753_)
                         (let ()
                           (declare (not safe))
                           (table-set! _found36711_ _name36746_ '#t))
                         (let ((__tmp50940
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                   _out36742_
                                   _rename36753_))))
                           (declare (not safe))
                           (cons __tmp50940 _r36744_)))
                       _$e36749_)
                      (let ()
                        (declare (not safe))
                        (cons _out36742_ _r36744_))))
                (if (gx#export-set? _out36742_)
                    (let ((__tmp50939 (gx#export-set-exports _out36742_)))
                      (declare (not safe))
                      (foldl1 _fold-e36739_ _r36744_ __tmp50939))
                    (let ()
                      (declare (not safe))
                      (cons _out36742_ _r36744_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36739_))
                                       (_new-exports36759_
                                        (let ()
                                          (declare (not safe))
                                          (foldl1 _fold-e36756_
                                                  '()
                                                  _exports36736_))))
                                  (for-each
                                   (lambda (_id36764_)
                                     (if (let ((__tmp50941
                                                (gx#core-identifier-key
                                                 _id36764_)))
                                           (declare (not safe))
                                           (table-ref
                                            _found36711_
                                            __tmp50941
                                            '#f))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _stx36553_
                                          _id36764_)))
                                   (let ((__tmp50942
                                          (lambda (_g3676636769_ _g3676736772_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3676636769_
                                                    _g3676736772_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50942 '() _L36672_)))
                                  (let ()
                                    (declare (not safe))
                                    (cons 'begin: _new-exports36759_)))
                                (_g3655636589_ _g3655736593_)))
                          _new-id3657636664_
                          _id3657736667_
                          _hd3656536610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3657036622_
                                                  _target3656736616_
                                                  '()
                                                  '()))
                                               (_g3655636589_
                                                _g3655736593_)))))
                                     (_g3655636589_ _g3655736593_))))
                             (_g3655636589_ _g3655736593_))))
                     (_g3655636589_ _g3655736593_)))))
         (_g3655536775_ _stx36553_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36781_)
       (let* ((_g3678436802_
               (lambda (_g3678536798_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3678536798_)))
              (_g3678336881_
               (lambda (_g3678536806_)
                 (if (gx#stx-pair? _g3678536806_)
                     (let ((_e3679036809_ (gx#syntax-e _g3678536806_)))
                       (let ((_hd3678936813_
                              (let ()
                                (declare (not safe))
                                (##car _e3679036809_)))
                             (_tl3678836816_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3679036809_))))
                         (if (gx#stx-pair? _tl3678836816_)
                             (let ((_e3679336819_
                                    (gx#syntax-e _tl3678836816_)))
                               (let ((_hd3679236823_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3679336819_)))
                                     (_tl3679136826_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3679336819_))))
                                 (if (gx#stx-pair? _tl3679136826_)
                                     (let ((_e3679636829_
                                            (gx#syntax-e _tl3679136826_)))
                                       (let ((_hd3679536833_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3679636829_)))
                                             (_tl3679436836_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3679636829_))))
                                         (if (gx#stx-null? _tl3679436836_)
                                             ((lambda (_L36839_ _L36841_)
                                                (if (gx#identifier? _L36839_)
                                                    (let* ((_pre36857_
                                                            (gx#stx-e
                                                             _L36839_))
                                                           (_exports36860_
                                                            (gx#core-expand-export-source
                                                             _L36841_))
                                                           (_rename-e36866_
                                                            (lambda (_name36863_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36863_
                         _pre36857_))))
                   (_fold-e36876_
                    (letrec ((_fold-e36869_
                              (lambda (_out36872_ _r36874_)
                                (if (gx#module-export? _out36872_)
                                    (let ((__tmp50946
                                           (let ((__tmp50947
                                                  (_rename-e36866_
                                                   (gx#module-export-name
                                                    _out36872_))))
                                             (declare (not safe))
                                             (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                              _out36872_
                                              __tmp50947))))
                                      (declare (not safe))
                                      (cons __tmp50946 _r36874_))
                                    (if (gx#export-set? _out36872_)
                                        (let ((__tmp50945
                                               (gx#export-set-exports
                                                _out36872_)))
                                          (declare (not safe))
                                          (foldl1 _fold-e36869_
                                                  _r36874_
                                                  __tmp50945))
                                        (let ()
                                          (declare (not safe))
                                          (cons _out36872_ _r36874_)))))))
                      _fold-e36869_)))
              (let ((__tmp50948
                     (let ()
                       (declare (not safe))
                       (foldl1 _fold-e36876_ '() _exports36860_))))
                (declare (not safe))
                (cons 'begin: __tmp50948)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3678436802_
                                                     _g3678536806_)))
                                              _hd3679536833_
                                              _hd3679236823_)
                                             (_g3678436802_ _g3678536806_))))
                                     (_g3678436802_ _g3678536806_))))
                             (_g3678436802_ _g3678536806_))))
                     (_g3678436802_ _g3678536806_)))))
         (_g3678336881_ _stx36781_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36885_)
       (letrec ((_identifiers36888_
                 (lambda (_id37120_ _unchecked?37122_)
                   (let ((_info37124_ (gx#syntax-local-value _id37120_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            _info37124_))
                         (let ((__tmp50949
                                (let ((__tmp50961
                                       (let ((__obj47354 _info37124_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj47354
                                                'gerbil.core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj47354
                                                '8
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              __obj47354
                                              'type-descriptor))))
                                      (__tmp50950
                                       (let ((__tmp50952
                                              (let ((__tmp50960
                                                     (let ((__obj47355
                                                            _info37124_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47355
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47355
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47355
                                                            'predicate))))
                                                    (__tmp50953
                                                     (let ((__tmp50955
                                                            (let ((__tmp50957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _unchecked?37122_
                               (let ((__tmp50959
                                      (map cdr
                                           (let ((__obj47356 _info37124_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47356
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47356
                                                    '14
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47356
                                                  'unchecked-mutators)))))
                                     (__tmp50958
                                      (map cdr
                                           (let ((__obj47357 _info37124_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj47357
                                                    'gerbil.core#class-type-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj47357
                                                    '13
                                                    gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  __obj47357
                                                  'unchecked-accessors))))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp50959 __tmp50958))
                               '()))
                          (__tmp50956
                           (map cdr
                                (let ((__obj47358 _info37124_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj47358
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj47358
                                         '12
                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                       __obj47358
                                       'mutators))))))
                      (declare (not safe))
                      (foldr1 cons __tmp50957 __tmp50956)))
                   (__tmp50954
                    (map cdr
                         (let ((__obj47359 _info37124_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj47359
                                  'gerbil.core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj47359
                                  '11
                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                  '#f))
                               (class-slot-ref
                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                __obj47359
                                'accessors))))))
               (declare (not safe))
               (foldr1 cons __tmp50955 __tmp50954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50960 __tmp50953)))
                                             (__tmp50951
                                              (let ((_ctor37127_
                                                     (let ((__obj47360
                                                            _info37124_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47360
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47360
                                                              '9
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47360
                                                            'constructor)))))
                                                (if _ctor37127_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor37127_ '()))
                                                    '()))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp50952 __tmp50951))))
                                  (declare (not safe))
                                  (cons __tmp50961 __tmp50950))))
                           (declare (not safe))
                           (cons _id37120_ __tmp50949))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _stx36885_
                          _id37120_))))))
         (let* ((___stx4727747278_ _stx36885_)
                (_g3689236933_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    ___stx4727747278_))))
           (let ((___kont4728047281_
                  (lambda (_L37081_ _L37083_)
                    (let ((__tmp50962
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3710237104_)
                               (_identifiers36888_
                                _g3710237104_
                                (gx#stx-e _L37083_)))
                             (let ((__tmp50963
                                    (lambda (_g3710737110_ _g3710837113_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3710737110_ _g3710837113_)))))
                               (declare (not safe))
                               (foldr1 __tmp50963 '() _L37081_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp50962))))
                 (___kont4728447285_
                  (lambda (_L36980_)
                    (let ((__tmp50964
                           (concatenate
                            (gx#stx-map
                             (lambda (_g3699636998_)
                               (_identifiers36888_ _g3699636998_ '#f))
                             (let ((__tmp50965
                                    (lambda (_g3700137004_ _g3700237007_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g3700137004_ _g3700237007_)))))
                               (declare (not safe))
                               (foldr1 __tmp50965 '() _L36980_))))))
                      (declare (not safe))
                      (cons 'begin: __tmp50964)))))
             (let* ((___match4733447335_
                     (lambda (_e3691836940_
                              _hd3691736944_
                              _tl3691636947_
                              ___splice4728647287_
                              _target3691936950_
                              _tl3692136953_)
                       (letrec ((_loop3692236956_
                                 (lambda (_hd3692036960_ _id3692636963_)
                                   (if (gx#stx-pair? _hd3692036960_)
                                       (let ((_e3692336966_
                                              (gx#syntax-e _hd3692036960_)))
                                         (let ((_lp-tl3692536973_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3692336966_)))
                                               (_lp-hd3692436970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3692336966_))))
                                           (_loop3692236956_
                                            _lp-tl3692536973_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3692436970_
                                                    _id3692636963_)))))
                                       (let ((_id3692736976_
                                              (reverse _id3692636963_)))
                                         (___kont4728447285_
                                          _id3692736976_))))))
                         (_loop3692236956_ _target3691936950_ '()))))
                    (___match4732047321_
                     (lambda (_e3689837017_
                              _hd3689737021_
                              _tl3689637024_
                              _e3690137027_
                              _hd3690037031_
                              _tl3689937034_
                              _e3690237037_
                              _e3690537041_
                              _hd3690437045_
                              _tl3690337048_
                              ___splice4728247283_
                              _target3690637051_
                              _tl3690837054_)
                       (letrec ((_loop3690937057_
                                 (lambda (_hd3690737061_ _id3691337064_)
                                   (if (gx#stx-pair? _hd3690737061_)
                                       (let ((_e3691037067_
                                              (gx#syntax-e _hd3690737061_)))
                                         (let ((_lp-tl3691237074_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3691037067_)))
                                               (_lp-hd3691137071_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3691037067_))))
                                           (_loop3690937057_
                                            _lp-tl3691237074_
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3691137071_
                                                    _id3691337064_)))))
                                       (let ((_id3691437077_
                                              (reverse _id3691337064_)))
                                         (___kont4728047281_
                                          _id3691437077_
                                          _hd3690437045_))))))
                         (_loop3690937057_ _target3690637051_ '())))))
               (if (gx#stx-pair? ___stx4727747278_)
                   (let ((_e3689837017_ (gx#syntax-e ___stx4727747278_)))
                     (let ((_tl3689637024_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3689837017_)))
                           (_hd3689737021_
                            (let ()
                              (declare (not safe))
                              (##car _e3689837017_))))
                       (if (gx#stx-pair? _tl3689637024_)
                           (let ((_e3690137027_ (gx#syntax-e _tl3689637024_)))
                             (let ((_tl3689937034_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3690137027_)))
                                   (_hd3690037031_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3690137027_))))
                               (if (gx#stx-datum? _hd3690037031_)
                                   (let ((_e3690237037_
                                          (gx#stx-e _hd3690037031_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3690237037_ 'unchecked:))
                                         (if (gx#stx-pair? _tl3689937034_)
                                             (let ((_e3690537041_
                                                    (gx#syntax-e
                                                     _tl3689937034_)))
                                               (let ((_tl3690337048_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3690537041_)))
                                                     (_hd3690437045_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3690537041_))))
                                                 (if (gx#stx-pair/null?
                                                      _tl3690337048_)
                                                     (let ((___splice4728247283_
                                                            (gx#syntax-split-splice
                                                             _tl3690337048_
                                                             '0)))
                                                       (let ((_tl3690837054_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref ___splice4728247283_ '1)))
                     (_target3690637051_
                      (let ()
                        (declare (not safe))
                        (##vector-ref ___splice4728247283_ '0))))
                 (if (gx#stx-null? _tl3690837054_)
                     (___match4732047321_
                      _e3689837017_
                      _hd3689737021_
                      _tl3689637024_
                      _e3690137027_
                      _hd3690037031_
                      _tl3689937034_
                      _e3690237037_
                      _e3690537041_
                      _hd3690437045_
                      _tl3690337048_
                      ___splice4728247283_
                      _target3690637051_
                      _tl3690837054_)
                     (if (gx#stx-pair/null? _tl3689637024_)
                         (let ((___splice4728647287_
                                (gx#syntax-split-splice _tl3689637024_ '0)))
                           (let ((_tl3692136953_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4728647287_ '1)))
                                 (_target3691936950_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref ___splice4728647287_ '0))))
                             (if (gx#stx-null? _tl3692136953_)
                                 (___match4733447335_
                                  _e3689837017_
                                  _hd3689737021_
                                  _tl3689637024_
                                  ___splice4728647287_
                                  _target3691936950_
                                  _tl3692136953_)
                                 (let ()
                                   (declare (not safe))
                                   (_g3689236933_)))))
                         (let () (declare (not safe)) (_g3689236933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _tl3689637024_)
                                                         (let ((___splice4728647287_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3689637024_
                         '0)))
                   (let ((_tl3692136953_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4728647287_ '1)))
                         (_target3691936950_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice4728647287_ '0))))
                     (if (gx#stx-null? _tl3692136953_)
                         (___match4733447335_
                          _e3689837017_
                          _hd3689737021_
                          _tl3689637024_
                          ___splice4728647287_
                          _target3691936950_
                          _tl3692136953_)
                         (let () (declare (not safe)) (_g3689236933_)))))
                 (let () (declare (not safe)) (_g3689236933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _tl3689637024_)
                                                 (let ((___splice4728647287_
                                                        (gx#syntax-split-splice
                                                         _tl3689637024_
                                                         '0)))
                                                   (let ((_tl3692136953_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4728647287_
                                                             '1)))
                                                         (_target3691936950_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice4728647287_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl3692136953_)
                                                         (___match4733447335_
                                                          _e3689837017_
                                                          _hd3689737021_
                                                          _tl3689637024_
                                                          ___splice4728647287_
                                                          _target3691936950_
                                                          _tl3692136953_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3689236933_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3689236933_))))
                                         (if (gx#stx-pair/null? _tl3689637024_)
                                             (let ((___splice4728647287_
                                                    (gx#syntax-split-splice
                                                     _tl3689637024_
                                                     '0)))
                                               (let ((_tl3692136953_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4728647287_
                                                         '1)))
                                                     (_target3691936950_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         ___splice4728647287_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _tl3692136953_)
                                                     (___match4733447335_
                                                      _e3689837017_
                                                      _hd3689737021_
                                                      _tl3689637024_
                                                      ___splice4728647287_
                                                      _target3691936950_
                                                      _tl3692136953_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3689236933_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3689236933_)))))
                                   (if (gx#stx-pair/null? _tl3689637024_)
                                       (let ((___splice4728647287_
                                              (gx#syntax-split-splice
                                               _tl3689637024_
                                               '0)))
                                         (let ((_tl3692136953_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4728647287_
                                                   '1)))
                                               (_target3691936950_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice4728647287_
                                                   '0))))
                                           (if (gx#stx-null? _tl3692136953_)
                                               (___match4733447335_
                                                _e3689837017_
                                                _hd3689737021_
                                                _tl3689637024_
                                                ___splice4728647287_
                                                _target3691936950_
                                                _tl3692136953_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3689236933_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3689236933_))))))
                           (if (gx#stx-pair/null? _tl3689637024_)
                               (let ((___splice4728647287_
                                      (gx#syntax-split-splice
                                       _tl3689637024_
                                       '0)))
                                 (let ((_tl3692136953_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4728647287_
                                           '1)))
                                       (_target3691936950_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice4728647287_
                                           '0))))
                                   (if (gx#stx-null? _tl3692136953_)
                                       (___match4733447335_
                                        _e3689837017_
                                        _hd3689737021_
                                        _tl3689637024_
                                        ___splice4728647287_
                                        _target3691936950_
                                        _tl3692136953_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3689236933_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g3689236933_))))))
                   (let () (declare (not safe)) (_g3689236933_)))))))))))
